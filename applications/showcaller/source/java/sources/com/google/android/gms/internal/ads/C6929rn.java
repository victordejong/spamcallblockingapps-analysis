package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.rn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rn.class */
public final class C6929rn extends ie3<C6929rn, C6892qn> implements nf3 {
    private static final C6929rn zzj;
    private int zzb;
    private String zze = "";
    private re3<C6707ln> zzf = ie3.m14425o();
    private int zzg = 1000;
    private int zzh = 1000;
    private int zzi = 1000;

    static {
        C6929rn c6929rn = new C6929rn();
        zzj = c6929rn;
        ie3.m14414z(C6929rn.class, c6929rn);
    }

    private C6929rn() {
    }

    /* renamed from: C */
    public static C6929rn m11377C() {
        return zzj;
    }

    /* renamed from: E */
    public static /* synthetic */ void m11375E(C6929rn c6929rn, String str) {
        str.getClass();
        c6929rn.zzb |= 1;
        c6929rn.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                me3 me3Var = C6299ao.f20061a;
                return ie3.m14431A(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzb", "zze", "zzf", C6707ln.class, "zzg", me3Var, "zzh", me3Var, "zzi", me3Var});
            } else if (i2 == 3) {
                return new C6929rn();
            } else {
                if (i2 == 4) {
                    return new C6892qn(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
