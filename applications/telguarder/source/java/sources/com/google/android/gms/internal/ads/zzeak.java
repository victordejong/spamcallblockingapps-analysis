package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeak.class */
public final class zzeak extends zzdzs<zzdzw<V>> {
    private final /* synthetic */ zzeah zzibd;
    private final zzdyv<V> zzibe;

    public zzeak(zzeah zzeahVar, zzdyv<V> zzdyvVar) {
        this.zzibd = zzeahVar;
        this.zzibe = (zzdyv) zzdwl.checkNotNull(zzdyvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final boolean isDone() {
        return this.zzibd.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final /* synthetic */ void zzb(Object obj, Throwable th) {
        zzdzw zzdzwVar = (zzdzw) obj;
        if (th == null) {
            this.zzibd.setFuture(zzdzwVar);
        } else {
            this.zzibd.setException(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final /* synthetic */ Object zzbab() throws Exception {
        return (zzdzw) zzdwl.zza(this.zzibe.zzatm(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzibe);
    }

    @Override // com.google.android.gms.internal.ads.zzdzs
    final String zzbac() {
        return this.zzibe.toString();
    }
}
