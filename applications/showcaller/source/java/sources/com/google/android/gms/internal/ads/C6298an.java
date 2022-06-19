package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.an */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/an.class */
public final class C6298an extends ie3<C6298an, C7224zm> implements nf3 {
    private static final C6298an zzh;
    private int zzb;
    private int zze;
    private C6447en zzf;
    private C6521gn zzg;

    static {
        C6298an c6298an = new C6298an();
        zzh = c6298an;
        ie3.m14414z(C6298an.class, c6298an);
    }

    private C6298an() {
    }

    /* renamed from: C */
    public static C7224zm m16523C() {
        return zzh.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m16521E(C6298an c6298an, C6447en c6447en) {
        c6447en.getClass();
        c6298an.zzf = c6447en;
        c6298an.zzb |= 2;
    }

    /* renamed from: F */
    public static /* synthetic */ void m16520F(C6298an c6298an, C6521gn c6521gn) {
        c6521gn.getClass();
        c6298an.zzg = c6521gn;
        c6298an.zzb |= 4;
    }

    /* renamed from: G */
    public static /* synthetic */ void m16519G(C6298an c6298an, int i) {
        c6298an.zze = 1;
        c6298an.zzb = 1 | c6298an.zzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", C6372cn.f21322a, "zzf", "zzg"});
            } else if (i2 == 3) {
                return new C6298an();
            } else {
                if (i2 == 4) {
                    return new C7224zm(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
