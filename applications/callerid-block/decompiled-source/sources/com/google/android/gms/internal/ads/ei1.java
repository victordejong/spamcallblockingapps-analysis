package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ei1.class */
public final class ei1 {
    /* renamed from: a */
    public static <T> void m7624a(AtomicReference<T> atomicReference, di1<T> di1Var) {
        T t = atomicReference.get();
        if (t != null) {
            try {
                di1Var.m7737a(t);
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            } catch (NullPointerException e2) {
                C1894po.m6179g("NullPointerException occurs when invoking a method from a delegating listener.", e2);
            }
        }
    }
}
