package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.c4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c4.class */
public abstract class AbstractC7673c4 extends C7660b3 {

    /* renamed from: b */
    private boolean f35114b;

    public AbstractC7673c4(C7858s4 c7858s4) {
        super(c7858s4);
        this.f35460a.m6018m();
    }

    /* renamed from: g */
    public final boolean m6573g() {
        return this.f35114b;
    }

    /* renamed from: h */
    public final void m6572h() {
        if (m6573g()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: i */
    public final void m6571i() {
        if (!this.f35114b) {
            if (mo5876k()) {
                return;
            }
            this.f35460a.m6017n();
            this.f35114b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: j */
    public final void m6570j() {
        if (!this.f35114b) {
            mo6432l();
            this.f35460a.m6017n();
            this.f35114b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: k */
    protected abstract boolean mo5876k();

    /* renamed from: l */
    protected void mo6432l() {
    }
}
