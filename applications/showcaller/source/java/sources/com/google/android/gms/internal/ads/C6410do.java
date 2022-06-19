package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.do */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/do.class */
public final class C6410do extends ie3<C6410do, C6373co> implements nf3 {
    private static final C6410do zzr;
    private int zzb;
    private int zze;
    private int zzg;
    private C6783np zzi;
    private C7077vn zzk;
    private C7188yn zzl;
    private C6967so zzm;
    private C7187ym zzn;
    private C6337bp zzo;
    private C6636jq zzp;
    private C6558hn zzq;
    private String zzf = "";
    private int zzh = 1000;
    private qe3 zzj = ie3.m14426n();

    static {
        C6410do c6410do = new C6410do();
        zzr = c6410do;
        ie3.m14414z(C6410do.class, c6410do);
    }

    private C6410do() {
    }

    /* renamed from: F */
    public static C6373co m15754F() {
        return zzr.m14418v();
    }

    /* renamed from: H */
    public static /* synthetic */ void m15752H(C6410do c6410do, String str) {
        str.getClass();
        c6410do.zzb |= 2;
        c6410do.zzf = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m15751I(C6410do c6410do, Iterable iterable) {
        qe3 qe3Var = c6410do.zzj;
        if (!qe3Var.zza()) {
            int size = qe3Var.size();
            c6410do.zzj = qe3Var.mo11914C(size == 0 ? 10 : size + size);
        }
        tc3.m10719h(iterable, c6410do.zzj);
    }

    /* renamed from: L */
    public static /* synthetic */ void m15749L(C6410do c6410do, C7077vn c7077vn) {
        c7077vn.getClass();
        c6410do.zzk = c7077vn;
        c6410do.zzb |= 32;
    }

    /* renamed from: M */
    public static /* synthetic */ void m15748M(C6410do c6410do, C7187ym c7187ym) {
        c7187ym.getClass();
        c6410do.zzn = c7187ym;
        c6410do.zzb |= 256;
    }

    /* renamed from: O */
    public static /* synthetic */ void m15747O(C6410do c6410do, C6337bp c6337bp) {
        c6337bp.getClass();
        c6410do.zzo = c6337bp;
        c6410do.zzb |= 512;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m15746Q(C6410do c6410do, C6636jq c6636jq) {
        c6636jq.getClass();
        c6410do.zzp = c6636jq;
        c6410do.zzb |= 1024;
    }

    /* renamed from: R */
    public static /* synthetic */ void m15745R(C6410do c6410do, C6558hn c6558hn) {
        c6558hn.getClass();
        c6410do.zzq = c6558hn;
        c6410do.zzb |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzr, "\u0001\r��\u0001\t\u0015\r��\u0001��\tင��\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", C6299ao.f20061a, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq"});
            } else if (i2 == 3) {
                return new C6410do();
            } else {
                if (i2 == 4) {
                    return new C6373co(null);
                }
                if (i2 == 5) {
                    return zzr;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m15757C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final C7077vn m15756D() {
        C7077vn c7077vn = this.zzk;
        C7077vn c7077vn2 = c7077vn;
        if (c7077vn == null) {
            c7077vn2 = C7077vn.m9929C();
        }
        return c7077vn2;
    }

    /* renamed from: E */
    public final C7187ym m15755E() {
        C7187ym c7187ym = this.zzn;
        C7187ym c7187ym2 = c7187ym;
        if (c7187ym == null) {
            c7187ym2 = C7187ym.m8777D();
        }
        return c7187ym2;
    }
}
