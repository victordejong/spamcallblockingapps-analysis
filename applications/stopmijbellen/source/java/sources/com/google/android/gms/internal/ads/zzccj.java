package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccj.class */
public final class zzccj {
    @GuardedBy("InternalQueryInfoGenerator.class")
    private static zzcht zza;
    private final Context zzb;
    private final AdFormat zzc;
    private final zzbjg zzd;

    public zzccj(Context context, AdFormat adFormat, zzbjg zzbjgVar) {
        this.zzb = context;
        this.zzc = adFormat;
        this.zzd = zzbjgVar;
    }

    public static zzcht zza(Context context) {
        zzcht zzchtVar;
        synchronized (zzccj.class) {
            try {
                if (zza == null) {
                    zza = zzbgo.zza().zzq(context, new zzbxe());
                }
                zzchtVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzchtVar;
    }

    public final void zzb(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzcht zza2 = zza(this.zzb);
        if (zza2 == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        IObjectWrapper wrap = ObjectWrapper.wrap(this.zzb);
        zzbjg zzbjgVar = this.zzd;
        try {
            zza2.zze(wrap, new zzchx(null, this.zzc.name(), null, zzbjgVar == null ? new zzbfe().zza() : zzbfh.zza.zza(this.zzb, zzbjgVar)), new zzcci(this, queryInfoGenerationCallback));
        } catch (RemoteException e) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
