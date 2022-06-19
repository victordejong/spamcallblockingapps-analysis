package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
public abstract class AbstractRunnableC7629z implements Runnable {

    /* renamed from: d */
    final long f34802d;

    /* renamed from: e */
    final long f34803e;

    /* renamed from: f */
    final boolean f34804f;

    /* renamed from: g */
    final /* synthetic */ C7415j0 f34805g;

    public AbstractRunnableC7629z(C7415j0 c7415j0, boolean z) {
        this.f34805g = c7415j0;
        this.f34802d = c7415j0.f34549c.mo16807a();
        this.f34803e = c7415j0.f34549c.mo16806b();
        this.f34804f = z;
    }

    /* renamed from: a */
    abstract void mo6714a();

    /* renamed from: b */
    protected void mo6713b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.f34805g.f34554h;
        if (z) {
            mo6713b();
            return;
        }
        try {
            mo6714a();
        } catch (Exception e) {
            this.f34805g.m7263q(e, false, this.f34804f);
            mo6713b();
        }
    }
}
