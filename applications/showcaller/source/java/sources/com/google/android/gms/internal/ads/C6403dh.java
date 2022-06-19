package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.dh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dh.class */
public final class C6403dh extends AbstractC6552hh {

    /* renamed from: e */
    private final AtomicReference<C6366ch> f21626e = new AtomicReference<>(new C6366ch());

    public C6403dh(AbstractC6590ih abstractC6590ih) {
    }

    /* renamed from: g */
    protected static boolean m15821g(int i, boolean z) {
        int i2 = i & 3;
        boolean z2 = false;
        if (i2 != 3) {
            if (z) {
                if (i2 != 2) {
                    return false;
                }
            }
            return z2;
        }
        z2 = true;
        return z2;
    }

    /* renamed from: h */
    private static int m15820h(int i, int i2) {
        int i3;
        if (i == -1) {
            if (i2 == -1) {
                return 0;
            }
            i3 = -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            i3 = 1;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6552hh
    /* renamed from: e */
    protected final C6329bh[] mo14667e(AbstractC7065vb[] abstractC7065vbArr, C7181yg[] c7181ygArr, int[][][] iArr) {
        boolean z;
        C6329bh[] c6329bhArr = new C6329bh[2];
        C6366ch c6366ch = this.f21626e.get();
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i >= 2) {
                break;
            }
            boolean z4 = z3;
            if (abstractC7065vbArr[i].zza() == 2) {
                z4 = z3;
                if (!z3) {
                    AbstractC7065vb abstractC7065vb = abstractC7065vbArr[i];
                    C7181yg c7181yg = c7181ygArr[i];
                    int[][] iArr2 = iArr[i];
                    int i2 = c6366ch.f21244d;
                    int i3 = 0;
                    C7144xg c7144xg = null;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = -1;
                    int i7 = -1;
                    while (true) {
                        int i8 = i7;
                        if (i3 >= c7181yg.f32493b) {
                            break;
                        }
                        C7144xg m8834a = c7181yg.m8834a(i3);
                        int i9 = m8834a.f32041a;
                        ArrayList arrayList = new ArrayList(1);
                        for (int i10 = 0; i10 <= 0; i10++) {
                            arrayList.add(Integer.valueOf(i10));
                        }
                        int[] iArr3 = iArr2[i3];
                        int i11 = i8;
                        for (int i12 = 0; i12 <= 0; i12++) {
                            if (m15821g(iArr3[i12], true)) {
                                zzanm m9185a = m8834a.m9185a(i12);
                                if (arrayList.contains(Integer.valueOf(i12))) {
                                    int i13 = m9185a.f33559m;
                                    int i14 = m9185a.f33551e;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                int i15 = true != z ? 1 : 2;
                                boolean m15821g = m15821g(iArr3[i12], false);
                                int i16 = i15;
                                if (m15821g) {
                                    i16 = i15 + 1000;
                                }
                                boolean z5 = i16 > i5;
                                if (i16 == i5) {
                                    int m15820h = m9185a.m8102k() != i11 ? m15820h(m9185a.m8102k(), i11) : m15820h(m9185a.f33551e, i6);
                                    z5 = !m15821g || !z ? m15820h < 0 : m15820h > 0;
                                }
                                if (z5) {
                                    i6 = m9185a.f33551e;
                                    i11 = m9185a.m8102k();
                                    i4 = i12;
                                    c7144xg = m8834a;
                                    i5 = i16;
                                }
                            }
                        }
                        i3++;
                        i7 = i11;
                    }
                    C6441eh c6441eh = c7144xg == null ? null : new C6441eh(c7144xg, i4, 0, null);
                    c6329bhArr[i] = c6441eh;
                    z4 = c6441eh != null;
                }
                int i17 = c7181ygArr[i].f32493b;
            }
            i++;
            z2 = z4;
        }
        boolean z6 = false;
        for (int i18 = 0; i18 < 2; i18++) {
            if (abstractC7065vbArr[i18].zza() == 1 && !z6) {
                C7181yg c7181yg2 = c7181ygArr[i18];
                int[][] iArr4 = iArr[i18];
                String str = c6366ch.f21241a;
                int i19 = -1;
                int i20 = -1;
                int i21 = 0;
                int i22 = 0;
                while (i21 < c7181yg2.f32493b) {
                    C7144xg m8834a2 = c7181yg2.m8834a(i21);
                    int[] iArr5 = iArr4[i21];
                    int i23 = i19;
                    int i24 = i22;
                    int i25 = 0;
                    while (true) {
                        int i26 = m8834a2.f32041a;
                        if (i25 <= 0) {
                            int i27 = i23;
                            int i28 = i20;
                            int i29 = i24;
                            if (m15821g(iArr5[i25], true)) {
                                zzanm m9185a2 = m8834a2.m9185a(i25);
                                int i30 = iArr5[i25];
                                int i31 = 1 != (m9185a2.f33546A & 1) ? 1 : 2;
                                int i32 = i31;
                                if (m15821g(i30, false)) {
                                    i32 = i31 + 1000;
                                }
                                i27 = i23;
                                i28 = i20;
                                i29 = i24;
                                if (i32 > i24) {
                                    i28 = i25;
                                    i27 = i21;
                                    i29 = i32;
                                }
                            }
                            i25++;
                            i23 = i27;
                            i20 = i28;
                            i24 = i29;
                        }
                    }
                    i21++;
                    i22 = i24;
                    i19 = i23;
                }
                C6441eh c6441eh2 = i19 == -1 ? null : new C6441eh(c7181yg2.m8834a(i19), i20, 0, null);
                c6329bhArr[i18] = c6441eh2;
                z6 = c6441eh2 != null;
            }
        }
        return c6329bhArr;
    }
}
