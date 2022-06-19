package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbaf.class */
public final class zzbaf implements zzdzl<T> {
    private final /* synthetic */ zzbae zzeiq;
    private final /* synthetic */ zzbac zzeir;

    public zzbaf(zzbad zzbadVar, zzbae zzbaeVar, zzbac zzbacVar) {
        this.zzeiq = zzbaeVar;
        this.zzeir = zzbacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(T t) {
        this.zzeiq.zzg(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzeir.run();
    }
}
