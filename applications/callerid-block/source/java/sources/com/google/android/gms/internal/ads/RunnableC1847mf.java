package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
/* renamed from: com.google.android.gms.internal.ads.mf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mf.class */
final class RunnableC1847mf implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AdRequest$ErrorCode f7563b;

    /* renamed from: c */
    final /* synthetic */ of f7564c;

    RunnableC1847mf(of ofVar, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.f7564c = ofVar;
        this.f7563b = adRequest$ErrorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            of.c(this.f7564c).m6453a0(C1889pf.m6213a(this.f7563b));
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }
}
