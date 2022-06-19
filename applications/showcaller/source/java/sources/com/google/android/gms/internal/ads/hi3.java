package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hi3.class */
public final class hi3 extends ie3<hi3, ih3> implements nf3 {
    private static final hi3 zzx;
    private int zzb;
    private int zze;
    private int zzf;
    private kh3 zzj;
    private xh3 zzm;
    private boolean zzn;
    private boolean zzq;
    private boolean zzr;
    private gi3 zzt;
    private byte zzw = (byte) 2;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private re3<ei3> zzk = ie3.m14425o();
    private String zzl = "";
    private re3<String> zzo = ie3.m14425o();
    private String zzp = "";
    private zzgex zzs = zzgex.f34110d;
    private re3<String> zzu = ie3.m14425o();
    private re3<String> zzv = ie3.m14425o();

    static {
        hi3 hi3Var = new hi3();
        zzx = hi3Var;
        ie3.m14414z(hi3.class, hi3Var);
    }

    private hi3() {
    }

    /* renamed from: F */
    public static ih3 m14625F() {
        return zzx.m14418v();
    }

    /* renamed from: H */
    public static /* synthetic */ void m14623H(hi3 hi3Var, String str) {
        str.getClass();
        hi3Var.zzb |= 4;
        hi3Var.zzg = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m14622I(hi3 hi3Var, String str) {
        str.getClass();
        hi3Var.zzb |= 8;
        hi3Var.zzh = str;
    }

    /* renamed from: J */
    public static /* synthetic */ void m14621J(hi3 hi3Var, kh3 kh3Var) {
        kh3Var.getClass();
        hi3Var.zzj = kh3Var;
        hi3Var.zzb |= 32;
    }

    /* renamed from: L */
    public static /* synthetic */ void m14620L(hi3 hi3Var, ei3 ei3Var) {
        ei3Var.getClass();
        re3<ei3> re3Var = hi3Var.zzk;
        if (!re3Var.zza()) {
            hi3Var.zzk = ie3.m14424p(re3Var);
        }
        hi3Var.zzk.add(ei3Var);
    }

    /* renamed from: M */
    public static /* synthetic */ void m14619M(hi3 hi3Var, String str) {
        hi3Var.zzb |= 64;
        hi3Var.zzl = str;
    }

    /* renamed from: O */
    public static /* synthetic */ void m14618O(hi3 hi3Var) {
        hi3Var.zzb &= -65;
        hi3Var.zzl = zzx.zzl;
    }

    /* renamed from: Q */
    public static /* synthetic */ void m14617Q(hi3 hi3Var, xh3 xh3Var) {
        xh3Var.getClass();
        hi3Var.zzm = xh3Var;
        hi3Var.zzb |= 128;
    }

    /* renamed from: R */
    public static /* synthetic */ void m14616R(hi3 hi3Var, gi3 gi3Var) {
        gi3Var.getClass();
        hi3Var.zzt = gi3Var;
        hi3Var.zzb |= 8192;
    }

    /* renamed from: S */
    public static /* synthetic */ void m14615S(hi3 hi3Var, Iterable iterable) {
        re3<String> re3Var = hi3Var.zzu;
        if (!re3Var.zza()) {
            hi3Var.zzu = ie3.m14424p(re3Var);
        }
        tc3.m10719h(iterable, hi3Var.zzu);
    }

    /* renamed from: T */
    public static /* synthetic */ void m14614T(hi3 hi3Var, Iterable iterable) {
        re3<String> re3Var = hi3Var.zzv;
        if (!re3Var.zza()) {
            hi3Var.zzv = ie3.m14424p(re3Var);
        }
        tc3.m10719h(iterable, hi3Var.zzv);
    }

    /* renamed from: U */
    public static /* synthetic */ void m14613U(hi3 hi3Var, int i) {
        hi3Var.zze = i - 1;
        hi3Var.zzb |= 1;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return ie3.m14431A(zzx, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzb", "zzg", "zzh", "zzi", "zzk", ei3.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zze", yh3.f32513a, "zzf", hh3.f23913a, "zzj", "zzl", "zzm", "zzs", "zzt", "zzu", "zzv"});
            } else if (i2 == 3) {
                return new hi3();
            } else {
                if (i2 == 4) {
                    return new ih3(null);
                }
                if (i2 == 5) {
                    return zzx;
                }
                if (obj == null) {
                    i3 = 0;
                }
                this.zzw = (byte) i3;
                return null;
            }
        }
        return Byte.valueOf(this.zzw);
    }

    /* renamed from: C */
    public final String m14628C() {
        return this.zzg;
    }

    /* renamed from: D */
    public final List<ei3> m14627D() {
        return this.zzk;
    }

    /* renamed from: E */
    public final String m14626E() {
        return this.zzl;
    }
}
