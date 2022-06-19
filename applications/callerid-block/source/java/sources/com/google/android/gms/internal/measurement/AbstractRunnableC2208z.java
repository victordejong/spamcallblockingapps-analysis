package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
public abstract class AbstractRunnableC2208z implements Runnable {

    /* renamed from: b */
    final long f9850b;

    /* renamed from: c */
    final long f9851c;

    /* renamed from: d */
    final boolean f9852d;

    /* renamed from: e */
    final /* synthetic */ C2133j0 f9853e;

    AbstractRunnableC2208z(C2133j0 c2133j0, boolean z) {
        this.f9853e = c2133j0;
        this.f9850b = c2133j0.f9763b.m8247a();
        this.f9851c = c2133j0.f9763b.m8245c();
        this.f9852d = z;
    }

    /* renamed from: a */
    abstract void m4119a();

    /* renamed from: b */
    protected void m4118b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.f9853e.f9768g;
        if (z) {
            m4118b();
            return;
        }
        try {
            m4119a();
        } catch (Exception e) {
            this.f9853e.m4289q(e, false, this.f9852d);
            m4118b();
        }
    }
}
