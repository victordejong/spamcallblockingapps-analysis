package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfkk.class */
public final class zzfkk {
    @VisibleForTesting
    public boolean zza;
    @VisibleForTesting
    public zzfkl zzb;

    public zzfkk(Context context, String str, String str2) {
        zzfkl zzfklVar;
        try {
            try {
                try {
                    IBinder m38738c = DynamiteModule.m38737d(context, DynamiteModule.f6176b, ModuleDescriptor.MODULE_ID).m38738c("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (m38738c == null) {
                        zzfklVar = null;
                    } else {
                        IInterface queryLocalInterface = m38738c.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfklVar = queryLocalInterface instanceof zzfkl ? (zzfkl) queryLocalInterface : new zzfkl(m38738c);
                    }
                    this.zzb = zzfklVar;
                    this.zzb.zzj(new ObjectWrapper(context), str, null);
                    this.zza = true;
                } catch (Exception e) {
                    throw new zzfjm(e);
                }
            } catch (Exception e2) {
                throw new zzfjm(e2);
            }
        } catch (RemoteException | zzfjm | NullPointerException | SecurityException e3) {
        }
    }

    public final zzfki zza(byte[] bArr) {
        return new zzfki(this, bArr, null);
    }
}
