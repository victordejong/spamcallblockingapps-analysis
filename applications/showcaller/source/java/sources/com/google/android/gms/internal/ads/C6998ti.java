package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ti */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ti.class */
public final class C6998ti {

    /* renamed from: a */
    public final List<byte[]> f30009a;

    /* renamed from: b */
    public final int f30010b;

    /* renamed from: c */
    public final float f30011c;

    private C6998ti(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f30009a = list;
        this.f30010b = i;
        this.f30011c = f;
    }

    /* renamed from: a */
    public static C6998ti m10657a(C6665ki c6665ki) {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        try {
            c6665ki.m13898j(4);
            int m13896l = (c6665ki.m13896l() & 3) + 1;
            if (m13896l == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m13896l2 = c6665ki.m13896l() & 31;
            for (int i7 = 0; i7 < m13896l2; i7++) {
                arrayList.add(m10656b(c6665ki));
            }
            int m13896l3 = c6665ki.m13896l();
            for (int i8 = 0; i8 < m13896l3; i8++) {
                arrayList.add(m10656b(c6665ki));
            }
            if (m13896l2 > 0) {
                C6702li c6702li = new C6702li((byte[]) arrayList.get(0), m13896l, ((byte[]) arrayList.get(0)).length);
                c6702li.m13513a(8);
                int m13511c = c6702li.m13511c(8);
                c6702li.m13513a(16);
                c6702li.m13510d();
                if (m13511c == 100 || m13511c == 110 || m13511c == 122 || m13511c == 244 || m13511c == 44 || m13511c == 83 || m13511c == 86 || m13511c == 118 || m13511c == 128 || m13511c == 138) {
                    int m13510d = c6702li.m13510d();
                    if (m13510d == 3) {
                        c6702li.m13512b();
                        i6 = 3;
                    } else {
                        i6 = m13510d;
                    }
                    c6702li.m13510d();
                    c6702li.m13510d();
                    c6702li.m13513a(1);
                    i3 = m13510d;
                    if (c6702li.m13512b()) {
                        int i9 = i6 != 3 ? 8 : 12;
                        int i10 = 0;
                        while (true) {
                            i3 = m13510d;
                            if (i10 >= i9) {
                                break;
                            }
                            if (c6702li.m13512b()) {
                                int i11 = i10 < 6 ? 16 : 64;
                                int i12 = 0;
                                int i13 = 8;
                                int i14 = 8;
                                while (i12 < i11) {
                                    int i15 = i13;
                                    if (i13 != 0) {
                                        i15 = ((c6702li.m13509e() + i14) + 256) % 256;
                                    }
                                    if (i15 != 0) {
                                        i14 = i15;
                                    }
                                    i12++;
                                    i13 = i15;
                                }
                            }
                            i10++;
                        }
                    }
                } else {
                    i3 = 1;
                }
                c6702li.m13510d();
                int m13510d2 = c6702li.m13510d();
                if (m13510d2 == 0) {
                    c6702li.m13510d();
                } else if (m13510d2 == 1) {
                    c6702li.m13512b();
                    c6702li.m13509e();
                    c6702li.m13509e();
                    long m13510d3 = c6702li.m13510d();
                    for (int i16 = 0; i16 < m13510d3; i16++) {
                        c6702li.m13510d();
                    }
                }
                c6702li.m13510d();
                c6702li.m13513a(1);
                int m13510d4 = c6702li.m13510d();
                int m13510d5 = c6702li.m13510d();
                boolean m13512b = c6702li.m13512b();
                int i17 = 2 - (m13512b ? 1 : 0);
                if (!m13512b) {
                    c6702li.m13513a(1);
                }
                c6702li.m13513a(1);
                int i18 = (m13510d4 + 1) * 16;
                int i19 = (m13510d5 + 1) * i17 * 16;
                i = i18;
                i2 = i19;
                if (c6702li.m13512b()) {
                    int m13510d6 = c6702li.m13510d();
                    int m13510d7 = c6702li.m13510d();
                    int m13510d8 = c6702li.m13510d();
                    int m13510d9 = c6702li.m13510d();
                    if (i3 == 0) {
                        i4 = 1;
                        i5 = i17;
                    } else {
                        int i20 = i3 == 3 ? 1 : 2;
                        int i21 = 1;
                        if (i3 == 1) {
                            i21 = 2;
                        }
                        int i22 = i17 * i21;
                        i4 = i20;
                        i5 = i22;
                    }
                    i = i18 - ((m13510d6 + m13510d7) * i4);
                    i2 = i19 - ((m13510d8 + m13510d9) * i5);
                }
                f = 1.0f;
                if (c6702li.m13512b()) {
                    f = 1.0f;
                    if (c6702li.m13512b()) {
                        int m13511c2 = c6702li.m13511c(8);
                        if (m13511c2 == 255) {
                            int m13511c3 = c6702li.m13511c(16);
                            int m13511c4 = c6702li.m13511c(16);
                            f = 1.0f;
                            if (m13511c3 != 0) {
                                f = 1.0f;
                                if (m13511c4 != 0) {
                                    f = m13511c3 / m13511c4;
                                }
                            }
                        } else if (m13511c2 < 17) {
                            f = C6591ii.f24282b[m13511c2];
                        } else {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append("Unexpected aspect_ratio_idc value: ");
                            sb.append(m13511c2);
                            Log.w("NalUnitUtil", sb.toString());
                            f = 1.0f;
                        }
                    }
                }
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new C6998ti(arrayList, m13896l, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m10656b(C6665ki c6665ki) {
        int m13895m = c6665ki.m13895m();
        int m13901g = c6665ki.m13901g();
        c6665ki.m13898j(m13895m);
        return C6404di.m15816b(c6665ki.f25221a, m13901g, m13895m);
    }
}
