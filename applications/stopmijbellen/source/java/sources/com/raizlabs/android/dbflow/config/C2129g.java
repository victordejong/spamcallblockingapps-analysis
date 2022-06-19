package com.raizlabs.android.dbflow.config;

import java.util.Comparator;
/* renamed from: com.raizlabs.android.dbflow.config.g */
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/g.class */
public class C2129g implements Comparator<Object> {
    /* renamed from: a */
    public static char m3886a(String str, int i) {
        if (i >= str.length()) {
            return (char) 0;
        }
        return str.charAt(i);
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int i;
        int i2;
        String obj3 = obj.toString();
        String obj4 = obj2.toString();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            char m3886a = m3886a(obj3, i3);
            char m3886a2 = m3886a(obj4, i5);
            int i6 = 0;
            char c = m3886a;
            int i7 = i3;
            while (true) {
                if (!Character.isSpaceChar(c) && c != '0') {
                    break;
                }
                int i8 = c == '0' ? i6 + 1 : 0;
                i7++;
                c = m3886a(obj3, i7);
                i6 = i8;
            }
            int i9 = 0;
            char c2 = m3886a2;
            int i10 = i5;
            while (true) {
                if (!Character.isSpaceChar(c2) && c2 != '0') {
                    break;
                }
                int i11 = c2 == '0' ? i9 + 1 : 0;
                i10++;
                c2 = m3886a(obj4, i10);
                i9 = i11;
            }
            if (Character.isDigit(c) && Character.isDigit(c2)) {
                String substring = obj3.substring(i7);
                String substring2 = obj4.substring(i10);
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    i = i14;
                    char m3886a3 = m3886a(substring, i12);
                    char m3886a4 = m3886a(substring2, i13);
                    if (!Character.isDigit(m3886a3) && !Character.isDigit(m3886a4)) {
                        break;
                    } else if (!Character.isDigit(m3886a3)) {
                        i = -1;
                        break;
                    } else if (!Character.isDigit(m3886a4)) {
                        i = 1;
                        break;
                    } else {
                        if (m3886a3 < m3886a4) {
                            i2 = i;
                            if (i == 0) {
                                i2 = -1;
                            }
                        } else if (m3886a3 > m3886a4) {
                            i2 = i;
                            if (i == 0) {
                                i2 = 1;
                            }
                        } else {
                            i2 = i;
                            if (m3886a3 == 0) {
                                i2 = i;
                                if (m3886a4 == 0) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                        i12++;
                        i13++;
                        i14 = i2;
                    }
                }
                if (i != 0) {
                    return i;
                }
            }
            if (c == 0 && c2 == 0) {
                return i6 - i9;
            }
            if (c < c2) {
                return -1;
            }
            if (c > c2) {
                return 1;
            }
            i3 = i7 + 1;
            i4 = i10 + 1;
        }
    }
}
