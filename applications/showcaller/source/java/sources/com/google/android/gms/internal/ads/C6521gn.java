package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gn.class */
public final class C6521gn extends ie3<C6521gn, C6484fn> implements nf3 {
    private static final C6521gn zzh;
    private int zzb;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        C6521gn c6521gn = new C6521gn();
        zzh = c6521gn;
        ie3.m14414z(C6521gn.class, c6521gn);
    }

    private C6521gn() {
    }

    /* renamed from: C */
    public static C6484fn m14888C() {
        return zzh.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m14886E(C6521gn c6521gn, boolean z) {
        c6521gn.zzb |= 1;
        c6521gn.zze = z;
    }

    /* renamed from: F */
    public static /* synthetic */ void m14885F(C6521gn c6521gn, boolean z) {
        c6521gn.zzb |= 2;
        c6521gn.zzf = z;
    }

    /* renamed from: G */
    public static /* synthetic */ void m14884G(C6521gn c6521gn, int i) {
        c6521gn.zzb |= 4;
        c6521gn.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new C6521gn();
            }
            if (i2 == 4) {
                return new C6484fn(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
