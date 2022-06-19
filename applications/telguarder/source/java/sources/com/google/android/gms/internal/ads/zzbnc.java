package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnc.class */
public final class zzbnc implements zzeqb<Boolean> {
    private final zzeqo<zzdnp> zzfvf;

    public zzbnc(zzeqo<zzdnp> zzeqoVar) {
        this.zzfvf = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        boolean z;
        if (this.zzfvf.get().zzavc() != null) {
            z = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcpz)).booleanValue();
        } else {
            z = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcwo)).booleanValue();
        }
        return Boolean.valueOf(z);
    }
}
