package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/as2.class */
public final class as2 {

    /* renamed from: a */
    public final List<byte[]> f6077a;

    /* renamed from: b */
    public final int f6078b;

    /* renamed from: c */
    public final float f6079c;

    private as2(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f6077a = list;
        this.f6078b = i;
        this.f6079c = f;
    }

    /* renamed from: a */
    public static as2 m8091a(sr2 sr2Var) {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        try {
            sr2Var.m5607j(4);
            int m5605l = (sr2Var.m5605l() & 3) + 1;
            if (m5605l == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m5605l2 = sr2Var.m5605l() & 31;
            for (int i7 = 0; i7 < m5605l2; i7++) {
                arrayList.add(m8090b(sr2Var));
            }
            int m5605l3 = sr2Var.m5605l();
            for (int i8 = 0; i8 < m5605l3; i8++) {
                arrayList.add(m8090b(sr2Var));
            }
            if (m5605l2 > 0) {
                tr2 tr2Var = new tr2((byte[]) arrayList.get(0), m5605l, ((byte[]) arrayList.get(0)).length);
                tr2Var.m5484a(8);
                int m5482c = tr2Var.m5482c(8);
                tr2Var.m5484a(16);
                tr2Var.m5481d();
                if (m5482c == 100 || m5482c == 110 || m5482c == 122 || m5482c == 244 || m5482c == 44 || m5482c == 83 || m5482c == 86 || m5482c == 118 || m5482c == 128 || m5482c == 138) {
                    int m5481d = tr2Var.m5481d();
                    if (m5481d == 3) {
                        tr2Var.m5483b();
                        i6 = 3;
                    } else {
                        i6 = m5481d;
                    }
                    tr2Var.m5481d();
                    tr2Var.m5481d();
                    tr2Var.m5484a(1);
                    i3 = m5481d;
                    if (tr2Var.m5483b()) {
                        int i9 = i6 != 3 ? 8 : 12;
                        int i10 = 0;
                        while (true) {
                            i3 = m5481d;
                            if (i10 >= i9) {
                                break;
                            }
                            if (tr2Var.m5483b()) {
                                int i11 = i10 < 6 ? 16 : 64;
                                int i12 = 0;
                                int i13 = 8;
                                int i14 = 8;
                                while (i12 < i11) {
                                    int i15 = i13;
                                    if (i13 != 0) {
                                        i15 = ((tr2Var.m5480e() + i14) + 256) % 256;
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
                tr2Var.m5481d();
                int m5481d2 = tr2Var.m5481d();
                if (m5481d2 == 0) {
                    tr2Var.m5481d();
                } else if (m5481d2 == 1) {
                    tr2Var.m5483b();
                    tr2Var.m5480e();
                    tr2Var.m5480e();
                    long m5481d3 = tr2Var.m5481d();
                    for (int i16 = 0; i16 < m5481d3; i16++) {
                        tr2Var.m5481d();
                    }
                }
                tr2Var.m5481d();
                tr2Var.m5484a(1);
                int m5481d4 = tr2Var.m5481d();
                int m5481d5 = tr2Var.m5481d();
                boolean m5483b = tr2Var.m5483b();
                int i17 = 2 - (m5483b ? 1 : 0);
                if (!m5483b) {
                    tr2Var.m5484a(1);
                }
                tr2Var.m5484a(1);
                int i18 = (m5481d4 + 1) * 16;
                int i19 = (m5481d5 + 1) * i17 * 16;
                i2 = i18;
                i = i19;
                if (tr2Var.m5483b()) {
                    int m5481d6 = tr2Var.m5481d();
                    int m5481d7 = tr2Var.m5481d();
                    int m5481d8 = tr2Var.m5481d();
                    int m5481d9 = tr2Var.m5481d();
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
                    int i23 = i18 - ((m5481d6 + m5481d7) * i4);
                    i = i19 - ((m5481d8 + m5481d9) * i5);
                    i2 = i23;
                }
                f = 1.0f;
                if (tr2Var.m5483b()) {
                    f = 1.0f;
                    if (tr2Var.m5483b()) {
                        int m5482c2 = tr2Var.m5482c(8);
                        if (m5482c2 == 255) {
                            int m5482c3 = tr2Var.m5482c(16);
                            int m5482c4 = tr2Var.m5482c(16);
                            f = 1.0f;
                            if (m5482c3 != 0) {
                                f = 1.0f;
                                if (m5482c4 != 0) {
                                    f = m5482c3 / m5482c4;
                                }
                            }
                        } else if (m5482c2 < 17) {
                            f = qr2.f8262b[m5482c2];
                        } else {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append("Unexpected aspect_ratio_idc value: ");
                            sb.append(m5482c2);
                            Log.w("NalUnitUtil", sb.toString());
                            f = 1.0f;
                        }
                    }
                }
            } else {
                i2 = -1;
                i = -1;
                f = 1.0f;
            }
            return new as2(arrayList, m5605l, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m8090b(sr2 sr2Var) {
        int m5604m = sr2Var.m5604m();
        int m5610g = sr2Var.m5610g();
        sr2Var.m5607j(m5604m);
        return kr2.m6764b(sr2Var.f8551a, m5610g, m5604m);
    }
}
