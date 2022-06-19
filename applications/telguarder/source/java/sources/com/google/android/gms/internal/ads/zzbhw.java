package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhw.class */
final class zzbhw implements zzdle {
    private final /* synthetic */ zzbgz zzffq;
    private Context zzflt;
    private String zzflu;
    private zzvs zzfnv;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhw(zzbgz zzbgzVar) {
        this.zzffq = zzbgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final zzdlf zzahy() {
        zzeqh.zza(this.zzflt, Context.class);
        zzeqh.zza(this.zzflu, String.class);
        zzeqh.zza(this.zzfnv, zzvs.class);
        return new zzbhz(this.zzffq, this.zzflt, this.zzflu, this.zzfnv);
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzbz(Context context) {
        this.zzflt = (Context) zzeqh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzd(zzvs zzvsVar) {
        this.zzfnv = (zzvs) zzeqh.checkNotNull(zzvsVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdle
    public final /* synthetic */ zzdle zzfq(String str) {
        this.zzflu = (String) zzeqh.checkNotNull(str);
        return this;
    }
}
