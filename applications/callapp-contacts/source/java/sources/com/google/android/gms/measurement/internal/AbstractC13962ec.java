package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ec */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ec.class */
public abstract class AbstractC13962ec extends C13934db {

    /* renamed from: a */
    private boolean f51450a;

    public AbstractC13962ec(C13979es c13979es) {
        super(c13979es);
        this.f51637t.m11976u();
    }

    protected void ac_() {
    }

    /* renamed from: b */
    protected abstract boolean mo11709b();

    /* renamed from: j */
    public final boolean m12047j() {
        return this.f51450a;
    }

    /* renamed from: k */
    public final void m12046k() {
        if (m12047j()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: l */
    public final void m12045l() {
        if (!this.f51450a) {
            if (mo11709b()) {
                return;
            }
            this.f51637t.m11975v();
            this.f51450a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: m */
    public final void m12044m() {
        if (!this.f51450a) {
            ac_();
            this.f51637t.m11975v();
            this.f51450a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
