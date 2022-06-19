package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/g.class */
public final class RunnableC12571g implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ BinderC12598h f49293a;

    public RunnableC12571g(BinderC12598h binderC12598h) {
        this.f49293a = binderC12598h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eki ekiVar;
        eki ekiVar2;
        ekiVar = this.f49293a.f49336a.f49279a;
        if (ekiVar != null) {
            try {
                ekiVar2 = this.f49293a.f49336a.f49279a;
                ekiVar2.mo14823a(1);
            } catch (RemoteException e) {
                C13088za.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
