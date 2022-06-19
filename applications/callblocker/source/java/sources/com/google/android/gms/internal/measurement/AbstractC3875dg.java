package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.dg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dg.class */
public abstract class AbstractC3875dg {

    /* renamed from: a */
    int f17978a;

    /* renamed from: b */
    int f17979b;

    /* renamed from: c */
    C3880dl f17980c;

    /* renamed from: d */
    private int f17981d;

    /* renamed from: e */
    private boolean f17982e;

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC3875dg() {
        this.f17979b = 100;
        this.f17981d = Integer.MAX_VALUE;
        this.f17982e = false;
    }

    /* renamed from: a */
    public static long m5743a(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    /* renamed from: a */
    public static AbstractC3875dg m5742a(byte[] bArr, int i, int i2, boolean z) {
        C3877di c3877di = new C3877di(bArr, 0, i2, false);
        try {
            c3877di.mo5733c(i2);
            return c3877di;
        } catch (zzft e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m5741e(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    /* renamed from: a */
    public abstract int mo5738a();

    /* renamed from: a */
    public abstract void mo5737a(int i);

    /* renamed from: b */
    public abstract double mo5736b();

    /* renamed from: b */
    public abstract boolean mo5735b(int i);

    /* renamed from: c */
    public abstract float mo5734c();

    /* renamed from: c */
    public abstract int mo5733c(int i);

    /* renamed from: d */
    public abstract long mo5732d();

    /* renamed from: d */
    public abstract void mo5731d(int i);

    /* renamed from: e */
    public abstract long mo5730e();

    /* renamed from: f */
    public abstract int mo5729f();

    /* renamed from: g */
    public abstract long mo5727g();

    /* renamed from: h */
    public abstract int mo5726h();

    /* renamed from: i */
    public abstract boolean mo5725i();

    /* renamed from: j */
    public abstract String mo5724j();

    /* renamed from: k */
    public abstract String mo5723k();

    /* renamed from: l */
    public abstract AbstractC3859ct mo5722l();

    /* renamed from: m */
    public abstract int mo5721m();

    /* renamed from: n */
    public abstract int mo5720n();

    /* renamed from: o */
    public abstract int mo5719o();

    /* renamed from: p */
    public abstract long mo5718p();

    /* renamed from: q */
    public abstract int mo5717q();

    /* renamed from: r */
    public abstract long mo5716r();

    /* renamed from: s */
    public abstract long mo5715s();

    /* renamed from: t */
    public abstract boolean mo5714t();

    /* renamed from: u */
    public abstract int mo5713u();
}
