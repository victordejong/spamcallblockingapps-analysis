package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/i.class */
final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ j f28058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(j jVar) {
        this.f28058a = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eki ekiVar;
        eki ekiVar2;
        ekiVar = this.f28058a.f28071a;
        if (ekiVar != null) {
            try {
                ekiVar2 = this.f28058a.f28071a;
                ekiVar2.a(1);
            } catch (RemoteException e) {
                za.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
