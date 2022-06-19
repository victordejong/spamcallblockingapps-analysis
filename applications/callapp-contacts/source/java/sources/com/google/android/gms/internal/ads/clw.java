package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clw.class */
public final class clw {
    /* renamed from: a */
    public static <T> void m17416a(AtomicReference<T> atomicReference, cma<T> cmaVar) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            cmaVar.mo17391a(t);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }
}
