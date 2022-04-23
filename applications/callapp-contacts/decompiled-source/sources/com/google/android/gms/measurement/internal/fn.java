package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fn.class */
public abstract class fn extends fm {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29647a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fn(es esVar) {
        super(esVar);
        this.t.u();
    }

    protected abstract boolean a();

    protected void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return this.f29647a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g() {
        if (!f()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void h() {
        if (this.f29647a) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!a()) {
            this.t.v();
            this.f29647a = true;
        }
    }

    public final void i() {
        if (!this.f29647a) {
            b();
            this.t.v();
            this.f29647a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
