package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fy.class */
public abstract class AbstractC4317fy extends C4318fz {

    /* renamed from: a */
    private boolean f18969a;

    public AbstractC4317fy(C4296fd c4296fd) {
        super(c4296fd);
        this.f18970z.m4561a(this);
    }

    /* renamed from: A */
    public final void m4445A() {
        if (!m4442z()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: B */
    public final void m4444B() {
        if (this.f18969a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo4046a()) {
            return;
        }
        this.f18970z.m4570F();
        this.f18969a = true;
    }

    /* renamed from: C */
    public final void m4443C() {
        if (this.f18969a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        mo4103b();
        this.f18970z.m4570F();
        this.f18969a = true;
    }

    /* renamed from: a */
    protected abstract boolean mo4046a();

    /* renamed from: b */
    protected void mo4103b() {
    }

    /* renamed from: z */
    public final boolean m4442z() {
        return this.f18969a;
    }
}
