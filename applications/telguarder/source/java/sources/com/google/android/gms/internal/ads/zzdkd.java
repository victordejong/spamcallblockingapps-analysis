package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkd.class */
public final class zzdkd {
    public static <T> void zza(AtomicReference<T> atomicReference, zzdkc<T> zzdkcVar) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            zzdkcVar.zzp(t);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }
}
