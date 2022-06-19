package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.e9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e9.class */
public abstract class AbstractC7702e9 extends C7690d9 {

    /* renamed from: c */
    private boolean f35229c;

    public AbstractC7702e9(C7819o9 c7819o9) {
        super(c7819o9);
        this.f35186b.m6130p();
    }

    /* renamed from: g */
    public final boolean m6456g() {
        return this.f35229c;
    }

    /* renamed from: h */
    public final void m6455h() {
        if (m6456g()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: i */
    protected abstract boolean mo6003i();

    /* renamed from: j */
    public final void m6454j() {
        if (!this.f35229c) {
            mo6003i();
            this.f35186b.m6129q();
            this.f35229c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
