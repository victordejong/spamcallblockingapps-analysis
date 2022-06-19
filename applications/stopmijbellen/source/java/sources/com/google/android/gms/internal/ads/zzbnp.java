package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnp.class */
public final class zzbnp {
    private final Context zza;

    public zzbnp(Context context) {
        this.zza = context;
    }

    public final void zza(zzcda zzcdaVar) {
        try {
            ((zzbnq) zzcjd.zzb(this.zza, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", zzbno.zza)).zze(zzcdaVar);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzciz.zzj(valueOf.length() != 0 ? "Error calling setFlagsAccessedBeforeInitializedListener: ".concat(valueOf) : new String("Error calling setFlagsAccessedBeforeInitializedListener: "));
        } catch (zzcjc e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            zzciz.zzj(valueOf2.length() != 0 ? "Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(valueOf2) : new String("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:"));
        }
    }
}
