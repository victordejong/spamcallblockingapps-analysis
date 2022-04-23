package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efl.class */
final class efl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final z f27786a;

    /* renamed from: b  reason: collision with root package name */
    private final fa f27787b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f27788c;

    public efl(z zVar, fa faVar, Runnable runnable) {
        this.f27786a = zVar;
        this.f27787b = faVar;
        this.f27788c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27786a.isCanceled();
        if (this.f27787b.a()) {
            this.f27786a.zza((z) this.f27787b.f27992a);
        } else {
            this.f27786a.zzb(this.f27787b.f27994c);
        }
        if (this.f27787b.f27995d) {
            this.f27786a.zzc("intermediate-response");
        } else {
            this.f27786a.zzd("done");
        }
        Runnable runnable = this.f27788c;
        if (runnable != null) {
            runnable.run();
        }
    }
}
