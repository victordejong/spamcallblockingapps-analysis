package com.android.vcard;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.CoverUtils;
import com.android.vcard.VCardUtils;
import com.asus.updatesdk.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardBuilder.class */
public class VCardBuilder {
    public static final int DEFAULT_EMAIL_TYPE = 3;
    public static final int DEFAULT_PHONE_TYPE = 1;
    public static final int DEFAULT_POSTAL_TYPE = 1;
    private static final String LOG_TAG = "vCard";
    private static final String SHIFT_JIS = "SHIFT_JIS";
    private static final String VCARD_DATA_PUBLIC = "PUBLIC";
    private static final String VCARD_DATA_SEPARATOR = ":";
    private static final String VCARD_DATA_VCARD = "VCARD";
    public static final String VCARD_END_OF_LINE = "\r\n";
    private static final String VCARD_ITEM_SEPARATOR = ";";
    private static final String VCARD_PARAM_ENCODING_BASE64_AS_B = "ENCODING=B";
    private static final String VCARD_PARAM_ENCODING_BASE64_V21 = "ENCODING=BASE64";
    private static final String VCARD_PARAM_ENCODING_QP = "ENCODING=QUOTED-PRINTABLE";
    private static final String VCARD_PARAM_EQUAL = "=";
    private static final String VCARD_PARAM_SEPARATOR = ";";
    private static final String VCARD_WS = " ";
    private static final Set<String> sAllowedAndroidPropertySet = Collections.unmodifiableSet(new HashSet(Arrays.asList("vnd.android.cursor.item/nickname", "vnd.android.cursor.item/contact_event", "vnd.android.cursor.item/relation")));
    private static final Map<Integer, Integer> sPostalTypePriorityMap;
    private final boolean mAppendTypeParamName;
    private StringBuilder mBuilder;
    private final String mCharset;
    private boolean mEndAppended;
    private final boolean mIsDoCoMo;
    private final boolean mIsJapaneseMobilePhone;
    private final boolean mIsV30OrV40;
    private final boolean mNeedsToConvertPhoneticString;
    private final boolean mOnlyOneNoteFieldIsAvailable;
    private final boolean mRefrainsQPToNameProperties;
    private final boolean mShouldAppendCharsetParam;
    private final boolean mShouldUseQuotedPrintable;
    private final boolean mUsesAndroidProperty;
    private final boolean mUsesDefactProperty;
    private final String mVCardCharsetParameter;
    private final int mVCardType;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardBuilder$PostalStruct.class */
    public static class PostalStruct {
        final String addressData;
        final boolean appendCharset;
        final boolean reallyUseQuotedPrintable;

        public PostalStruct(boolean z, boolean z2, String str) {
            this.reallyUseQuotedPrintable = z;
            this.appendCharset = z2;
            this.addressData = str;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        sPostalTypePriorityMap = hashMap;
        hashMap.put(1, 0);
        sPostalTypePriorityMap.put(2, 1);
        sPostalTypePriorityMap.put(3, 2);
        sPostalTypePriorityMap.put(0, 3);
    }

    public VCardBuilder(int i) {
        this(i, null);
    }

    public VCardBuilder(int i, String str) {
        boolean z = false;
        this.mVCardType = i;
        if (VCardConfig.isVersion40(i)) {
            Log.w(LOG_TAG, "Should not use vCard 4.0 when building vCard. It is not officially published yet.");
        }
        this.mIsV30OrV40 = VCardConfig.isVersion30(i) || VCardConfig.isVersion40(i);
        this.mShouldUseQuotedPrintable = VCardConfig.shouldUseQuotedPrintable(i);
        this.mIsDoCoMo = VCardConfig.isDoCoMo(i);
        this.mIsJapaneseMobilePhone = VCardConfig.needsToConvertPhoneticString(i);
        this.mOnlyOneNoteFieldIsAvailable = VCardConfig.onlyOneNoteFieldIsAvailable(i);
        this.mUsesAndroidProperty = VCardConfig.usesAndroidSpecificProperty(i);
        this.mUsesDefactProperty = VCardConfig.usesDefactProperty(i);
        this.mRefrainsQPToNameProperties = VCardConfig.shouldRefrainQPToNameProperties(i);
        this.mAppendTypeParamName = VCardConfig.appendTypeParamName(i);
        this.mNeedsToConvertPhoneticString = VCardConfig.needsToConvertPhoneticString(i);
        this.mShouldAppendCharsetParam = (!VCardConfig.isVersion30(i) || !"UTF-8".equalsIgnoreCase(str)) ? true : z;
        if (VCardConfig.isDoCoMo(i)) {
            if (SHIFT_JIS.equalsIgnoreCase(str)) {
                this.mCharset = str;
            } else if (TextUtils.isEmpty(str)) {
                this.mCharset = SHIFT_JIS;
            } else {
                this.mCharset = str;
            }
            this.mVCardCharsetParameter = "CHARSET=SHIFT_JIS";
        } else if (TextUtils.isEmpty(str)) {
            Log.i(LOG_TAG, "Use the charset \"UTF-8\" for export.");
            this.mCharset = "UTF-8";
            this.mVCardCharsetParameter = "CHARSET=UTF-8";
        } else {
            this.mCharset = str;
            this.mVCardCharsetParameter = "CHARSET=" + str;
        }
        clear();
    }

    private VCardBuilder appendNamePropertiesV40(List<ContentValues> list) {
        if (this.mIsDoCoMo || this.mNeedsToConvertPhoneticString) {
            Log.w(LOG_TAG, "Invalid flag is used in vCard 4.0 construction. Ignored.");
        }
        if (list == null || list.isEmpty()) {
            appendLine(VCardConstants.PROPERTY_FN, BuildConfig.FLAVOR);
        } else {
            ContentValues primaryContentValueWithStructuredName = getPrimaryContentValueWithStructuredName(list);
            String asString = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.USER_SET);
            String asString2 = primaryContentValueWithStructuredName.getAsString("data5");
            String asString3 = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.COVER_TYPE);
            String asString4 = primaryContentValueWithStructuredName.getAsString("data4");
            String asString5 = primaryContentValueWithStructuredName.getAsString("data6");
            String asString6 = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.COVER_URI);
            String str = asString;
            if (TextUtils.isEmpty(asString)) {
                str = asString;
                if (TextUtils.isEmpty(asString3)) {
                    str = asString;
                    if (TextUtils.isEmpty(asString2)) {
                        str = asString;
                        if (TextUtils.isEmpty(asString4)) {
                            str = asString;
                            if (TextUtils.isEmpty(asString5)) {
                                if (TextUtils.isEmpty(asString6)) {
                                    appendLine(VCardConstants.PROPERTY_FN, BuildConfig.FLAVOR);
                                } else {
                                    str = asString6;
                                }
                            }
                        }
                    }
                }
            }
            String asString7 = primaryContentValueWithStructuredName.getAsString("data9");
            String asString8 = primaryContentValueWithStructuredName.getAsString("data8");
            String asString9 = primaryContentValueWithStructuredName.getAsString("data7");
            String escapeCharacters = escapeCharacters(str);
            String escapeCharacters2 = escapeCharacters(asString3);
            String escapeCharacters3 = escapeCharacters(asString2);
            String escapeCharacters4 = escapeCharacters(asString4);
            String escapeCharacters5 = escapeCharacters(asString5);
            this.mBuilder.append(VCardConstants.PROPERTY_N);
            if (!TextUtils.isEmpty(asString7) || !TextUtils.isEmpty(asString8) || !TextUtils.isEmpty(asString9)) {
                this.mBuilder.append(";");
                this.mBuilder.append("SORT-AS=").append(VCardUtils.toStringAsV40ParamValue(escapeCharacters(asString7) + ';' + escapeCharacters(asString9) + ';' + escapeCharacters(asString8)));
            }
            this.mBuilder.append(VCARD_DATA_SEPARATOR);
            this.mBuilder.append(escapeCharacters);
            this.mBuilder.append(";");
            this.mBuilder.append(escapeCharacters2);
            this.mBuilder.append(";");
            this.mBuilder.append(escapeCharacters3);
            this.mBuilder.append(";");
            this.mBuilder.append(escapeCharacters4);
            this.mBuilder.append(";");
            this.mBuilder.append(escapeCharacters5);
            this.mBuilder.append(VCARD_END_OF_LINE);
            if (TextUtils.isEmpty(asString6)) {
                Log.w(LOG_TAG, "DISPLAY_NAME is empty.");
                appendLine(VCardConstants.PROPERTY_FN, escapeCharacters(VCardUtils.constructNameFromElements(VCardConfig.getNameOrderType(this.mVCardType), str, asString2, asString3, asString4, asString5)));
            } else {
                String escapeCharacters6 = escapeCharacters(asString6);
                this.mBuilder.append(VCardConstants.PROPERTY_FN);
                this.mBuilder.append(VCARD_DATA_SEPARATOR);
                this.mBuilder.append(escapeCharacters6);
                this.mBuilder.append(VCARD_END_OF_LINE);
            }
            appendPhoneticNameFields(primaryContentValueWithStructuredName);
        }
        return this;
    }

    private void appendPhoneticNameFields(ContentValues contentValues) {
        String escapeCharacters;
        String escapeCharacters2;
        String escapeCharacters3;
        boolean z;
        String asString = contentValues.getAsString("data9");
        String asString2 = contentValues.getAsString("data8");
        String asString3 = contentValues.getAsString("data7");
        String str = asString3;
        String str2 = asString2;
        String str3 = asString;
        if (this.mNeedsToConvertPhoneticString) {
            str3 = VCardUtils.toHalfWidthString(asString);
            str2 = VCardUtils.toHalfWidthString(asString2);
            str = VCardUtils.toHalfWidthString(asString3);
        }
        if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str)) {
            if (!VCardConfig.isVersion40(this.mVCardType)) {
                if (VCardConfig.isVersion30(this.mVCardType)) {
                    String constructNameFromElements = VCardUtils.constructNameFromElements(this.mVCardType, str3, str2, str);
                    this.mBuilder.append(VCardConstants.PROPERTY_SORT_STRING);
                    if (VCardConfig.isVersion30(this.mVCardType) && shouldAppendCharsetParam(constructNameFromElements)) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(escapeCharacters(constructNameFromElements));
                    this.mBuilder.append(VCARD_END_OF_LINE);
                } else if (this.mIsJapaneseMobilePhone) {
                    this.mBuilder.append(VCardConstants.PROPERTY_SOUND);
                    this.mBuilder.append(";");
                    this.mBuilder.append("X-IRMC-N");
                    if (!this.mRefrainsQPToNameProperties && (!VCardUtils.containsOnlyNonCrLfPrintableAscii(str3) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(str2) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(str))) {
                        escapeCharacters = encodeQuotedPrintable(str3);
                        escapeCharacters2 = encodeQuotedPrintable(str2);
                        escapeCharacters3 = encodeQuotedPrintable(str);
                    } else {
                        escapeCharacters = escapeCharacters(str3);
                        escapeCharacters2 = escapeCharacters(str2);
                        escapeCharacters3 = escapeCharacters(str);
                    }
                    if (shouldAppendCharsetParam(escapeCharacters, escapeCharacters2, escapeCharacters3)) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    if (!TextUtils.isEmpty(escapeCharacters)) {
                        this.mBuilder.append(escapeCharacters);
                        z = false;
                    } else {
                        z = true;
                    }
                    z = z;
                    if (!TextUtils.isEmpty(escapeCharacters2)) {
                        if (z) {
                            z = false;
                        } else {
                            this.mBuilder.append(' ');
                        }
                        this.mBuilder.append(escapeCharacters2);
                    }
                    if (!TextUtils.isEmpty(escapeCharacters3)) {
                        if (!z) {
                            this.mBuilder.append(' ');
                        }
                        this.mBuilder.append(escapeCharacters3);
                    }
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                    this.mBuilder.append(VCARD_END_OF_LINE);
                }
            }
            if (this.mUsesDefactProperty) {
                if (!TextUtils.isEmpty(str)) {
                    boolean z2 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str);
                    String encodeQuotedPrintable = z2 ? encodeQuotedPrintable(str) : escapeCharacters(str);
                    this.mBuilder.append(VCardConstants.PROPERTY_X_PHONETIC_FIRST_NAME);
                    if (shouldAppendCharsetParam(str)) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    if (z2) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(encodeQuotedPrintable);
                    this.mBuilder.append(VCARD_END_OF_LINE);
                }
                if (!TextUtils.isEmpty(str2)) {
                    boolean z3 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str2);
                    String encodeQuotedPrintable2 = z3 ? encodeQuotedPrintable(str2) : escapeCharacters(str2);
                    this.mBuilder.append(VCardConstants.PROPERTY_X_PHONETIC_MIDDLE_NAME);
                    if (shouldAppendCharsetParam(str2)) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    if (z3) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(encodeQuotedPrintable2);
                    this.mBuilder.append(VCARD_END_OF_LINE);
                }
                if (!TextUtils.isEmpty(str3)) {
                    boolean z4 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str3);
                    String encodeQuotedPrintable3 = z4 ? encodeQuotedPrintable(str3) : escapeCharacters(str3);
                    this.mBuilder.append(VCardConstants.PROPERTY_X_PHONETIC_LAST_NAME);
                    if (shouldAppendCharsetParam(str3)) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    if (z4) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(encodeQuotedPrintable3);
                    this.mBuilder.append(VCARD_END_OF_LINE);
                }
            }
        } else if (this.mIsDoCoMo) {
            this.mBuilder.append(VCardConstants.PROPERTY_SOUND);
            this.mBuilder.append(";");
            this.mBuilder.append("X-IRMC-N");
            this.mBuilder.append(VCARD_DATA_SEPARATOR);
            this.mBuilder.append(";");
            this.mBuilder.append(";");
            this.mBuilder.append(";");
            this.mBuilder.append(";");
            this.mBuilder.append(VCARD_END_OF_LINE);
        }
    }

    private void appendPostalsForDoCoMo(List<ContentValues> list) {
        ContentValues contentValues = null;
        Iterator<ContentValues> it = list.iterator();
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ContentValues next = it.next();
            if (next != null) {
                Integer asInteger = next.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                Integer num = sPostalTypePriorityMap.get(asInteger);
                i2 = num != null ? num.intValue() : Integer.MAX_VALUE;
                if (i2 < i2) {
                    i = asInteger.intValue();
                    if (i2 == 0) {
                        contentValues = next;
                        break;
                    }
                    contentValues = next;
                } else {
                    i2 = i2;
                }
            }
        }
        if (contentValues == null) {
            Log.w(LOG_TAG, "Should not come here. Must have at least one postal data.");
        } else {
            appendPostalLine(i, contentValues.getAsString(CoverUtils.CoverData.USER_SET), contentValues, false, true);
        }
    }

    private void appendPostalsForGeneric(List<ContentValues> list) {
        for (ContentValues contentValues : list) {
            if (contentValues != null) {
                Integer asInteger = contentValues.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                int intValue = asInteger != null ? asInteger.intValue() : 1;
                String asString = contentValues.getAsString(CoverUtils.CoverData.USER_SET);
                Integer asInteger2 = contentValues.getAsInteger("is_primary");
                appendPostalLine(intValue, asString, contentValues, asInteger2 != null ? asInteger2.intValue() > 0 : false, false);
            }
        }
    }

    private void appendTypeParameter(String str) {
        appendTypeParameter(this.mBuilder, str);
    }

    private void appendTypeParameter(StringBuilder sb, String str) {
        if (VCardConfig.isVersion40(this.mVCardType) || ((VCardConfig.isVersion30(this.mVCardType) || this.mAppendTypeParamName) && !this.mIsDoCoMo)) {
            sb.append("TYPE=");
        }
        sb.append(str);
    }

    private void appendTypeParameters(List<String> list) {
        boolean z = true;
        for (String str : list) {
            if (VCardConfig.isVersion30(this.mVCardType) || VCardConfig.isVersion40(this.mVCardType)) {
                String stringAsV40ParamValue = VCardConfig.isVersion40(this.mVCardType) ? VCardUtils.toStringAsV40ParamValue(str) : VCardUtils.toStringAsV30ParamValue(str);
                if (!TextUtils.isEmpty(stringAsV40ParamValue)) {
                    if (z) {
                        z = false;
                    } else {
                        this.mBuilder.append(";");
                    }
                    appendTypeParameter(stringAsV40ParamValue);
                }
            } else if (VCardUtils.isV21Word(str)) {
                if (z) {
                    z = false;
                } else {
                    this.mBuilder.append(";");
                }
                appendTypeParameter(str);
            }
        }
    }

    private void appendUncommonPhoneType(StringBuilder sb, Integer num) {
        if (this.mIsDoCoMo) {
            sb.append(VCardConstants.PARAM_TYPE_VOICE);
            return;
        }
        String phoneTypeString = VCardUtils.getPhoneTypeString(num);
        if (phoneTypeString != null) {
            appendTypeParameter(phoneTypeString);
        } else {
            Log.e(LOG_TAG, "Unknown or unsupported (by vCard) Phone type: " + num);
        }
    }

    private void buildSinglePartNameField(String str, String str2) {
        boolean z = !this.mRefrainsQPToNameProperties && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str2);
        String encodeQuotedPrintable = z ? encodeQuotedPrintable(str2) : escapeCharacters(str2);
        this.mBuilder.append(str);
        if (shouldAppendCharsetParam(str2)) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z) {
            this.mBuilder.append(";");
            this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
        }
        this.mBuilder.append(VCARD_DATA_SEPARATOR);
        this.mBuilder.append(encodeQuotedPrintable);
    }

    private boolean containsNonEmptyName(ContentValues contentValues) {
        return !TextUtils.isEmpty(contentValues.getAsString(CoverUtils.CoverData.USER_SET)) || !TextUtils.isEmpty(contentValues.getAsString("data5")) || !TextUtils.isEmpty(contentValues.getAsString(CoverUtils.CoverData.COVER_TYPE)) || !TextUtils.isEmpty(contentValues.getAsString("data4")) || !TextUtils.isEmpty(contentValues.getAsString("data6")) || !TextUtils.isEmpty(contentValues.getAsString("data9")) || !TextUtils.isEmpty(contentValues.getAsString("data8")) || !TextUtils.isEmpty(contentValues.getAsString("data7")) || !TextUtils.isEmpty(contentValues.getAsString(CoverUtils.CoverData.COVER_URI));
    }

    private String encodeQuotedPrintable(String str) {
        int i;
        int i2;
        byte[] bArr;
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = BuildConfig.FLAVOR;
        } else {
            StringBuilder sb2 = new StringBuilder();
            try {
                bArr = str.getBytes(this.mCharset);
                i2 = 0;
                i = 0;
            } catch (UnsupportedEncodingException e) {
                Log.e(LOG_TAG, "Charset " + this.mCharset + " cannot be used. Try default charset");
                bArr = str.getBytes();
                i2 = 0;
                i = 0;
            }
            while (i < bArr.length) {
                sb2.append(String.format("=%02X", Byte.valueOf(bArr[i])));
                int i3 = i + 1;
                int i4 = i2 + 3;
                i2 = i4;
                i = i3;
                if (i4 >= 67) {
                    sb2.append("=\r\n");
                    i2 = 0;
                    i = i3;
                }
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private String escapeCharacters(String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = BuildConfig.FLAVOR;
        } else {
            StringBuilder sb2 = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                switch (charAt) {
                    case '\r':
                        if (i + 1 < length && str.charAt(i) == '\n') {
                            break;
                        }
                        break;
                    case '\n':
                        sb2.append("\\n");
                        break;
                    case ',':
                        if (this.mIsV30OrV40) {
                            sb2.append("\\,");
                            break;
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                    case ';':
                        sb2.append('\\');
                        sb2.append(';');
                        break;
                    case '\\':
                        if (this.mIsV30OrV40) {
                            sb2.append("\\\\");
                            break;
                        }
                    case '<':
                    case '>':
                        if (this.mIsDoCoMo) {
                            sb2.append('\\');
                            sb2.append(charAt);
                            break;
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                    default:
                        sb2.append(charAt);
                        break;
                }
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
        if (containsNonEmptyName(r7) != false) goto L_0x007d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.ContentValues getPrimaryContentValueWithStructuredName(java.util.List<android.content.ContentValues> r4) {
        /*
            r3 = this;
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = 0
            r4 = r0
            r0 = 0
            r6 = r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x009a
            r0 = r5
            java.lang.Object r0 = r0.next()
            android.content.ContentValues r0 = (android.content.ContentValues) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x000b
            r0 = r7
            java.lang.String r1 = "is_super_primary"
            java.lang.Integer r0 = r0.getAsInteger(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0046
            r0 = r8
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0046
        L_0x003b:
            r0 = r7
            if (r0 != 0) goto L_0x008e
            r0 = r4
            if (r0 == 0) goto L_0x0083
        L_0x0044:
            r0 = r4
            return r0
        L_0x0046:
            r0 = r6
            if (r0 != 0) goto L_0x0094
            r0 = r7
            java.lang.String r1 = "is_primary"
            java.lang.Integer r0 = r0.getAsInteger(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0070
            r0 = r8
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0070
            r0 = r3
            r1 = r7
            boolean r0 = r0.containsNonEmptyName(r1)
            if (r0 == 0) goto L_0x0070
            r0 = r7
            r6 = r0
            goto L_0x000b
        L_0x0070:
            r0 = r4
            if (r0 != 0) goto L_0x0094
            r0 = r3
            r1 = r7
            boolean r0 = r0.containsNonEmptyName(r1)
            if (r0 == 0) goto L_0x0094
        L_0x007d:
            r0 = r7
            r4 = r0
            goto L_0x000b
        L_0x0083:
            android.content.ContentValues r0 = new android.content.ContentValues
            r1 = r0
            r1.<init>()
            r4 = r0
            goto L_0x0044
        L_0x008e:
            r0 = r7
            r4 = r0
            goto L_0x0044
        L_0x0094:
            r0 = r4
            r7 = r0
            goto L_0x007d
        L_0x009a:
            r0 = r6
            r7 = r0
            goto L_0x003b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardBuilder.getPrimaryContentValueWithStructuredName(java.util.List):android.content.ContentValues");
    }

    private boolean shouldAppendCharsetParam(String... strArr) {
        boolean z;
        if (!this.mShouldAppendCharsetParam) {
            z = false;
        } else {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (!VCardUtils.containsOnlyPrintableAscii(strArr[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    private List<String> splitPhoneNumbers(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\n' || sb.length() <= 0) {
                sb.append(charAt);
            } else {
                arrayList.add(sb.toString());
                sb = new StringBuilder();
            }
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    private PostalStruct tryConstructPostalStruct(ContentValues contentValues) {
        PostalStruct postalStruct;
        String escapeCharacters;
        String escapeCharacters2;
        String escapeCharacters3;
        String escapeCharacters4;
        String escapeCharacters5;
        String escapeCharacters6;
        boolean z = true;
        boolean z2 = false;
        String asString = contentValues.getAsString("data5");
        String asString2 = contentValues.getAsString("data6");
        String asString3 = contentValues.getAsString("data4");
        String asString4 = contentValues.getAsString("data7");
        String asString5 = contentValues.getAsString("data8");
        String asString6 = contentValues.getAsString("data9");
        String asString7 = contentValues.getAsString("data10");
        String[] strArr = {asString, asString2, asString3, asString4, asString5, asString6, asString7};
        if (!VCardUtils.areAllEmpty(strArr)) {
            boolean z3 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(strArr);
            if (VCardUtils.containsOnlyPrintableAscii(strArr)) {
                z = false;
            }
            String str = TextUtils.isEmpty(asString4) ? TextUtils.isEmpty(asString2) ? BuildConfig.FLAVOR : asString2 : !TextUtils.isEmpty(asString2) ? asString4 + VCARD_WS + asString2 : asString4;
            if (z3) {
                escapeCharacters = encodeQuotedPrintable(asString);
                escapeCharacters2 = encodeQuotedPrintable(asString3);
                escapeCharacters6 = encodeQuotedPrintable(str);
                escapeCharacters3 = encodeQuotedPrintable(asString5);
                escapeCharacters4 = encodeQuotedPrintable(asString6);
                escapeCharacters5 = encodeQuotedPrintable(asString7);
            } else {
                escapeCharacters = escapeCharacters(asString);
                escapeCharacters2 = escapeCharacters(asString3);
                escapeCharacters6 = escapeCharacters(str);
                escapeCharacters3 = escapeCharacters(asString5);
                escapeCharacters4 = escapeCharacters(asString6);
                escapeCharacters5 = escapeCharacters(asString7);
                escapeCharacters(asString2);
            }
            postalStruct = new PostalStruct(z3, z, escapeCharacters + ";;" + escapeCharacters2 + ";" + escapeCharacters6 + ";" + escapeCharacters3 + ";" + escapeCharacters4 + ";" + escapeCharacters5);
        } else {
            String asString8 = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
            if (TextUtils.isEmpty(asString8)) {
                postalStruct = null;
            } else {
                boolean z4 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString8);
                if (!VCardUtils.containsOnlyPrintableAscii(asString8)) {
                    z2 = true;
                }
                String encodeQuotedPrintable = z4 ? encodeQuotedPrintable(asString8) : escapeCharacters(asString8);
                postalStruct = new PostalStruct(z4, z2, ";" + encodeQuotedPrintable + ";;;;;");
            }
        }
        return postalStruct;
    }

    public void appendAndroidSpecificProperty(String str, ContentValues contentValues) {
        boolean z = true;
        if (sAllowedAndroidPropertySet.contains(str)) {
            ArrayList<String> arrayList = new ArrayList();
            for (int i = 1; i <= 15; i++) {
                String asString = contentValues.getAsString("data" + i);
                String str2 = asString;
                if (asString == null) {
                    str2 = BuildConfig.FLAVOR;
                }
                arrayList.add(str2);
            }
            boolean z2 = this.mShouldAppendCharsetParam && !VCardUtils.containsOnlyNonCrLfPrintableAscii(arrayList);
            if (!this.mShouldUseQuotedPrintable || VCardUtils.containsOnlyNonCrLfPrintableAscii(arrayList)) {
                z = false;
            }
            this.mBuilder.append(VCardConstants.PROPERTY_X_ANDROID_CUSTOM);
            if (z2) {
                this.mBuilder.append(";");
                this.mBuilder.append(this.mVCardCharsetParameter);
            }
            if (z) {
                this.mBuilder.append(";");
                this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
            }
            this.mBuilder.append(VCARD_DATA_SEPARATOR);
            this.mBuilder.append(str);
            for (String str3 : arrayList) {
                String encodeQuotedPrintable = z ? encodeQuotedPrintable(str3) : escapeCharacters(str3);
                this.mBuilder.append(";");
                this.mBuilder.append(encodeQuotedPrintable);
            }
            this.mBuilder.append(VCARD_END_OF_LINE);
        }
    }

    public void appendEmailLine(int i, String str, String str2, boolean z) {
        String str3 = null;
        switch (i) {
            case 0:
                if (!VCardUtils.isMobilePhoneLabel(str)) {
                    str3 = null;
                    if (!TextUtils.isEmpty(str)) {
                        str3 = null;
                        if (VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
                            str3 = "X-" + str;
                            break;
                        }
                    }
                } else {
                    str3 = VCardConstants.PARAM_TYPE_CELL;
                    break;
                }
                break;
            case 1:
                str3 = VCardConstants.PARAM_TYPE_HOME;
                break;
            case 2:
                str3 = VCardConstants.PARAM_TYPE_WORK;
                break;
            case 3:
                break;
            case 4:
                str3 = VCardConstants.PARAM_TYPE_CELL;
                break;
            default:
                Log.e(LOG_TAG, "Unknown Email type: " + i);
                str3 = null;
                break;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(VCardConstants.PARAM_TYPE_PREF);
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3);
        }
        appendLineWithCharsetAndQPDetection(VCardConstants.PROPERTY_EMAIL, arrayList, str2);
    }

    public VCardBuilder appendEmails(List<ContentValues> list) {
        boolean z;
        if (list != null) {
            HashSet hashSet = new HashSet();
            Iterator<ContentValues> it = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                ContentValues next = it.next();
                String asString = next.getAsString(CoverUtils.CoverData.COVER_URI);
                String str = asString;
                if (asString != null) {
                    str = asString.trim();
                }
                if (!TextUtils.isEmpty(str)) {
                    Integer asInteger = next.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                    int intValue = asInteger != null ? asInteger.intValue() : 3;
                    String asString2 = next.getAsString(CoverUtils.CoverData.USER_SET);
                    Integer asInteger2 = next.getAsInteger("is_primary");
                    boolean z3 = asInteger2 != null ? asInteger2.intValue() > 0 : false;
                    if (!hashSet.contains(str)) {
                        hashSet.add(str);
                        appendEmailLine(intValue, asString2, str, z3);
                    }
                    z2 = true;
                }
            }
        } else {
            z = false;
        }
        if (!z && this.mIsDoCoMo) {
            appendEmailLine(1, BuildConfig.FLAVOR, BuildConfig.FLAVOR, false);
        }
        return this;
    }

    public VCardBuilder appendEvents(List<ContentValues> list) {
        if (list != null) {
            Iterator<ContentValues> it = list.iterator();
            String str = null;
            String str2 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ContentValues next = it.next();
                if (next != null) {
                    Integer asInteger = next.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                    if ((asInteger != null ? asInteger.intValue() : 2) == 3) {
                        String asString = next.getAsString(CoverUtils.CoverData.COVER_URI);
                        if (asString == null) {
                            continue;
                        } else {
                            Integer asInteger2 = next.getAsInteger("is_super_primary");
                            if (asInteger2 != null ? asInteger2.intValue() > 0 : false) {
                                str2 = asString;
                                break;
                            }
                            Integer asInteger3 = next.getAsInteger("is_primary");
                            if (asInteger3 != null ? asInteger3.intValue() > 0 : false) {
                                str2 = asString;
                            } else if (str == null) {
                                str = asString;
                            }
                        }
                    } else if (this.mUsesAndroidProperty) {
                        appendAndroidSpecificProperty("vnd.android.cursor.item/contact_event", next);
                    }
                }
            }
            if (str2 != null) {
                appendLineWithCharsetAndQPDetection(VCardConstants.PROPERTY_BDAY, str2.trim());
            } else if (str != null) {
                appendLineWithCharsetAndQPDetection(VCardConstants.PROPERTY_BDAY, str.trim());
            }
        }
        return this;
    }

    public VCardBuilder appendIms(List<ContentValues> list) {
        String propertyNameForIm;
        String str;
        if (list != null) {
            for (ContentValues contentValues : list) {
                Integer asInteger = contentValues.getAsInteger("data5");
                if (!(asInteger == null || (propertyNameForIm = VCardUtils.getPropertyNameForIm(asInteger.intValue())) == null)) {
                    String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                    String str2 = asString;
                    if (asString != null) {
                        str2 = asString.trim();
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        Integer asInteger2 = contentValues.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                        switch (asInteger2 != null ? asInteger2.intValue() : 3) {
                            case 0:
                                String asString2 = contentValues.getAsString(CoverUtils.CoverData.USER_SET);
                                if (asString2 != null) {
                                    str = "X-" + asString2;
                                    break;
                                } else {
                                    str = null;
                                    break;
                                }
                            case 1:
                                str = VCardConstants.PARAM_TYPE_HOME;
                                break;
                            case 2:
                                str = VCardConstants.PARAM_TYPE_WORK;
                                break;
                            default:
                                str = null;
                                break;
                        }
                        ArrayList arrayList = new ArrayList();
                        if (!TextUtils.isEmpty(str)) {
                            arrayList.add(str);
                        }
                        Integer asInteger3 = contentValues.getAsInteger("is_primary");
                        if (asInteger3 != null ? asInteger3.intValue() > 0 : false) {
                            arrayList.add(VCardConstants.PARAM_TYPE_PREF);
                        }
                        appendLineWithCharsetAndQPDetection(propertyNameForIm, arrayList, str2);
                    }
                }
            }
        }
        return this;
    }

    public void appendLine(String str, String str2) {
        appendLine(str, str2, false, false);
    }

    public void appendLine(String str, String str2, boolean z, boolean z2) {
        appendLine(str, (List<String>) null, str2, z, z2);
    }

    public void appendLine(String str, List<String> list) {
        appendLine(str, list, false, false);
    }

    public void appendLine(String str, List<String> list, String str2) {
        appendLine(str, list, str2, false, false);
    }

    public void appendLine(String str, List<String> list, String str2, boolean z, boolean z2) {
        String escapeCharacters;
        this.mBuilder.append(str);
        if (list != null && list.size() > 0) {
            this.mBuilder.append(";");
            appendTypeParameters(list);
        }
        if (z) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z2) {
            this.mBuilder.append(";");
            this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
            escapeCharacters = encodeQuotedPrintable(str2);
        } else {
            escapeCharacters = escapeCharacters(str2);
        }
        this.mBuilder.append(VCARD_DATA_SEPARATOR);
        this.mBuilder.append(escapeCharacters);
        this.mBuilder.append(VCARD_END_OF_LINE);
    }

    public void appendLine(String str, List<String> list, List<String> list2, boolean z, boolean z2) {
        this.mBuilder.append(str);
        if (list != null && list.size() > 0) {
            this.mBuilder.append(";");
            appendTypeParameters(list);
        }
        if (z) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z2) {
            this.mBuilder.append(";");
            this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
        }
        this.mBuilder.append(VCARD_DATA_SEPARATOR);
        boolean z3 = true;
        for (String str2 : list2) {
            String encodeQuotedPrintable = z2 ? encodeQuotedPrintable(str2) : escapeCharacters(str2);
            if (z3) {
                z3 = false;
            } else {
                this.mBuilder.append(";");
            }
            this.mBuilder.append(encodeQuotedPrintable);
        }
        this.mBuilder.append(VCARD_END_OF_LINE);
    }

    public void appendLine(String str, List<String> list, boolean z, boolean z2) {
        appendLine(str, (List<String>) null, list, z, z2);
    }

    public void appendLineWithCharsetAndQPDetection(String str, String str2) {
        appendLineWithCharsetAndQPDetection(str, (List<String>) null, str2);
    }

    public void appendLineWithCharsetAndQPDetection(String str, List<String> list) {
        appendLineWithCharsetAndQPDetection(str, (List<String>) null, list);
    }

    public void appendLineWithCharsetAndQPDetection(String str, List<String> list, String str2) {
        appendLine(str, list, str2, !VCardUtils.containsOnlyPrintableAscii(str2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str2));
    }

    public void appendLineWithCharsetAndQPDetection(String str, List<String> list, List<String> list2) {
        appendLine(str, list, list2, this.mShouldAppendCharsetParam && !VCardUtils.containsOnlyNonCrLfPrintableAscii(list2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(list2));
    }

    public VCardBuilder appendNameProperties(List<ContentValues> list) {
        VCardBuilder vCardBuilder;
        String escapeCharacters;
        String escapeCharacters2;
        String escapeCharacters3;
        String escapeCharacters4;
        String escapeCharacters5;
        if (VCardConfig.isVersion40(this.mVCardType)) {
            vCardBuilder = appendNamePropertiesV40(list);
        } else if (list != null && !list.isEmpty()) {
            ContentValues primaryContentValueWithStructuredName = getPrimaryContentValueWithStructuredName(list);
            String asString = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.USER_SET);
            String asString2 = primaryContentValueWithStructuredName.getAsString("data5");
            String asString3 = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.COVER_TYPE);
            String asString4 = primaryContentValueWithStructuredName.getAsString("data4");
            String asString5 = primaryContentValueWithStructuredName.getAsString("data6");
            String asString6 = primaryContentValueWithStructuredName.getAsString(CoverUtils.CoverData.COVER_URI);
            if (!TextUtils.isEmpty(asString) || !TextUtils.isEmpty(asString3)) {
                boolean shouldAppendCharsetParam = shouldAppendCharsetParam(asString, asString3, asString2, asString4, asString5);
                boolean z = !this.mRefrainsQPToNameProperties && (!VCardUtils.containsOnlyNonCrLfPrintableAscii(asString) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString3) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString4) || !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString5));
                String str = asString6;
                if (TextUtils.isEmpty(asString6)) {
                    str = VCardUtils.constructNameFromElements(VCardConfig.getNameOrderType(this.mVCardType), asString, asString2, asString3, asString4, asString5);
                }
                boolean shouldAppendCharsetParam2 = shouldAppendCharsetParam(str);
                boolean z2 = !this.mRefrainsQPToNameProperties && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str);
                if (z) {
                    escapeCharacters = encodeQuotedPrintable(asString);
                    escapeCharacters2 = encodeQuotedPrintable(asString3);
                    escapeCharacters3 = encodeQuotedPrintable(asString2);
                    escapeCharacters4 = encodeQuotedPrintable(asString4);
                    escapeCharacters5 = encodeQuotedPrintable(asString5);
                } else {
                    escapeCharacters = escapeCharacters(asString);
                    escapeCharacters2 = escapeCharacters(asString3);
                    escapeCharacters3 = escapeCharacters(asString2);
                    escapeCharacters4 = escapeCharacters(asString4);
                    escapeCharacters5 = escapeCharacters(asString5);
                }
                String encodeQuotedPrintable = z2 ? encodeQuotedPrintable(str) : escapeCharacters(str);
                this.mBuilder.append(VCardConstants.PROPERTY_N);
                if (this.mIsDoCoMo) {
                    if (shouldAppendCharsetParam) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    if (z) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(str);
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                    this.mBuilder.append(";");
                } else {
                    if (shouldAppendCharsetParam) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(this.mVCardCharsetParameter);
                    }
                    if (z) {
                        this.mBuilder.append(";");
                        this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                    }
                    this.mBuilder.append(VCARD_DATA_SEPARATOR);
                    this.mBuilder.append(escapeCharacters);
                    this.mBuilder.append(";");
                    this.mBuilder.append(escapeCharacters2);
                    this.mBuilder.append(";");
                    this.mBuilder.append(escapeCharacters3);
                    this.mBuilder.append(";");
                    this.mBuilder.append(escapeCharacters4);
                    this.mBuilder.append(";");
                    this.mBuilder.append(escapeCharacters5);
                }
                this.mBuilder.append(VCARD_END_OF_LINE);
                this.mBuilder.append(VCardConstants.PROPERTY_FN);
                if (shouldAppendCharsetParam2) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                if (z2) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
                }
                this.mBuilder.append(VCARD_DATA_SEPARATOR);
                this.mBuilder.append(encodeQuotedPrintable);
                this.mBuilder.append(VCARD_END_OF_LINE);
            } else if (!TextUtils.isEmpty(asString6)) {
                buildSinglePartNameField(VCardConstants.PROPERTY_N, asString6);
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(VCARD_END_OF_LINE);
                buildSinglePartNameField(VCardConstants.PROPERTY_FN, asString6);
                this.mBuilder.append(VCARD_END_OF_LINE);
            } else if (VCardConfig.isVersion30(this.mVCardType)) {
                appendLine(VCardConstants.PROPERTY_N, BuildConfig.FLAVOR);
                appendLine(VCardConstants.PROPERTY_FN, BuildConfig.FLAVOR);
            } else if (this.mIsDoCoMo) {
                appendLine(VCardConstants.PROPERTY_N, BuildConfig.FLAVOR);
            }
            appendPhoneticNameFields(primaryContentValueWithStructuredName);
            vCardBuilder = this;
        } else if (VCardConfig.isVersion30(this.mVCardType)) {
            appendLine(VCardConstants.PROPERTY_N, BuildConfig.FLAVOR);
            appendLine(VCardConstants.PROPERTY_FN, BuildConfig.FLAVOR);
            vCardBuilder = this;
        } else {
            vCardBuilder = this;
            if (this.mIsDoCoMo) {
                appendLine(VCardConstants.PROPERTY_N, BuildConfig.FLAVOR);
                vCardBuilder = this;
            }
        }
        return vCardBuilder;
    }

    public VCardBuilder appendNickNames(List<ContentValues> list) {
        boolean z;
        if (this.mIsV30OrV40) {
            z = false;
        } else {
            if (this.mUsesAndroidProperty) {
                z = true;
            }
            return this;
        }
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                if (!TextUtils.isEmpty(asString)) {
                    if (z) {
                        appendAndroidSpecificProperty("vnd.android.cursor.item/nickname", contentValues);
                    } else {
                        appendLineWithCharsetAndQPDetection(VCardConstants.PROPERTY_NICKNAME, asString);
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendNotes(List<ContentValues> list) {
        boolean z = true;
        if (list != null) {
            if (this.mOnlyOneNoteFieldIsAvailable) {
                StringBuilder sb = new StringBuilder();
                boolean z2 = true;
                for (ContentValues contentValues : list) {
                    String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                    String str = asString;
                    if (asString == null) {
                        str = BuildConfig.FLAVOR;
                    }
                    z2 = z2;
                    if (str.length() > 0) {
                        if (z2) {
                            z2 = false;
                        } else {
                            sb.append('\n');
                        }
                        sb.append(str);
                    }
                }
                String sb2 = sb.toString();
                boolean z3 = !VCardUtils.containsOnlyPrintableAscii(sb2);
                if (!this.mShouldUseQuotedPrintable || VCardUtils.containsOnlyNonCrLfPrintableAscii(sb2)) {
                    z = false;
                }
                appendLine(VCardConstants.PROPERTY_NOTE, sb2, z3, z);
            } else {
                for (ContentValues contentValues2 : list) {
                    String asString2 = contentValues2.getAsString(CoverUtils.CoverData.COVER_URI);
                    if (!TextUtils.isEmpty(asString2)) {
                        appendLine(VCardConstants.PROPERTY_NOTE, asString2, !VCardUtils.containsOnlyPrintableAscii(asString2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2));
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendOrganizations(List<ContentValues> list) {
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                String str = asString;
                if (asString != null) {
                    str = asString.trim();
                }
                String asString2 = contentValues.getAsString("data5");
                String str2 = asString2;
                if (asString2 != null) {
                    str2 = asString2.trim();
                }
                String asString3 = contentValues.getAsString("data4");
                String str3 = asString3;
                if (asString3 != null) {
                    str3 = asString3.trim();
                }
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    if (sb.length() > 0) {
                        sb.append(';');
                    }
                    sb.append(str2);
                }
                String sb2 = sb.toString();
                appendLine(VCardConstants.PROPERTY_ORG, sb2, !VCardUtils.containsOnlyPrintableAscii(sb2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(sb2));
                if (!TextUtils.isEmpty(str3)) {
                    appendLine(VCardConstants.PROPERTY_TITLE, str3, !VCardUtils.containsOnlyPrintableAscii(str3), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str3));
                }
            }
        }
        return this;
    }

    public VCardBuilder appendPhones(List<ContentValues> list, VCardPhoneNumberTranslationCallback vCardPhoneNumberTranslationCallback) {
        boolean z;
        if (list != null) {
            HashSet hashSet = new HashSet();
            Iterator<ContentValues> it = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                ContentValues next = it.next();
                Integer asInteger = next.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                String asString = next.getAsString(CoverUtils.CoverData.USER_SET);
                Integer asInteger2 = next.getAsInteger("is_primary");
                boolean z3 = asInteger2 != null ? asInteger2.intValue() > 0 : false;
                String asString2 = next.getAsString(CoverUtils.CoverData.COVER_URI);
                if (asString2 != null) {
                    asString2 = asString2.trim();
                }
                if (!TextUtils.isEmpty(asString2)) {
                    int intValue = asInteger != null ? asInteger.intValue() : 1;
                    if (vCardPhoneNumberTranslationCallback != null) {
                        String onValueReceived = vCardPhoneNumberTranslationCallback.onValueReceived(asString2, intValue, asString, z3);
                        if (!hashSet.contains(onValueReceived)) {
                            hashSet.add(onValueReceived);
                            appendTelLine(Integer.valueOf(intValue), asString, onValueReceived, z3);
                        }
                    } else if (intValue == 6 || VCardConfig.refrainPhoneNumberFormatting(this.mVCardType)) {
                        z2 = true;
                        if (!hashSet.contains(asString2)) {
                            hashSet.add(asString2);
                            appendTelLine(Integer.valueOf(intValue), asString, asString2, z3);
                            z2 = true;
                        }
                    } else {
                        List<String> splitPhoneNumbers = splitPhoneNumbers(asString2);
                        if (!splitPhoneNumbers.isEmpty()) {
                            for (String str : splitPhoneNumbers) {
                                if (!hashSet.contains(str)) {
                                    String replace = str.replace(',', 'p').replace(';', 'w');
                                    String str2 = replace;
                                    if (TextUtils.equals(replace, str)) {
                                        StringBuilder sb = new StringBuilder();
                                        int length = str.length();
                                        for (int i = 0; i < length; i++) {
                                            char charAt = str.charAt(i);
                                            if (Character.isDigit(charAt) || charAt == '+') {
                                                sb.append(charAt);
                                            }
                                        }
                                        str2 = VCardUtils.PhoneNumberUtilsPort.formatNumber(sb.toString(), VCardUtils.getPhoneNumberFormat(this.mVCardType));
                                    }
                                    String str3 = str2;
                                    if (VCardConfig.isVersion40(this.mVCardType)) {
                                        str3 = str2;
                                        if (!TextUtils.isEmpty(str2)) {
                                            str3 = str2;
                                            if (!str2.startsWith("tel:")) {
                                                str3 = "tel:" + str2;
                                            }
                                        }
                                    }
                                    hashSet.add(str);
                                    appendTelLine(Integer.valueOf(intValue), asString, str3, z3);
                                }
                            }
                            z2 = true;
                        }
                    }
                }
            }
        } else {
            z = false;
        }
        if (!z && this.mIsDoCoMo) {
            appendTelLine(1, BuildConfig.FLAVOR, BuildConfig.FLAVOR, false);
        }
        return this;
    }

    public void appendPhotoLine(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(VCardConstants.PROPERTY_PHOTO);
        sb.append(";");
        if (this.mIsV30OrV40) {
            sb.append(VCARD_PARAM_ENCODING_BASE64_AS_B);
        } else {
            sb.append(VCARD_PARAM_ENCODING_BASE64_V21);
        }
        sb.append(";");
        appendTypeParameter(sb, str2);
        sb.append(VCARD_DATA_SEPARATOR);
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        int length = sb2.length();
        int i = 73;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            sb3.append(sb2.charAt(i3));
            int i4 = i2 + 1;
            i = i;
            i2 = i4;
            if (i4 > i) {
                sb3.append(VCARD_END_OF_LINE);
                sb3.append(VCARD_WS);
                i = 72;
                i2 = 0;
            }
        }
        this.mBuilder.append(sb3.toString());
        this.mBuilder.append(VCARD_END_OF_LINE);
        this.mBuilder.append(VCARD_END_OF_LINE);
    }

    public VCardBuilder appendPhotos(List<ContentValues> list) {
        byte[] asByteArray;
        if (list != null) {
            for (ContentValues contentValues : list) {
                if (!(contentValues == null || (asByteArray = contentValues.getAsByteArray("data15")) == null)) {
                    String guessImageType = VCardUtils.guessImageType(asByteArray);
                    if (guessImageType == null) {
                        Log.d(LOG_TAG, "Unknown photo type. Ignored.");
                    } else {
                        String str = new String(Base64.encode(asByteArray, 2));
                        if (!TextUtils.isEmpty(str)) {
                            appendPhotoLine(str, guessImageType);
                        }
                    }
                }
            }
        }
        return this;
    }

    public void appendPostalLine(int i, String str, ContentValues contentValues, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        String str2;
        PostalStruct tryConstructPostalStruct = tryConstructPostalStruct(contentValues);
        if (tryConstructPostalStruct != null) {
            z3 = tryConstructPostalStruct.reallyUseQuotedPrintable;
            z4 = tryConstructPostalStruct.appendCharset;
            str2 = tryConstructPostalStruct.addressData;
        } else if (z2) {
            str2 = BuildConfig.FLAVOR;
            z4 = false;
            z3 = false;
        } else {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(VCardConstants.PARAM_TYPE_PREF);
        }
        switch (i) {
            case 0:
                if (!TextUtils.isEmpty(str) && VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
                    arrayList.add("X-" + str);
                    break;
                }
                break;
            case 1:
                arrayList.add(VCardConstants.PARAM_TYPE_HOME);
                break;
            case 2:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                break;
            case 3:
                break;
            default:
                Log.e(LOG_TAG, "Unknown StructuredPostal type: " + i);
                break;
        }
        this.mBuilder.append(VCardConstants.PROPERTY_ADR);
        if (!arrayList.isEmpty()) {
            this.mBuilder.append(";");
            appendTypeParameters(arrayList);
        }
        if (z4) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z3) {
            this.mBuilder.append(";");
            this.mBuilder.append(VCARD_PARAM_ENCODING_QP);
        }
        this.mBuilder.append(VCARD_DATA_SEPARATOR);
        this.mBuilder.append(str2);
        this.mBuilder.append(VCARD_END_OF_LINE);
    }

    public VCardBuilder appendPostals(List<ContentValues> list) {
        if (list == null || list.isEmpty()) {
            if (this.mIsDoCoMo) {
                this.mBuilder.append(VCardConstants.PROPERTY_ADR);
                this.mBuilder.append(";");
                this.mBuilder.append(VCardConstants.PARAM_TYPE_HOME);
                this.mBuilder.append(VCARD_DATA_SEPARATOR);
                this.mBuilder.append(VCARD_END_OF_LINE);
            }
        } else if (this.mIsDoCoMo) {
            appendPostalsForDoCoMo(list);
        } else {
            appendPostalsForGeneric(list);
        }
        return this;
    }

    public VCardBuilder appendRelation(List<ContentValues> list) {
        if (this.mUsesAndroidProperty && list != null) {
            for (ContentValues contentValues : list) {
                if (contentValues != null) {
                    appendAndroidSpecificProperty("vnd.android.cursor.item/relation", contentValues);
                }
            }
        }
        return this;
    }

    public VCardBuilder appendSipAddresses(List<ContentValues> list) {
        boolean z;
        if (this.mIsV30OrV40) {
            z = false;
        } else {
            if (this.mUsesDefactProperty) {
                z = true;
            }
            return this;
        }
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                if (!TextUtils.isEmpty(asString)) {
                    if (z) {
                        String str = asString;
                        if (asString.startsWith("sip:")) {
                            if (asString.length() != 4) {
                                str = asString.substring(4);
                            }
                        }
                        appendLineWithCharsetAndQPDetection(VCardConstants.PROPERTY_X_SIP, str);
                    } else {
                        String str2 = asString;
                        if (!asString.startsWith("sip:")) {
                            str2 = "sip:" + asString;
                        }
                        appendLineWithCharsetAndQPDetection(VCardConfig.isVersion40(this.mVCardType) ? VCardConstants.PROPERTY_TEL : VCardConstants.PROPERTY_IMPP, str2);
                    }
                }
            }
        }
        return this;
    }

    public void appendTelLine(Integer num, String str, String str2, boolean z) {
        this.mBuilder.append(VCardConstants.PROPERTY_TEL);
        this.mBuilder.append(";");
        int intValue = num == null ? 7 : num.intValue();
        ArrayList arrayList = new ArrayList();
        boolean z2 = z;
        switch (intValue) {
            case 0:
                if (!TextUtils.isEmpty(str)) {
                    if (!VCardUtils.isMobilePhoneLabel(str)) {
                        if (!this.mIsV30OrV40) {
                            String upperCase = str.toUpperCase();
                            if (!VCardUtils.isValidInV21ButUnknownToContactsPhoteType(upperCase)) {
                                z2 = z;
                                if (VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
                                    arrayList.add("X-" + str);
                                    z2 = z;
                                    break;
                                }
                            } else {
                                arrayList.add(upperCase);
                                z2 = z;
                                break;
                            }
                        } else {
                            arrayList.add(str);
                            z2 = z;
                            break;
                        }
                    } else {
                        arrayList.add(VCardConstants.PARAM_TYPE_CELL);
                        z2 = z;
                        break;
                    }
                } else {
                    arrayList.add(VCardConstants.PARAM_TYPE_VOICE);
                    z2 = z;
                    break;
                }
                break;
            case 1:
                arrayList.addAll(Arrays.asList(VCardConstants.PARAM_TYPE_HOME));
                z2 = z;
                break;
            case 2:
                arrayList.add(VCardConstants.PARAM_TYPE_CELL);
                z2 = z;
                break;
            case 3:
                arrayList.addAll(Arrays.asList(VCardConstants.PARAM_TYPE_WORK));
                z2 = z;
                break;
            case 4:
                arrayList.addAll(Arrays.asList(VCardConstants.PARAM_TYPE_WORK, VCardConstants.PARAM_TYPE_FAX));
                z2 = z;
                break;
            case 5:
                arrayList.addAll(Arrays.asList(VCardConstants.PARAM_TYPE_HOME, VCardConstants.PARAM_TYPE_FAX));
                z2 = z;
                break;
            case 6:
                if (!this.mIsDoCoMo) {
                    arrayList.add(VCardConstants.PARAM_TYPE_PAGER);
                    z2 = z;
                    break;
                } else {
                    arrayList.add(VCardConstants.PARAM_TYPE_VOICE);
                    z2 = z;
                    break;
                }
            case 7:
                arrayList.add(VCardConstants.PARAM_TYPE_VOICE);
                z2 = z;
                break;
            case 8:
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
            case 16:
            case 19:
                break;
            case 9:
                arrayList.add(VCardConstants.PARAM_TYPE_CAR);
                z2 = z;
                break;
            case 10:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                z2 = true;
                break;
            case 11:
                arrayList.add(VCardConstants.PARAM_TYPE_ISDN);
                z2 = z;
                break;
            case 12:
                z2 = true;
                break;
            case 13:
                arrayList.add(VCardConstants.PARAM_TYPE_FAX);
                z2 = z;
                break;
            case 15:
                arrayList.add(VCardConstants.PARAM_TYPE_TLX);
                z2 = z;
                break;
            case 17:
                arrayList.addAll(Arrays.asList(VCardConstants.PARAM_TYPE_WORK, VCardConstants.PARAM_TYPE_CELL));
                z2 = z;
                break;
            case 18:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                if (!this.mIsDoCoMo) {
                    arrayList.add(VCardConstants.PARAM_TYPE_PAGER);
                    z2 = z;
                    break;
                } else {
                    arrayList.add(VCardConstants.PARAM_TYPE_VOICE);
                    z2 = z;
                    break;
                }
            case 20:
                arrayList.add(VCardConstants.PARAM_TYPE_MSG);
                z2 = z;
                break;
            default:
                z2 = z;
                break;
        }
        if (z2) {
            arrayList.add(VCardConstants.PARAM_TYPE_PREF);
        }
        if (arrayList.isEmpty()) {
            appendUncommonPhoneType(this.mBuilder, Integer.valueOf(intValue));
        } else {
            appendTypeParameters(arrayList);
        }
        this.mBuilder.append(VCARD_DATA_SEPARATOR);
        this.mBuilder.append(str2);
        this.mBuilder.append(VCARD_END_OF_LINE);
    }

    public VCardBuilder appendWebsites(List<ContentValues> list) {
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString(CoverUtils.CoverData.COVER_URI);
                String str = asString;
                if (asString != null) {
                    str = asString.trim();
                }
                if (!TextUtils.isEmpty(str)) {
                    appendLineWithCharsetAndQPDetection("URL", str);
                }
            }
        }
        return this;
    }

    public void clear() {
        this.mBuilder = new StringBuilder();
        this.mEndAppended = false;
        appendLine(VCardConstants.PROPERTY_BEGIN, VCARD_DATA_VCARD);
        if (VCardConfig.isVersion40(this.mVCardType)) {
            appendLine(VCardConstants.PROPERTY_VERSION, VCardConstants.VERSION_V40);
        } else if (VCardConfig.isVersion30(this.mVCardType)) {
            appendLine(VCardConstants.PROPERTY_VERSION, VCardConstants.VERSION_V30);
        } else {
            if (!VCardConfig.isVersion21(this.mVCardType)) {
                Log.w(LOG_TAG, "Unknown vCard version detected.");
            }
            appendLine(VCardConstants.PROPERTY_VERSION, VCardConstants.VERSION_V21);
        }
    }

    public String toString() {
        if (!this.mEndAppended) {
            if (this.mIsDoCoMo) {
                appendLine(VCardConstants.PROPERTY_X_CLASS, VCARD_DATA_PUBLIC);
                appendLine(VCardConstants.PROPERTY_X_REDUCTION, BuildConfig.FLAVOR);
                appendLine(VCardConstants.PROPERTY_X_NO, BuildConfig.FLAVOR);
                appendLine(VCardConstants.PROPERTY_X_DCM_HMN_MODE, BuildConfig.FLAVOR);
            }
            appendLine(VCardConstants.PROPERTY_END, VCARD_DATA_VCARD);
            this.mEndAppended = true;
        }
        return this.mBuilder.toString();
    }
}
