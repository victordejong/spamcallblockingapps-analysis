package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwu.class */
public final class zzbwu implements Runnable {
    public final /* synthetic */ AdRequest.ErrorCode zza;
    public final /* synthetic */ zzbww zzb;

    public zzbwu(zzbww zzbwwVar, AdRequest.ErrorCode errorCode) {
        this.zzb = zzbwwVar;
        this.zza = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbvm zzbvmVar;
        try {
            zzbvmVar = this.zzb.zza;
            zzbvmVar.zzg(zzbwx.zza(this.zza));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }
}
