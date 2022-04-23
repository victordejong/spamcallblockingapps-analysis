package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kp.class */
final class kp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kz f28125a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ju f28126b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ke f28127c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kp(ke keVar, kz kzVar, ju juVar) {
        this.f28127c = keVar;
        this.f28125a = kzVar;
        this.f28126b = juVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f28127c.f28101a) {
            if (!(this.f28125a.f28589b.get() == -1 || this.f28125a.f28589b.get() == 1)) {
                this.f28125a.d();
                dbs dbsVar = zd.e;
                final ju juVar = this.f28126b;
                juVar.getClass();
                dbsVar.execute(new Runnable(juVar) { // from class: com.google.android.gms.internal.ads.ko

                    /* renamed from: a  reason: collision with root package name */
                    private final ju f28124a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28124a = juVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f28124a.a();
                    }
                });
                zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
