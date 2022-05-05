package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkj.class */
public abstract class zzkj extends zzkg {

    /* renamed from: c */
    private boolean f9686c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkj(zzki zzkiVar) {
        super(zzkiVar);
        this.f9652b.m11048u(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public final boolean m11039p() {
        return this.f9686c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q */
    public final void m11038q() {
        if (!m11039p()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: r */
    public final void m11037r() {
        if (!this.f9686c) {
            mo10928s();
            this.f9652b.m11064k0();
            this.f9686c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: s */
    protected abstract boolean mo10928s();
}
