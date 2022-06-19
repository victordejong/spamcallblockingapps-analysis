package com.google.zxing.client.result;

import com.facebook.share.internal.ShareConstants;
import com.google.zxing.Result;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/client/result/VCardResultParser.class */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern EQUALS = Pattern.compile(SimpleComparison.EQUAL_TO_OPERATION);
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
    private static final Pattern COMMA = Pattern.compile(",");
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile("[;,]");

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                maybeAppendFragment(byteArrayOutputStream, str, sb);
                return sb.toString();
            }
            char charAt = charSequence.charAt(i2);
            int i3 = i2;
            if (charAt != '\n') {
                i3 = i2;
                if (charAt != '\r') {
                    if (charAt != '=') {
                        maybeAppendFragment(byteArrayOutputStream, str, sb);
                        sb.append(charAt);
                        i3 = i2;
                    } else {
                        i3 = i2;
                        if (i2 < length - 2) {
                            char charAt2 = charSequence.charAt(i2 + 1);
                            i3 = i2;
                            if (charAt2 != '\r') {
                                i3 = i2;
                                if (charAt2 != '\n') {
                                    int i4 = i2 + 2;
                                    char charAt3 = charSequence.charAt(i4);
                                    int parseHexDigit = parseHexDigit(charAt2);
                                    int parseHexDigit2 = parseHexDigit(charAt3);
                                    i3 = i4;
                                    if (parseHexDigit >= 0) {
                                        i3 = i4;
                                        if (parseHexDigit2 >= 0) {
                                            byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                                            i3 = i4;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i = i3 + 1;
        }
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        int i;
        int indexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (i2 < 4 && (indexOf = str.indexOf(59, i)) >= 0) {
                        strArr[i2] = str.substring(i, indexOf);
                        i2++;
                        i3 = indexOf + 1;
                    }
                }
                strArr[i2] = str.substring(i);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    public static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z, z2);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchVCardPrefixedField.get(0);
    }

    public static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        String str2;
        String str3;
        ArrayList arrayList;
        boolean z3;
        int indexOf;
        String str4;
        int length = str.length();
        int i = 0;
        ArrayList arrayList2 = null;
        while (i < length) {
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            int i2 = i;
            if (i > 0) {
                i2 = i - 1;
            }
            if (!matcher.find(i2)) {
                break;
            }
            int end = matcher.end(0);
            String group = matcher.group(1);
            if (group != null) {
                String[] split = SEMICOLON.split(group);
                int length2 = split.length;
                int i3 = 0;
                ArrayList arrayList3 = null;
                boolean z4 = false;
                String str5 = null;
                String str6 = null;
                while (true) {
                    String str7 = str6;
                    arrayList = arrayList3;
                    z3 = z4;
                    str3 = str5;
                    str2 = str7;
                    if (i3 >= length2) {
                        break;
                    }
                    String str8 = split[i3];
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList(1);
                    }
                    arrayList4.add(str8);
                    String[] split2 = EQUALS.split(str8, 2);
                    boolean z5 = z4;
                    String str9 = str5;
                    String str10 = str7;
                    if (split2.length > 1) {
                        String str11 = split2[0];
                        String str12 = split2[1];
                        if ("ENCODING".equalsIgnoreCase(str11) && "QUOTED-PRINTABLE".equalsIgnoreCase(str12)) {
                            z5 = true;
                            str9 = str5;
                            str10 = str7;
                        } else if ("CHARSET".equalsIgnoreCase(str11)) {
                            z5 = z4;
                            str9 = str12;
                            str10 = str7;
                        } else {
                            z5 = z4;
                            str9 = str5;
                            str10 = str7;
                            if ("VALUE".equalsIgnoreCase(str11)) {
                                str10 = str12;
                                str9 = str5;
                                z5 = z4;
                            }
                        }
                    }
                    i3++;
                    arrayList3 = arrayList4;
                    z4 = z5;
                    str5 = str9;
                    str6 = str10;
                }
            } else {
                arrayList = null;
                z3 = false;
                str3 = null;
                str2 = null;
            }
            int i4 = end;
            while (true) {
                indexOf = str.indexOf(10, i4);
                if (indexOf >= 0) {
                    if (indexOf < str.length() - 1) {
                        int i5 = indexOf + 1;
                        if (str.charAt(i5) == ' ' || str.charAt(i5) == '\t') {
                            i4 = indexOf + 2;
                        }
                    }
                    if (!z3 || ((indexOf <= 0 || str.charAt(indexOf - 1) != '=') && (indexOf < 2 || str.charAt(indexOf - 2) != '='))) {
                        break;
                    }
                    i4 = indexOf + 1;
                } else {
                    break;
                }
            }
            if (indexOf < 0) {
                i = length;
            } else {
                int i6 = indexOf;
                ArrayList arrayList5 = arrayList2;
                if (indexOf > end) {
                    arrayList5 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList5 = new ArrayList(1);
                    }
                    i6 = indexOf;
                    if (indexOf > 0) {
                        i6 = indexOf;
                        if (str.charAt(indexOf - 1) == '\r') {
                            i6 = indexOf - 1;
                        }
                    }
                    String substring = str.substring(end, i6);
                    String str13 = substring;
                    if (z) {
                        str13 = substring.trim();
                    }
                    if (z3) {
                        String decodeQuotedPrintable = decodeQuotedPrintable(str13, str3);
                        str4 = decodeQuotedPrintable;
                        if (z2) {
                            str4 = UNESCAPED_SEMICOLONS.matcher(decodeQuotedPrintable).replaceAll("\n").trim();
                        }
                    } else {
                        String str14 = str13;
                        if (z2) {
                            str14 = UNESCAPED_SEMICOLONS.matcher(str13).replaceAll("\n").trim();
                        }
                        str4 = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(str14).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                    }
                    String str15 = str4;
                    if (ShareConstants.MEDIA_URI.equals(str2)) {
                        try {
                            str15 = URI.create(str4).getSchemeSpecificPart();
                        } catch (IllegalArgumentException e) {
                            str15 = str4;
                        }
                    }
                    if (arrayList == null) {
                        ArrayList arrayList6 = new ArrayList(1);
                        arrayList6.add(str15);
                        arrayList5.add(arrayList6);
                    } else {
                        arrayList.add(0, str15);
                        arrayList5.add(arrayList);
                    }
                }
                i = i6 + 1;
                arrayList2 = arrayList5;
            }
        }
        return arrayList2;
    }

    private static void maybeAppendComponent(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] == null || strArr[i].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException e) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str2 = list.get(0);
            if (str2 != null && !str2.isEmpty()) {
                int i = 1;
                while (true) {
                    if (i >= list.size()) {
                        str = null;
                        break;
                    }
                    str = list.get(i);
                    int indexOf = str.indexOf(61);
                    if (indexOf < 0) {
                        break;
                    } else if ("TYPE".equalsIgnoreCase(str.substring(0, indexOf))) {
                        str = str.substring(indexOf + 1);
                        break;
                    } else {
                        i++;
                    }
                }
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField("FN", massagedText, true, false);
        List<List<String>> list = matchVCardPrefixedField;
        if (matchVCardPrefixedField == null) {
            list = matchVCardPrefixedField("N", massagedText, true, false);
            formatNames(list);
        }
        List<String> matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NICKNAME", massagedText, true, false);
        String[] split = matchSingleVCardPrefixedField == null ? null : COMMA.split(matchSingleVCardPrefixedField.get(0));
        List<List<String>> matchVCardPrefixedField2 = matchVCardPrefixedField("TEL", massagedText, true, false);
        List<List<String>> matchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", massagedText, true, false);
        List<String> matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("NOTE", massagedText, false, false);
        List<List<String>> matchVCardPrefixedField4 = matchVCardPrefixedField("ADR", massagedText, true, true);
        List<String> matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("ORG", massagedText, true, true);
        List<String> matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("BDAY", massagedText, true, false);
        if (matchSingleVCardPrefixedField4 != null && !isLikeVCardDate(matchSingleVCardPrefixedField4.get(0))) {
            matchSingleVCardPrefixedField4 = null;
        }
        List<String> matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(ShareConstants.TITLE, massagedText, true, false);
        List<List<String>> matchVCardPrefixedField5 = matchVCardPrefixedField(POBVideoPlayerActivity.PLAYBACK_URL, massagedText, true, false);
        List<String> matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("IMPP", massagedText, true, false);
        List<String> matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText, true, false);
        String[] split2 = matchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split(matchSingleVCardPrefixedField7.get(0));
        if (split2 != null && split2.length != 2) {
            split2 = null;
        }
        return new AddressBookParsedResult(toPrimaryValues(list), split, null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField6), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField5), toPrimaryValues(matchVCardPrefixedField5), split2);
    }
}
