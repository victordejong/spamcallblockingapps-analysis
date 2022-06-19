package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* renamed from: com.google.android.gms.internal.ads.np */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/np.class */
final class C12777np implements InitializationCompleteCallback {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12640io f49593a;

    public C12777np(BinderC12775nn binderC12775nn, AbstractC12640io abstractC12640io) {
        this.f49593a = abstractC12640io;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.f49593a.mo14596a(str);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.f49593a.mo14597a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
