package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ec.class */
public abstract class ec extends db {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29546a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ec(es esVar) {
        super(esVar);
        this.t.u();
    }

    protected void ac_() {
    }

    protected abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean j() {
        return this.f29546a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k() {
        if (!j()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void l() {
        if (this.f29546a) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!b()) {
            this.t.v();
            this.f29546a = true;
        }
    }

    public final void m() {
        if (!this.f29546a) {
            ac_();
            this.t.v();
            this.f29546a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
