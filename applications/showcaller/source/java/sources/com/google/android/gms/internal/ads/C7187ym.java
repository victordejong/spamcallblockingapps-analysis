package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ym */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ym.class */
public final class C7187ym extends ie3<C7187ym, C7150xm> implements nf3 {
    private static final C7187ym zzp;
    private int zzb;
    private int zze;
    private C6855pn zzg;
    private C6929rn zzh;
    private C7003tn zzj;
    private C6411dp zzk;
    private C7041uo zzl;
    private C6559ho zzm;
    private C6634jo zzn;
    private int zzf = 1000;
    private re3<C6707ln> zzi = ie3.m14425o();
    private re3<C6894qp> zzo = ie3.m14425o();

    static {
        C7187ym c7187ym = new C7187ym();
        zzp = c7187ym;
        ie3.m14414z(C7187ym.class, c7187ym);
    }

    private C7187ym() {
    }

    /* renamed from: D */
    public static C7187ym m8777D() {
        return zzp;
    }

    /* renamed from: F */
    public static /* synthetic */ void m8775F(C7187ym c7187ym, zzazj zzazjVar) {
        c7187ym.zze = zzazjVar.zza();
        c7187ym.zzb |= 1;
    }

    /* renamed from: G */
    public static /* synthetic */ void m8774G(C7187ym c7187ym, C6929rn c6929rn) {
        c6929rn.getClass();
        c7187ym.zzh = c6929rn;
        c7187ym.zzb |= 8;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzp, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzb", "zze", zzazj.zzc(), "zzf", C6299ao.f20061a, "zzg", "zzh", "zzi", C6707ln.class, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", C6894qp.class});
            } else if (i2 == 3) {
                return new C7187ym();
            } else {
                if (i2 == 4) {
                    return new C7150xm(null);
                }
                if (i2 == 5) {
                    return zzp;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final C6929rn m8778C() {
        C6929rn c6929rn = this.zzh;
        C6929rn c6929rn2 = c6929rn;
        if (c6929rn == null) {
            c6929rn2 = C6929rn.m11377C();
        }
        return c6929rn2;
    }
}
