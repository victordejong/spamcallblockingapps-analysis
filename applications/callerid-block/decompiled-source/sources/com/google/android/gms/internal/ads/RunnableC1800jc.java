package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.y0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.jc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jc.class */
public final class RunnableC1800jc implements Runnable {

    /* renamed from: b */
    final /* synthetic */ uc f6882b;

    /* renamed from: c */
    final /* synthetic */ pb f6883c;

    /* renamed from: d */
    final /* synthetic */ C1994vc f6884d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1800jc(C1994vc vcVar, uc ucVar, pb pbVar) {
        this.f6884d = vcVar;
        this.f6882b = ucVar;
        this.f6883c = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f6884d.f8876a;
        synchronized (obj) {
            if (!(this.f6882b.m6528d() == -1 || this.f6882b.m6528d() == 1)) {
                this.f6882b.m6529c();
                C2073zo.f9414e.execute(RunnableC1783ic.m7190a(this.f6883c));
                y0.k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
