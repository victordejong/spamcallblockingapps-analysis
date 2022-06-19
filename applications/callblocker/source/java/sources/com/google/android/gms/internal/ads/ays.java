package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ays.class */
public final class ays {

    /* renamed from: a */
    private AbstractC2843bt f10627a;

    public ays(ayk aykVar) {
        this.f10627a = aykVar;
    }

    /* renamed from: a */
    public final AbstractC2843bt m12291a() {
        AbstractC2843bt abstractC2843bt;
        synchronized (this) {
            abstractC2843bt = this.f10627a;
        }
        return abstractC2843bt;
    }

    /* renamed from: a */
    public final void m12290a(AbstractC2843bt abstractC2843bt) {
        synchronized (this) {
            this.f10627a = abstractC2843bt;
        }
    }
}
