package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.cv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cv.class */
public final class RunnableC6380cv implements Runnable {

    /* renamed from: d */
    final /* synthetic */ BinderC6455ev f21382d;

    public RunnableC6380cv(BinderC6455ev binderC6455ev) {
        this.f21382d = binderC6455ev;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6526gs abstractC6526gs;
        AbstractC6526gs abstractC6526gs2;
        abstractC6526gs = this.f21382d.f22549d.f23145d;
        if (abstractC6526gs != null) {
            try {
                abstractC6526gs2 = this.f21382d.f22549d.f23145d;
                abstractC6526gs2.mo12205C(1);
            } catch (RemoteException e) {
                ei0.m15463g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
