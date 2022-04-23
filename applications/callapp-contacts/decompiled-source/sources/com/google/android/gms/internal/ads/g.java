package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/g.class */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ h f28003a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar) {
        this.f28003a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eki ekiVar;
        eki ekiVar2;
        ekiVar = this.f28003a.f28030a.f27991a;
        if (ekiVar != null) {
            try {
                ekiVar2 = this.f28003a.f28030a.f27991a;
                ekiVar2.a(1);
            } catch (RemoteException e) {
                za.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
