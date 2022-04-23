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
        try {
            sr2Var.m5607j(4);
            int i6 = 1;
            int i7 = 1;
            int l = (sr2Var.m5605l() & 3) + 1;
            if (l != 3) {
                ArrayList arrayList = new ArrayList();
                int l2 = sr2Var.m5605l() & 31;
                for (int i8 = 0; i8 < l2; i8++) {
                    arrayList.add(m8090b(sr2Var));
                }
                int l3 = sr2Var.m5605l();
                for (int i9 = 0; i9 < l3; i9++) {
                    arrayList.add(m8090b(sr2Var));
                }
                if (l2 > 0) {
                    tr2 tr2Var = new tr2((byte[]) arrayList.get(0), l, ((byte[]) arrayList.get(0)).length);
                    tr2Var.m5484a(8);
                    int c = tr2Var.m5482c(8);
                    tr2Var.m5484a(16);
                    tr2Var.m5481d();
                    if (c == 100 || c == 110 || c == 122 || c == 244 || c == 44 || c == 83 || c == 86 || c == 118 || c == 128 || c == 138) {
                        int d = tr2Var.m5481d();
                        if (d == 3) {
                            tr2Var.m5483b();
                            i5 = 3;
                        } else {
                            i5 = d;
                        }
                        tr2Var.m5481d();
                        tr2Var.m5481d();
                        tr2Var.m5484a(1);
                        i3 = d;
                        if (tr2Var.m5483b()) {
                            int i10 = i5 != 3 ? 8 : 12;
                            int i11 = 0;
                            while (true) {
                                i3 = d;
                                if (i11 >= i10) {
                                    break;
                                }
                                if (tr2Var.m5483b()) {
                                    int i12 = i11 < 6 ? 16 : 64;
                                    int i13 = 0;
                                    int i14 = 8;
                                    int i15 = 8;
                                    while (i13 < i12) {
                                        int i16 = i14;
                                        if (i14 != 0) {
                                            i16 = ((tr2Var.m5480e() + i15) + 256) % 256;
                                        }
                                        if (i16 != 0) {
                                            i15 = i16;
                                        }
                                        i13++;
                                        i14 = i16;
                                    }
                                }
                                i11++;
                            }
                        }
                    } else {
                        i3 = 1;
                    }
                    tr2Var.m5481d();
                    int d2 = tr2Var.m5481d();
                    if (d2 == 0) {
                        tr2Var.m5481d();
                    } else if (d2 == 1) {
                        tr2Var.m5483b();
                        tr2Var.m5480e();
                        tr2Var.m5480e();
                        long d3 = tr2Var.m5481d();
                        for (int i17 = 0; i17 < d3; i17++) {
                            tr2Var.m5481d();
                        }
                    }
                    tr2Var.m5481d();
                    tr2Var.m5484a(1);
                    int d4 = tr2Var.m5481d();
                    int d5 = tr2Var.m5481d();
                    boolean b = tr2Var.m5483b();
                    int i18 = 2 - (b ? 1 : 0);
                    if (!b) {
                        tr2Var.m5484a(1);
                    }
                    tr2Var.m5484a(1);
                    int i19 = (d4 + 1) * 16;
                    int i20 = (d5 + 1) * i18 * 16;
                    i2 = i19;
                    i = i20;
                    if (tr2Var.m5483b()) {
                        int d6 = tr2Var.m5481d();
                        int d7 = tr2Var.m5481d();
                        int d8 = tr2Var.m5481d();
                        int d9 = tr2Var.m5481d();
                        if (i3 == 0) {
                            i4 = i18;
                        } else {
                            i6 = i3 == 3 ? 1 : 2;
                            if (i3 == 1) {
                                i7 = 2;
                            }
                            i4 = i18 * i7;
                        }
                        i2 = i19 - ((d6 + d7) * i6);
                        i = i20 - ((d8 + d9) * i4);
                    }
                    f = 1.0f;
                    if (tr2Var.m5483b()) {
                        f = 1.0f;
                        if (tr2Var.m5483b()) {
                            int c2 = tr2Var.m5482c(8);
                            if (c2 == 255) {
                                int c3 = tr2Var.m5482c(16);
                                int c4 = tr2Var.m5482c(16);
                                f = 1.0f;
                                if (c3 != 0) {
                                    f = 1.0f;
                                    if (c4 != 0) {
                                        f = c3 / c4;
                                    }
                                }
                            } else if (c2 < 17) {
                                f = qr2.f8262b[c2];
                            } else {
                                StringBuilder sb = new StringBuilder(46);
                                sb.append("Unexpected aspect_ratio_idc value: ");
                                sb.append(c2);
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
                return new as2(arrayList, l, i2, i, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing AVC config", e);
        }
    }

    /* renamed from: b */
    private static byte[] m8090b(sr2 sr2Var) {
        int m = sr2Var.m5604m();
        int g = sr2Var.m5610g();
        sr2Var.m5607j(m);
        return kr2.m6764b(sr2Var.f8551a, g, m);
    }
}
