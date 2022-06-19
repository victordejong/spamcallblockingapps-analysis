package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/i.class */
final class RunnableC12625i implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ BinderC12652j f49367a;

    public RunnableC12625i(BinderC12652j binderC12652j) {
        this.f49367a = binderC12652j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eki ekiVar;
        eki ekiVar2;
        ekiVar = this.f49367a.f49380a;
        if (ekiVar != null) {
            try {
                ekiVar2 = this.f49367a.f49380a;
                ekiVar2.mo14823a(1);
            } catch (RemoteException e) {
                C13088za.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
