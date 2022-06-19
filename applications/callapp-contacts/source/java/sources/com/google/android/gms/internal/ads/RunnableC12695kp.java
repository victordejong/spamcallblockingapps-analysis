package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* renamed from: com.google.android.gms.internal.ads.kp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kp.class */
final class RunnableC12695kp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C12705kz f49441a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12673ju f49442b;

    /* renamed from: c */
    private final /* synthetic */ C12684ke f49443c;

    public RunnableC12695kp(C12684ke c12684ke, C12705kz c12705kz, AbstractC12673ju abstractC12673ju) {
        this.f49443c = c12684ke;
        this.f49441a = c12705kz;
        this.f49442b = abstractC12673ju;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f49443c.f49413a) {
            if (this.f49441a.f50137b.get() != -1 && this.f49441a.f50137b.get() != 1) {
                this.f49441a.m13894d();
                dbs dbsVar = C13091zd.f50122e;
                AbstractC12673ju abstractC12673ju = this.f49442b;
                abstractC12673ju.getClass();
                dbsVar.execute(new Runnable(abstractC12673ju) { // from class: com.google.android.gms.internal.ads.ko

                    /* renamed from: a */
                    private final AbstractC12673ju f49440a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f49440a = abstractC12673ju;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49440a.mo14569a();
                    }
                });
                zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
