package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/np.class */
final class np implements InitializationCompleteCallback {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ io f28229a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public np(nn nnVar, io ioVar) {
        this.f28229a = ioVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.f28229a.a(str);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.f28229a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
