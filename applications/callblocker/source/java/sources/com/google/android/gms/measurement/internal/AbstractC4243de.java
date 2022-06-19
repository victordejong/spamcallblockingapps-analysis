package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.de */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/de.class */
public abstract class AbstractC4243de extends C4271ef {

    /* renamed from: a */
    private boolean f18675a;

    public AbstractC4243de(C4296fd c4296fd) {
        super(c4296fd);
        this.f18970z.m4563a(this);
    }

    /* renamed from: A */
    protected void mo4694A() {
    }

    /* renamed from: h */
    public final boolean m4712h() {
        return this.f18675a;
    }

    /* renamed from: i */
    public final void m4711i() {
        if (!m4712h()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: j */
    public final void m4710j() {
        if (this.f18675a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo4275z()) {
            return;
        }
        this.f18970z.m4570F();
        this.f18675a = true;
    }

    /* renamed from: k */
    public final void m4709k() {
        if (this.f18675a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        mo4694A();
        this.f18970z.m4570F();
        this.f18675a = true;
    }

    /* renamed from: z */
    protected abstract boolean mo4275z();
}
