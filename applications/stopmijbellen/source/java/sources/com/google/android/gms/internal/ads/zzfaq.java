package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfaq.class */
public final class zzfaq {
    public static <T> void zza(AtomicReference<T> atomicReference, zzfap<T> zzfapVar) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            zzfapVar.zza(t);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        } catch (NullPointerException e2) {
            zzciz.zzk("NullPointerException occurs when invoking a method from a delegating listener.", e2);
        }
    }
}
