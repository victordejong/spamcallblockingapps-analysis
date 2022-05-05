package org.apache.commons.p018io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Stack;
/* renamed from: org.apache.commons.io.FilenameUtils */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FilenameUtils.class */
public class FilenameUtils {
    public static final char EXTENSION_SEPARATOR = '.';
    private static final int NOT_FOUND = -1;
    private static final char OTHER_SEPARATOR;
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';
    public static final String EXTENSION_SEPARATOR_STR = Character.toString('.');
    private static final char SYSTEM_SEPARATOR = File.separatorChar;

    static {
        if (isSystemWindows()) {
            OTHER_SEPARATOR = (char) 47;
        } else {
            OTHER_SEPARATOR = (char) 92;
        }
    }

    public static String concat(String str, String str2) {
        int prefixLength = getPrefixLength(str2);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(str2);
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return normalize(str2);
        }
        if (isSeparator(str.charAt(length - 1))) {
            return normalize(str + str2);
        }
        return normalize(str + '/' + str2);
    }

    public static boolean directoryContains(String str, String str2) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Directory must not be null");
        } else if (str2 != null && !IOCase.SYSTEM.checkEquals(str, str2)) {
            return IOCase.SYSTEM.checkStartsWith(str2, str);
        } else {
            return false;
        }
    }

    private static String doGetFullPath(String str, boolean z) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength >= str.length()) {
            return z ? getPrefix(str) : str;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        if (indexOfLastSeparator < 0) {
            return str.substring(0, prefixLength);
        }
        int i = indexOfLastSeparator + (z ? 1 : 0);
        int i2 = i;
        if (i == 0) {
            i2 = i + 1;
        }
        return str.substring(0, i2);
    }

    private static String doGetPath(String str, int i) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        int i2 = i + indexOfLastSeparator;
        if (prefixLength >= str.length() || indexOfLastSeparator < 0 || prefixLength >= i2) {
            return "";
        }
        String substring = str.substring(prefixLength, i2);
        failIfNullBytePresent(substring);
        return substring;
    }

    private static String doNormalize(String str, char c, boolean z) {
        boolean z2;
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        int length = str.length();
        if (length == 0) {
            return str;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        char[] cArr = new char[length + 2];
        str.getChars(0, str.length(), cArr, 0);
        char c2 = c == SYSTEM_SEPARATOR ? OTHER_SEPARATOR : SYSTEM_SEPARATOR;
        for (int i = 0; i < cArr.length; i++) {
            if (cArr[i] == c2) {
                cArr[i] = c;
            }
        }
        if (cArr[length - 1] != c) {
            length++;
            cArr[length] = c;
            z2 = false;
        } else {
            z2 = true;
        }
        int i2 = prefixLength + 1;
        int i3 = i2;
        while (i3 < length) {
            int i4 = i3;
            length = length;
            if (cArr[i3] == c) {
                int i5 = i3 - 1;
                i4 = i3;
                length = length;
                if (cArr[i5] == c) {
                    System.arraycopy(cArr, i3, cArr, i5, length - i3);
                    length--;
                    i4 = i3 - 1;
                }
            }
            i3 = i4 + 1;
        }
        int i6 = i2;
        while (i6 < length) {
            int i7 = i6;
            z2 = z2;
            length = length;
            if (cArr[i6] == c) {
                int i8 = i6 - 1;
                i7 = i6;
                z2 = z2;
                length = length;
                if (cArr[i8] == '.') {
                    if (i6 != i2) {
                        i7 = i6;
                        z2 = z2;
                        length = length;
                        if (cArr[i6 - 2] != c) {
                        }
                    }
                    if (i6 == length - 1) {
                        z2 = true;
                    }
                    System.arraycopy(cArr, i6 + 1, cArr, i8, length - i6);
                    length -= 2;
                    i7 = i6 - 1;
                }
            }
            i6 = i7 + 1;
        }
        int i9 = prefixLength + 2;
        boolean z3 = z2;
        int i10 = i9;
        int i11 = length;
        while (i10 < i11) {
            if (cArr[i10] != c || cArr[i10 - 1] != '.' || cArr[i10 - 2] != '.' || (i10 != i9 && cArr[i10 - 3] != c)) {
                z3 = z3;
                i11 = i11;
            } else if (i10 == i9) {
                return null;
            } else {
                z3 = z3;
                if (i10 == i11 - 1) {
                    z3 = true;
                }
                int i12 = i10 - 4;
                while (true) {
                    if (i12 < prefixLength) {
                        int i13 = i10 + 1;
                        System.arraycopy(cArr, i13, cArr, prefixLength, i11 - i10);
                        i11 -= i13 - prefixLength;
                        i10 = i2;
                        break;
                    } else if (cArr[i12] == c) {
                        int i14 = i12 + 1;
                        System.arraycopy(cArr, i10 + 1, cArr, i14, i11 - i10);
                        i11 -= i10 - i12;
                        i10 = i14;
                        break;
                    } else {
                        i12--;
                    }
                }
            }
            i10++;
        }
        return i11 <= 0 ? "" : i11 <= prefixLength ? new String(cArr, 0, i11) : (!z3 || !z) ? new String(cArr, 0, i11 - 1) : new String(cArr, 0, i11);
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, false, IOCase.SENSITIVE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r0 == null) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean equals(java.lang.String r4, java.lang.String r5, boolean r6, org.apache.commons.p018io.IOCase r7) {
        /*
            r0 = r4
            if (r0 == 0) goto L_0x0049
            r0 = r5
            if (r0 != 0) goto L_0x000b
            goto L_0x0049
        L_0x000b:
            r0 = r4
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0036
            r0 = r4
            java.lang.String r0 = normalize(r0)
            r8 = r0
            r0 = r5
            java.lang.String r0 = normalize(r0)
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r9 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0036
        L_0x002c:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "Error normalizing one or both of the file names"
            r1.<init>(r2)
            throw r0
        L_0x0036:
            r0 = r7
            r4 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0040
            org.apache.commons.io.IOCase r0 = org.apache.commons.p018io.IOCase.SENSITIVE
            r4 = r0
        L_0x0040:
            r0 = r4
            r1 = r8
            r2 = r9
            boolean r0 = r0.checkEquals(r1, r2)
            return r0
        L_0x0049:
            r0 = r4
            if (r0 != 0) goto L_0x0056
            r0 = r5
            if (r0 != 0) goto L_0x0056
            r0 = 1
            r6 = r0
            goto L_0x0058
        L_0x0056:
            r0 = 0
            r6 = r0
        L_0x0058:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.FilenameUtils.equals(java.lang.String, java.lang.String, boolean, org.apache.commons.io.IOCase):boolean");
    }

    public static boolean equalsNormalized(String str, String str2) {
        return equals(str, str2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String str, String str2) {
        return equals(str, str2, true, IOCase.SYSTEM);
    }

    public static boolean equalsOnSystem(String str, String str2) {
        return equals(str, str2, false, IOCase.SYSTEM);
    }

    private static void failIfNullBytePresent(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) == 0) {
                throw new IllegalArgumentException("Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
            }
        }
    }

    public static String getBaseName(String str) {
        return removeExtension(getName(str));
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension == -1 ? "" : str.substring(indexOfExtension + 1);
    }

    public static String getFullPath(String str) {
        return doGetFullPath(str, true);
    }

    public static String getFullPathNoEndSeparator(String str) {
        return doGetFullPath(str, false);
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        return str.substring(indexOfLastSeparator(str) + 1);
    }

    public static String getPath(String str) {
        return doGetPath(str, 1);
    }

    public static String getPathNoEndSeparator(String str) {
        return doGetPath(str, 0);
    }

    public static String getPrefix(String str) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength > str.length()) {
            failIfNullBytePresent(str + '/');
            return str + '/';
        }
        String substring = str.substring(0, prefixLength);
        failIfNullBytePresent(substring);
        return substring;
    }

    public static int getPrefixLength(String str) {
        if (str == null) {
            return -1;
        }
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        char charAt = str.charAt(0);
        if (charAt == ':') {
            return -1;
        }
        if (length == 1) {
            if (charAt == '~') {
                return 2;
            }
            return isSeparator(charAt) ? 1 : 0;
        } else if (charAt == '~') {
            int indexOf = str.indexOf(47, 1);
            int indexOf2 = str.indexOf(92, 1);
            if (indexOf == -1 && indexOf2 == -1) {
                return length + 1;
            }
            int i = indexOf;
            if (indexOf == -1) {
                i = indexOf2;
            }
            int i2 = indexOf2;
            if (indexOf2 == -1) {
                i2 = i;
            }
            return Math.min(i, i2) + 1;
        } else {
            char charAt2 = str.charAt(1);
            if (charAt2 == ':') {
                char upperCase = Character.toUpperCase(charAt);
                if (upperCase < 'A' || upperCase > 'Z') {
                    return -1;
                }
                return (length == 2 || !isSeparator(str.charAt(2))) ? 2 : 3;
            } else if (!isSeparator(charAt) || !isSeparator(charAt2)) {
                return isSeparator(charAt) ? 1 : 0;
            } else {
                int indexOf3 = str.indexOf(47, 2);
                int indexOf4 = str.indexOf(92, 2);
                if ((indexOf3 == -1 && indexOf4 == -1) || indexOf3 == 2 || indexOf4 == 2) {
                    return -1;
                }
                int i3 = indexOf3;
                if (indexOf3 == -1) {
                    i3 = indexOf4;
                }
                int i4 = indexOf4;
                if (indexOf4 == -1) {
                    i4 = i3;
                }
                return Math.min(i3, i4) + 1;
            }
        }
    }

    public static int indexOfExtension(String str) {
        int lastIndexOf = -1;
        if (str == null) {
            return -1;
        }
        lastIndexOf = str.lastIndexOf(46);
        if (indexOfLastSeparator(str) > lastIndexOf) {
        }
        return lastIndexOf;
    }

    public static int indexOfLastSeparator(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static boolean isExtension(String str, String str2) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        if (str2 != null && !str2.isEmpty()) {
            return getExtension(str).equals(str2);
        }
        if (indexOfExtension(str) == -1) {
            z = true;
        }
        return z;
    }

    public static boolean isExtension(String str, Collection<String> collection) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        if (collection == null || collection.isEmpty()) {
            if (indexOfExtension(str) == -1) {
                z = true;
            }
            return z;
        }
        String extension = getExtension(str);
        for (String str2 : collection) {
            if (extension.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExtension(String str, String[] strArr) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        if (strArr == null || strArr.length == 0) {
            if (indexOfExtension(str) == -1) {
                z = true;
            }
            return z;
        }
        String extension = getExtension(str);
        for (String str2 : strArr) {
            if (extension.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSeparator(char c) {
        return c == '/' || c == '\\';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == '\\';
    }

    public static String normalize(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', true);
    }

    public static String normalizeNoEndSeparator(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', false);
    }

    public static String removeExtension(String str) {
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension == -1 ? str : str.substring(0, indexOfExtension);
    }

    public static String separatorsToSystem(String str) {
        if (str == null) {
            return null;
        }
        return isSystemWindows() ? separatorsToWindows(str) : separatorsToUnix(str);
    }

    public static String separatorsToUnix(String str) {
        return (str == null || str.indexOf(92) == -1) ? str : str.replace('\\', '/');
    }

    public static String separatorsToWindows(String str) {
        return (str == null || str.indexOf(47) == -1) ? str : str.replace('/', '\\');
    }

    static String[] splitOnTokens(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 == '?' || c2 == '*') {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                    sb.setLength(0);
                }
                if (c2 == '?') {
                    arrayList.add("?");
                } else if (c != '*') {
                    arrayList.add("*");
                }
            } else {
                sb.append(c2);
            }
            i++;
            c = c2;
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        int i;
        int i2;
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        IOCase iOCase2 = iOCase;
        if (iOCase == null) {
            iOCase2 = IOCase.SENSITIVE;
        }
        String[] splitOnTokens = splitOnTokens(str2);
        Stack stack = new Stack();
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                i4 = iArr[0];
                i3 = iArr[1];
                z = true;
            }
            while (true) {
                i = i3;
                if (i4 >= splitOnTokens.length) {
                    break;
                }
                if (splitOnTokens[i4].equals("?")) {
                    i = i3 + 1;
                    i3 = i;
                    if (i > str.length()) {
                        break;
                    }
                    z = false;
                } else if (splitOnTokens[i4].equals("*")) {
                    if (i4 == splitOnTokens.length - 1) {
                        i3 = str.length();
                    }
                    z = true;
                } else {
                    if (z) {
                        int checkIndexOf = iOCase2.checkIndexOf(str, i3, splitOnTokens[i4]);
                        if (checkIndexOf == -1) {
                            i = checkIndexOf;
                            break;
                        }
                        int checkIndexOf2 = iOCase2.checkIndexOf(str, checkIndexOf + 1, splitOnTokens[i4]);
                        i2 = checkIndexOf;
                        if (checkIndexOf2 >= 0) {
                            stack.push(new int[]{i4, checkIndexOf2});
                            i2 = checkIndexOf;
                        }
                        i3 = i2 + splitOnTokens[i4].length();
                    } else {
                        i2 = i3;
                        if (!iOCase2.checkRegionMatches(str, i3, splitOnTokens[i4])) {
                            i = i3;
                            break;
                        }
                        i3 = i2 + splitOnTokens[i4].length();
                    }
                    z = false;
                }
                i4++;
            }
            if (i4 == splitOnTokens.length && i == str.length()) {
                return true;
            }
            if (stack.size() <= 0) {
                return false;
            }
            i3 = i;
        }
    }

    public static boolean wildcardMatchOnSystem(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SYSTEM);
    }
}
