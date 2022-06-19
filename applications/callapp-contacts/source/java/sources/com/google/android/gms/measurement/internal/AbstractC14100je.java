package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.je */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/je.class */
public abstract class AbstractC14100je extends C14099jd {

    /* renamed from: a */
    private boolean f51941a;

    public AbstractC14100je(C14110jo c14110jo) {
        super(c14110jo);
        this.f51940f.f51972i++;
    }

    /* renamed from: a */
    protected abstract boolean mo11531a();

    /* renamed from: u */
    public final boolean m11697u() {
        return this.f51941a;
    }

    /* renamed from: v */
    public final void m11696v() {
        if (m11697u()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    /* renamed from: w */
    public final void m11695w() {
        if (!this.f51941a) {
            mo11531a();
            this.f51940f.f51973j++;
            this.f51941a = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
