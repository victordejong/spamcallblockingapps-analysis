package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nd3.class */
public final class nd3 implements xf3 {

    /* renamed from: a */
    private final md3 f27082a;

    /* renamed from: b */
    private int f27083b;

    /* renamed from: c */
    private int f27084c;

    /* renamed from: d */
    private int f27085d = 0;

    private nd3(md3 md3Var) {
        se3.m11071b(md3Var, "input");
        this.f27082a = md3Var;
        md3Var.f26551e = this;
    }

    /* renamed from: K */
    private final void m12948K(int i) {
        if ((this.f27083b & 7) == i) {
            return;
        }
        throw zzggm.zzi();
    }

    /* renamed from: L */
    private final <T> T m12947L(cg3<T> cg3Var, vd3 vd3Var) {
        int mo13261u = this.f27082a.mo13261u();
        md3 md3Var = this.f27082a;
        if (md3Var.f26549c < md3Var.f26550d) {
            int mo13282A = md3Var.mo13282A(mo13261u);
            T zza = cg3Var.zza();
            this.f27082a.f26549c++;
            cg3Var.mo11902g(zza, this, vd3Var);
            cg3Var.mo11905d(zza);
            this.f27082a.mo13274h(0);
            md3 md3Var2 = this.f27082a;
            md3Var2.f26549c--;
            md3Var2.mo13281a(mo13282A);
            return zza;
        }
        throw new zzggm("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: M */
    private final <T> T m12946M(cg3<T> cg3Var, vd3 vd3Var) {
        int i = this.f27084c;
        this.f27084c = ((this.f27083b >>> 3) << 3) | 4;
        try {
            T zza = cg3Var.zza();
            cg3Var.mo11902g(zza, this, vd3Var);
            cg3Var.mo11905d(zza);
            if (this.f27083b == this.f27084c) {
                return zza;
            }
            throw zzggm.zzk();
        } finally {
            this.f27084c = i;
        }
    }

    /* renamed from: N */
    private final void m12945N(int i) {
        if (this.f27082a.mo13279c() == i) {
            return;
        }
        throw zzggm.zzd();
    }

    /* renamed from: O */
    private static final void m12944O(int i) {
        if ((i & 3) == 0) {
            return;
        }
        throw zzggm.zzk();
    }

    /* renamed from: P */
    private static final void m12943P(int i) {
        if ((i & 7) == 0) {
            return;
        }
        throw zzggm.zzk();
    }

    /* renamed from: Q */
    public static nd3 m12942Q(md3 md3Var) {
        nd3 nd3Var = md3Var.f26551e;
        return nd3Var != null ? nd3Var : new nd3(md3Var);
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: A */
    public final void mo9220A(List<Long> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof bf3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f27082a.mo13270l()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Long.valueOf(this.f27082a.mo13270l()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        bf3 bf3Var = (bf3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                bf3Var.m16383h(this.f27082a.mo13270l());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                bf3Var.m16383h(this.f27082a.mo13270l());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: B */
    public final void mo9219B(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13261u()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13261u()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                je3Var.mo12940d0(this.f27082a.mo13261u());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                je3Var.mo12940d0(this.f27082a.mo13261u());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: C */
    public final void mo9218C(List<Long> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof bf3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f27082a.mo13269m()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Long.valueOf(this.f27082a.mo13269m()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        bf3 bf3Var = (bf3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                bf3Var.m16383h(this.f27082a.mo13269m());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                bf3Var.m16383h(this.f27082a.mo13269m());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: D */
    public final void mo9217D(List<zzgex> list) {
        int mo13275g;
        if ((this.f27083b & 7) == 2) {
            do {
                list.add(mo9201k());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g = this.f27082a.mo13275g();
            } while (mo13275g == this.f27083b);
            this.f27085d = mo13275g;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: E */
    public final void mo9216E(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 2) {
                int mo13261u = this.f27082a.mo13261u();
                m12944O(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13259w()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13259w()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 2) {
            int mo13261u2 = this.f27082a.mo13261u();
            m12944O(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                je3Var.mo12940d0(this.f27082a.mo13259w());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                je3Var.mo12940d0(this.f27082a.mo13259w());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: F */
    public final void mo9215F(List<Long> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof bf3)) {
            int i = this.f27083b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.f27082a.mo13267o()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13261u = this.f27082a.mo13261u();
                m12943P(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Long.valueOf(this.f27082a.mo13267o()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            }
        }
        bf3 bf3Var = (bf3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 1) {
            do {
                bf3Var.m16383h(this.f27082a.mo13267o());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13261u2 = this.f27082a.mo13261u();
            m12943P(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                bf3Var.m16383h(this.f27082a.mo13267o());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: G */
    public final long mo9214G() {
        m12948K(0);
        return this.f27082a.mo13256z();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: H */
    public final void mo9213H(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13260v()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13260v()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                je3Var.mo12940d0(this.f27082a.mo13260v());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                je3Var.mo12940d0(this.f27082a.mo13260v());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: I */
    public final void mo9212I(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13268n()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13268n()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                je3Var.mo12940d0(this.f27082a.mo13268n());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                je3Var.mo12940d0(this.f27082a.mo13268n());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    /* renamed from: J */
    public final void m12949J(List<String> list, boolean z) {
        int mo13275g;
        int mo13275g2;
        if ((this.f27083b & 7) == 2) {
            if (!(list instanceof we3) || z) {
                do {
                    list.add(z ? mo9199m() : mo9202j());
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            }
            we3 we3Var = (we3) list;
            do {
                we3Var.mo9585g(mo9201k());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: a */
    public final double mo9211a() {
        m12948K(1);
        return this.f27082a.mo13272j();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: b */
    public final int mo9210b() {
        int i = this.f27085d;
        if (i != 0) {
            this.f27083b = i;
            this.f27085d = 0;
        } else {
            i = this.f27082a.mo13275g();
            this.f27083b = i;
        }
        if (i == 0 || i == this.f27084c) {
            return Integer.MAX_VALUE;
        }
        return i >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: c */
    public final int mo9209c() {
        return this.f27083b;
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: d */
    public final float mo9208d() {
        m12948K(5);
        return this.f27082a.mo13271k();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: e */
    public final boolean mo9207e() {
        int i;
        if (this.f27082a.mo13280b() || (i = this.f27083b) == this.f27084c) {
            return false;
        }
        return this.f27082a.mo13273i(i);
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: f */
    public final long mo9206f() {
        m12948K(0);
        return this.f27082a.mo13269m();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: g */
    public final long mo9205g() {
        m12948K(1);
        return this.f27082a.mo13267o();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: h */
    public final int mo9204h() {
        m12948K(5);
        return this.f27082a.mo13266p();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: i */
    public final boolean mo9203i() {
        m12948K(0);
        return this.f27082a.mo13265q();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: j */
    public final String mo9202j() {
        m12948K(2);
        return this.f27082a.mo13264r();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: k */
    public final zzgex mo9201k() {
        m12948K(2);
        return this.f27082a.mo13262t();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: l */
    public final void mo9200l(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13257y()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13257y()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                je3Var.mo12940d0(this.f27082a.mo13257y());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                je3Var.mo12940d0(this.f27082a.mo13257y());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: m */
    public final String mo9199m() {
        m12948K(2);
        return this.f27082a.mo13263s();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: n */
    public final void mo9198n(List<Float> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof be3)) {
            int i = this.f27083b & 7;
            if (i == 2) {
                int mo13261u = this.f27082a.mo13261u();
                m12944O(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Float.valueOf(this.f27082a.mo13271k()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Float.valueOf(this.f27082a.mo13271k()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            }
        }
        be3 be3Var = (be3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 2) {
            int mo13261u2 = this.f27082a.mo13261u();
            m12944O(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                be3Var.m16391d(this.f27082a.mo13271k());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                be3Var.m16391d(this.f27082a.mo13271k());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: o */
    public final int mo9197o() {
        m12948K(0);
        return this.f27082a.mo13260v();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: p */
    public final void mo9196p(List<Boolean> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof yc3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.f27082a.mo13265q()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Boolean.valueOf(this.f27082a.mo13265q()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        yc3 yc3Var = (yc3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                yc3Var.m8858d(this.f27082a.mo13265q());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                yc3Var.m8858d(this.f27082a.mo13265q());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: q */
    public final void mo9195q(List<Long> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof bf3)) {
            int i = this.f27083b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.f27082a.mo13258x()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13261u = this.f27082a.mo13261u();
                m12943P(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Long.valueOf(this.f27082a.mo13258x()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            }
        }
        bf3 bf3Var = (bf3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 1) {
            do {
                bf3Var.m16383h(this.f27082a.mo13258x());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13261u2 = this.f27082a.mo13261u();
            m12943P(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                bf3Var.m16383h(this.f27082a.mo13258x());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: r */
    public final <T> T mo9194r(cg3<T> cg3Var, vd3 vd3Var) {
        m12948K(3);
        return (T) m12946M(cg3Var, vd3Var);
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: s */
    public final int mo9193s() {
        m12948K(0);
        return this.f27082a.mo13261u();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: t */
    public final void mo9192t(List<Double> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof sd3)) {
            int i = this.f27083b & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.f27082a.mo13272j()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13261u = this.f27082a.mo13261u();
                m12943P(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Double.valueOf(this.f27082a.mo13272j()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            }
        }
        sd3 sd3Var = (sd3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 1) {
            do {
                sd3Var.m11080d(this.f27082a.mo13272j());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13261u2 = this.f27082a.mo13261u();
            m12943P(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                sd3Var.m11080d(this.f27082a.mo13272j());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: u */
    public final void mo9191u(List<Integer> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof je3)) {
            int i = this.f27083b & 7;
            if (i == 2) {
                int mo13261u = this.f27082a.mo13261u();
                m12944O(mo13261u);
                int mo13279c = this.f27082a.mo13279c();
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13266p()));
                } while (this.f27082a.mo13279c() < mo13279c + mo13261u);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Integer.valueOf(this.f27082a.mo13266p()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            }
        }
        je3 je3Var = (je3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 2) {
            int mo13261u2 = this.f27082a.mo13261u();
            m12944O(mo13261u2);
            int mo13279c2 = this.f27082a.mo13279c();
            do {
                je3Var.mo12940d0(this.f27082a.mo13266p());
            } while (this.f27082a.mo13279c() < mo13279c2 + mo13261u2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                je3Var.mo12940d0(this.f27082a.mo13266p());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: v */
    public final <T> void mo9190v(List<T> list, cg3<T> cg3Var, vd3 vd3Var) {
        int mo13275g;
        int i = this.f27083b;
        if ((i & 7) == 2) {
            do {
                list.add(m12947L(cg3Var, vd3Var));
                if (this.f27082a.mo13280b() || this.f27085d != 0) {
                    return;
                }
                mo13275g = this.f27082a.mo13275g();
            } while (mo13275g == i);
            this.f27085d = mo13275g;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: w */
    public final int mo9189w() {
        m12948K(0);
        return this.f27082a.mo13257y();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: x */
    public final <T> T mo9188x(cg3<T> cg3Var, vd3 vd3Var) {
        m12948K(2);
        return (T) m12947L(cg3Var, vd3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: y */
    public final <T> void mo9187y(List<T> list, cg3<T> cg3Var, vd3 vd3Var) {
        int mo13275g;
        int i = this.f27083b;
        if ((i & 7) == 3) {
            do {
                list.add(m12946M(cg3Var, vd3Var));
                if (this.f27082a.mo13280b() || this.f27085d != 0) {
                    return;
                }
                mo13275g = this.f27082a.mo13275g();
            } while (mo13275g == i);
            this.f27085d = mo13275g;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    /* renamed from: z */
    public final void mo9186z(List<Long> list) {
        int mo13275g;
        int mo13275g2;
        if (!(list instanceof bf3)) {
            int i = this.f27083b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.f27082a.mo13256z()));
                    if (this.f27082a.mo13280b()) {
                        return;
                    }
                    mo13275g = this.f27082a.mo13275g();
                } while (mo13275g == this.f27083b);
                this.f27085d = mo13275g;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int mo13279c = this.f27082a.mo13279c() + this.f27082a.mo13261u();
                do {
                    list.add(Long.valueOf(this.f27082a.mo13256z()));
                } while (this.f27082a.mo13279c() < mo13279c);
                m12945N(mo13279c);
                return;
            }
        }
        bf3 bf3Var = (bf3) list;
        int i2 = this.f27083b & 7;
        if (i2 == 0) {
            do {
                bf3Var.m16383h(this.f27082a.mo13256z());
                if (this.f27082a.mo13280b()) {
                    return;
                }
                mo13275g2 = this.f27082a.mo13275g();
            } while (mo13275g2 == this.f27083b);
            this.f27085d = mo13275g2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int mo13279c2 = this.f27082a.mo13279c() + this.f27082a.mo13261u();
            do {
                bf3Var.m16383h(this.f27082a.mo13256z());
            } while (this.f27082a.mo13279c() < mo13279c2);
            m12945N(mo13279c2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xf3
    public final long zzg() {
        m12948K(0);
        return this.f27082a.mo13270l();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    public final int zzi() {
        m12948K(0);
        return this.f27082a.mo13268n();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    public final int zzt() {
        m12948K(5);
        return this.f27082a.mo13259w();
    }

    @Override // com.google.android.gms.internal.ads.xf3
    public final long zzu() {
        m12948K(1);
        return this.f27082a.mo13258x();
    }
}
