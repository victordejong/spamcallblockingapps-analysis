package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.so */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/so.class */
public final class C6967so extends ie3<C6967so, C6671ko> implements nf3 {
    private static final C6967so zzg;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        C6967so c6967so = new C6967so();
        zzg = c6967so;
        ie3.m14414z(C6967so.class, c6967so);
    }

    private C6967so() {
    }

    /* renamed from: E */
    public static C6671ko m10982E() {
        return zzg.m14418v();
    }

    /* renamed from: F */
    public static C6967so m10981F() {
        return zzg;
    }

    /* renamed from: J */
    public static /* synthetic */ void m10977J(C6967so c6967so, int i) {
        c6967so.zze = i - 1;
        c6967so.zzb |= 1;
    }

    /* renamed from: L */
    public static /* synthetic */ void m10976L(C6967so c6967so, int i) {
        c6967so.zzf = i - 1;
        c6967so.zzb |= 2;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzb", "zze", C6893qo.f28579a, "zzf", C6745mo.f26687a});
            } else if (i2 == 3) {
                return new C6967so();
            } else {
                if (i2 == 4) {
                    return new C6671ko(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final boolean m10984C() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: D */
    public final boolean m10983D() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: H */
    public final int m10979H() {
        int m11364a = C6930ro.m11364a(this.zze);
        int i = m11364a;
        if (m11364a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: I */
    public final int m10978I() {
        int m12840a = C6782no.m12840a(this.zzf);
        int i = m12840a;
        if (m12840a == 0) {
            i = 1;
        }
        return i;
    }
}
