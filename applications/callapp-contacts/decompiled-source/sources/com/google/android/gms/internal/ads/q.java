package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/q.class */
final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ r f28316a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(r rVar) {
        this.f28316a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        tz tzVar;
        tz tzVar2;
        tzVar = this.f28316a.f28349a;
        if (tzVar != null) {
            try {
                tzVar2 = this.f28316a.f28349a;
                tzVar2.a(1);
            } catch (RemoteException e) {
                za.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
