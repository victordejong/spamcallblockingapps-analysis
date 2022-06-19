package org.apache.commons.lang3;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.regex.Pattern;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/StringUtils.class */
public class StringUtils {

    /* renamed from: CR */
    public static final String f67178CR = "\r";
    public static final String EMPTY = "";
    public static final int INDEX_NOT_FOUND = -1;

    /* renamed from: LF */
    public static final String f67179LF = "\n";
    private static final int PAD_LIMIT = 8192;
    public static final String SPACE = " ";
    private static final int STRING_BUILDER_SIZE = 256;
    private static final Pattern STRIP_ACCENTS_PATTERN = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

    public static String abbreviate(String str, int i) {
        return abbreviate(str, "...", 0, i);
    }

    public static String abbreviate(String str, int i, int i2) {
        return abbreviate(str, "...", i, i2);
    }

    public static String abbreviate(String str, String str2, int i) {
        return abbreviate(str, str2, 0, i);
    }

    public static String abbreviate(String str, String str2, int i, int i2) {
        if (!isNotEmpty(str) || !"".equals(str2) || i2 <= 0) {
            if (isAnyEmpty(str, str2)) {
                return str;
            }
            int length = str2.length();
            int i3 = length + 1;
            int i4 = length + length + 1;
            if (i2 < i3) {
                throw new IllegalArgumentException(String.format("Minimum abbreviation width is %d", Integer.valueOf(i3)));
            }
            if (str.length() <= i2) {
                return str;
            }
            int i5 = i;
            if (i > str.length()) {
                i5 = str.length();
            }
            int i6 = i2 - length;
            int i7 = i5;
            if (str.length() - i5 < i6) {
                i7 = str.length() - i6;
            }
            if (i7 <= i3) {
                return str.substring(0, i6) + str2;
            } else if (i2 < i4) {
                throw new IllegalArgumentException(String.format("Minimum abbreviation width with offset is %d", Integer.valueOf(i4)));
            } else {
                if ((i2 + i7) - length < str.length()) {
                    return str2 + abbreviate(str.substring(i7), str2, i6);
                }
                return str2 + str.substring(str.length() - i6);
            }
        }
        return substring(str, 0, i2);
    }

    public static String abbreviateMiddle(String str, String str2, int i) {
        int length;
        String str3 = str;
        if (!isAnyEmpty(str, str2)) {
            str3 = str;
            if (i < str.length()) {
                if (i < str2.length() + 2) {
                    str3 = str;
                } else {
                    int length2 = (i - str2.length()) / 2;
                    int length3 = str.length();
                    str3 = str.substring(0, (length % 2) + length2) + str2 + str.substring(length3 - length2);
                }
            }
        }
        return str3;
    }

    private static String appendIfMissing(String str, CharSequence charSequence, boolean z, CharSequence... charSequenceArr) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (!isEmpty(charSequence)) {
                if (endsWith(str, charSequence, z)) {
                    str2 = str;
                } else {
                    if (ArrayUtils.isNotEmpty(charSequenceArr)) {
                        for (CharSequence charSequence2 : charSequenceArr) {
                            if (endsWith(str, charSequence2, z)) {
                                return str;
                            }
                        }
                    }
                    str2 = str + charSequence.toString();
                }
            }
        }
        return str2;
    }

    public static String appendIfMissing(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return appendIfMissing(str, charSequence, false, charSequenceArr);
    }

    public static String appendIfMissingIgnoreCase(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return appendIfMissing(str, charSequence, true, charSequenceArr);
    }

    public static String capitalize(String str) {
        int codePointAt;
        int titleCase;
        int length = length(str);
        if (length != 0 && codePointAt != (titleCase = Character.toTitleCase((codePointAt = str.codePointAt(0))))) {
            int[] iArr = new int[length];
            iArr[0] = titleCase;
            int charCount = Character.charCount(codePointAt);
            int i = 1;
            while (charCount < length) {
                int codePointAt2 = str.codePointAt(charCount);
                iArr[i] = codePointAt2;
                charCount += Character.charCount(codePointAt2);
                i++;
            }
            return new String(iArr, 0, i);
        }
        return str;
    }

    public static String center(String str, int i) {
        return center(str, i, ' ');
    }

    public static String center(String str, int i, char c) {
        String str2 = str;
        if (str != null) {
            if (i <= 0) {
                str2 = str;
            } else {
                int length = str.length();
                int i2 = i - length;
                if (i2 <= 0) {
                    return str;
                }
                str2 = rightPad(leftPad(str, length + (i2 / 2), c), i, c);
            }
        }
        return str2;
    }

    public static String center(String str, int i, String str2) {
        String str3 = str;
        if (str != null) {
            if (i <= 0) {
                str3 = str;
            } else {
                String str4 = str2;
                if (isEmpty(str2)) {
                    str4 = SPACE;
                }
                int length = str.length();
                int i2 = i - length;
                if (i2 <= 0) {
                    return str;
                }
                str3 = rightPad(leftPad(str, length + (i2 / 2), str4), i, str4);
            }
        }
        return str3;
    }

    public static String chomp(String str) {
        int i;
        if (isEmpty(str)) {
            return str;
        }
        if (str.length() == 1) {
            char charAt = str.charAt(0);
            return (charAt == '\r' || charAt == '\n') ? "" : str;
        }
        int length = str.length() - 1;
        char charAt2 = str.charAt(length);
        if (charAt2 == '\n') {
            i = length;
            if (str.charAt(length - 1) == '\r') {
                i = length - 1;
            }
        } else {
            i = length;
            if (charAt2 != '\r') {
                i = length + 1;
            }
        }
        return str.substring(0, i);
    }

    @Deprecated
    public static String chomp(String str, String str2) {
        return removeEnd(str, str2);
    }

    public static String chop(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i = length - 1;
        String substring = str.substring(0, i);
        if (str.charAt(i) == '\n') {
            int i2 = i - 1;
            if (substring.charAt(i2) == '\r') {
                return substring.substring(0, i2);
            }
        }
        return substring;
    }

    public static int compare(String str, String str2) {
        return compare(str, str2, true);
    }

    public static int compare(String str, String str2, boolean z) {
        if (str == str2) {
            return 0;
        }
        return str == null ? z ? -1 : 1 : str2 == null ? z ? 1 : -1 : str.compareTo(str2);
    }

    public static int compareIgnoreCase(String str, String str2) {
        return compareIgnoreCase(str, str2, true);
    }

    public static int compareIgnoreCase(String str, String str2, boolean z) {
        if (str == str2) {
            return 0;
        }
        return str == null ? z ? -1 : 1 : str2 == null ? z ? 1 : -1 : str.compareToIgnoreCase(str2);
    }

    public static boolean contains(CharSequence charSequence, int i) {
        return !isEmpty(charSequence) && C20722a.m604a(charSequence, i, 0) >= 0;
    }

    public static boolean contains(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 == null || C20722a.m603a(charSequence, charSequence2, 0) < 0) ? false : true;
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence charSequence2) {
        char[] cArr;
        if (charSequence2 == null) {
            return false;
        }
        int length = length(charSequence2);
        if (length == 0) {
            cArr = ArrayUtils.EMPTY_CHAR_ARRAY;
        } else if (charSequence2 instanceof String) {
            cArr = ((String) charSequence2).toCharArray();
        } else {
            char[] cArr2 = new char[length];
            for (int i = 0; i < length; i++) {
                cArr2[i] = charSequence2.charAt(i);
            }
            cArr = cArr2;
        }
        return containsAny(charSequence, cArr);
    }

    public static boolean containsAny(CharSequence charSequence, char... cArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(cArr)) {
            return false;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            for (int i2 = 0; i2 < length2; i2++) {
                if (cArr[i2] == charAt) {
                    if (!Character.isHighSurrogate(charAt) || i2 == length2 - 1) {
                        return true;
                    }
                    if (i < length - 1 && cArr[i2 + 1] == charSequence.charAt(i + 1)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (contains(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        int length = charSequence2.length();
        int length2 = charSequence.length();
        for (int i = 0; i <= length2 - length; i++) {
            if (C20722a.m602a(charSequence, true, i, charSequence2, length)) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsNone(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return true;
        }
        return containsNone(charSequence, str.toCharArray());
    }

    public static boolean containsNone(CharSequence charSequence, char... cArr) {
        if (charSequence == null || cArr == null) {
            return true;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            for (int i2 = 0; i2 < length2; i2++) {
                if (cArr[i2] == charAt) {
                    if (!Character.isHighSurrogate(charAt) || i2 == length2 - 1) {
                        return false;
                    }
                    if (i < length - 1 && cArr[i2 + 1] == charSequence.charAt(i + 1)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsOnly(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return false;
        }
        return containsOnly(charSequence, str.toCharArray());
    }

    public static boolean containsOnly(CharSequence charSequence, char... cArr) {
        if (cArr == null || charSequence == null) {
            return false;
        }
        if (charSequence.length() == 0) {
            return true;
        }
        return cArr.length != 0 && indexOfAnyBut(charSequence, cArr) == -1;
    }

    public static boolean containsWhitespace(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (Character.isWhitespace(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    private static void convertRemainingAccentCharacters(StringBuilder sb) {
        for (int i = 0; i < sb.length(); i++) {
            if (sb.charAt(i) == 321) {
                sb.deleteCharAt(i);
                sb.insert(i, 'L');
            } else if (sb.charAt(i) == 322) {
                sb.deleteCharAt(i);
                sb.insert(i, 'l');
            }
        }
    }

    public static int countMatches(CharSequence charSequence, char c) {
        int i = 0;
        if (isEmpty(charSequence)) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= charSequence.length()) {
                return i3;
            }
            int i4 = i3;
            if (c == charSequence.charAt(i)) {
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    public static int countMatches(CharSequence charSequence, CharSequence charSequence2) {
        int i = 0;
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            int m603a = C20722a.m603a(charSequence, charSequence2, i);
            if (m603a == -1) {
                return i2;
            }
            i2++;
            i = m603a + charSequence2.length();
        }
    }

    public static <T extends CharSequence> T defaultIfBlank(T t, T t2) {
        return isBlank(t) ? t2 : t;
    }

    public static <T extends CharSequence> T defaultIfEmpty(T t, T t2) {
        return isEmpty(t) ? t2 : t;
    }

    public static String defaultString(String str) {
        return defaultString(str, "");
    }

    public static String defaultString(String str, String str2) {
        return str == null ? str2 : str;
    }

    public static String deleteWhitespace(String str) {
        int i;
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = i;
            if (!Character.isWhitespace(str.charAt(i2))) {
                cArr[i] = str.charAt(i2);
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        return i == length ? str : new String(cArr, 0, i);
    }

    public static String difference(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        int indexOfDifference = indexOfDifference(str, str2);
        return indexOfDifference == -1 ? "" : str2.substring(indexOfDifference);
    }

    public static boolean endsWith(CharSequence charSequence, CharSequence charSequence2) {
        return endsWith(charSequence, charSequence2, false);
    }

    private static boolean endsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence2.length() <= charSequence.length()) {
            return C20722a.m602a(charSequence, z, charSequence.length() - charSequence2.length(), charSequence2, charSequence2.length());
        } else {
            return false;
        }
    }

    public static boolean endsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (endsWith(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean endsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return endsWith(charSequence, charSequence2, true);
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (ArrayUtils.isNotEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (equals(charSequence, charSequence2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean equalsAnyIgnoreCase(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (ArrayUtils.isNotEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (equalsIgnoreCase(charSequence, charSequence2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean equalsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence != null && charSequence2 != null && charSequence.length() == charSequence2.length()) {
            return C20722a.m602a(charSequence, true, 0, charSequence2, charSequence.length());
        }
        return false;
    }

    @SafeVarargs
    public static <T extends CharSequence> T firstNonBlank(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                if (isNotBlank(t)) {
                    return t;
                }
            }
            return null;
        }
        return null;
    }

    @SafeVarargs
    public static <T extends CharSequence> T firstNonEmpty(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                if (isNotEmpty(t)) {
                    return t;
                }
            }
            return null;
        }
        return null;
    }

    public static byte[] getBytes(String str, String str2) throws UnsupportedEncodingException {
        if (str == null) {
            return ArrayUtils.EMPTY_BYTE_ARRAY;
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = Charset.defaultCharset().name();
        }
        return str.getBytes(str3);
    }

    public static byte[] getBytes(String str, Charset charset) {
        return str == null ? ArrayUtils.EMPTY_BYTE_ARRAY : str.getBytes(C20738c.m554a(charset));
    }

    public static String getCommonPrefix(String... strArr) {
        if (ArrayUtils.isEmpty(strArr)) {
            return "";
        }
        int indexOfDifference = indexOfDifference(strArr);
        return indexOfDifference == -1 ? strArr[0] == null ? "" : strArr[0] : indexOfDifference == 0 ? "" : strArr[0].substring(0, indexOfDifference);
    }

    public static String getDigits(String str) {
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static int getFuzzyDistance(CharSequence charSequence, CharSequence charSequence2, Locale locale) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (locale == null) {
            throw new IllegalArgumentException("Locale must not be null");
        }
        String lowerCase = charSequence.toString().toLowerCase(locale);
        String lowerCase2 = charSequence2.toString().toLowerCase(locale);
        int i = Integer.MIN_VALUE;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < lowerCase2.length(); i4++) {
            char charAt = lowerCase2.charAt(i4);
            boolean z = false;
            while (i3 < lowerCase.length() && !z) {
                int i5 = i2;
                int i6 = i;
                if (charAt == lowerCase.charAt(i3)) {
                    int i7 = i2 + 1;
                    int i8 = i7;
                    if (i + 1 == i3) {
                        i8 = i7 + 2;
                    }
                    z = true;
                    i6 = i3;
                    i5 = i8;
                }
                i3++;
                i2 = i5;
                i = i6;
            }
        }
        return i2;
    }

    public static <T extends CharSequence> T getIfBlank(T t, Supplier<T> supplier) {
        T t2 = t;
        if (isBlank(t)) {
            if (supplier == null) {
                return null;
            }
            t2 = supplier.get();
        }
        return t2;
    }

    public static <T extends CharSequence> T getIfEmpty(T t, Supplier<T> supplier) {
        T t2 = t;
        if (isEmpty(t)) {
            if (supplier == null) {
                return null;
            }
            t2 = supplier.get();
        }
        return t2;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    @Deprecated
    public static double getJaroWinklerDistance(CharSequence charSequence, CharSequence charSequence2) {
        int[] matches;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        double d = matches(charSequence, charSequence2)[0];
        if (d == 0.0d) {
            return 0.0d;
        }
        char length = (((d / charSequence.length()) + (d / charSequence2.length())) + ((d - matches[1]) / d)) / 3.0d;
        if (length >= 0.7d) {
            length += Math.min(0.1d, 1.0d / matches[3]) * matches[2] * (0 - length);
        }
        return Math.round(length * 0) / 100.0d;
    }

    @Deprecated
    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        if (length > length2) {
            length = length2;
            length2 = charSequence.length();
        } else {
            charSequence = charSequence2;
            charSequence2 = charSequence;
        }
        int[] iArr = new int[length + 1];
        for (int i = 0; i <= length; i++) {
            iArr[i] = i;
        }
        for (int i2 = 1; i2 <= length2; i2++) {
            int i3 = iArr[0];
            char charAt = charSequence.charAt(i2 - 1);
            iArr[0] = i2;
            int i4 = 1;
            while (i4 <= length) {
                int i5 = iArr[i4];
                int i6 = i4 - 1;
                iArr[i4] = Math.min(Math.min(iArr[i6] + 1, iArr[i4] + 1), i3 + (charSequence2.charAt(i6) == charAt ? 0 : 1));
                i4++;
                i3 = i5;
            }
        }
        return iArr[length];
    }

    @Deprecated
    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2, int i) {
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            if (length2 > i) {
                return -1;
            }
            return length2;
        } else if (length2 == 0) {
            if (length > i) {
                return -1;
            }
            return length;
        } else if (Math.abs(length - length2) > i) {
            return -1;
        } else {
            if (length > length2) {
                length = length2;
                charSequence4 = charSequence;
                charSequence3 = charSequence2;
                length2 = charSequence.length();
            } else {
                charSequence3 = charSequence;
                charSequence4 = charSequence2;
            }
            int i2 = length + 1;
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int min = Math.min(length, i) + 1;
            for (int i3 = 0; i3 < min; i3++) {
                iArr[i3] = i3;
            }
            Arrays.fill(iArr, min, i2, Integer.MAX_VALUE);
            Arrays.fill(iArr2, Integer.MAX_VALUE);
            int i4 = 1;
            while (true) {
                int[] iArr3 = iArr2;
                if (i4 > length2) {
                    if (iArr[length] > i) {
                        return -1;
                    }
                    return iArr[length];
                }
                char charAt = charSequence4.charAt(i4 - 1);
                iArr3[0] = i4;
                int max = Math.max(1, i4 - i);
                int min2 = i4 > Integer.MAX_VALUE - i ? length : Math.min(length, i4 + i);
                if (max > min2) {
                    return -1;
                }
                int i5 = max;
                if (max > 1) {
                    iArr3[max - 1] = Integer.MAX_VALUE;
                    i5 = max;
                }
                while (i5 <= min2) {
                    int i6 = i5 - 1;
                    if (charSequence3.charAt(i6) == charAt) {
                        iArr3[i5] = iArr[i6];
                    } else {
                        iArr3[i5] = Math.min(Math.min(iArr3[i6], iArr[i5]), iArr[i6]) + 1;
                    }
                    i5++;
                }
                i4++;
                iArr2 = iArr;
                iArr = iArr3;
            }
        }
    }

    public static int indexOf(CharSequence charSequence, int i) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return C20722a.m604a(charSequence, i, 0);
    }

    public static int indexOf(CharSequence charSequence, int i, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return C20722a.m604a(charSequence, i, i2);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return C20722a.m603a(charSequence, charSequence2, 0);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return C20722a.m603a(charSequence, charSequence2, i);
    }

    public static int indexOfAny(CharSequence charSequence, String str) {
        if (isEmpty(charSequence) || isEmpty(str)) {
            return -1;
        }
        return indexOfAny(charSequence, str.toCharArray());
    }

    public static int indexOfAny(CharSequence charSequence, char... cArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(cArr)) {
            return -1;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            for (int i2 = 0; i2 < length2; i2++) {
                if (cArr[i2] == charAt && (i >= length - 1 || i2 >= length2 - 1 || !Character.isHighSurrogate(charAt) || cArr[i2 + 1] == charSequence.charAt(i + 1))) {
                    return i;
                }
            }
        }
        return -1;
    }

    public static int indexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int i;
        if (charSequence == null || charSequenceArr == null) {
            return -1;
        }
        int length = charSequenceArr.length;
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            CharSequence charSequence2 = charSequenceArr[i2];
            int i4 = i;
            if (charSequence2 != null) {
                int m603a = C20722a.m603a(charSequence, charSequence2, 0);
                i4 = i;
                if (m603a != -1) {
                    i4 = i;
                    if (m603a < i) {
                        i4 = m603a;
                    }
                }
            }
            i2++;
            i3 = i4;
        }
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        return -1;
    }

    public static int indexOfAnyBut(CharSequence charSequence, CharSequence charSequence2) {
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return -1;
        }
        int length = charSequence.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                return -1;
            }
            char charAt = charSequence.charAt(i2);
            boolean z = C20722a.m604a(charSequence2, charAt, 0) >= 0;
            int i3 = i2 + 1;
            if (i3 < length && Character.isHighSurrogate(charAt)) {
                char charAt2 = charSequence.charAt(i3);
                if (z && C20722a.m604a(charSequence2, charAt2, 0) < 0) {
                    return i2;
                }
            } else if (!z) {
                return i2;
            }
            i = i3;
        }
    }

    public static int indexOfAnyBut(CharSequence charSequence, char... cArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(cArr)) {
            return -1;
        }
        int length = charSequence.length();
        int length2 = cArr.length;
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            for (int i2 = 0; i2 < length2; i2++) {
                if (cArr[i2] != charAt || (i < length - 1 && i2 < length2 - 1 && Character.isHighSurrogate(charAt) && cArr[i2 + 1] != charSequence.charAt(i + 1))) {
                }
            }
            return i;
        }
        return -1;
    }

    public static int indexOfDifference(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return -1;
        }
        int i = 0;
        int i2 = 0;
        if (charSequence != null) {
            if (charSequence2 == null) {
                i2 = 0;
            } else {
                while (i < charSequence.length() && i < charSequence2.length() && charSequence.charAt(i) == charSequence2.charAt(i)) {
                    i++;
                }
                i2 = i;
                if (i >= charSequence2.length()) {
                    if (i >= charSequence.length()) {
                        return -1;
                    }
                    i2 = i;
                }
            }
        }
        return i2;
    }

    public static int indexOfDifference(CharSequence... charSequenceArr) {
        int i;
        int i2;
        int i3;
        if (ArrayUtils.getLength(charSequenceArr) <= 1) {
            return -1;
        }
        int length = charSequenceArr.length;
        int i4 = Integer.MAX_VALUE;
        int length2 = charSequenceArr.length;
        int i5 = 0;
        boolean z = true;
        int i6 = 0;
        boolean z2 = false;
        while (i5 < length2) {
            CharSequence charSequence = charSequenceArr[i5];
            if (charSequence == null) {
                i3 = 0;
                z2 = true;
            } else {
                i3 = Math.min(charSequence.length(), i4);
                i6 = Math.max(charSequence.length(), i6);
                z = false;
            }
            i5++;
            i4 = i3;
        }
        if (z) {
            return -1;
        }
        if (i6 == 0 && !z2) {
            return -1;
        }
        if (i4 == 0) {
            return 0;
        }
        int i7 = 0;
        int i8 = -1;
        while (true) {
            int i9 = i8;
            i = i9;
            if (i7 >= i4) {
                break;
            }
            char charAt = charSequenceArr[0].charAt(i7);
            int i10 = 1;
            while (true) {
                i2 = i9;
                if (i10 >= length) {
                    break;
                } else if (charSequenceArr[i10].charAt(i7) != charAt) {
                    i2 = i7;
                    break;
                } else {
                    i10++;
                }
            }
            i = i2;
            if (i2 != -1) {
                break;
            }
            i7++;
            i8 = i2;
        }
        return (i != -1 || i4 == i6) ? i : i4;
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return indexOfIgnoreCase(charSequence, charSequence2, 0);
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        int length = (charSequence.length() - charSequence2.length()) + 1;
        if (i2 > length) {
            return -1;
        }
        if (charSequence2.length() == 0) {
            return i2;
        }
        for (int i3 = i2; i3 < length; i3++) {
            if (C20722a.m602a(charSequence, true, i3, charSequence2, charSequence2.length())) {
                return i3;
            }
        }
        return -1;
    }

    public static boolean isAllBlank(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isNotBlank(charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllEmpty(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isNotEmpty(charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllLowerCase(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLowerCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllUpperCase(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isUpperCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlpha(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphaSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumeric(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAnyBlank(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isBlank(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAnyEmpty(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isEmpty(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAsciiPrintable(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!C20724b.m595a(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBlank(CharSequence charSequence) {
        int length = length(charSequence);
        if (length == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isMixedCase(CharSequence charSequence) {
        boolean z;
        if (isEmpty(charSequence) || charSequence.length() == 1) {
            return false;
        }
        int length = charSequence.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            if (z2 && z3) {
                return true;
            }
            if (Character.isUpperCase(charSequence.charAt(i))) {
                z = true;
            } else {
                z = z2;
                if (Character.isLowerCase(charSequence.charAt(i))) {
                    z3 = true;
                    z = z2;
                }
            }
            i++;
            z2 = z;
        }
        return z2 && z3;
    }

    public static boolean isNoneBlank(CharSequence... charSequenceArr) {
        return !isAnyBlank(charSequenceArr);
    }

    public static boolean isNoneEmpty(CharSequence... charSequenceArr) {
        return !isAnyEmpty(charSequenceArr);
    }

    public static boolean isNotBlank(CharSequence charSequence) {
        return !isBlank(charSequence);
    }

    public static boolean isNotEmpty(CharSequence charSequence) {
        return !isEmpty(charSequence);
    }

    public static boolean isNumeric(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String join(Iterable<?> iterable, char c) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), c);
    }

    public static String join(Iterable<?> iterable, String str) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), str);
    }

    public static String join(Iterator<?> it2, char c) {
        if (it2 == null) {
            return null;
        }
        if (!it2.hasNext()) {
            return "";
        }
        Object next = it2.next();
        if (!it2.hasNext()) {
            return Objects.toString(next, "");
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it2.hasNext()) {
            sb.append(c);
            Object next2 = it2.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(Iterator<?> it2, String str) {
        if (it2 == null) {
            return null;
        }
        if (!it2.hasNext()) {
            return "";
        }
        Object next = it2.next();
        if (!it2.hasNext()) {
            return Objects.toString(next, "");
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it2.hasNext()) {
            if (str != null) {
                sb.append(str);
            }
            Object next2 = it2.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(List<?> list, char c, int i, int i2) {
        if (list == null) {
            return null;
        }
        return i2 - i <= 0 ? "" : join(list.subList(i, i2).iterator(), c);
    }

    public static String join(List<?> list, String str, int i, int i2) {
        if (list == null) {
            return null;
        }
        return i2 - i <= 0 ? "" : join(list.subList(i, i2).iterator(), str);
    }

    public static String join(byte[] bArr, char c) {
        if (bArr == null) {
            return null;
        }
        return join(bArr, c, 0, bArr.length);
    }

    public static String join(byte[] bArr, char c, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append((int) bArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append((int) bArr[i]);
        }
    }

    public static String join(char[] cArr, char c) {
        if (cArr == null) {
            return null;
        }
        return join(cArr, c, 0, cArr.length);
    }

    public static String join(char[] cArr, char c, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append(cArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append(cArr[i]);
        }
    }

    public static String join(double[] dArr, char c) {
        if (dArr == null) {
            return null;
        }
        return join(dArr, c, 0, dArr.length);
    }

    public static String join(double[] dArr, char c, int i, int i2) {
        if (dArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append(dArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append(dArr[i]);
        }
    }

    public static String join(float[] fArr, char c) {
        if (fArr == null) {
            return null;
        }
        return join(fArr, c, 0, fArr.length);
    }

    public static String join(float[] fArr, char c, int i, int i2) {
        if (fArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append(fArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append(fArr[i]);
        }
    }

    public static String join(int[] iArr, char c) {
        if (iArr == null) {
            return null;
        }
        return join(iArr, c, 0, iArr.length);
    }

    public static String join(int[] iArr, char c, int i, int i2) {
        if (iArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append(iArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append(iArr[i]);
        }
    }

    public static String join(long[] jArr, char c) {
        if (jArr == null) {
            return null;
        }
        return join(jArr, c, 0, jArr.length);
    }

    public static String join(long[] jArr, char c, int i, int i2) {
        if (jArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append(jArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append(jArr[i]);
        }
    }

    @SafeVarargs
    public static <T> String join(T... tArr) {
        return join(tArr, (String) null);
    }

    public static String join(Object[] objArr, char c) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, c, 0, objArr.length);
    }

    public static String join(Object[] objArr, char c, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        int i4 = i;
        if (objArr[i] != null) {
            newStringBuilder.append(objArr[i]);
            i4 = i;
        }
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            i4 = i5;
            if (objArr[i5] != null) {
                newStringBuilder.append(objArr[i5]);
                i4 = i5;
            }
        }
    }

    public static String join(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, str, 0, objArr.length);
    }

    public static String join(Object[] objArr, String str, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        int i4 = i;
        if (objArr[i] != null) {
            newStringBuilder.append(objArr[i]);
            i4 = i;
        }
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(str2);
            i4 = i5;
            if (objArr[i5] != null) {
                newStringBuilder.append(objArr[i5]);
                i4 = i5;
            }
        }
    }

    public static String join(short[] sArr, char c) {
        if (sArr == null) {
            return null;
        }
        return join(sArr, c, 0, sArr.length);
    }

    public static String join(short[] sArr, char c, int i, int i2) {
        if (sArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i3);
        newStringBuilder.append((int) sArr[i]);
        while (true) {
            i++;
            if (i >= i2) {
                return newStringBuilder.toString();
            }
            newStringBuilder.append(c);
            newStringBuilder.append((int) sArr[i]);
        }
    }

    public static String joinWith(String str, Object... objArr) {
        if (objArr != null) {
            String defaultString = defaultString(str);
            StringBuilder sb = new StringBuilder();
            Iterator it2 = Arrays.asList(objArr).iterator();
            while (it2.hasNext()) {
                sb.append(Objects.toString(it2.next(), ""));
                if (it2.hasNext()) {
                    sb.append(defaultString);
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("Object varargs must not be null");
    }

    public static int lastIndexOf(CharSequence charSequence, int i) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return C20722a.m601b(charSequence, i, charSequence.length());
    }

    public static int lastIndexOf(CharSequence charSequence, int i, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return C20722a.m601b(charSequence, i, i2);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return C20722a.m600b(charSequence, charSequence2, charSequence.length());
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return C20722a.m600b(charSequence, charSequence2, i);
    }

    public static int lastIndexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int i = -1;
        int i2 = -1;
        if (charSequence != null) {
            if (charSequenceArr != null) {
                int length = charSequenceArr.length;
                int i3 = 0;
                while (true) {
                    i2 = i;
                    if (i3 >= length) {
                        break;
                    }
                    CharSequence charSequence2 = charSequenceArr[i3];
                    int i4 = i;
                    if (charSequence2 != null) {
                        int m600b = C20722a.m600b(charSequence, charSequence2, charSequence.length());
                        i4 = i;
                        if (m600b > i) {
                            i4 = m600b;
                        }
                    }
                    i3++;
                    i = i4;
                }
            } else {
                i2 = -1;
            }
        }
        return i2;
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return lastIndexOfIgnoreCase(charSequence, charSequence2, charSequence.length());
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        int i2 = i;
        if (i > charSequence.length() - charSequence2.length()) {
            i2 = charSequence.length() - charSequence2.length();
        }
        if (i2 < 0) {
            return -1;
        }
        if (charSequence2.length() == 0) {
            return i2;
        }
        for (int i3 = i2; i3 >= 0; i3--) {
            if (C20722a.m602a(charSequence, true, i3, charSequence2, charSequence2.length())) {
                return i3;
            }
        }
        return -1;
    }

    public static int lastOrdinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        return ordinalIndexOf(charSequence, charSequence2, i, true);
    }

    public static String left(String str, int i) {
        if (str == null) {
            return null;
        }
        return i < 0 ? "" : str.length() <= i ? str : str.substring(0, i);
    }

    public static String leftPad(String str, int i) {
        return leftPad(str, i, ' ');
    }

    public static String leftPad(String str, int i, char c) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        return length <= 0 ? str : length > 8192 ? leftPad(str, i, String.valueOf(c)) : repeat(c, length).concat(str);
    }

    public static String leftPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        String str3 = str2;
        if (isEmpty(str2)) {
            str3 = SPACE;
        }
        int length = str3.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return leftPad(str, i, str3.charAt(0));
        }
        if (length2 == length) {
            return str3.concat(str);
        }
        if (length2 < length) {
            return str3.substring(0, length2).concat(str);
        }
        char[] cArr = new char[length2];
        char[] charArray = str3.toCharArray();
        for (int i2 = 0; i2 < length2; i2++) {
            cArr[i2] = charArray[i2 % length];
        }
        return new String(cArr).concat(str);
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String lowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    public static String lowerCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    private static int[] matches(CharSequence charSequence, CharSequence charSequence2) {
        CharSequence charSequence3;
        CharSequence charSequence4;
        int i;
        int i2;
        int i3;
        if (charSequence.length() > charSequence2.length()) {
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int max = Math.max((charSequence4.length() / 2) - 1, 0);
        int[] iArr = new int[charSequence3.length()];
        Arrays.fill(iArr, -1);
        boolean[] zArr = new boolean[charSequence4.length()];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = i5;
            if (i4 >= charSequence3.length()) {
                break;
            }
            char charAt = charSequence3.charAt(i4);
            int max2 = Math.max(i4 - max, 0);
            int min = Math.min(i4 + max + 1, charSequence4.length());
            while (true) {
                i3 = i;
                if (max2 >= min) {
                    break;
                }
                if (!zArr[max2] && charAt == charSequence4.charAt(max2)) {
                    iArr[i4] = max2;
                    zArr[max2] = true;
                    i3 = i + 1;
                    break;
                }
                max2++;
            }
            i4++;
            i5 = i3;
        }
        char[] cArr = new char[i];
        char[] cArr2 = new char[i];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= charSequence3.length()) {
                break;
            }
            int i9 = i8;
            if (iArr[i6] != -1) {
                cArr[i8] = charSequence3.charAt(i6);
                i9 = i8 + 1;
            }
            i6++;
            i7 = i9;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            if (i10 >= charSequence4.length()) {
                break;
            }
            int i13 = i12;
            if (zArr[i10]) {
                cArr2[i12] = charSequence4.charAt(i10);
                i13 = i12 + 1;
            }
            i10++;
            i11 = i13;
        }
        int i14 = 0;
        int i15 = 0;
        while (true) {
            i2 = i15;
            if (i14 >= i) {
                break;
            }
            int i16 = i2;
            if (cArr[i14] != cArr2[i14]) {
                i16 = i2 + 1;
            }
            i14++;
            i15 = i16;
        }
        int i17 = 0;
        for (int i18 = 0; i18 < charSequence3.length() && charSequence.charAt(i18) == charSequence2.charAt(i18); i18++) {
            i17++;
        }
        return new int[]{i, i2 / 2, i17, charSequence4.length()};
    }

    public static String mid(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0 || i > str.length()) {
            return "";
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2 + i3;
        return str.length() <= i4 ? str.substring(i3) : str.substring(i3, i4);
    }

    private static StringBuilder newStringBuilder(int i) {
        return new StringBuilder(i * 16);
    }

    public static String normalizeSpace(String str) {
        int i;
        int i2;
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i3 = 0;
        boolean z = true;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = i5;
            if (i3 >= length) {
                break;
            }
            char charAt = str.charAt(i3);
            if (Character.isWhitespace(charAt)) {
                int i6 = i4;
                if (i == 0) {
                    i6 = i4;
                    if (!z) {
                        cArr[i4] = SPACE.charAt(0);
                        i6 = i4 + 1;
                    }
                }
                i4 = i6;
                i2 = i + 1;
            } else {
                char c = charAt;
                if (charAt == 160) {
                    c = ' ';
                }
                cArr[i4] = c;
                i4++;
                z = false;
                i2 = 0;
            }
            i3++;
            i5 = i2;
        }
        if (z) {
            return "";
        }
        return new String(cArr, 0, i4 - (i > 0 ? 1 : 0)).trim();
    }

    public static int ordinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        return ordinalIndexOf(charSequence, charSequence2, i, false);
    }

    private static int ordinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        int i2;
        int i3 = -1;
        int i4 = -1;
        if (charSequence != null) {
            i4 = -1;
            if (charSequence2 != null) {
                if (i <= 0) {
                    i4 = -1;
                } else if (charSequence2.length() == 0) {
                    if (!z) {
                        return 0;
                    }
                    return charSequence.length();
                } else {
                    int i5 = 0;
                    if (z) {
                        i3 = charSequence.length();
                        i5 = 0;
                    }
                    do {
                        i4 = z ? C20722a.m600b(charSequence, charSequence2, i3 - 1) : C20722a.m603a(charSequence, charSequence2, i3 + 1);
                        if (i4 < 0) {
                            return i4;
                        }
                        i2 = i5 + 1;
                        i3 = i4;
                        i5 = i2;
                    } while (i2 < i);
                }
            }
        }
        return i4;
    }

    public static String overlay(String str, String str2, int i, int i2) {
        if (str == null) {
            return null;
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        int length = str.length();
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i3;
        if (i3 > length) {
            i4 = length;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int i6 = i5 > length ? length : i5;
        int i7 = i6;
        int i8 = i4;
        if (i4 > i6) {
            i8 = i6;
            i7 = i4;
        }
        return str.substring(0, i8) + str3 + str.substring(i7);
    }

    private static String prependIfMissing(String str, CharSequence charSequence, boolean z, CharSequence... charSequenceArr) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (!isEmpty(charSequence)) {
                if (startsWith(str, charSequence, z)) {
                    str2 = str;
                } else {
                    if (ArrayUtils.isNotEmpty(charSequenceArr)) {
                        for (CharSequence charSequence2 : charSequenceArr) {
                            if (startsWith(str, charSequence2, z)) {
                                return str;
                            }
                        }
                    }
                    str2 = charSequence.toString() + str;
                }
            }
        }
        return str2;
    }

    public static String prependIfMissing(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return prependIfMissing(str, charSequence, false, charSequenceArr);
    }

    public static String prependIfMissingIgnoreCase(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return prependIfMissing(str, charSequence, true, charSequenceArr);
    }

    public static String remove(String str, char c) {
        if (isEmpty(str) || str.indexOf(c) == -1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= charArray.length) {
                return new String(charArray, 0, i3);
            }
            int i4 = i3;
            if (charArray[i] != c) {
                charArray[i3] = charArray[i];
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    public static String remove(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            str3 = isEmpty(str2) ? str : replace(str, str2, "", -1);
        }
        return str3;
    }

    @Deprecated
    public static String removeAll(String str, String str2) {
        return C20762f.m518a(str, str2, "");
    }

    public static String removeEnd(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                str3 = str;
                if (str.endsWith(str2)) {
                    str3 = str.substring(0, str.length() - str2.length());
                }
            }
        }
        return str3;
    }

    public static String removeEndIgnoreCase(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                str3 = str;
                if (endsWithIgnoreCase(str, str2)) {
                    str3 = str.substring(0, str.length() - str2.length());
                }
            }
        }
        return str3;
    }

    @Deprecated
    public static String removeFirst(String str, String str2) {
        return replaceFirst(str, str2, "");
    }

    public static String removeIgnoreCase(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            str3 = isEmpty(str2) ? str : replaceIgnoreCase(str, str2, "", -1);
        }
        return str3;
    }

    @Deprecated
    public static String removePattern(String str, String str2) {
        return C20762f.m517b(str, str2, "");
    }

    public static String removeStart(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                str3 = str;
                if (str.startsWith(str2)) {
                    str3 = str.substring(str2.length());
                }
            }
        }
        return str3;
    }

    public static String removeStartIgnoreCase(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                str3 = str;
                if (startsWithIgnoreCase(str, str2)) {
                    str3 = str.substring(str2.length());
                }
            }
        }
        return str3;
    }

    public static String repeat(char c, int i) {
        if (i <= 0) {
            return "";
        }
        char[] cArr = new char[i];
        while (true) {
            i--;
            if (i < 0) {
                return new String(cArr);
            }
            cArr[i] = c;
        }
    }

    public static String repeat(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i <= 0) {
            return "";
        }
        int length = str.length();
        String str2 = str;
        if (i != 1) {
            if (length == 0) {
                str2 = str;
            } else {
                if (length == 1 && i <= 8192) {
                    return repeat(str.charAt(0), i);
                }
                int i2 = length * i;
                if (length == 1) {
                    str2 = repeat(str.charAt(0), i);
                } else if (length != 2) {
                    StringBuilder sb = new StringBuilder(i2);
                    for (int i3 = 0; i3 < i; i3++) {
                        sb.append(str);
                    }
                    return sb.toString();
                } else {
                    char charAt = str.charAt(0);
                    char charAt2 = str.charAt(1);
                    char[] cArr = new char[i2];
                    int i4 = i * 2;
                    int i5 = 2;
                    while (true) {
                        int i6 = i4 - i5;
                        if (i6 < 0) {
                            return new String(cArr);
                        }
                        cArr[i6] = charAt;
                        cArr[i6 + 1] = charAt2;
                        i4 = i6 - 1;
                        i5 = 1;
                    }
                }
            }
        }
        return str2;
    }

    public static String repeat(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return repeat(str, i);
        }
        return removeEnd(repeat(str + str2, i), str2);
    }

    public static String replace(String str, String str2, String str3) {
        return replace(str, str2, str3, -1);
    }

    public static String replace(String str, String str2, String str3, int i) {
        return replace(str, str2, str3, i, false);
    }

    private static String replace(String str, String str2, String str3, int i, boolean z) {
        int i2;
        String str4 = str;
        if (!isEmpty(str)) {
            str4 = str;
            if (!isEmpty(str2)) {
                str4 = str;
                if (str3 != null) {
                    if (i == 0) {
                        str4 = str;
                    } else {
                        String str5 = str2;
                        if (z) {
                            str5 = str2.toLowerCase();
                        }
                        int indexOfIgnoreCase = z ? indexOfIgnoreCase(str, str5, 0) : indexOf(str, str5, 0);
                        if (indexOfIgnoreCase == -1) {
                            return str;
                        }
                        int length = str5.length();
                        StringBuilder sb = new StringBuilder(str.length() + (Math.max(str3.length() - length, 0) * (i < 0 ? 16 : Math.min(i, 64))));
                        int i3 = i;
                        int i4 = 0;
                        while (true) {
                            i2 = i4;
                            if (indexOfIgnoreCase == -1) {
                                break;
                            }
                            sb.append((CharSequence) str, i4, indexOfIgnoreCase);
                            sb.append(str3);
                            i4 = indexOfIgnoreCase + length;
                            i3--;
                            i2 = i4;
                            if (i3 == 0) {
                                break;
                            }
                            indexOfIgnoreCase = z ? indexOfIgnoreCase(str, str5, i4) : indexOf(str, str5, i4);
                        }
                        sb.append((CharSequence) str, i2, str.length());
                        str4 = sb.toString();
                    }
                }
            }
        }
        return str4;
    }

    @Deprecated
    public static String replaceAll(String str, String str2, String str3) {
        return C20762f.m518a(str, str2, str3);
    }

    public static String replaceChars(String str, char c, char c2) {
        if (str == null) {
            return null;
        }
        return str.replace(c, c2);
    }

    public static String replaceChars(String str, String str2, String str3) {
        String str4 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str4 = str;
            } else {
                String str5 = str3;
                if (str3 == null) {
                    str5 = "";
                }
                int length = str5.length();
                int length2 = str.length();
                StringBuilder sb = new StringBuilder(length2);
                boolean z = false;
                for (int i = 0; i < length2; i++) {
                    char charAt = str.charAt(i);
                    int indexOf = str2.indexOf(charAt);
                    if (indexOf >= 0) {
                        if (indexOf < length) {
                            sb.append(str5.charAt(indexOf));
                        }
                        z = true;
                    } else {
                        sb.append(charAt);
                    }
                }
                str4 = str;
                if (z) {
                    str4 = sb.toString();
                }
            }
        }
        return str4;
    }

    public static String replaceEach(String str, String[] strArr, String[] strArr2) {
        return replaceEach(str, strArr, strArr2, false, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x02ca, code lost:
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String replaceEach(java.lang.String r5, java.lang.String[] r6, java.lang.String[] r7, boolean r8, int r9) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.replaceEach(java.lang.String, java.lang.String[], java.lang.String[], boolean, int):java.lang.String");
    }

    public static String replaceEachRepeatedly(String str, String[] strArr, String[] strArr2) {
        return replaceEach(str, strArr, strArr2, true, strArr == null ? 0 : strArr.length);
    }

    @Deprecated
    public static String replaceFirst(String str, String str2, String str3) {
        String str4 = str;
        if (str != null) {
            str4 = str;
            if (str2 != null) {
                str4 = str3 == null ? str : str.replaceFirst(str2, str3);
            }
        }
        return str4;
    }

    public static String replaceIgnoreCase(String str, String str2, String str3) {
        return replaceIgnoreCase(str, str2, str3, -1);
    }

    public static String replaceIgnoreCase(String str, String str2, String str3, int i) {
        return replace(str, str2, str3, i, true);
    }

    public static String replaceOnce(String str, String str2, String str3) {
        return replace(str, str2, str3, 1);
    }

    public static String replaceOnceIgnoreCase(String str, String str2, String str3) {
        return replaceIgnoreCase(str, str2, str3, 1);
    }

    @Deprecated
    public static String replacePattern(String str, String str2, String str3) {
        return C20762f.m517b(str, str2, str3);
    }

    public static String reverse(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String reverseDelimited(String str, char c) {
        if (str == null) {
            return null;
        }
        String[] split = split(str, c);
        ArrayUtils.reverse(split);
        return join(split, c);
    }

    public static String right(String str, int i) {
        if (str == null) {
            return null;
        }
        return i < 0 ? "" : str.length() <= i ? str : str.substring(str.length() - i);
    }

    public static String rightPad(String str, int i) {
        return rightPad(str, i, ' ');
    }

    public static String rightPad(String str, int i, char c) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        return length <= 0 ? str : length > 8192 ? rightPad(str, i, String.valueOf(c)) : str.concat(repeat(c, length));
    }

    public static String rightPad(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        String str3 = str2;
        if (isEmpty(str2)) {
            str3 = SPACE;
        }
        int length = str3.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return rightPad(str, i, str3.charAt(0));
        }
        if (length2 == length) {
            return str.concat(str3);
        }
        if (length2 < length) {
            return str.concat(str3.substring(0, length2));
        }
        char[] cArr = new char[length2];
        char[] charArray = str3.toCharArray();
        for (int i2 = 0; i2 < length2; i2++) {
            cArr[i2] = charArray[i2 % length];
        }
        return str.concat(new String(cArr));
    }

    public static String rotate(String str, int i) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        String str2 = str;
        if (i != 0) {
            str2 = str;
            if (length != 0) {
                int i2 = i % length;
                if (i2 == 0) {
                    str2 = str;
                } else {
                    StringBuilder sb = new StringBuilder(length);
                    int i3 = -i2;
                    sb.append(substring(str, i3));
                    sb.append(substring(str, 0, i3));
                    str2 = sb.toString();
                }
            }
        }
        return str2;
    }

    public static String[] split(String str) {
        return split(str, null, -1);
    }

    public static String[] split(String str, char c) {
        return splitWorker(str, c, false);
    }

    public static String[] split(String str, String str2) {
        return splitWorker(str, str2, -1, false);
    }

    public static String[] split(String str, String str2, int i) {
        return splitWorker(str, str2, i, false);
    }

    public static String[] splitByCharacterType(String str) {
        return splitByCharacterType(str, false);
    }

    private static String[] splitByCharacterType(String str, boolean z) {
        int i;
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int type = Character.getType(charArray[0]);
        int i3 = 1;
        while (i3 < charArray.length) {
            int type2 = Character.getType(charArray[i3]);
            int i4 = i2;
            int i5 = type;
            if (type2 != type) {
                if (z && type2 == 2 && type == 1) {
                    int i6 = i3 - 1;
                    i = i2;
                    if (i6 != i2) {
                        arrayList.add(new String(charArray, i2, i6 - i2));
                        i = i6;
                    }
                } else {
                    arrayList.add(new String(charArray, i2, i3 - i2));
                    i = i3;
                }
                i5 = type2;
                i4 = i;
            }
            i3++;
            i2 = i4;
            type = i5;
        }
        arrayList.add(new String(charArray, i2, charArray.length - i2));
        return (String[]) arrayList.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
    }

    public static String[] splitByCharacterTypeCamelCase(String str) {
        return splitByCharacterType(str, true);
    }

    public static String[] splitByWholeSeparator(String str, String str2) {
        return splitByWholeSeparatorWorker(str, str2, -1, false);
    }

    public static String[] splitByWholeSeparator(String str, String str2, int i) {
        return splitByWholeSeparatorWorker(str, str2, i, false);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2) {
        return splitByWholeSeparatorWorker(str, str2, -1, true);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2, int i) {
        return splitByWholeSeparatorWorker(str, str2, i, true);
    }

    private static String[] splitByWholeSeparatorWorker(String str, String str2, int i, boolean z) {
        int i2;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        if (str2 == null || "".equals(str2)) {
            return splitWorker(str, null, i, z);
        }
        int length2 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < length) {
            int indexOf = str.indexOf(str2, i4);
            if (indexOf >= 0) {
                if (indexOf > i4) {
                    i2 = i5 + 1;
                    if (i2 == i) {
                        arrayList.add(str.substring(i4));
                        i5 = i2;
                    } else {
                        arrayList.add(str.substring(i4, indexOf));
                        i3 = indexOf;
                    }
                } else {
                    i3 = indexOf;
                    i2 = i5;
                    if (z) {
                        i2 = i5 + 1;
                        if (i2 == i) {
                            arrayList.add(str.substring(i4));
                            i3 = length;
                        } else {
                            arrayList.add("");
                            i3 = indexOf;
                        }
                    }
                }
                i4 = i3 + length2;
                i5 = i2;
            } else {
                arrayList.add(str.substring(i4));
            }
            i3 = length;
        }
        return (String[]) arrayList.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
    }

    public static String[] splitPreserveAllTokens(String str) {
        return splitWorker(str, null, -1, true);
    }

    public static String[] splitPreserveAllTokens(String str, char c) {
        return splitWorker(str, c, true);
    }

    public static String[] splitPreserveAllTokens(String str, String str2) {
        return splitWorker(str, str2, -1, true);
    }

    public static String[] splitPreserveAllTokens(String str, String str2, int i) {
        return splitWorker(str, str2, i, true);
    }

    private static String[] splitWorker(String str, char c, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (i < length) {
            if (str.charAt(i) == c) {
                if (z2 || z) {
                    arrayList.add(str.substring(i2, i));
                    z2 = false;
                    z3 = true;
                }
                i2 = i + 1;
                i = i2;
            } else {
                i++;
                z2 = true;
                z3 = false;
            }
        }
        if (z2 || (z && z3)) {
            arrayList.add(str.substring(i2, i));
        }
        return (String[]) arrayList.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (r8 != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010c, code lost:
        if (r8 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a5, code lost:
        if (r8 != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String[] splitWorker(java.lang.String r5, java.lang.String r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.splitWorker(java.lang.String, java.lang.String, int, boolean):java.lang.String[]");
    }

    public static boolean startsWith(CharSequence charSequence, CharSequence charSequence2) {
        return startsWith(charSequence, charSequence2, false);
    }

    private static boolean startsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        } else if (charSequence2.length() <= charSequence.length()) {
            return C20722a.m602a(charSequence, z, 0, charSequence2, charSequence2.length());
        } else {
            return false;
        }
    }

    public static boolean startsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (startsWith(charSequence, charSequence2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean startsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return startsWith(charSequence, charSequence2, true);
    }

    public static String strip(String str) {
        return strip(str, null);
    }

    public static String strip(String str, String str2) {
        return isEmpty(str) ? str : stripEnd(stripStart(str, str2), str2);
    }

    public static String stripAccents(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(Normalizer.normalize(str, Normalizer.Form.NFD));
        convertRemainingAccentCharacters(sb);
        return STRIP_ACCENTS_PATTERN.matcher(sb).replaceAll("");
    }

    public static String[] stripAll(String... strArr) {
        return stripAll(strArr, null);
    }

    public static String[] stripAll(String[] strArr, String str) {
        int length = ArrayUtils.getLength(strArr);
        if (length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            strArr2[i] = strip(strArr[i], str);
        }
        return strArr2;
    }

    public static String stripEnd(String str, String str2) {
        int i;
        int length = length(str);
        if (length == 0) {
            return str;
        }
        if (str2 != null) {
            if (!str2.isEmpty()) {
                while (true) {
                    i = length;
                    if (length == 0) {
                        break;
                    }
                    i = length;
                    if (str2.indexOf(str.charAt(length - 1)) == -1) {
                        break;
                    }
                    length--;
                }
            } else {
                return str;
            }
        } else {
            while (true) {
                i = length;
                if (length == 0) {
                    break;
                }
                i = length;
                if (!Character.isWhitespace(str.charAt(length - 1))) {
                    break;
                }
                length--;
            }
        }
        return str.substring(0, i);
    }

    public static String stripStart(String str, String str2) {
        int i;
        int length = length(str);
        if (length == 0) {
            return str;
        }
        int i2 = 0;
        if (str2 != null) {
            int i3 = 0;
            if (!str2.isEmpty()) {
                while (true) {
                    i = i3;
                    if (i3 == length) {
                        break;
                    }
                    i = i3;
                    if (str2.indexOf(str.charAt(i3)) == -1) {
                        break;
                    }
                    i3++;
                }
            } else {
                return str;
            }
        } else {
            while (true) {
                i = i2;
                if (i2 == length) {
                    break;
                }
                i = i2;
                if (!Character.isWhitespace(str.charAt(i2))) {
                    break;
                }
                i2++;
            }
        }
        return str.substring(i);
    }

    public static String stripToEmpty(String str) {
        return str == null ? "" : strip(str, null);
    }

    public static String stripToNull(String str) {
        if (str == null) {
            return null;
        }
        String strip = strip(str, null);
        if (!strip.isEmpty()) {
            return strip;
        }
        return null;
    }

    public static String substring(String str, int i) {
        if (str == null) {
            return null;
        }
        int i2 = i;
        if (i < 0) {
            i2 = i + str.length();
        }
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        return i3 > str.length() ? "" : str.substring(i3);
    }

    public static String substring(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        int i3 = i2;
        if (i2 < 0) {
            i3 = i2 + str.length();
        }
        int i4 = i;
        if (i < 0) {
            i4 = i + str.length();
        }
        int i5 = i3;
        if (i3 > str.length()) {
            i5 = str.length();
        }
        if (i4 > i5) {
            return "";
        }
        int i6 = i4;
        if (i4 < 0) {
            i6 = 0;
        }
        int i7 = i5;
        if (i5 < 0) {
            i7 = 0;
        }
        return str.substring(i6, i7);
    }

    public static String substringAfter(String str, int i) {
        if (isEmpty(str)) {
            return str;
        }
        int indexOf = str.indexOf(i);
        return indexOf == -1 ? "" : str.substring(indexOf + 1);
    }

    public static String substringAfter(String str, String str2) {
        int indexOf;
        return isEmpty(str) ? str : (str2 == null || (indexOf = str.indexOf(str2)) == -1) ? "" : str.substring(indexOf + str2.length());
    }

    public static String substringAfterLast(String str, int i) {
        if (isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(i);
        return (lastIndexOf == -1 || lastIndexOf == str.length() - 1) ? "" : str.substring(lastIndexOf + 1);
    }

    public static String substringAfterLast(String str, String str2) {
        int lastIndexOf;
        return isEmpty(str) ? str : (isEmpty(str2) || (lastIndexOf = str.lastIndexOf(str2)) == -1 || lastIndexOf == str.length() - str2.length()) ? "" : str.substring(lastIndexOf + str2.length());
    }

    public static String substringBefore(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (str2 == null) {
                str3 = str;
            } else if (str2.isEmpty()) {
                return "";
            } else {
                int indexOf = str.indexOf(str2);
                if (indexOf == -1) {
                    return str;
                }
                str3 = str.substring(0, indexOf);
            }
        }
        return str3;
    }

    public static String substringBeforeLast(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                int lastIndexOf = str.lastIndexOf(str2);
                if (lastIndexOf == -1) {
                    return str;
                }
                str3 = str.substring(0, lastIndexOf);
            }
        }
        return str3;
    }

    public static String substringBetween(String str, String str2) {
        return substringBetween(str, str2, str2);
    }

    public static String substringBetween(String str, String str2, String str3) {
        int indexOf;
        int indexOf2;
        if (!C20757e.m521a(str, str2, str3) || (indexOf = str.indexOf(str2)) == -1 || (indexOf2 = str.indexOf(str3, str2.length() + indexOf)) == -1) {
            return null;
        }
        return str.substring(indexOf + str2.length(), indexOf2);
    }

    public static String[] substringsBetween(String str, String str2, String str3) {
        int indexOf;
        int i;
        int indexOf2;
        if (str == null || isEmpty(str2) || isEmpty(str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        int length2 = str3.length();
        int length3 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= length - length2 || (indexOf = str.indexOf(str2, i3)) < 0 || (indexOf2 = str.indexOf(str3, (i = indexOf + length3))) < 0) {
                break;
            }
            arrayList.add(str.substring(i, indexOf2));
            i2 = indexOf2 + length2;
        }
        if (!arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
        }
        return null;
    }

    public static String swapCase(String str) {
        int i;
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int[] iArr = new int[length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (Character.isUpperCase(codePointAt) || Character.isTitleCase(codePointAt)) {
                i = Character.toLowerCase(codePointAt);
            } else {
                i = codePointAt;
                if (Character.isLowerCase(codePointAt)) {
                    i = Character.toUpperCase(codePointAt);
                }
            }
            iArr[i3] = i;
            i2 += Character.charCount(i);
            i3++;
        }
        return new String(iArr, 0, i3);
    }

    public static int[] toCodePoints(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (charSequence.length() == 0) {
            return ArrayUtils.EMPTY_INT_ARRAY;
        }
        String charSequence2 = charSequence.toString();
        int codePointCount = charSequence2.codePointCount(0, charSequence2.length());
        int[] iArr = new int[codePointCount];
        int i = 0;
        for (int i2 = 0; i2 < codePointCount; i2++) {
            iArr[i2] = charSequence2.codePointAt(i);
            i += Character.charCount(iArr[i2]);
        }
        return iArr;
    }

    public static String toEncodedString(byte[] bArr, Charset charset) {
        return new String(bArr, C20738c.m554a(charset));
    }

    public static String toRootLowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(Locale.ROOT);
    }

    public static String toRootUpperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(Locale.ROOT);
    }

    @Deprecated
    public static String toString(byte[] bArr, String str) throws UnsupportedEncodingException {
        return str != null ? new String(bArr, str) : new String(bArr, Charset.defaultCharset());
    }

    public static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String trimToEmpty(String str) {
        return str == null ? "" : str.trim();
    }

    public static String trimToNull(String str) {
        String trim = trim(str);
        String str2 = trim;
        if (isEmpty(trim)) {
            str2 = null;
        }
        return str2;
    }

    public static String truncate(String str, int i) {
        return truncate(str, 0, i);
    }

    public static String truncate(String str, int i, int i2) {
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException("maxWith cannot be negative");
            }
            if (str == null) {
                return null;
            }
            return i > str.length() ? "" : str.length() > i2 ? str.substring(i, Math.min(i2 + i, str.length())) : str.substring(i);
        }
        throw new IllegalArgumentException("offset cannot be negative");
    }

    public static String uncapitalize(String str) {
        int codePointAt;
        int lowerCase;
        int length = length(str);
        if (length != 0 && codePointAt != (lowerCase = Character.toLowerCase((codePointAt = str.codePointAt(0))))) {
            int[] iArr = new int[length];
            iArr[0] = lowerCase;
            int charCount = Character.charCount(codePointAt);
            int i = 1;
            while (charCount < length) {
                int codePointAt2 = str.codePointAt(charCount);
                iArr[i] = codePointAt2;
                charCount += Character.charCount(codePointAt2);
                i++;
            }
            return new String(iArr, 0, i);
        }
        return str;
    }

    public static String unwrap(String str, char c) {
        String str2 = str;
        if (!isEmpty(str)) {
            str2 = str;
            if (c != 0) {
                if (str.length() == 1) {
                    str2 = str;
                } else {
                    str2 = str;
                    if (str.charAt(0) == c) {
                        str2 = str;
                        if (str.charAt(str.length() - 1) == c) {
                            str2 = str.substring(1, str.length() - 1);
                        }
                    }
                }
            }
        }
        return str2;
    }

    public static String unwrap(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            str3 = str;
            if (!isEmpty(str2)) {
                if (str.length() == 1) {
                    str3 = str;
                } else {
                    str3 = str;
                    if (startsWith(str, str2)) {
                        str3 = str;
                        if (endsWith(str, str2)) {
                            int indexOf = str.indexOf(str2);
                            int lastIndexOf = str.lastIndexOf(str2);
                            int length = str2.length();
                            str3 = str;
                            if (indexOf != -1) {
                                str3 = str;
                                if (lastIndexOf != -1) {
                                    str3 = str.substring(indexOf + length, lastIndexOf);
                                }
                            }
                        }
                    }
                }
            }
        }
        return str3;
    }

    public static String upperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String upperCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static String valueOf(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return String.valueOf(cArr);
    }

    public static String wrap(String str, char c) {
        String str2 = str;
        if (!isEmpty(str)) {
            if (c == 0) {
                str2 = str;
            } else {
                str2 = c + str + c;
            }
        }
        return str2;
    }

    public static String wrap(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            str3 = isEmpty(str2) ? str : str2.concat(str).concat(str2);
        }
        return str3;
    }

    public static String wrapIfMissing(String str, char c) {
        String str2 = str;
        if (!isEmpty(str)) {
            if (c == 0) {
                str2 = str;
            } else {
                boolean z = false;
                boolean z2 = str.charAt(0) != c;
                if (str.charAt(str.length() - 1) != c) {
                    z = true;
                }
                if (!z2 && !z) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(str.length() + 2);
                if (z2) {
                    sb.append(c);
                }
                sb.append(str);
                if (z) {
                    sb.append(c);
                }
                str2 = sb.toString();
            }
        }
        return str2;
    }

    public static String wrapIfMissing(String str, String str2) {
        String str3 = str;
        if (!isEmpty(str)) {
            if (isEmpty(str2)) {
                str3 = str;
            } else {
                boolean z = !str.startsWith(str2);
                boolean z2 = !str.endsWith(str2);
                if (!z && !z2) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(str.length() + str2.length() + str2.length());
                if (z) {
                    sb.append(str2);
                }
                sb.append(str);
                if (z2) {
                    sb.append(str2);
                }
                str3 = sb.toString();
            }
        }
        return str3;
    }
}
