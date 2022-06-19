package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbif.class */
final class zzbif implements zzczl {
    private zzbqx zzeyy;
    private final /* synthetic */ zzbgz zzffq;
    private zzdab zzfqe;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbif(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final /* synthetic */ zzczl zza(zzdab zzdabVar) {
        this.zzfqe = (zzdab) zzeqh.checkNotNull(zzdabVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final zzczm zzaim() {
        zzeqh.zza(this.zzeyy, zzbqx.class);
        zzeqh.zza(this.zzfqe, zzdab.class);
        return new zzbie(this.zzffq, this.zzfqe, new zzbpa(), new zzcle(), this.zzeyy, new zzdor());
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final /* synthetic */ zzczl zzg(zzbqx zzbqxVar) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    @Deprecated
    public final /* synthetic */ zzczl zzg(zzbwg zzbwgVar) {
        zzeqh.checkNotNull(zzbwgVar);
        return this;
    }
}
