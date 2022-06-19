package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfoj.class */
public final class zzfoj {
    @VisibleForTesting
    public final zzfom zza;
    @VisibleForTesting
    public final boolean zzb;

    private zzfoj(zzfom zzfomVar) {
        this.zza = zzfomVar;
        this.zzb = zzfomVar != null;
    }

    public static zzfoj zzb(Context context, String str, String str2) {
        zzfok zzfokVar;
        try {
            try {
                try {
                    IBinder instantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (instantiate == null) {
                        zzfokVar = null;
                    } else {
                        IInterface queryLocalInterface = instantiate.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfokVar = queryLocalInterface instanceof zzfom ? (zzfom) queryLocalInterface : new zzfok(instantiate);
                    }
                    zzfokVar.zze(ObjectWrapper.wrap(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzfoj(zzfokVar);
                } catch (Exception e) {
                    throw new zzfnl(e);
                }
            } catch (Exception e2) {
                throw new zzfnl(e2);
            }
        } catch (RemoteException | zzfnl | NullPointerException | SecurityException e3) {
            return new zzfoj(new zzfon());
        }
    }

    public static zzfoj zzc() {
        return new zzfoj(new zzfon());
    }

    public final zzfoi zza(byte[] bArr) {
        return new zzfoi(this, bArr, null);
    }
}
