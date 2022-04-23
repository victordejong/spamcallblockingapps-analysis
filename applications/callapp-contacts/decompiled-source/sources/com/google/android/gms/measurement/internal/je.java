package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/je.class */
public abstract class je extends jd {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29885a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public je(jo joVar) {
        super(joVar);
        this.f.i++;
    }

    protected abstract boolean a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean u() {
        return this.f29885a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v() {
        if (!u()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void w() {
        if (!this.f29885a) {
            a();
            this.f.j++;
            this.f29885a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
