package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mm0.class */
final /* synthetic */ class mm0 implements Runnable {

    /* renamed from: b */
    private final om0 f7587b;

    mm0(om0 om0Var) {
        this.f7587b = om0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7587b.c();
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }
}
