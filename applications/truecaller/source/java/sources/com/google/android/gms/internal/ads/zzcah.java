package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcah.class */
public final class zzcah {
    private static zzcfn zzd;
    private final Context zza;
    private final AdFormat zzb;
    private final zzbhj zzc;

    public zzcah(Context context, AdFormat adFormat, zzbhj zzbhjVar) {
        this.zza = context;
        this.zzb = adFormat;
        this.zzc = zzbhjVar;
    }

    public static zzcfn zza(Context context) {
        zzcfn zzcfnVar;
        synchronized (zzcah.class) {
            try {
                if (zzd == null) {
                    zzd = zzber.zzb().zzq(context, new zzbvd());
                }
                zzcfnVar = zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcfnVar;
    }

    public final void zzb(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzcfn zza = zza(this.zza);
        if (zza == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        ObjectWrapper objectWrapper = new ObjectWrapper(this.zza);
        zzbhj zzbhjVar = this.zzc;
        try {
            zza.zze(objectWrapper, new zzcfr(null, this.zzb.name(), null, zzbhjVar == null ? new zzbdh().zza() : zzbdk.zza.zza(this.zza, zzbhjVar)), new zzcag(this, queryInfoGenerationCallback));
        } catch (RemoteException e) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
