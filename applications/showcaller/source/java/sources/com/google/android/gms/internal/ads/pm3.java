package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pm3.class */
public final class pm3 implements Comparable<pm3> {

    /* renamed from: d */
    public final boolean f28056d;

    /* renamed from: e */
    private final String f28057e;

    /* renamed from: f */
    private final tm3 f28058f;

    /* renamed from: g */
    private final boolean f28059g;

    /* renamed from: h */
    private final int f28060h;

    /* renamed from: i */
    private final int f28061i;

    /* renamed from: j */
    private final int f28062j;

    /* renamed from: k */
    private final int f28063k;

    /* renamed from: l */
    private final int f28064l;

    /* renamed from: m */
    private final boolean f28065m;

    /* renamed from: n */
    private final int f28066n;

    /* renamed from: o */
    private final int f28067o;

    /* renamed from: p */
    private final int f28068p;

    /* renamed from: q */
    private final int f28069q;

    public pm3(C7021u4 c7021u4, tm3 tm3Var, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        this.f28058f = tm3Var;
        this.f28057e = zm3.m8318l(c7021u4.f30502e);
        this.f28059g = zm3.m8319k(i, false);
        int i6 = 0;
        while (true) {
            if (i6 >= tm3Var.f20209p.size()) {
                i6 = Integer.MAX_VALUE;
                i2 = 0;
                break;
            }
            i2 = zm3.m8317m(c7021u4, tm3Var.f20209p.get(i6), false);
            if (i2 > 0) {
                break;
            }
            i6++;
        }
        this.f28061i = i6;
        this.f28060h = i2;
        this.f28062j = Integer.bitCount(0);
        this.f28065m = 1 == (c7021u4.f30503f & 1);
        this.f28066n = c7021u4.f30492A;
        this.f28067o = c7021u4.f30493B;
        this.f28068p = c7021u4.f30507j;
        this.f28056d = true;
        String[] m9672y = C7101wa.m9672y();
        int i7 = 0;
        while (true) {
            if (i7 >= m9672y.length) {
                i3 = Integer.MAX_VALUE;
                i4 = 0;
                break;
            }
            int m8317m = zm3.m8317m(c7021u4, m9672y[i7], false);
            if (m8317m > 0) {
                i3 = i7;
                i4 = m8317m;
                break;
            }
            i7++;
        }
        this.f28063k = i3;
        this.f28064l = i4;
        int i8 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i8 < tm3Var.f20213t.size()) {
                String str = c7021u4.f30511n;
                if (str != null && str.equals(tm3Var.f20213t.get(i8))) {
                    i5 = i8;
                    break;
                }
                i8++;
            } else {
                break;
            }
        }
        this.f28069q = i5;
    }

    /* renamed from: a */
    public final int compareTo(pm3 pm3Var) {
        dy2 dy2Var;
        dy2 dy2Var2;
        dy2 dy2Var3;
        dy2 dy2Var4;
        dy2 dy2Var5;
        if (this.f28059g) {
            dy2Var5 = zm3.f33001d;
            dy2Var = dy2Var5;
        } else {
            dy2Var4 = zm3.f33001d;
            dy2Var = dy2Var4.zza();
        }
        uw2 mo10166a = uw2.m10158i().mo10163d(this.f28059g, pm3Var.f28059g).mo10166a(Integer.valueOf(this.f28061i), Integer.valueOf(pm3Var.f28061i), dy2.zzb().zza()).mo10165b(this.f28060h, pm3Var.f28060h).mo10165b(this.f28062j, pm3Var.f28062j).mo10163d(true, true).mo10166a(Integer.valueOf(this.f28069q), Integer.valueOf(pm3Var.f28069q), dy2.zzb().zza());
        int i = this.f28068p;
        int i2 = pm3Var.f28068p;
        boolean z = this.f28058f.f20217x;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        dy2Var2 = zm3.f33002e;
        uw2 mo10166a2 = mo10166a.mo10166a(valueOf, valueOf2, dy2Var2).mo10163d(this.f28065m, pm3Var.f28065m).mo10166a(Integer.valueOf(this.f28063k), Integer.valueOf(pm3Var.f28063k), dy2.zzb().zza()).mo10165b(this.f28064l, pm3Var.f28064l).mo10166a(Integer.valueOf(this.f28066n), Integer.valueOf(pm3Var.f28066n), dy2Var).mo10166a(Integer.valueOf(this.f28067o), Integer.valueOf(pm3Var.f28067o), dy2Var);
        int i3 = this.f28068p;
        int i4 = pm3Var.f28068p;
        if (!C7101wa.m9720H(this.f28057e, pm3Var.f28057e)) {
            dy2Var3 = zm3.f33002e;
            dy2Var = dy2Var3;
        }
        return mo10166a2.mo10166a(Integer.valueOf(i3), Integer.valueOf(i4), dy2Var).mo10162e();
    }
}
