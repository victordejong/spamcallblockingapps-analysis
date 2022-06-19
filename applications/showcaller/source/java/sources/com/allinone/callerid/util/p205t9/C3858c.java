package com.allinone.callerid.util.p205t9;

import android.text.TextUtils;
import java.util.BitSet;
/* renamed from: com.allinone.callerid.util.t9.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/c.class */
public final class C3858c {
    /* renamed from: a */
    private static T9MatchInfo m23945a(T9MatchInfo t9MatchInfo) {
        T9MatchInfo t9MatchInfo2 = t9MatchInfo;
        if (t9MatchInfo.m23956a()) {
            t9MatchInfo2 = new T9MatchInfo();
            t9MatchInfo.m23952e(t9MatchInfo2);
        }
        return t9MatchInfo2;
    }

    /* renamed from: b */
    public static T9MatchInfo m23944b(String str, char c) {
        int indexOf;
        T9MatchInfo t9MatchInfo = new T9MatchInfo();
        if (!TextUtils.isEmpty(str) && (indexOf = str.indexOf(C3862e.m23929b(c))) >= 0) {
            t9MatchInfo.m23953d(C3862e.m23924g(str, str.substring(0, indexOf).lastIndexOf(59) + 1, indexOf), 1);
        }
        return t9MatchInfo;
    }

    /* renamed from: c */
    public static T9MatchInfo m23943c(String str, String str2) {
        int i;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return new T9MatchInfo();
        }
        int i2 = 0;
        if (str2.length() == 1) {
            return m23944b(str, str2.charAt(0));
        }
        T9MatchInfo t9MatchInfo = new T9MatchInfo();
        do {
            int indexOf = str.indexOf(59, i2);
            i = indexOf;
            if (indexOf < 0) {
                i = str.length();
            }
            if (i2 < i) {
                m23941e(t9MatchInfo, str, i2, i, str2);
            }
            i2 = i + 1;
            if (t9MatchInfo.m23956a()) {
                break;
            }
        } while (i < str.length());
        return t9MatchInfo;
    }

    /* renamed from: d */
    private static int m23942d(String str, int i, int i2, int i3, String str2, int i4, BitSet bitSet) {
        int i5;
        int i6 = i3 + 1;
        int i7 = i6;
        while (i7 < i2 && !C3862e.m23922i(str.charAt(i7))) {
            i7++;
        }
        if (i7 == i2) {
            if (!str.regionMatches(i6, str2, i4 + 1, (str2.length() - i4) - 1)) {
                return 0;
            }
            int i8 = i3 - i;
            bitSet.set(i8, (str2.length() + i8) - i4);
            return 1;
        }
        int i9 = i4 + 1;
        if (C3862e.m23929b(str2.charAt(i9)) == str.charAt(i7)) {
            if (str2.length() == i4 + 2) {
                bitSet.set(i3 - i);
                bitSet.set(i7 - i);
                return 2;
            }
            int m23942d = m23942d(str, i, i2, i7, str2, i9, bitSet);
            if (m23942d > 0) {
                bitSet.set(i3 - i);
                i5 = m23942d;
                return i5 + 1;
            }
        }
        int i10 = i7 - i3;
        int i11 = i7 - 1;
        while (str.charAt(i11) == ' ') {
            i11--;
            i10--;
        }
        if (str2.length() - i4 <= i10) {
            if (!str.regionMatches(i6, str2, i9, (str2.length() - i4) - 1)) {
                return 0;
            }
            int i12 = i3 - i;
            bitSet.set(i12, (str2.length() + i12) - i4);
            return 1;
        }
        int i13 = i4 + i10;
        if (C3862e.m23929b(str2.charAt(i13)) != str.charAt(i7) || !str.regionMatches(i6, str2, i9, i10 - 1)) {
            return 0;
        }
        if (i13 + 1 == str2.length()) {
            bitSet.set(i3 - i, (i7 - i) + 1);
            return 2;
        }
        int m23942d2 = m23942d(str, i, i2, i7, str2, i13, bitSet);
        if (m23942d2 <= 0) {
            return 0;
        }
        bitSet.set(i3 - i, i7 - i);
        i5 = m23942d2;
        return i5 + 1;
    }

    /* renamed from: e */
    private static void m23941e(T9MatchInfo t9MatchInfo, String str, int i, int i2, String str2) {
        BitSet bitSet;
        if (i2 - i < str2.length()) {
            return;
        }
        int length = (i2 - str2.length()) + 1;
        char m23929b = C3862e.m23929b(str2.charAt(0));
        BitSet bitSet2 = null;
        int i3 = i;
        while (true) {
            if (i3 >= length) {
                bitSet = bitSet2;
                break;
            }
            int indexOf = str.indexOf(m23929b, i3);
            bitSet = bitSet2;
            if (indexOf < 0) {
                break;
            } else if (indexOf >= length) {
                bitSet = bitSet2;
                break;
            } else {
                bitSet = bitSet2;
                if (bitSet2 == null) {
                    bitSet = C3862e.m23926e();
                }
                bitSet.clear();
                if (m23942d(str, i, i2, indexOf, str2, 0, bitSet) > 0) {
                    m23939g(str, t9MatchInfo, bitSet, i);
                    break;
                } else {
                    i3 = indexOf + 1;
                    bitSet2 = bitSet;
                }
            }
        }
        if (bitSet == null) {
            return;
        }
        C3862e.m23920k(bitSet);
    }

    /* renamed from: f */
    public static T9MatchInfo m23940f(String str, String str2) {
        int indexOf;
        T9MatchInfo t9MatchInfo = new T9MatchInfo();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (indexOf = str.indexOf(str2)) >= 0) {
            t9MatchInfo.m23953d(indexOf, str2.length());
        }
        return t9MatchInfo;
    }

    /* renamed from: g */
    private static void m23939g(String str, T9MatchInfo t9MatchInfo, BitSet bitSet, int i) {
        T9MatchInfo t9MatchInfo2;
        int i2;
        int i3;
        int length = str.length();
        int i4 = 0;
        int i5 = i;
        int i6 = -1;
        while (i5 < length) {
            char charAt = str.charAt(i5);
            if (i5 != i && charAt != ' ') {
                i3 = i4;
                i2 = i6;
                t9MatchInfo2 = t9MatchInfo;
                if (!C3862e.m23922i(charAt)) {
                    i5++;
                    i4 = i3;
                    i6 = i2;
                    t9MatchInfo = t9MatchInfo2;
                }
            }
            if (!bitSet.get(i5 - i) || charAt == ' ') {
                i2 = i6;
                t9MatchInfo2 = t9MatchInfo;
                if (i6 > -1) {
                    t9MatchInfo2 = m23945a(t9MatchInfo);
                    t9MatchInfo2.m23953d(i6, i4 - i6);
                    i2 = -1;
                }
            } else {
                i2 = i6;
                t9MatchInfo2 = t9MatchInfo;
                if (i6 == -1) {
                    i2 = i4;
                    t9MatchInfo2 = t9MatchInfo;
                }
            }
            i3 = i4 + 1;
            i5++;
            i4 = i3;
            i6 = i2;
            t9MatchInfo = t9MatchInfo2;
        }
        if (i6 > -1) {
            m23945a(t9MatchInfo).m23953d(i6, i4 - i6);
        }
    }
}
