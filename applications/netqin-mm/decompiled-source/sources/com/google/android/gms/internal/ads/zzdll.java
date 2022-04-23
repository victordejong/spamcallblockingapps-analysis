package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdll.class */
public final class zzdll {
    /* renamed from: a */
    public static <T> void m13521a(AtomicReference<T> atomicReference, zzdlk<T> zzdlkVar) {
        T t = atomicReference.get();
        if (t != null) {
            try {
                zzdlkVar.mo13522a(t);
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }
}
