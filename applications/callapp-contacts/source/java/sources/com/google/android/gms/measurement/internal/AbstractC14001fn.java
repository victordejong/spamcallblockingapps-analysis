package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fn.class */
public abstract class AbstractC14001fn extends C14000fm {

    /* renamed from: a */
    private boolean f51638a;

    public AbstractC14001fn(C13979es c13979es) {
        super(c13979es);
        this.f51637t.m11976u();
    }

    /* renamed from: a */
    protected abstract boolean mo11519a();

    /* renamed from: b */
    protected void mo11572b() {
    }

    /* renamed from: f */
    public final boolean m11882f() {
        return this.f51638a;
    }

    /* renamed from: g */
    public final void m11881g() {
        if (m11882f()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: h */
    public final void m11880h() {
        if (!this.f51638a) {
            if (mo11519a()) {
                return;
            }
            this.f51637t.m11975v();
            this.f51638a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: i */
    public final void m11879i() {
        if (!this.f51638a) {
            mo11572b();
            this.f51637t.m11975v();
            this.f51638a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
