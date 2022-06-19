package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.n5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n5.class */
public abstract class AbstractC7804n5 extends C7793m5 {

    /* renamed from: b */
    private boolean f35486b;

    public AbstractC7804n5(C7858s4 c7858s4) {
        super(c7858s4);
        this.f35460a.m6018m();
    }

    /* renamed from: g */
    protected abstract boolean mo5878g();

    /* renamed from: h */
    protected void mo5968h() {
    }

    /* renamed from: i */
    public final boolean m6210i() {
        return this.f35486b;
    }

    /* renamed from: j */
    public final void m6209j() {
        if (m6210i()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: k */
    public final void m6208k() {
        if (!this.f35486b) {
            if (mo5878g()) {
                return;
            }
            this.f35460a.m6017n();
            this.f35486b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: l */
    public final void m6207l() {
        if (!this.f35486b) {
            mo5968h();
            this.f35460a.m6017n();
            this.f35486b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
