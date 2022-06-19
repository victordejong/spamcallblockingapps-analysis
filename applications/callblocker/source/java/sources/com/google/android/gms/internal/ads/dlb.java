package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlb.class */
public final class dlb {

    /* renamed from: a */
    public final dqe f14606a;

    /* renamed from: b */
    public final Object f14607b;

    /* renamed from: c */
    public final int f14608c;

    /* renamed from: d */
    public final dqo[] f14609d;

    /* renamed from: e */
    public final long f14610e;

    /* renamed from: f */
    public int f14611f;

    /* renamed from: g */
    public long f14612g;

    /* renamed from: h */
    public boolean f14613h;

    /* renamed from: i */
    public boolean f14614i;

    /* renamed from: j */
    public boolean f14615j;

    /* renamed from: k */
    public dlb f14616k;

    /* renamed from: l */
    public drl f14617l;

    /* renamed from: m */
    private final boolean[] f14618m;

    /* renamed from: n */
    private final dli[] f14619n;

    /* renamed from: o */
    private final dll[] f14620o;

    /* renamed from: p */
    private final drj f14621p;

    /* renamed from: q */
    private final dlh f14622q;

    /* renamed from: r */
    private final dqg f14623r;

    /* renamed from: s */
    private drl f14624s;

    public dlb(dli[] dliVarArr, dll[] dllVarArr, long j, drj drjVar, dlh dlhVar, dqg dqgVar, Object obj, int i, int i2, boolean z, long j2) {
        this.f14619n = dliVarArr;
        this.f14620o = dllVarArr;
        this.f14610e = j;
        this.f14621p = drjVar;
        this.f14622q = dlhVar;
        this.f14623r = dqgVar;
        this.f14607b = drz.m8774a(obj);
        this.f14608c = i;
        this.f14611f = i2;
        this.f14613h = z;
        this.f14612g = j2;
        this.f14609d = new dqo[dliVarArr.length];
        this.f14618m = new boolean[dliVarArr.length];
        this.f14606a = dqgVar.mo8898a(i2, dlhVar.mo9218d());
    }

    /* renamed from: a */
    public final long m9245a() {
        return this.f14610e - this.f14612g;
    }

    /* renamed from: a */
    public final long m9243a(long j, boolean z) {
        return m9242a(j, false, new boolean[this.f14619n.length]);
    }

    /* renamed from: a */
    public final long m9242a(long j, boolean z, boolean[] zArr) {
        drg drgVar = this.f14617l.f15481b;
        for (int i = 0; i < drgVar.f15474a; i++) {
            this.f14618m[i] = !z && this.f14617l.m8815a(this.f14624s, i);
        }
        long mo8891a = this.f14606a.mo8891a(drgVar.m8823a(), this.f14618m, this.f14609d, zArr, j);
        this.f14624s = this.f14617l;
        this.f14615j = false;
        for (int i2 = 0; i2 < this.f14609d.length; i2++) {
            if (this.f14609d[i2] != null) {
                drz.m8770b(drgVar.m8822a(i2) != null);
                this.f14615j = true;
            } else {
                drz.m8770b(drgVar.m8822a(i2) == null);
            }
        }
        this.f14622q.mo9221a(this.f14619n, this.f14617l.f15480a, drgVar);
        return mo8891a;
    }

    /* renamed from: a */
    public final void m9244a(int i, boolean z) {
        this.f14611f = i;
        this.f14613h = z;
    }

    /* renamed from: b */
    public final boolean m9241b() {
        return this.f14614i && (!this.f14615j || this.f14606a.mo8885f() == Long.MIN_VALUE);
    }

    /* renamed from: c */
    public final boolean m9240c() {
        boolean z;
        boolean z2 = false;
        drl mo8817a = this.f14621p.mo8817a(this.f14620o, this.f14606a.mo8887d());
        drl drlVar = this.f14624s;
        if (drlVar != null) {
            int i = 0;
            while (true) {
                if (i >= mo8817a.f15481b.f15474a) {
                    z = true;
                    break;
                } else if (!mo8817a.m8815a(drlVar, i)) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        if (!z) {
            this.f14617l = mo8817a;
            z2 = true;
        }
        return z2;
    }

    /* renamed from: d */
    public final void m9239d() {
        try {
            this.f14623r.mo8896a(this.f14606a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
