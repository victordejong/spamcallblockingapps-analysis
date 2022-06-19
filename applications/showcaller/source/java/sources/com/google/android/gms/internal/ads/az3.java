package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/az3.class */
public class az3 {

    /* renamed from: a */
    public static final az3 f20194a;
    @Deprecated

    /* renamed from: b */
    public static final az3 f20195b;

    /* renamed from: c */
    public static final AbstractC7093w2<az3> f20196c = fx3.f23187a;

    /* renamed from: l */
    public final int f20205l;

    /* renamed from: m */
    public final int f20206m;

    /* renamed from: n */
    public final boolean f20207n;

    /* renamed from: o */
    public final zzfoj<String> f20208o;

    /* renamed from: p */
    public final zzfoj<String> f20209p;

    /* renamed from: t */
    public final zzfoj<String> f20213t;

    /* renamed from: u */
    public final zzfoj<String> f20214u;

    /* renamed from: v */
    public final int f20215v;

    /* renamed from: z */
    public final zzfot<Integer> f20219z;

    /* renamed from: d */
    public final int f20197d = Integer.MAX_VALUE;

    /* renamed from: e */
    public final int f20198e = Integer.MAX_VALUE;

    /* renamed from: f */
    public final int f20199f = Integer.MAX_VALUE;

    /* renamed from: g */
    public final int f20200g = Integer.MAX_VALUE;

    /* renamed from: h */
    public final int f20201h = 0;

    /* renamed from: i */
    public final int f20202i = 0;

    /* renamed from: j */
    public final int f20203j = 0;

    /* renamed from: k */
    public final int f20204k = 0;

    /* renamed from: q */
    public final int f20210q = 0;

    /* renamed from: r */
    public final int f20211r = Integer.MAX_VALUE;

    /* renamed from: s */
    public final int f20212s = Integer.MAX_VALUE;

    /* renamed from: w */
    public final boolean f20216w = false;

    /* renamed from: x */
    public final boolean f20217x = false;

    /* renamed from: y */
    public final boolean f20218y = false;

    static {
        az3 az3Var = new az3(new gy3());
        f20194a = az3Var;
        f20195b = az3Var;
    }

    public az3(gy3 gy3Var) {
        int i;
        int i2;
        boolean z;
        zzfoj<String> zzfojVar;
        zzfoj<String> zzfojVar2;
        zzfoj<String> zzfojVar3;
        zzfoj<String> zzfojVar4;
        int i3;
        zzfot<Integer> zzfotVar;
        i = gy3Var.f23746a;
        this.f20205l = i;
        i2 = gy3Var.f23747b;
        this.f20206m = i2;
        z = gy3Var.f23748c;
        this.f20207n = z;
        zzfojVar = gy3Var.f23749d;
        this.f20208o = zzfojVar;
        zzfojVar2 = gy3Var.f23750e;
        this.f20209p = zzfojVar2;
        zzfojVar3 = gy3Var.f23751f;
        this.f20213t = zzfojVar3;
        zzfojVar4 = gy3Var.f23752g;
        this.f20214u = zzfojVar4;
        i3 = gy3Var.f23753h;
        this.f20215v = i3;
        zzfotVar = gy3Var.f23754i;
        this.f20219z = zzfotVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        az3 az3Var = (az3) obj;
        return this.f20207n == az3Var.f20207n && this.f20205l == az3Var.f20205l && this.f20206m == az3Var.f20206m && this.f20208o.equals(az3Var.f20208o) && this.f20209p.equals(az3Var.f20209p) && this.f20213t.equals(az3Var.f20213t) && this.f20214u.equals(az3Var.f20214u) && this.f20215v == az3Var.f20215v && this.f20219z.equals(az3Var.f20219z);
    }

    public int hashCode() {
        return (((((((((((((((((((((this.f20207n ? 1 : 0) - 1048002209) * 31) + this.f20205l) * 31) + this.f20206m) * 31) + this.f20208o.hashCode()) * 31) + this.f20209p.hashCode()) * 961) + Integer.MAX_VALUE) * 31) + Integer.MAX_VALUE) * 31) + this.f20213t.hashCode()) * 31) + this.f20214u.hashCode()) * 31) + this.f20215v) * 923521) + this.f20219z.hashCode();
    }
}
