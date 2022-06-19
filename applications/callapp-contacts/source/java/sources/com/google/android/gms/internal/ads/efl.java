package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efl.class */
public final class efl implements Runnable {

    /* renamed from: a */
    private final AbstractC13087z f48967a;

    /* renamed from: b */
    private final C12545fa f48968b;

    /* renamed from: c */
    private final Runnable f48969c;

    public efl(AbstractC13087z abstractC13087z, C12545fa c12545fa, Runnable runnable) {
        this.f48967a = abstractC13087z;
        this.f48968b = c12545fa;
        this.f48969c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f48967a.isCanceled();
        if (this.f48968b.m14681a()) {
            this.f48967a.zza((AbstractC13087z) this.f48968b.f49280a);
        } else {
            this.f48967a.zzb(this.f48968b.f49282c);
        }
        if (this.f48968b.f49283d) {
            this.f48967a.zzc("intermediate-response");
        } else {
            this.f48967a.zzd("done");
        }
        Runnable runnable = this.f48969c;
        if (runnable != null) {
            runnable.run();
        }
    }
}
