package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.bp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bp.class */
public final class C6337bp extends ie3<C6337bp, C7189yo> implements nf3 {
    private static final C6337bp zzl;
    private int zzb;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private re3<C7152xo> zze = ie3.m14425o();
    private String zzi = "";
    private String zzj = "";

    static {
        C6337bp c6337bp = new C6337bp();
        zzl = c6337bp;
        ie3.m14414z(C6337bp.class, c6337bp);
    }

    private C6337bp() {
    }

    /* renamed from: C */
    public static C7189yo m16312C() {
        return zzl.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m16310E(C6337bp c6337bp, Iterable iterable) {
        re3<C7152xo> re3Var = c6337bp.zze;
        if (!re3Var.zza()) {
            c6337bp.zze = ie3.m14424p(re3Var);
        }
        tc3.m10719h(iterable, c6337bp.zze);
    }

    /* renamed from: F */
    public static /* synthetic */ void m16309F(C6337bp c6337bp, int i) {
        c6337bp.zzb |= 1;
        c6337bp.zzf = i;
    }

    /* renamed from: G */
    public static /* synthetic */ void m16308G(C6337bp c6337bp, int i) {
        c6337bp.zzb |= 2;
        c6337bp.zzg = i;
    }

    /* renamed from: H */
    public static /* synthetic */ void m16307H(C6337bp c6337bp, long j) {
        c6337bp.zzb |= 4;
        c6337bp.zzh = j;
    }

    /* renamed from: I */
    public static /* synthetic */ void m16306I(C6337bp c6337bp, String str) {
        str.getClass();
        c6337bp.zzb |= 8;
        c6337bp.zzi = str;
    }

    /* renamed from: J */
    public static /* synthetic */ void m16305J(C6337bp c6337bp, String str) {
        str.getClass();
        c6337bp.zzb |= 16;
        c6337bp.zzj = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m16304L(C6337bp c6337bp, long j) {
        c6337bp.zzb |= 32;
        c6337bp.zzk = j;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzl, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzb", "zze", C7152xo.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            }
            if (i2 == 3) {
                return new C6337bp();
            }
            if (i2 == 4) {
                return new C7189yo(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            return null;
        }
        return (byte) 1;
    }
}
