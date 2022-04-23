package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/h.class */
public final class h extends ekn {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f28030a;

    private h(f fVar) {
        this.f28030a = fVar;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar) throws RemoteException {
        a(zzvqVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar, int i) throws RemoteException {
        za.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        yq.f28555a.post(new g(this));
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final boolean a() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String b() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String c() throws RemoteException {
        return null;
    }
}
