package com.android.vcard;

import android.util.Log;
import com.android.vcard.exception.VCardException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardParserImpl_V30.class */
public class VCardParserImpl_V30 extends VCardParserImpl_V21 {
    private static final String LOG_TAG = "vCard";
    private boolean mEmittedAgentWarning = false;
    private String mPreviousLine;

    public VCardParserImpl_V30() {
    }

    public VCardParserImpl_V30(int i) {
        super(i);
    }

    private void splitAndPutParam(VCardProperty vCardProperty, String str, String str2) {
        int length = str2.length();
        boolean z = false;
        StringBuilder sb = null;
        for (int i = 0; i < length; i++) {
            char charAt = str2.charAt(i);
            if (charAt == '\"') {
                if (z) {
                    vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                    z = false;
                    sb = null;
                } else {
                    if (sb != null) {
                        if (sb.length() > 0) {
                            Log.w(LOG_TAG, "Unexpected Dquote inside property.");
                        } else {
                            vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                        }
                    }
                    z = true;
                    sb = sb;
                }
            } else if (charAt != ',' || z) {
                sb = sb;
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(charAt);
            } else if (sb == null) {
                Log.w(LOG_TAG, "Comma is used before actual string comes. (" + str2 + ")");
                sb = sb;
            } else {
                vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                sb = null;
            }
        }
        if (z) {
            Log.d(LOG_TAG, "Dangling Dquote.");
        }
        if (sb == null) {
            return;
        }
        if (sb.length() == 0) {
            Log.w(LOG_TAG, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing.");
        } else {
            vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
        }
    }

    public static String unescapeCharacter(char c) {
        return (c == 'n' || c == 'N') ? "\n" : String.valueOf(c);
    }

    public static String unescapeText(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '\\' || i >= length - 1) {
                sb.append(charAt);
            } else {
                i++;
                char charAt2 = str.charAt(i);
                if (charAt2 == 'n' || charAt2 == 'N') {
                    sb.append("\n");
                } else {
                    sb.append(charAt2);
                }
            }
            i++;
        }
        return sb.toString();
    }

    protected String encodeParamValue(String str) {
        return VCardUtils.convertStringCharset(str, VCardConfig.DEFAULT_INTERMEDIATE_CHARSET, "UTF-8");
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getBase64(String str) {
        return str;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected Set<String> getKnownPropertyNameSet() {
        return VCardParser_V30.sKnownPropertyNameSet;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getLine() {
        String readLine;
        if (this.mPreviousLine != null) {
            readLine = this.mPreviousLine;
            this.mPreviousLine = null;
        } else {
            readLine = this.mReader.readLine();
        }
        return readLine;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getNonEmptyLine() {
        String readLine;
        String str = null;
        StringBuilder sb = null;
        while (true) {
            readLine = this.mReader.readLine();
            if (readLine != null) {
                if (readLine.length() != 0) {
                    if (readLine.charAt(0) != ' ' && readLine.charAt(0) != '\t') {
                        if (sb != null || this.mPreviousLine != null) {
                            break;
                        }
                        this.mPreviousLine = readLine;
                    } else {
                        StringBuilder sb2 = sb;
                        if (sb == null) {
                            sb2 = new StringBuilder();
                        }
                        if (this.mPreviousLine != null) {
                            sb2.append(this.mPreviousLine);
                            this.mPreviousLine = null;
                        }
                        sb2.append(readLine.substring(1));
                        sb = sb2;
                    }
                }
            } else {
                break;
            }
        }
        if (sb != null) {
            str = sb.toString();
        } else if (this.mPreviousLine != null) {
            str = this.mPreviousLine;
        }
        this.mPreviousLine = readLine;
        if (str != null) {
            return str;
        }
        throw new VCardException("Reached end of buffer.");
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected int getVersion() {
        return 1;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getVersionString() {
        return VCardConstants.VERSION_V30;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleAgent(VCardProperty vCardProperty) {
        if (!this.mEmittedAgentWarning) {
            Log.w(LOG_TAG, "AGENT in vCard 3.0 is not supported yet. Ignore it");
            this.mEmittedAgentWarning = true;
        }
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleAnyParam(VCardProperty vCardProperty, String str, String str2) {
        splitAndPutParam(vCardProperty, str, str2);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleParamWithoutName(VCardProperty vCardProperty, String str) {
        handleType(vCardProperty, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.vcard.VCardParserImpl_V21
    public void handleParams(VCardProperty vCardProperty, String str) {
        try {
            super.handleParams(vCardProperty, str);
        } catch (VCardException e) {
            String[] split = str.split("=", 2);
            if (split.length == 2) {
                handleAnyParam(vCardProperty, split[0], split[1]);
                return;
            }
            throw new VCardException("Unknown params value: " + str);
        }
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleType(VCardProperty vCardProperty, String str) {
        splitAndPutParam(vCardProperty, VCardConstants.PARAM_TYPE, str);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String maybeUnescapeCharacter(char c) {
        return unescapeCharacter(c);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String maybeUnescapeText(String str) {
        return unescapeText(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.vcard.VCardParserImpl_V21
    public boolean readBeginVCard(boolean z) {
        return super.readBeginVCard(z);
    }
}
