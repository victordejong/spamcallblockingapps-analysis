package com.huawei.secure.android.common.anonymization;
/* renamed from: com.huawei.secure.android.common.anonymization.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/anonymization/a.class */
public class C2474a {
    /* renamed from: a */
    public static int m37120a(String str, char c, int i) {
        int length = str.length() - 1;
        while (true) {
            int i2 = i;
            if (length < 0) {
                break;
            }
            i = i2;
            if (str.charAt(length) == c) {
                int i3 = i2 - 1;
                i = i3;
                if (i3 <= 0) {
                    break;
                }
            }
            length--;
        }
        return length;
    }

    /* renamed from: a */
    public static String m37121a(String str, char c) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        int length = str.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = c;
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m37116a(String str, String str2, String str3) {
        if (str == null || str.length() <= 0 || str2.length() <= 0 || str3.length() <= 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char[] cArr = new char[str.length()];
        char charAt = str3.charAt(str3.length() - 1);
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            int lastIndexOf = str2.lastIndexOf(c);
            if (lastIndexOf < 0) {
                cArr[i] = c;
            } else {
                cArr[i] = lastIndexOf >= str3.length() ? charAt : str3.charAt(lastIndexOf);
            }
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m37114a(String str, String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            if (strArr[i] != null) {
                sb.append(str);
                sb.append(strArr[i]);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m37113a(String[] strArr, int i) {
        return (strArr == null || strArr.length <= 0 || i < 0 || i >= strArr.length) ? "" : strArr[i];
    }

    /* renamed from: a */
    public static String[] m37119a(String str, int i) {
        return str == null ? new String[]{"", ""} : (i < 0 || i > str.length()) ? new String[]{str, ""} : new String[]{str.substring(0, i), str.substring(i)};
    }

    /* renamed from: a */
    public static String[] m37118a(String str, int i, int i2) {
        String[] m37119a = m37119a(str, i);
        return m37109b(m37113a(m37119a, 0), m37119a(m37113a(m37119a, 1), i2 - i));
    }

    /* renamed from: a */
    public static String[] m37117a(String str, int i, int i2, int i3) {
        String[] m37119a = m37119a(str, i);
        return m37109b(m37113a(m37119a, 0), m37118a(m37113a(m37119a, 1), i2 - i, i3 - i));
    }

    /* renamed from: a */
    public static String[] m37115a(String str, int... iArr) {
        if (str == null) {
            return new String[]{""};
        }
        if (str.length() <= 1 || iArr.length <= 0) {
            return new String[]{str};
        }
        if (iArr.length <= 1) {
            return m37119a(str, iArr[0]);
        }
        int i = iArr[0];
        int length = iArr.length - 1;
        int[] iArr2 = new int[length];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= length) {
                String[] m37119a = m37119a(str, i);
                return m37109b(m37113a(m37119a, 0), m37115a(m37113a(m37119a, 1), iArr2));
            }
            int i4 = i3 + 1;
            iArr2[i3] = iArr[i4] - i;
            i2 = i4;
        }
    }

    /* renamed from: a */
    public static String[] m37112a(String[] strArr, String str) {
        return m37111a(strArr, new String[]{str});
    }

    /* renamed from: a */
    public static String[] m37111a(String[] strArr, String[] strArr2) {
        if (strArr.length <= 0) {
            return strArr2.length <= 0 ? new String[0] : strArr2;
        } else if (strArr2.length <= 0) {
            return strArr;
        } else {
            String[] strArr3 = new String[strArr.length + strArr2.length];
            System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
            System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
            return strArr3;
        }
    }

    /* renamed from: b */
    public static String[] m37110b(String str, char c) {
        int i;
        if (str == null) {
            return new String[0];
        }
        if (str.length() <= 0) {
            return new String[]{str};
        }
        int i2 = 0;
        int i3 = 1;
        while (true) {
            i = i3;
            if (i2 >= str.length()) {
                break;
            }
            int i4 = i;
            if (str.charAt(i2) == c) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i <= 1) {
            return new String[]{str};
        }
        String[] strArr = new String[i];
        StringBuilder sb = new StringBuilder(str.length());
        int i5 = 0;
        for (int i6 = 0; i6 < str.length() && i5 < i; i6++) {
            char charAt = str.charAt(i6);
            if (charAt == c) {
                strArr[i5] = sb.toString();
                sb.setLength(0);
                i5++;
            } else {
                sb.append(charAt);
            }
        }
        strArr[i5] = sb.toString();
        return strArr;
    }

    /* renamed from: b */
    public static String[] m37109b(String str, String[] strArr) {
        return m37111a(new String[]{str}, strArr);
    }
}
