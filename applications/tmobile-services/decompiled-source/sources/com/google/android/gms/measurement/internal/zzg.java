package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzg.class */
public abstract class zzg extends zzd {

    /* renamed from: b */
    private boolean f9312b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzfv zzfvVar) {
        super(zzfvVar);
        this.f9354a.m11363j(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final boolean m11322u() {
        return this.f9312b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v */
    public final void m11321v() {
        if (!m11322u()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: w */
    public final void m11320w() {
        if (this.f9312b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo11140y()) {
            this.f9354a.m11353t();
            this.f9312b = true;
        }
    }

    /* renamed from: x */
    public final void m11319x() {
        if (!this.f9312b) {
            mo11318z();
            this.f9354a.m11353t();
            this.f9312b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: y */
    protected abstract boolean mo11140y();

    /* renamed from: z */
    protected void mo11318z() {
    }
}
