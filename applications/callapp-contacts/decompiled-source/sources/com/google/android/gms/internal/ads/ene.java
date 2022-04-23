package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ene.class */
public final class ene extends elx {

    /* renamed from: a  reason: collision with root package name */
    final String f27981a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27982b;

    public ene(String str, String str2) {
        this.f27982b = str;
        this.f27981a = str2;
    }

    @Override // com.google.android.gms.internal.ads.ely
    public final String a() throws RemoteException {
        return this.f27982b;
    }

    @Override // com.google.android.gms.internal.ads.ely
    public final String b() throws RemoteException {
        return this.f27981a;
    }
}
