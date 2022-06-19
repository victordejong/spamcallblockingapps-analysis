package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhy.class */
final class zzbhy implements zzdmr {
    private final /* synthetic */ zzbgz zzffq;
    private Context zzflt;
    private String zzflu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhy(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final zzdmo zzaib() {
        zzeqh.zza(this.zzflt, Context.class);
        return new zzbib(this.zzffq, this.zzflt, this.zzflu);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final /* synthetic */ zzdmr zzca(Context context) {
        this.zzflt = (Context) zzeqh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final /* synthetic */ zzdmr zzfr(String str) {
        this.zzflu = str;
        return this;
    }
}
