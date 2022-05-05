package com.privacystar.core.util.text;

import com.privacystar.core.util.exception.ComputationException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.ShortCompanionObject;
import org.apache.commons.p018io.IOUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/text/Text.class */
public class Text {
    public static final String NULL = "NULL";
    private static String newLine;

    public static boolean booleanValueOf(String str) {
        return !isNull(str) && "true".equalsIgnoreCase(str);
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            stringBuffer.append(hexString.length() == 1 ? "0" : "");
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static int calculateUTFLength(char[] cArr, int i, int i2) {
        if (cArr == null || i2 <= 0 || i < 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i4 + i];
            i3 = (c < 1 || c > 127) ? c > 2047 ? i3 + 3 : i3 + 2 : i3 + 1;
        }
        return i3;
    }

    public static String[] chop(String str) {
        return chop(str, ShortCompanionObject.MAX_VALUE);
    }

    public static String[] chop(String str, int i) {
        int i2;
        int length;
        if (str == null || str.length() < i) {
            return new String[]{str};
        }
        int i3 = 0;
        do {
            i2 = i3 + 1;
            length = str.length() / i2;
            if (length < i) {
                break;
            }
            i3 = i2;
        } while (i2 < str.length());
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < i2; i4++) {
            if (str.length() <= i) {
                arrayList.add(str);
            } else {
                arrayList.add(str.substring(0, length));
                str = str.substring(length);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean contains(String str, String str2) {
        return !isNull(str) && str.contains(str2);
    }

    public static boolean containsIgnoreCase(String str, String str2) {
        return contains(str.toLowerCase(), str2.toLowerCase());
    }

    public static int countOccurrences(String str, char c) {
        int length = split(str, c).length - 1;
        int i = length;
        if (str.charAt(0) == c) {
            i = length + 1;
        }
        int i2 = i;
        if (str.charAt(str.length() - 1) == c) {
            i2 = i + 1;
        }
        return i2;
    }

    public static char determineSlashChar(String str) {
        char c = '\\';
        if (str.lastIndexOf(92) <= 0) {
            c = '/';
        }
        return c;
    }

    public static boolean endsWith(String str, String str2) {
        if (isNull(str)) {
            return false;
        }
        return str.endsWith(str2);
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        return str.toLowerCase().endsWith(str2.toLowerCase());
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, true);
    }

    public static boolean equals(String str, String str2, boolean z) {
        if (str == null && str2 == null) {
            return z;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean equalsIgnoreCase(String str, String str2) {
        String str3 = str;
        if (!isNull(str)) {
            str3 = str.toLowerCase();
        }
        String str4 = str2;
        if (!isNull(str2)) {
            str4 = str2.toLowerCase();
        }
        return equals(str3, str4, true);
    }

    public static boolean filter(String str, String str2, char c) {
        return filter(str, str2, c, true);
    }

    public static boolean filter(String str, String str2, char c, boolean z) {
        String str3 = str;
        if (isNull(str)) {
            str3 = String.valueOf(c);
        }
        String str4 = str3;
        if (z) {
            str4 = str3.toLowerCase();
        }
        String[] split = split(str4, c);
        boolean z2 = false;
        if (isNull(str2)) {
            if (split.length == 0) {
                z2 = true;
            }
            return z2;
        }
        String str5 = str2;
        if (z) {
            str5 = str2.toLowerCase();
        }
        for (int i = 0; i < split.length; i++) {
            int indexOf = str5.indexOf(split[i]);
            if (indexOf <= -1) {
                return false;
            }
            str5 = str5.substring(indexOf + split[i].length(), str5.length());
        }
        return true;
    }

    public static int[] findChopOffsets(char[] cArr, int i, int i2, int i3) {
        if (cArr == null || cArr.length <= i3) {
            return new int[]{i2};
        }
        int i4 = i2 / i3;
        int i5 = i2 % i3;
        int i6 = i4;
        if (i5 > 0) {
            i6 = i4 + 1;
        }
        int[] iArr = new int[i6];
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < i2; i9++) {
            int i10 = i7 + 1;
            i7 = i10;
            i8 = i8;
            if (i10 >= i3) {
                iArr[i8] = i9;
                i8++;
                i7 = 0;
            }
        }
        if (i5 > 0) {
            iArr[iArr.length - 1] = i2;
        }
        return iArr;
    }

    public static String firstLetterToLowerCase(String str) {
        if (isNull(str)) {
            return null;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    public static String firstLetterToUpperCase(String str) {
        if (isNull(str)) {
            return null;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toUpperCase(charArray[0]);
        return new String(charArray);
    }

    public static String[] getArrayFromXDelimitedString(String str, String str2) {
        List listFromXDelimitedString = getListFromXDelimitedString(str, str2);
        if (listFromXDelimitedString != null) {
            return (String[]) listFromXDelimitedString.toArray(new String[listFromXDelimitedString.size()]);
        }
        return null;
    }

    public static byte[] getBytes(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (Exception e) {
            String str3 = "An error occurred while getting the bytes from a string for the " + str2 + " encoding.";
            Timber.m32e(e, str3, new Object[0]);
            throw new RuntimeException(str3);
        }
    }

    public static String getDisplayValue(String str) {
        return isNull(str) ? "" : str;
    }

    public static char getLastCharacter(String str) {
        if (str.length() > 0) {
            return str.charAt(str.length() - 1);
        }
        throw new IllegalStateException("Cannot get the last character of an empty String.");
    }

    public static List getListFromXDelimitedString(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        String str3 = str;
        if (isNull(str)) {
            return null;
        }
        while (true) {
            int indexOf = str3.indexOf(str2);
            if (indexOf < 0) {
                break;
            }
            arrayList.add(str3.substring(0, indexOf).trim());
            str3 = str3.substring(indexOf + 1);
        }
        String trim = trim(str3);
        if (trim.length() > 0) {
            arrayList.add(trim);
        }
        return arrayList;
    }

    public static String getXDelimitedString(String str, Collection collection) {
        return getXDelimitedString(str, collection, "");
    }

    public static String getXDelimitedString(String str, Collection collection, String str2) {
        if (collection == null) {
            throw new IllegalArgumentException("collection cannot be null.");
        }
        StringBuffer stringBuffer = new StringBuffer(collection.size() * 20);
        int i = 0;
        for (Object obj : collection) {
            i++;
            if (i != 1 && i <= collection.size()) {
                stringBuffer.append(str);
            }
            String valueOf = String.valueOf(obj);
            stringBuffer.append(str2 + valueOf);
        }
        return stringBuffer.toString();
    }

    public static String getXDelimitedString(String str, String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException("collection cannot be null.");
        }
        StringBuffer stringBuffer = new StringBuffer(strArr.length * 20);
        for (int i = 0; i < strArr.length; i++) {
            if (i != 0 && i <= strArr.length) {
                stringBuffer.append(str);
            }
            stringBuffer.append(String.valueOf(strArr[i]));
        }
        return stringBuffer.toString();
    }

    public static String guaranteeEndsWithSlash(String str) {
        String ch = new Character(determineSlashChar(str)).toString();
        String str2 = str;
        if (!str.endsWith(ch)) {
            str2 = str + ch;
        }
        return str2;
    }

    public static String guaranteeStartsWithSlash(String str) {
        String ch = new Character(determineSlashChar(str)).toString();
        String str2 = str;
        if (!str.startsWith(ch)) {
            str2 = ch + str;
        }
        return str2;
    }

    public static boolean hasContent(String str) {
        return !isNull(str) && !isWhitespace(str);
    }

    public static int indexOf(String str, String str2) {
        if (str != null) {
            return str.indexOf(str2);
        }
        return -1;
    }

    public static int indexOf(char[] cArr, int i, int i2, char[] cArr2, int i3, int i4, int i5) {
        if (i5 >= i2) {
            if (i4 != 0) {
                i2 = -1;
            }
            return i2;
        }
        int i6 = i5;
        if (i5 < 0) {
            i6 = 0;
        }
        if (i4 == 0) {
            return i6;
        }
        char c = cArr2[i3];
        int i7 = (i2 - i4) + i;
        int i8 = i6;
        int i9 = i;
        while (true) {
            int i10 = i8 + i9;
            if (i10 > i7) {
                return -1;
            }
            int i11 = i10;
            if (cArr[i10] != c) {
                do {
                    i10++;
                    i11 = i10;
                    if (i10 > i7) {
                        break;
                    }
                    i11 = i10;
                } while (cArr[i10] != c);
            }
            if (i11 <= i7) {
                int i12 = i11 + 1;
                int i13 = (i12 + i4) - 1;
                for (int i14 = i3 + 1; i12 < i13 && cArr[i12] == cArr2[i14]; i14++) {
                    i12++;
                }
                if (i12 == i13) {
                    return i11 - i;
                }
            }
            i8 = i11;
            i9 = 1;
        }
    }

    public static int indexOfNonNumber(String str, int i) {
        while (i < str.length()) {
            if (!Characters.isNumeric(str.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int indexOfNonWhitespaceCharacter(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Characters.isWhitespaceCharacter(str.charAt(i))) {
                return i;
            }
        }
        return -1;
    }

    public static int indexOfNumber(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (Characters.isNumeric(str.charAt(i))) {
                return i;
            }
        }
        return -1;
    }

    public static int indexOfWhitespaceCharacter(String str, int i) {
        while (i < str.length()) {
            if (Characters.isWhitespaceCharacter(str.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static boolean isAlphabetic(String str) {
        if (str == null) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (!Character.isAlphabetic(c)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumeric(String str) {
        char[] charArray;
        if (str == null) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (!(Character.isAlphabetic(c) || Character.isDigit(c))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNull(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNullOrWhiteSpace(String str) {
        return isNull(str) || str.trim().length() == 0;
    }

    public static boolean isNumeric(String str) {
        if (str == null) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (!Character.isDigit(c)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isValidCharIndex(String str, int i) {
        return i >= 0 && i < str.length();
    }

    public static boolean isWhitespace(String str) {
        return indexOfNonWhitespaceCharacter(str) == -1;
    }

    public static int lastIndexOf(String str, String str2) {
        return lastIndexOf(str.toCharArray(), 0, str.length(), str2.toCharArray(), 0, str2.length(), str.length());
    }

    public static int lastIndexOf(char[] cArr, int i, int i2, char[] cArr2, int i3, int i4, int i5) {
        int i6 = i2 - i4;
        if (i5 < 0) {
            return -1;
        }
        if (i5 <= i6) {
            i6 = i5;
        }
        if (i4 == 0) {
            return i6;
        }
        int i7 = (i3 + i4) - 1;
        char c = cArr2[i7];
        int i8 = (i + i4) - 1;
        int i9 = i6 + i8;
        while (true) {
            if (i9 >= i8 && cArr[i9] != c) {
                i9--;
            } else if (i9 < i8) {
                return -1;
            } else {
                int i10 = i9 - 1;
                int i11 = i10 - (i4 - 1);
                int i12 = i7 - 1;
                while (i10 > i11) {
                    if (cArr[i10] != cArr2[i12]) {
                        i9--;
                    } else {
                        i10--;
                        i12--;
                    }
                }
                return (i11 - i) + 1;
            }
        }
    }

    private static int levenshteinDistance(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str == null) {
            return str2.length();
        }
        if (str2 == null) {
            return str.length();
        }
        int length = str.length();
        int length2 = str2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        int[][] iArr = new int[length + 1][length2 + 1];
        for (int i = 0; i <= length; i++) {
            iArr[i][0] = i;
        }
        for (int i2 = 1; i2 <= length2; i2++) {
            iArr[0][i2] = i2;
        }
        for (int i3 = 1; i3 <= length; i3++) {
            int i4 = i3 - 1;
            char charAt = str.charAt(i4);
            for (int i5 = 1; i5 <= length2; i5++) {
                int[] iArr2 = iArr[i4];
                int i6 = i5 - 1;
                int i7 = iArr2[i6];
                int i8 = i7;
                if (str2.charAt(i6) != charAt) {
                    i8 = i7 + 1;
                }
                iArr[i3][i5] = Math.min(Math.min(iArr[i4][i5] + 1, iArr[i3][i6] + 1), i8);
            }
        }
        return iArr[length][length2];
    }

    public static int levenshteinDistance(String str, String str2, boolean z) {
        try {
            if (!z) {
                return levenshteinDistance(str, str2);
            }
            String str3 = null;
            String upperCase = str == null ? null : str.toUpperCase();
            if (str2 != null) {
                str3 = str2.toUpperCase();
            }
            return levenshteinDistance(upperCase, str3);
        } catch (Exception e) {
            Timber.m23w(e, "", new Object[0]);
            throw new ComputationException("Error computing edit distance. Source: " + str + " Target: " + str2);
        }
    }

    public static String limit(String str, int i) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.substring(0, Math.min(str2.length(), i));
    }

    public static String lineSeparator() {
        if (newLine == null) {
            newLine = System.getProperty("line.separator");
            if (newLine == null) {
                newLine = IOUtils.LINE_SEPARATOR_UNIX;
            }
        }
        return newLine;
    }

    public static String removeAllOccurrences(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        return str.contains(str2) ? removeAllOccurrences(removeOccurrence(str, str2), str2) : str;
    }

    public static String removeOccurrence(String str, String str2) {
        int indexOf;
        String str3 = "";
        if (str.equals(str2) || (indexOf = str.indexOf(str2)) < 0) {
            return "";
        }
        String substring = str.substring(0, indexOf);
        if (str2.length() + indexOf < str.length()) {
            str3 = str.substring(indexOf + str2.length(), str.length());
        }
        return substring + str3;
    }

    public static String replaceAll(String str, String str2, String str3) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf >= 0) {
                if (indexOf > i) {
                    stringBuffer.append(str.substring(i, indexOf));
                }
                stringBuffer.append(str3);
                i = str2.length() + indexOf;
            } else {
                stringBuffer.append(str.substring(i));
                return stringBuffer.toString();
            }
        }
    }

    public static String replaceNewLines(String str, char c) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            char c2 = charArray[i];
            if (c2 == '\n' || c2 == '\r') {
                charArray[i] = c;
            }
        }
        return new String(charArray);
    }

    public static String[] split(String str, char c) {
        return split(str, new char[]{c});
    }

    public static String[] split(String str, char[] cArr) {
        return split(str, cArr, true);
    }

    public static String[] split(String str, char[] cArr, boolean z) {
        ArrayList arrayList = new ArrayList();
        String valueOf = String.valueOf(cArr);
        if (isNull(str) || isNull(valueOf)) {
            return new String[0];
        }
        while (true) {
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= str.length()) {
                    break;
                }
                char charAt = str.charAt(i2);
                for (char c : cArr) {
                    if (charAt == c) {
                        i = i2;
                        break;
                    }
                }
                i2++;
            }
            if (i < 0) {
                break;
            }
            if (i > 0) {
                String substring = str.substring(0, i);
                String str2 = substring;
                if (z) {
                    str2 = substring.trim();
                }
                arrayList.add(str2);
            }
            str = str.substring(i + 1);
        }
        String str3 = str;
        if (z) {
            str3 = str.trim();
        }
        if (str3.length() > 0) {
            arrayList.add(str3);
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    public static boolean startsWith(String str, String str2) {
        if (isNull(str)) {
            return false;
        }
        return str.startsWith(str2);
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        return str.toLowerCase().startsWith(str2.toLowerCase());
    }

    public static String stripNonAlphaNumericCharacters(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Characters.isAlphanumeric(charAt)) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String stripNonAlphabeticCharacters(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Characters.isAlphabetic(charAt)) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String stripNonNumericCharacters(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Characters.isNumeric(charAt)) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String substringAfter(String str, String str2) {
        int indexOf;
        if (isNull(str2)) {
            throw new IllegalArgumentException("Delimiter cannot be null.");
        } else if (!isNull(str) && (indexOf = str.indexOf(str2)) != -1) {
            return str.substring(indexOf + str2.length());
        } else {
            return null;
        }
    }

    public static String substringBefore(String str, String str2) {
        int indexOf;
        if (isNull(str2)) {
            throw new IllegalArgumentException("Delimiter cannot be null.");
        } else if (!isNull(str) && (indexOf = str.indexOf(str2)) != -1) {
            return str.substring(0, indexOf);
        } else {
            return null;
        }
    }

    public static String substringBefore(String str, String str2, int i) {
        if (i < 1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = indexOf(charArray, i2, charArray.length, charArray2, 0, charArray2.length, 0);
            if (i2 == -1) {
                return "";
            }
        }
        return substringFirst(str, i2);
    }

    public static String substringFirst(String str, int i) {
        return (str == null || str.length() <= i) ? str : str.substring(0, i);
    }

    public static String substringLast(String str, int i) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.length() > i) {
                str2 = str.substring(str.length() - 8);
            }
        }
        return str2;
    }

    public static String toLowerCase(String str) {
        if (str != null) {
            return str.toLowerCase();
        }
        return null;
    }

    public static String toUpperCase(String str) {
        if (str != null) {
            return str.toUpperCase();
        }
        return null;
    }

    public static String trim(String str) {
        return trim(str, false);
    }

    public static String trim(String str, boolean z) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        String str2 = trim;
        if (z) {
            str2 = trim;
            if (isNull(trim)) {
                str2 = null;
            }
        }
        return str2;
    }

    public static String trimLeadingCharacters(String str, char c) {
        for (int i = 0; i < str.length() - 1; i++) {
            if (str.charAt(i) != c) {
                return str.substring(i);
            }
        }
        return "";
    }

    public static String trimTrailingCharacters(String str, char c) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != c) {
                return str.substring(0, length + 1);
            }
        }
        return "";
    }
}
