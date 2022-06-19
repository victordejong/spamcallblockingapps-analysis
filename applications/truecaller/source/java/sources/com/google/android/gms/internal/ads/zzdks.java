package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdks.class */
public final class zzdks implements zzdbc, zzdhz {
    private final zzcei zza;
    private final Context zzb;
    private final zzcfa zzc;
    private final View zzd;
    private String zze;
    private final zzazj zzf;

    public zzdks(zzcei zzceiVar, Context context, zzcfa zzcfaVar, View view, zzazj zzazjVar) {
        this.zza = zzceiVar;
        this.zzb = context;
        this.zzc = zzcfaVar;
        this.zzd = view;
        this.zzf = zzazjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzd() {
        String zzh = this.zzc.zzh(this.zzb);
        this.zze = zzh;
        String valueOf = String.valueOf(zzh);
        String str = this.zzf == zzazj.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.zze = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzi(view.getContext(), this.zze);
        }
        this.zza.zza(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        this.zza.zza(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
        if (this.zzc.zzb(this.zzb)) {
            try {
                zzcfa zzcfaVar = this.zzc;
                Context context = this.zzb;
                zzcfaVar.zzr(context, zzcfaVar.zzl(context), this.zza.zzb(), zzcbzVar.zzb(), zzcbzVar.zzc());
            } catch (RemoteException e) {
                zzcgt.zzj("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
    }
}
