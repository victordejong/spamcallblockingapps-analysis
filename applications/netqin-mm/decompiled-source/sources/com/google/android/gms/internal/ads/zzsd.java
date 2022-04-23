package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsd.class */
public final class zzsd extends zzsp {

    /* renamed from: a */
    public final FullScreenContentCallback f28952a;

    public zzsd(FullScreenContentCallback fullScreenContentCallback) {
        this.f28952a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: Z0 */
    public final void mo11464Z0() throws RemoteException {
        this.f28952a.mo18118b();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: f */
    public final void mo11463f(zzva zzvaVar) throws RemoteException {
        this.f28952a.mo18119a(zzvaVar.m11207f());
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: k1 */
    public final void mo11462k1() throws RemoteException {
        this.f28952a.mo18120a();
    }
}
