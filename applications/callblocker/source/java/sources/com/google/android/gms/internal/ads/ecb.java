package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecb.class */
public final class ecb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ eby f16274a;

    public ecb(eby ebyVar) {
        this.f16274a = ebyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dza dzaVar;
        dza dzaVar2;
        dzaVar = this.f16274a.f16271a.f16270a;
        if (dzaVar != null) {
            try {
                dzaVar2 = this.f16274a.f16271a.f16270a;
                dzaVar2.mo8138a(1);
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
