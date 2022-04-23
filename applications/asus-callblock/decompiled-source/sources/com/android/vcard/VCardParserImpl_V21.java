package com.android.vcard;

import android.util.Log;
import com.android.vcard.exception.VCardAgentNotSupportedException;
import com.android.vcard.exception.VCardException;
import com.android.vcard.exception.VCardInvalidCommentLineException;
import com.android.vcard.exception.VCardInvalidLineException;
import com.android.vcard.exception.VCardVersionException;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParserImpl_V21.class */
public class VCardParserImpl_V21 {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String DEFAULT_ENCODING = "8BIT";
    private static final String LOG_TAG = "vCard";
    private static final int STATE_GROUP_OR_PROPERTY_NAME = 0;
    private static final int STATE_PARAMS = 1;
    private static final int STATE_PARAMS_IN_DQUOTE = 2;
    private boolean mCanceled;
    protected String mCurrentCharset;
    protected String mCurrentEncoding;
    protected final String mIntermediateCharset;
    private final List<VCardInterpreter> mInterpreterList;
    protected CustomBufferedReader mReader;
    protected final Set<String> mUnknownTypeSet;
    protected final Set<String> mUnknownValueSet;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParserImpl_V21$CustomBufferedReader.class */
    public static final class CustomBufferedReader extends BufferedReader {
        private String mNextLine;
        private boolean mNextLineIsValid;
        private long mTime;

        public CustomBufferedReader(Reader reader) {
            super(reader);
        }

        public final long getTotalmillisecond() {
            return this.mTime;
        }

        public final String peekLine() {
            if (!this.mNextLineIsValid) {
                long currentTimeMillis = System.currentTimeMillis();
                String readLine = super.readLine();
                this.mTime = (System.currentTimeMillis() - currentTimeMillis) + this.mTime;
                this.mNextLine = readLine;
                this.mNextLineIsValid = true;
            }
            return this.mNextLine;
        }

        @Override // java.io.BufferedReader
        public final String readLine() {
            String readLine;
            if (this.mNextLineIsValid) {
                readLine = this.mNextLine;
                this.mNextLine = null;
                this.mNextLineIsValid = false;
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                readLine = super.readLine();
                this.mTime = (System.currentTimeMillis() - currentTimeMillis) + this.mTime;
            }
            return readLine;
        }
    }

    public VCardParserImpl_V21() {
        this(VCardConfig.VCARD_TYPE_DEFAULT);
    }

    public VCardParserImpl_V21(int i) {
        this.mInterpreterList = new ArrayList();
        this.mUnknownTypeSet = new HashSet();
        this.mUnknownValueSet = new HashSet();
        this.mIntermediateCharset = VCardConfig.DEFAULT_INTERMEDIATE_CHARSET;
    }

    private String getPotentialMultiline(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        while (true) {
            String peekLine = peekLine();
            if (peekLine == null || peekLine.length() == 0 || getPropertyNameUpperCase(peekLine) != null) {
                break;
            }
            getLine();
            sb.append(" ").append(peekLine);
        }
        return sb.toString();
    }

    private String getPropertyNameUpperCase(String str) {
        String str2;
        int indexOf = str.indexOf(":");
        if (indexOf >= 0) {
            int indexOf2 = str.indexOf(";");
            if (indexOf == -1) {
                indexOf = indexOf2;
            } else if (indexOf2 != -1) {
                indexOf = Math.min(indexOf, indexOf2);
            }
            str2 = str.substring(0, indexOf).toUpperCase();
        } else {
            str2 = null;
        }
        return str2;
    }

    private String getQuotedPrintablePart(String str) {
        String str2 = str;
        if (str.trim().endsWith("=")) {
            int length = str.length() - 1;
            do {
            } while (str.charAt(length) != '=');
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, length + 1));
            sb.append(VCardBuilder.VCARD_END_OF_LINE);
            while (true) {
                String line = getLine();
                if (line != null) {
                    if (!line.trim().endsWith("=")) {
                        sb.append(line);
                        str2 = sb.toString();
                        break;
                    }
                    int length2 = line.length() - 1;
                    do {
                    } while (line.charAt(length2) != '=');
                    sb.append(line.substring(0, length2 + 1));
                    sb.append(VCardBuilder.VCARD_END_OF_LINE);
                } else {
                    throw new VCardException("File ended during parsing a Quoted-Printable String");
                }
            }
        }
        return str2;
    }

    private void handleAdrOrgN(VCardProperty vCardProperty, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        if (this.mCurrentEncoding.equals(VCardConstants.PARAM_ENCODING_QP)) {
            String quotedPrintablePart = getQuotedPrintablePart(str);
            vCardProperty.setRawValue(quotedPrintablePart);
            for (String str4 : VCardUtils.constructListFromValue(quotedPrintablePart, getVersion())) {
                arrayList.add(VCardUtils.parseQuotedPrintable(str4, false, str2, str3));
            }
        } else {
            for (String str5 : VCardUtils.constructListFromValue(getPotentialMultiline(str), getVersion())) {
                arrayList.add(VCardUtils.convertStringCharset(str5, str2, str3));
            }
        }
        vCardProperty.setValues(arrayList);
        for (VCardInterpreter vCardInterpreter : this.mInterpreterList) {
            vCardInterpreter.onPropertyCreated(vCardProperty);
        }
    }

    private void handleNest() {
        for (VCardInterpreter vCardInterpreter : this.mInterpreterList) {
            vCardInterpreter.onEntryStarted();
        }
        parseItems();
        for (VCardInterpreter vCardInterpreter2 : this.mInterpreterList) {
            vCardInterpreter2.onEntryEnded();
        }
    }

    private boolean isAsciiLetter(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    private void parseItemInter(VCardProperty vCardProperty, String str) {
        String rawValue = vCardProperty.getRawValue();
        if (str.equals(VCardConstants.PROPERTY_AGENT)) {
            handleAgent(vCardProperty);
        } else if (!isValidPropertyName(str)) {
            throw new VCardException("Unknown property name: \"" + str + "\"");
        } else if (!str.equals(VCardConstants.PROPERTY_VERSION) || rawValue.equals(getVersionString())) {
            handlePropertyValue(vCardProperty, str);
        } else {
            throw new VCardVersionException("Incompatible version: " + rawValue + " != " + getVersionString());
        }
    }

    private boolean parseOneVCard() {
        boolean z = false;
        this.mCurrentEncoding = "8BIT";
        this.mCurrentCharset = "UTF-8";
        if (readBeginVCard(false)) {
            for (VCardInterpreter vCardInterpreter : this.mInterpreterList) {
                vCardInterpreter.onEntryStarted();
            }
            parseItems();
            for (VCardInterpreter vCardInterpreter2 : this.mInterpreterList) {
                vCardInterpreter2.onEntryEnded();
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String unescapeCharacter(char c) {
        return (c == '\\' || c == ';' || c == ':' || c == ',') ? String.valueOf(c) : null;
    }

    public void addInterpreter(VCardInterpreter vCardInterpreter) {
        this.mInterpreterList.add(vCardInterpreter);
    }

    public final void cancel() {
        synchronized (this) {
            Log.i(LOG_TAG, "ParserImpl received cancel operation.");
            this.mCanceled = true;
        }
    }

    protected VCardProperty constructPropertyData(String str) {
        VCardProperty vCardProperty = new VCardProperty();
        int length = str.length();
        if (length <= 0 || str.charAt(0) != '#') {
            int i = 0;
            int i2 = 0;
            char c = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                switch (c) {
                    case 0:
                        if (charAt == ':') {
                            vCardProperty.setName(str.substring(i2, i));
                            vCardProperty.setRawValue(i < length - 1 ? str.substring(i + 1) : BuildConfig.FLAVOR);
                            return vCardProperty;
                        }
                        if (charAt == '.') {
                            String substring = str.substring(i2, i);
                            if (substring.length() == 0) {
                                Log.w(LOG_TAG, "Empty group found. Ignoring.");
                            } else {
                                vCardProperty.addGroup(substring);
                            }
                            i2 = i + 1;
                            continue;
                        } else {
                            i2 = i2;
                            if (charAt == ';') {
                                vCardProperty.setName(str.substring(i2, i));
                                i2 = i + 1;
                                break;
                            }
                        }
                        i++;
                    case 1:
                        if (charAt == '\"') {
                            if (VCardConstants.VERSION_V21.equalsIgnoreCase(getVersionString())) {
                                Log.w(LOG_TAG, "Double-quoted params found in vCard 2.1. Silently allow it");
                            }
                            c = 2;
                            i2 = i2;
                            continue;
                        } else if (charAt == ';') {
                            handleParams(vCardProperty, str.substring(i2, i));
                            i2 = i + 1;
                        } else {
                            i2 = i2;
                            if (charAt == ':') {
                                handleParams(vCardProperty, str.substring(i2, i));
                                vCardProperty.setRawValue(i < length - 1 ? str.substring(i + 1) : BuildConfig.FLAVOR);
                                return vCardProperty;
                            }
                        }
                        i++;
                    case 2:
                        i2 = i2;
                        if (charAt == '\"') {
                            i2 = i2;
                            if (VCardConstants.VERSION_V21.equalsIgnoreCase(getVersionString())) {
                                Log.w(LOG_TAG, "Double-quoted params found in vCard 2.1. Silently allow it");
                                i2 = i2;
                                break;
                            }
                        } else {
                            continue;
                            i++;
                        }
                        break;
                    default:
                        i2 = i2;
                        continue;
                        i++;
                }
                c = 1;
                i++;
            }
            throw new VCardInvalidLineException("Invalid line: \"" + str + "\"");
        }
        throw new VCardInvalidCommentLineException();
    }

    protected Set<String> getAvailableEncodingSet() {
        return VCardParser_V21.sAvailableEncoding;
    }

    protected String getBase64(String str) {
        String peekLine;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        while (true) {
            peekLine = peekLine();
            if (peekLine != null) {
                String propertyNameUpperCase = getPropertyNameUpperCase(peekLine);
                if (!getKnownPropertyNameSet().contains(propertyNameUpperCase) && !VCardConstants.PROPERTY_X_ANDROID_CUSTOM.equals(propertyNameUpperCase)) {
                    getLine();
                    if (peekLine.length() == 0) {
                        break;
                    }
                    sb.append(peekLine.trim());
                } else {
                    break;
                }
            } else {
                throw new VCardException("File ended during parsing BASE64 binary");
            }
        }
        Log.w(LOG_TAG, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property.");
        Log.w(LOG_TAG, "Problematic line: " + peekLine.trim());
        return sb.toString();
    }

    protected String getCurrentCharset() {
        return this.mCurrentCharset;
    }

    protected String getDefaultCharset() {
        return "UTF-8";
    }

    protected String getDefaultEncoding() {
        return "8BIT";
    }

    protected Set<String> getKnownPropertyNameSet() {
        return VCardParser_V21.sKnownPropertyNameSet;
    }

    protected Set<String> getKnownTypeSet() {
        return VCardParser_V21.sKnownTypeSet;
    }

    protected Set<String> getKnownValueSet() {
        return VCardParser_V21.sKnownValueSet;
    }

    protected String getLine() {
        return this.mReader.readLine();
    }

    protected String getNonEmptyLine() {
        String line;
        do {
            line = getLine();
            if (line == null) {
                throw new VCardException("Reached end of buffer.");
            }
        } while (line.trim().length() <= 0);
        return line;
    }

    protected int getVersion() {
        return 0;
    }

    protected String getVersionString() {
        return VCardConstants.VERSION_V21;
    }

    protected void handleAgent(VCardProperty vCardProperty) {
        if (!vCardProperty.getRawValue().toUpperCase().contains("BEGIN:VCARD")) {
            for (VCardInterpreter vCardInterpreter : this.mInterpreterList) {
                vCardInterpreter.onPropertyCreated(vCardProperty);
            }
            return;
        }
        throw new VCardAgentNotSupportedException("AGENT Property is not supported now.");
    }

    protected void handleAnyParam(VCardProperty vCardProperty, String str, String str2) {
        vCardProperty.addParameter(str, str2);
    }

    protected void handleCharset(VCardProperty vCardProperty, String str) {
        this.mCurrentCharset = str;
        vCardProperty.addParameter(VCardConstants.PARAM_CHARSET, str);
    }

    protected void handleEncoding(VCardProperty vCardProperty, String str) {
        if (getAvailableEncodingSet().contains(str) || str.startsWith("X-")) {
            vCardProperty.addParameter(VCardConstants.PARAM_ENCODING, str);
            this.mCurrentEncoding = str.toUpperCase();
            return;
        }
        throw new VCardException("Unknown encoding \"" + str + "\"");
    }

    protected void handleLanguage(VCardProperty vCardProperty, String str) {
        String[] split = str.split("-");
        if (split.length != 2) {
            throw new VCardException("Invalid Language: \"" + str + "\"");
        }
        String str2 = split[0];
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            if (!isAsciiLetter(str2.charAt(i))) {
                throw new VCardException("Invalid Language: \"" + str + "\"");
            }
        }
        String str3 = split[1];
        int length2 = str3.length();
        for (int i2 = 0; i2 < length2; i2++) {
            if (!isAsciiLetter(str3.charAt(i2))) {
                throw new VCardException("Invalid Language: \"" + str + "\"");
            }
        }
        vCardProperty.addParameter(VCardConstants.PARAM_LANGUAGE, str);
    }

    protected void handleParamWithoutName(VCardProperty vCardProperty, String str) {
        handleType(vCardProperty, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleParams(VCardProperty vCardProperty, String str) {
        String[] split = str.split("=", 2);
        if (split.length == 2) {
            String upperCase = split[0].trim().toUpperCase();
            String trim = split[1].trim();
            if (upperCase.equals(VCardConstants.PARAM_TYPE)) {
                handleType(vCardProperty, trim);
            } else if (upperCase.equals(VCardConstants.PARAM_VALUE)) {
                handleValue(vCardProperty, trim);
            } else if (upperCase.equals(VCardConstants.PARAM_ENCODING)) {
                handleEncoding(vCardProperty, trim.toUpperCase());
            } else if (upperCase.equals(VCardConstants.PARAM_CHARSET)) {
                handleCharset(vCardProperty, trim);
            } else if (upperCase.equals(VCardConstants.PARAM_LANGUAGE)) {
                handleLanguage(vCardProperty, trim);
            } else if (upperCase.startsWith("X-")) {
                handleAnyParam(vCardProperty, upperCase, trim);
            } else {
                throw new VCardException("Unknown type \"" + upperCase + "\"");
            }
        } else {
            handleParamWithoutName(vCardProperty, split[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0256 A[LOOP:4: B:74:0x024d->B:76:0x0256, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handlePropertyValue(com.android.vcard.VCardProperty r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.handlePropertyValue(com.android.vcard.VCardProperty, java.lang.String):void");
    }

    protected void handleType(VCardProperty vCardProperty, String str) {
        if (!getKnownTypeSet().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.mUnknownTypeSet.contains(str)) {
            this.mUnknownTypeSet.add(str);
            Log.w(LOG_TAG, String.format("TYPE unsupported by %s: ", Integer.valueOf(getVersion()), str));
        }
        vCardProperty.addParameter(VCardConstants.PARAM_TYPE, str);
    }

    protected void handleValue(VCardProperty vCardProperty, String str) {
        if (!getKnownValueSet().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.mUnknownValueSet.contains(str)) {
            this.mUnknownValueSet.add(str);
            Log.w(LOG_TAG, String.format("The value unsupported by TYPE of %s: ", Integer.valueOf(getVersion()), str));
        }
        vCardProperty.addParameter(VCardConstants.PARAM_VALUE, str);
    }

    protected boolean isValidPropertyName(String str) {
        if (getKnownPropertyNameSet().contains(str.toUpperCase()) || str.startsWith("X-") || this.mUnknownTypeSet.contains(str)) {
            return true;
        }
        this.mUnknownTypeSet.add(str);
        Log.w(LOG_TAG, "Property name unsupported by vCard 2.1: " + str);
        return true;
    }

    protected String maybeUnescapeCharacter(char c) {
        return unescapeCharacter(c);
    }

    protected String maybeUnescapeText(String str) {
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
        android.util.Log.i(com.android.vcard.VCardParserImpl_V21.LOG_TAG, "Cancel request has come. exitting parse operation.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(java.io.InputStream r9) {
        /*
            r8 = this;
            r0 = r9
            if (r0 != 0) goto L_0x000f
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "InputStream must not be null."
            r1.<init>(r2)
            throw r0
        L_0x000f:
            r0 = r8
            com.android.vcard.VCardParserImpl_V21$CustomBufferedReader r1 = new com.android.vcard.VCardParserImpl_V21$CustomBufferedReader
            r2 = r1
            java.io.InputStreamReader r3 = new java.io.InputStreamReader
            r4 = r3
            r5 = r9
            r6 = r8
            java.lang.String r6 = r6.mIntermediateCharset
            r4.<init>(r5, r6)
            r2.<init>(r3)
            r0.mReader = r1
            long r0 = java.lang.System.currentTimeMillis()
            r0 = r8
            java.util.List<com.android.vcard.VCardInterpreter> r0 = r0.mInterpreterList
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0034:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x004e
            r0 = r9
            java.lang.Object r0 = r0.next()
            com.android.vcard.VCardInterpreter r0 = (com.android.vcard.VCardInterpreter) r0
            r0.onVCardStarted()
            goto L_0x0034
        L_0x004e:
            r0 = r8
            monitor-enter(r0)
            r0 = r8
            boolean r0 = r0.mCanceled     // Catch: all -> 0x0092
            if (r0 == 0) goto L_0x0086
            java.lang.String r0 = "vCard"
            java.lang.String r1 = "Cancel request has come. exitting parse operation."
            int r0 = android.util.Log.i(r0, r1)     // Catch: all -> 0x0092
            r0 = r8
            monitor-exit(r0)     // Catch: all -> 0x0092
        L_0x0062:
            r0 = r8
            java.util.List<com.android.vcard.VCardInterpreter> r0 = r0.mInterpreterList
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x006c:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0097
            r0 = r9
            java.lang.Object r0 = r0.next()
            com.android.vcard.VCardInterpreter r0 = (com.android.vcard.VCardInterpreter) r0
            r0.onVCardEnded()
            goto L_0x006c
        L_0x0086:
            r0 = r8
            monitor-exit(r0)     // Catch: all -> 0x0092
            r0 = r8
            boolean r0 = r0.parseOneVCard()
            if (r0 != 0) goto L_0x004e
            goto L_0x0062
        L_0x0092:
            r9 = move-exception
            r0 = r8
            monitor-exit(r0)     // Catch: all -> 0x0092
            r0 = r9
            throw r0
        L_0x0097:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.parse(java.io.InputStream):void");
    }

    protected boolean parseItem() {
        boolean z;
        this.mCurrentEncoding = "8BIT";
        VCardProperty constructPropertyData = constructPropertyData(getNonEmptyLine());
        String upperCase = constructPropertyData.getName().toUpperCase();
        String rawValue = constructPropertyData.getRawValue();
        if (upperCase.equals(VCardConstants.PROPERTY_BEGIN)) {
            if (rawValue.equalsIgnoreCase("VCARD")) {
                handleNest();
            } else {
                throw new VCardException("Unknown BEGIN type: " + rawValue);
            }
        } else if (!upperCase.equals(VCardConstants.PROPERTY_END)) {
            parseItemInter(constructPropertyData, upperCase);
        } else if (rawValue.equalsIgnoreCase("VCARD")) {
            z = true;
            return z;
        } else {
            throw new VCardException("Unknown END type: " + rawValue);
        }
        z = false;
        return z;
    }

    protected void parseItems() {
        boolean z = false;
        try {
            z = parseItem();
        } catch (VCardInvalidCommentLineException e) {
            Log.e(LOG_TAG, "Invalid line which looks like some comment was found. Ignored.");
        }
        while (!z) {
            try {
                z = parseItem();
            } catch (VCardInvalidCommentLineException e2) {
                Log.e(LOG_TAG, "Invalid line which looks like some comment was found. Ignored.");
            }
        }
    }

    public void parseOne(InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException("InputStream must not be null.");
        }
        this.mReader = new CustomBufferedReader(new InputStreamReader(inputStream, this.mIntermediateCharset));
        System.currentTimeMillis();
        for (VCardInterpreter vCardInterpreter : this.mInterpreterList) {
            vCardInterpreter.onVCardStarted();
        }
        parseOneVCard();
        for (VCardInterpreter vCardInterpreter2 : this.mInterpreterList) {
            vCardInterpreter2.onVCardEnded();
        }
    }

    protected String peekLine() {
        return this.mReader.peekLine();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean readBeginVCard(boolean r7) {
        /*
            r6 = this;
            r0 = 0
            r8 = r0
        L_0x0002:
            r0 = r6
            java.lang.String r0 = r0.getLine()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x000f
            r0 = r8
            r7 = r0
        L_0x000d:
            r0 = r7
            return r0
        L_0x000f:
            r0 = r9
            java.lang.String r0 = r0.trim()
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0002
            r0 = r9
            java.lang.String r1 = ":"
            r2 = 2
            java.lang.String[] r0 = r0.split(r1, r2)
            r10 = r0
            r0 = r10
            int r0 = r0.length
            r1 = 2
            if (r0 != r1) goto L_0x004e
            r0 = r10
            r1 = 0
            r0 = r0[r1]
            java.lang.String r0 = r0.trim()
            java.lang.String r1 = "BEGIN"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x004e
            r0 = r10
            r1 = 1
            r0 = r0[r1]
            java.lang.String r0 = r0.trim()
            java.lang.String r1 = "VCARD"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x004e
            r0 = 1
            r7 = r0
            goto L_0x000d
        L_0x004e:
            r0 = r7
            if (r0 != 0) goto L_0x0071
            com.android.vcard.exception.VCardException r0 = new com.android.vcard.exception.VCardException
            r1 = r0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = r2
            java.lang.String r4 = "Expected String \"BEGIN:VCARD\" did not come (Instead, \""
            r3.<init>(r4)
            r3 = r9
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "\" came)"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0071:
            r0 = r7
            if (r0 != 0) goto L_0x0002
            com.android.vcard.exception.VCardException r0 = new com.android.vcard.exception.VCardException
            r1 = r0
            java.lang.String r2 = "Reached where must not be reached."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.readBeginVCard(boolean):boolean");
    }
}
