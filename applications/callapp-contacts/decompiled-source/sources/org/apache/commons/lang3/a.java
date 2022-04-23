package org.apache.commons.lang3;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/a.class */
public final class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(i, i2);
        }
        int length = charSequence.length();
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        if (i < 65536) {
            for (int i4 = i3; i4 < length; i4++) {
                if (charSequence.charAt(i4) == i) {
                    return i4;
                }
            }
        }
        if (i > 1114111) {
            return -1;
        }
        char[] chars = Character.toChars(i);
        while (i3 < length - 1) {
            char charAt = charSequence.charAt(i3);
            int i5 = i3 + 1;
            char charAt2 = charSequence.charAt(i5);
            if (charAt == chars[0] && charAt2 == chars[1]) {
                return i3;
            }
            i3 = i5;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence, CharSequence charSequence2, int i) {
        return charSequence instanceof String ? ((String) charSequence).indexOf(charSequence2.toString(), i) : charSequence instanceof StringBuilder ? ((StringBuilder) charSequence).indexOf(charSequence2.toString(), i) : charSequence instanceof StringBuffer ? ((StringBuffer) charSequence).indexOf(charSequence2.toString(), i) : charSequence.toString().indexOf(charSequence2.toString(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(CharSequence charSequence, boolean z, int i, CharSequence charSequence2, int i2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(z, i, (String) charSequence2, 0, i2);
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (i < 0 || i2 < 0 || length - i < i2 || length2 - 0 < i2) {
            return false;
        }
        int i3 = 0;
        while (i2 > 0) {
            char charAt = charSequence.charAt(i);
            char charAt2 = charSequence2.charAt(i3);
            if (charAt != charAt2) {
                if (!z) {
                    return false;
                }
                char upperCase = Character.toUpperCase(charAt);
                char upperCase2 = Character.toUpperCase(charAt2);
                if (!(upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2))) {
                    return false;
                }
            }
            i++;
            i2--;
            i3++;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(i, i2);
        }
        int length = charSequence.length();
        if (i2 < 0) {
            return -1;
        }
        int i3 = i2;
        if (i2 >= length) {
            i3 = length - 1;
        }
        if (i < 65536) {
            for (int i4 = i3; i4 >= 0; i4--) {
                if (charSequence.charAt(i4) == i) {
                    return i4;
                }
            }
        }
        if (i > 1114111) {
            return -1;
        }
        char[] chars = Character.toChars(i);
        if (i3 == length - 1) {
            return -1;
        }
        for (int i5 = i3; i5 >= 0; i5--) {
            char charAt = charSequence.charAt(i5);
            char charAt2 = charSequence.charAt(i5 + 1);
            if (chars[0] == charAt && chars[1] == charAt2) {
                return i5;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence2 instanceof String) {
            if (charSequence instanceof String) {
                return ((String) charSequence).lastIndexOf((String) charSequence2, i);
            }
            if (charSequence instanceof StringBuilder) {
                return ((StringBuilder) charSequence).lastIndexOf((String) charSequence2, i);
            }
            if (charSequence instanceof StringBuffer) {
                return ((StringBuffer) charSequence).lastIndexOf((String) charSequence2, i);
            }
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int i2 = i;
        if (i > length) {
            i2 = length;
        }
        if (i2 < 0 || length2 < 0 || length2 > length) {
            return -1;
        }
        if (length2 == 0) {
            return i2;
        }
        if (length2 <= 16) {
            if (charSequence instanceof String) {
                return ((String) charSequence).lastIndexOf(charSequence2.toString(), i2);
            }
            if (charSequence instanceof StringBuilder) {
                return ((StringBuilder) charSequence).lastIndexOf(charSequence2.toString(), i2);
            }
            if (charSequence instanceof StringBuffer) {
                return ((StringBuffer) charSequence).lastIndexOf(charSequence2.toString(), i2);
            }
        }
        int i3 = i2;
        if (i2 + length2 > length) {
            i3 = length - length2;
        }
        char charAt = charSequence2.charAt(0);
        while (true) {
            if (charSequence.charAt(i3) != charAt) {
                int i4 = i3 - 1;
                i3 = i4;
                if (i4 < 0) {
                    return -1;
                }
            } else {
                boolean z = true;
                int i5 = 1;
                for (int i6 = length2 - 1; i5 <= i6; i6--) {
                    if (!(charSequence.charAt(i3 + i5) == charSequence2.charAt(i5) && charSequence.charAt(i3 + i6) == charSequence2.charAt(i6))) {
                        z = false;
                        break;
                    }
                    i5++;
                }
                if (z) {
                    return i3;
                }
                int i7 = i3 - 1;
                i3 = i7;
                if (i7 < 0) {
                    return -1;
                }
            }
        }
    }
}
