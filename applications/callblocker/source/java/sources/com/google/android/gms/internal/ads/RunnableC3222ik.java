package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ik */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ik.class */
public final class RunnableC3222ik implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C3232iu f16766a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3200hp f16767b;

    /* renamed from: c */
    private final /* synthetic */ C3215id f16768c;

    public RunnableC3222ik(C3215id c3215id, C3232iu c3232iu, AbstractC3200hp abstractC3200hp) {
        this.f16768c = c3215id;
        this.f16766a = c3232iu;
        this.f16767b = abstractC3200hp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f16768c.f16746a;
        synchronized (obj) {
            if (this.f16766a.m6722e() == -1 || this.f16766a.m6722e() == 1) {
                return;
            }
            this.f16766a.m6723d();
            crs crsVar = C3650yg.f17646e;
            AbstractC3200hp abstractC3200hp = this.f16767b;
            abstractC3200hp.getClass();
            crsVar.execute(RunnableC3225in.m7752a(abstractC3200hp));
            C3556uu.m7052a("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }
}
