package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gg2.class */
public final class gg2 {
    /* renamed from: a */
    public static <T> void m14948a(AtomicReference<T> atomicReference, fg2<T> fg2Var) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            fg2Var.mo8384a(t);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        } catch (NullPointerException e2) {
            ei0.m15463g("NullPointerException occurs when invoking a method from a delegating listener.", e2);
        }
    }
}
