package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cel.class */
public final class cel {
    /* renamed from: a */
    public static <T> void m11438a(AtomicReference<T> atomicReference, cek<T> cekVar) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            cekVar.mo11397a(t);
        } catch (RemoteException e) {
            C3556uu.m6744e("#007 Could not call remote method.", e);
        }
    }
}
