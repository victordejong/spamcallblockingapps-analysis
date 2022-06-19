package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
/* renamed from: com.google.android.gms.internal.ads.nf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nf.class */
final class RunnableC1860nf implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AdRequest$ErrorCode f7691b;

    /* renamed from: c */
    final /* synthetic */ of f7692c;

    RunnableC1860nf(of ofVar, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.f7692c = ofVar;
        this.f7691b = adRequest$ErrorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            of.c(this.f7692c).m6453a0(C1889pf.m6213a(this.f7691b));
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }
}
