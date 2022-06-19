package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbc.class */
public final class zzbbc {
    @VisibleForTesting
    public zzaoo zza;
    @VisibleForTesting
    public boolean zzb;

    public zzbbc() {
    }

    public zzbbc(Context context) {
        zzblj.zzc(context);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdv)).booleanValue()) {
            try {
                this.zza = (zzaoo) zzcjd.zzb(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzbaz.zza);
                ObjectWrapper.wrap(context);
                this.zza.zze(ObjectWrapper.wrap(context), "GMA_SDK");
                this.zzb = true;
            } catch (RemoteException | zzcjc | NullPointerException e) {
                zzciz.zze("Cannot dynamite load clearcut");
            }
        }
    }
}
