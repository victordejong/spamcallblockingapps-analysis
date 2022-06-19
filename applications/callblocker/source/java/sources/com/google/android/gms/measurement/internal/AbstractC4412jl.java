package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.jl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jl.class */
public abstract class AbstractC4412jl extends C4413jm {

    /* renamed from: b */
    private boolean f19233b;

    public AbstractC4412jl(C4415jo c4415jo) {
        super(c4415jo);
        this.f19234a.m4232a(this);
    }

    /* renamed from: J */
    public final boolean m4247J() {
        return this.f19233b;
    }

    /* renamed from: K */
    public final void m4246K() {
        if (!m4247J()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: L */
    public final void m4245L() {
        if (this.f19233b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        mo4068a();
        this.f19234a.m4193n();
        this.f19233b = true;
    }

    /* renamed from: a */
    protected abstract boolean mo4068a();
}
