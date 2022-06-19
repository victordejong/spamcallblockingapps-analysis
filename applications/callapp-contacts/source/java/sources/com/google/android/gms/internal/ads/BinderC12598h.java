package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/h.class */
public final class BinderC12598h extends ekn {

    /* renamed from: a */
    final /* synthetic */ BinderC12544f f49336a;

    /* JADX INFO: Access modifiers changed from: private */
    public BinderC12598h(BinderC12544f binderC12544f) {
        this.f49336a = binderC12544f;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14627a(zzvq zzvqVar) throws RemoteException {
        mo14626a(zzvqVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14626a(zzvq zzvqVar, int i) throws RemoteException {
        C13088za.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        C13077yq.f50094a.post(new RunnableC12571g(this));
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final boolean mo14628a() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: b */
    public final String mo14625b() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: c */
    public final String mo14624c() throws RemoteException {
        return null;
    }
}
