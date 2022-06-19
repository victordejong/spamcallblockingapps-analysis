package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvj.class */
public class zzcvj extends zzcwl {
    private zzbyk zzgvo;

    public zzcvj(zzbrl zzbrlVar, zzbsd zzbsdVar, zzbsm zzbsmVar, zzbsw zzbswVar, zzbrt zzbrtVar, zzbvt zzbvtVar, zzbyp zzbypVar, zzbtj zzbtjVar, zzbyk zzbykVar, zzbvm zzbvmVar) {
        super(zzbrlVar, zzbsdVar, zzbsmVar, zzbswVar, zzbvtVar, zzbtjVar, zzbypVar, zzbvmVar, zzbrtVar);
        this.zzgvo = zzbykVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() {
        this.zzgvo.zzud();
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavlVar) throws RemoteException {
        super.zza(zzavlVar);
        this.zzgvo.zza(new zzavj(zzavlVar.getType(), zzavlVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavjVar) {
        super.zzb(zzavjVar);
        this.zzgvo.zza(zzavjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzve() {
        this.zzgvo.zzuc();
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void zzvf() throws RemoteException {
        this.zzgvo.zzud();
    }
}
