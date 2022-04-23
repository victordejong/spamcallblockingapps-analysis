package com.android.vcard;

import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import com.android.vcard.exception.VCardException;
import com.asus.updatesdk.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardUtils.class */
public class VCardUtils {
    private static final String LOG_TAG = "vCard";
    private static final Map<Integer, String> sKnownImPropNameMap_ItoS;
    private static final Set<String> sPhoneTypesUnknownToContactsSet;
    private static final Map<Integer, String> sKnownPhoneTypesMap_ItoS = new HashMap();
    private static final Map<String, Integer> sKnownPhoneTypeMap_StoI = new HashMap();
    private static final Set<String> sMobilePhoneLabelSet = new HashSet(Arrays.asList("MOBILE", "携帯電話", "携帯", "ケイタイ", "ｹｲﾀｲ"));
    private static final Set<Character> sUnAcceptableAsciiInV21WordSet = new HashSet(Arrays.asList('[', ']', '=', ':', '.', ',', ' '));
    private static final int[] sEscapeIndicatorsV30 = {58, 59, 44, 32};
    private static final int[] sEscapeIndicatorsV40 = {59, 58};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardUtils$DecoderException.class */
    public static class DecoderException extends Exception {
        public DecoderException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardUtils$PhoneNumberUtilsPort.class */
    public static class PhoneNumberUtilsPort {
        public static String formatNumber(String str, int i) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            PhoneNumberUtils.formatNumber(spannableStringBuilder, i);
            return spannableStringBuilder.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardUtils$QuotedPrintableCodecPort.class */
    private static class QuotedPrintableCodecPort {
        private static byte ESCAPE_CHAR = (byte) 61;

        private QuotedPrintableCodecPort() {
        }

        public static final byte[] decodeQuotedPrintable(byte[] bArr) {
            byte[] byteArray;
            if (bArr == null) {
                byteArray = null;
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                int i = 0;
                while (i < bArr.length) {
                    byte b2 = bArr[i];
                    if (b2 == ESCAPE_CHAR) {
                        int i2 = i + 1;
                        try {
                            int digit = Character.digit((char) bArr[i2], 16);
                            i = i2 + 1;
                            int digit2 = Character.digit((char) bArr[i], 16);
                            if (digit == -1 || digit2 == -1) {
                                throw new DecoderException("Invalid quoted-printable encoding");
                            }
                            byteArrayOutputStream.write((char) ((digit << 4) + digit2));
                        } catch (ArrayIndexOutOfBoundsException e) {
                            throw new DecoderException("Invalid quoted-printable encoding");
                        }
                    } else {
                        byteArrayOutputStream.write(b2);
                    }
                    i++;
                }
                byteArray = byteArrayOutputStream.toByteArray();
            }
            return byteArray;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardUtils$TextUtilsPort.class */
    public static class TextUtilsPort {
        public static boolean isPrintableAscii(char c) {
            return (' ' <= c && c <= '~') || c == '\r' || c == '\n';
        }

        public static boolean isPrintableAsciiOnly(CharSequence charSequence) {
            boolean z = false;
            int length = charSequence.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else if (!isPrintableAscii(charSequence.charAt(i))) {
                    break;
                } else {
                    i++;
                }
            }
            return z;
        }
    }

    static {
        sKnownPhoneTypesMap_ItoS.put(9, VCardConstants.PARAM_TYPE_CAR);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_CAR, 9);
        sKnownPhoneTypesMap_ItoS.put(6, VCardConstants.PARAM_TYPE_PAGER);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_PAGER, 6);
        sKnownPhoneTypesMap_ItoS.put(11, VCardConstants.PARAM_TYPE_ISDN);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_ISDN, 11);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_HOME, 1);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_WORK, 3);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_CELL, 2);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_OTHER, 7);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_CALLBACK, 8);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_COMPANY_MAIN, 10);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_RADIO, 14);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_TTY_TDD, 16);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_PHONE_EXTRA_TYPE_ASSISTANT, 19);
        sKnownPhoneTypeMap_StoI.put(VCardConstants.PARAM_TYPE_VOICE, 7);
        HashSet hashSet = new HashSet();
        sPhoneTypesUnknownToContactsSet = hashSet;
        hashSet.add(VCardConstants.PARAM_TYPE_MODEM);
        sPhoneTypesUnknownToContactsSet.add(VCardConstants.PARAM_TYPE_MSG);
        sPhoneTypesUnknownToContactsSet.add(VCardConstants.PARAM_TYPE_BBS);
        sPhoneTypesUnknownToContactsSet.add(VCardConstants.PARAM_TYPE_VIDEO);
        HashMap hashMap = new HashMap();
        sKnownImPropNameMap_ItoS = hashMap;
        hashMap.put(0, VCardConstants.PROPERTY_X_AIM);
        sKnownImPropNameMap_ItoS.put(1, VCardConstants.PROPERTY_X_MSN);
        sKnownImPropNameMap_ItoS.put(2, VCardConstants.PROPERTY_X_YAHOO);
        sKnownImPropNameMap_ItoS.put(3, VCardConstants.PROPERTY_X_SKYPE_USERNAME);
        sKnownImPropNameMap_ItoS.put(5, VCardConstants.PROPERTY_X_GOOGLE_TALK);
        sKnownImPropNameMap_ItoS.put(6, VCardConstants.PROPERTY_X_ICQ);
        sKnownImPropNameMap_ItoS.put(7, VCardConstants.PROPERTY_X_JABBER);
        sKnownImPropNameMap_ItoS.put(4, VCardConstants.PROPERTY_X_QQ);
        sKnownImPropNameMap_ItoS.put(8, VCardConstants.PROPERTY_X_NETMEETING);
    }

    private VCardUtils() {
    }

    public static boolean appearsLikeAndroidVCardQuotedPrintable(String str) {
        int length = str.length() % 3;
        boolean z = false;
        if (str.length() >= 2) {
            if (length == 1 || length == 0) {
                int i = 0;
                while (true) {
                    if (i >= str.length()) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (str.charAt(i) != '=') {
                        break;
                    }
                    i += 3;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public static boolean areAllEmpty(String... strArr) {
        boolean z;
        if (strArr == null) {
            z = true;
        } else {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = true;
                if (i >= length) {
                    break;
                } else if (!TextUtils.isEmpty(strArr[i])) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    public static List<String> constructListFromValue(String str, int i) {
        String unescapeCharacter;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '\\' && i2 < length - 1) {
                char charAt2 = str.charAt(i2 + 1);
                if (VCardConfig.isVersion40(i)) {
                    unescapeCharacter = VCardParserImpl_V40.unescapeCharacter(charAt2);
                } else if (VCardConfig.isVersion30(i)) {
                    unescapeCharacter = VCardParserImpl_V30.unescapeCharacter(charAt2);
                } else {
                    if (!VCardConfig.isVersion21(i)) {
                        Log.w(LOG_TAG, "Unknown vCard type");
                    }
                    unescapeCharacter = VCardParserImpl_V21.unescapeCharacter(charAt2);
                }
                if (unescapeCharacter != null) {
                    sb.append(unescapeCharacter);
                    i2++;
                } else {
                    sb.append(charAt);
                }
            } else if (charAt == ';') {
                arrayList.add(sb.toString());
                sb = new StringBuilder();
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    public static String constructNameFromElements(int i, String str, String str2, String str3) {
        return constructNameFromElements(i, str, str2, str3, null, null);
    }

    public static String constructNameFromElements(int i, String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        String[] sortNameElements = sortNameElements(i, str, str2, str3);
        boolean z = true;
        if (!TextUtils.isEmpty(str4)) {
            sb.append(str4);
            z = false;
        }
        for (String str6 : sortNameElements) {
            z = z;
            if (!TextUtils.isEmpty(str6)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(' ');
                }
                sb.append(str6);
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            if (!z) {
                sb.append(' ');
            }
            sb.append(str5);
        }
        return sb.toString();
    }

    public static boolean containsOnlyAlphaDigitHyphen(Collection<String> collection) {
        boolean z;
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String next = it.next();
                if (!TextUtils.isEmpty(next)) {
                    int length = next.length();
                    for (int i = 0; i < length; i = next.offsetByCodePoints(i, 1)) {
                        int codePointAt = next.codePointAt(i);
                        if ((97 > codePointAt || codePointAt >= 123) && ((65 > codePointAt || codePointAt >= 91) && ((48 > codePointAt || codePointAt >= 58) && codePointAt != 45))) {
                            z = false;
                            break loop0;
                        }
                    }
                    continue;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    public static boolean containsOnlyAlphaDigitHyphen(String... strArr) {
        return strArr == null ? true : containsOnlyAlphaDigitHyphen(Arrays.asList(strArr));
    }

    public static boolean containsOnlyNonCrLfPrintableAscii(Collection<String> collection) {
        boolean z;
        if (collection == null) {
            z = true;
        } else {
            loop0: for (String str : collection) {
                if (!TextUtils.isEmpty(str)) {
                    int length = str.length();
                    for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                        int codePointAt = str.codePointAt(i);
                        if (32 > codePointAt || codePointAt > 126) {
                            z = false;
                            break loop0;
                        }
                    }
                    continue;
                }
            }
            z = true;
        }
        return z;
    }

    public static boolean containsOnlyNonCrLfPrintableAscii(String... strArr) {
        return strArr == null ? true : containsOnlyNonCrLfPrintableAscii(Arrays.asList(strArr));
    }

    public static boolean containsOnlyPrintableAscii(Collection<String> collection) {
        boolean z;
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String next = it.next();
                if (!TextUtils.isEmpty(next) && !TextUtilsPort.isPrintableAsciiOnly(next)) {
                    z = false;
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    public static boolean containsOnlyPrintableAscii(String... strArr) {
        return strArr == null ? true : containsOnlyPrintableAscii(Arrays.asList(strArr));
    }

    public static boolean containsOnlyWhiteSpaces(Collection<String> collection) {
        boolean z;
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String next = it.next();
                if (!TextUtils.isEmpty(next)) {
                    int length = next.length();
                    for (int i = 0; i < length; i = next.offsetByCodePoints(i, 1)) {
                        if (!Character.isWhitespace(next.codePointAt(i))) {
                            z = false;
                            break loop0;
                        }
                    }
                    continue;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    public static boolean containsOnlyWhiteSpaces(String... strArr) {
        return strArr == null ? true : containsOnlyWhiteSpaces(Arrays.asList(strArr));
    }

    public static final String convertStringCharset(String str, String str2, String str3) {
        if (!str2.equalsIgnoreCase(str3)) {
            ByteBuffer encode = Charset.forName(str2).encode(str);
            byte[] bArr = new byte[encode.remaining()];
            encode.get(bArr);
            try {
                str = new String(bArr, str3);
            } catch (UnsupportedEncodingException e) {
                Log.e(LOG_TAG, "Failed to encode: charset=" + str3);
                str = null;
            }
        }
        return str;
    }

    public static final VCardParser getAppropriateParser(int i) {
        VCardParser vCardParser_V40;
        if (VCardConfig.isVersion21(i)) {
            vCardParser_V40 = new VCardParser_V21();
        } else if (VCardConfig.isVersion30(i)) {
            vCardParser_V40 = new VCardParser_V30();
        } else if (VCardConfig.isVersion40(i)) {
            vCardParser_V40 = new VCardParser_V40();
        } else {
            throw new VCardException("Version is not specified");
        }
        return vCardParser_V40;
    }

    public static int getPhoneNumberFormat(int i) {
        return VCardConfig.isJapaneseDevice(i) ? 2 : 1;
    }

    public static Object getPhoneTypeFromStrings(Collection<String> collection, String str) {
        boolean z;
        boolean z2;
        int i;
        String str2 = str;
        if (str == null) {
            str2 = BuildConfig.FLAVOR;
        }
        int i2 = -1;
        Integer num = null;
        if (collection != null) {
            z = false;
            boolean z3 = false;
            for (String str3 : collection) {
                if (str3 != null) {
                    String upperCase = str3.toUpperCase();
                    if (upperCase.equals(VCardConstants.PARAM_TYPE_PREF)) {
                        z = true;
                    } else if (upperCase.equals(VCardConstants.PARAM_TYPE_FAX)) {
                        z3 = true;
                    } else {
                        String str4 = str3;
                        if (upperCase.startsWith("X-")) {
                            str4 = str3;
                            if (i2 < 0) {
                                str4 = str3.substring(2);
                            }
                        }
                        if (str4.length() != 0) {
                            Integer num2 = sKnownPhoneTypeMap_StoI.get(str4.toUpperCase());
                            if (num2 != null) {
                                int intValue = num2.intValue();
                                int indexOf = str2.indexOf("@");
                                if ((intValue == 6 && indexOf > 0 && indexOf < str2.length() - 1) || i2 < 0 || i2 == 0 || i2 == 7) {
                                    i2 = num2.intValue();
                                }
                            } else if (i2 < 0) {
                                num = str4;
                                i2 = 0;
                            }
                        }
                    }
                }
            }
            z2 = z3;
            i = i2;
        } else {
            z = false;
            z2 = false;
            num = null;
            i = -1;
        }
        int i3 = i;
        if (i < 0) {
            i3 = z ? 12 : 1;
        }
        int i4 = i3;
        if (z2) {
            if (i3 == 1) {
                i4 = 5;
            } else if (i3 == 3) {
                i4 = 4;
            } else {
                i4 = i3;
                if (i3 == 7) {
                    i4 = 13;
                }
            }
        }
        if (i4 != 0) {
            num = Integer.valueOf(i4);
        }
        return num;
    }

    public static String getPhoneTypeString(Integer num) {
        return sKnownPhoneTypesMap_ItoS.get(num);
    }

    public static String getPropertyNameForIm(int i) {
        return sKnownImPropNameMap_ItoS.get(Integer.valueOf(i));
    }

    public static String guessImageType(byte[] bArr) {
        return bArr == null ? null : (bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70) ? "GIF" : (bArr.length >= 4 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71) ? "PNG" : (bArr.length >= 2 && bArr[0] == -1 && bArr[1] == -40) ? "JPEG" : null;
    }

    public static boolean isMobilePhoneLabel(String str) {
        return "_AUTO_CELL".equals(str) || sMobilePhoneLabelSet.contains(str);
    }

    public static boolean isV21Word(String str) {
        boolean z;
        if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            int length = str.length();
            int i = 0;
            while (true) {
                z = true;
                if (i >= length) {
                    break;
                }
                int codePointAt = str.codePointAt(i);
                if (32 > codePointAt || codePointAt > 126 || sUnAcceptableAsciiInV21WordSet.contains(Character.valueOf((char) codePointAt))) {
                    break;
                }
                i = str.offsetByCodePoints(i, 1);
            }
        }
        return z;
    }

    public static boolean isValidInV21ButUnknownToContactsPhoteType(String str) {
        return sPhoneTypesUnknownToContactsSet.contains(str);
    }

    public static String parseQuotedPrintable(String str, boolean z, String str2, String str3) {
        String[] strArr;
        int i;
        byte[] bytes;
        String str4;
        char charAt;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt2 = str.charAt(i2);
            if (charAt2 == '=' && i2 < length - 1 && ((charAt = str.charAt(i2 + 1)) == ' ' || charAt == '\t')) {
                sb.append(charAt);
                i2++;
            } else {
                sb.append(charAt2);
            }
            i2++;
        }
        String sb2 = sb.toString();
        if (z) {
            strArr = sb2.split(VCardBuilder.VCARD_END_OF_LINE);
        } else {
            StringBuilder sb3 = new StringBuilder();
            int length2 = sb2.length();
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (i3 < length2) {
                char charAt3 = sb2.charAt(i3);
                if (charAt3 == '\n') {
                    arrayList.add(sb3.toString());
                    sb3 = new StringBuilder();
                    i = i3;
                } else if (charAt3 == '\r') {
                    arrayList.add(sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    i = i3;
                    sb3 = sb4;
                    if (i3 < length2 - 1) {
                        i = i3;
                        sb3 = sb4;
                        if (sb2.charAt(i3 + 1) == '\n') {
                            i = i3 + 1;
                            sb3 = sb4;
                        }
                    }
                } else {
                    sb3.append(charAt3);
                    i = i3;
                }
                i3 = i + 1;
            }
            String sb5 = sb3.toString();
            if (sb5.length() > 0) {
                arrayList.add(sb5);
            }
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        StringBuilder sb6 = new StringBuilder();
        for (String str5 : strArr) {
            String str6 = str5;
            if (str5.endsWith("=")) {
                str6 = str5.substring(0, str5.length() - 1);
            }
            sb6.append(str6);
        }
        String sb7 = sb6.toString();
        if (TextUtils.isEmpty(sb7)) {
            Log.w(LOG_TAG, "Given raw string is empty.");
        }
        try {
            bytes = sb7.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            Log.w(LOG_TAG, "Failed to decode: " + str2);
            bytes = sb7.getBytes();
        }
        try {
            bytes = QuotedPrintableCodecPort.decodeQuotedPrintable(bytes);
        } catch (DecoderException e2) {
            Log.e(LOG_TAG, "DecoderException is thrown.");
        }
        try {
            str4 = new String(bytes, str3);
        } catch (UnsupportedEncodingException e3) {
            Log.e(LOG_TAG, "Failed to encode: charset=" + str3);
            str4 = new String(bytes);
        }
        return str4;
    }

    public static String[] sortNameElements(int i, String str, String str2, String str3) {
        String[] strArr = new String[3];
        switch (VCardConfig.getNameOrderType(i)) {
            case 4:
                strArr[0] = str2;
                strArr[1] = str3;
                strArr[2] = str;
                break;
            case 8:
                if (!containsOnlyPrintableAscii(str) || !containsOnlyPrintableAscii(str3)) {
                    strArr[0] = str;
                    strArr[1] = str2;
                    strArr[2] = str3;
                    break;
                }
                break;
            default:
                strArr[0] = str3;
                strArr[1] = str2;
                strArr[2] = str;
                break;
        }
        return strArr;
    }

    public static String toHalfWidthString(String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            int length = str.length();
            int i = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                String tryGetHalfWidthText = JapaneseUtils.tryGetHalfWidthText(charAt);
                if (tryGetHalfWidthText != null) {
                    sb2.append(tryGetHalfWidthText);
                } else {
                    sb2.append(charAt);
                }
                i = str.offsetByCodePoints(i, 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static String toStringAsParamValue(String str, int[] iArr) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        boolean z = false;
        for (int i = 0; i < length; i = str2.offsetByCodePoints(i, 1)) {
            int codePointAt = str2.codePointAt(i);
            z = z;
            if (codePointAt >= 32) {
                z = z;
                if (codePointAt != 34) {
                    sb.appendCodePoint(codePointAt);
                    int length2 = iArr.length;
                    int i2 = 0;
                    while (true) {
                        z = z;
                        if (i2 >= length2) {
                            break;
                        } else if (codePointAt == iArr[i2]) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
        String sb2 = sb.toString();
        if (sb2.isEmpty() || containsOnlyWhiteSpaces(sb2)) {
            sb2 = BuildConfig.FLAVOR;
        } else if (z) {
            sb2 = "\"" + sb2 + '\"';
        }
        return sb2;
    }

    public static String toStringAsV30ParamValue(String str) {
        return toStringAsParamValue(str, sEscapeIndicatorsV30);
    }

    public static String toStringAsV40ParamValue(String str) {
        return toStringAsParamValue(str, sEscapeIndicatorsV40);
    }
}
