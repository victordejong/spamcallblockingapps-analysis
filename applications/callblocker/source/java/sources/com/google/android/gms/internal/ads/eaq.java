package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eaq.class */
public final class eaq {

    /* renamed from: a */
    private final String f16180a;

    /* renamed from: b */
    private eal f16181b;

    public eaq(eal ealVar) {
        String str;
        this.f16181b = ealVar;
        try {
            str = ealVar.mo7990a();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        this.f16180a = str;
    }

    public final String toString() {
        return this.f16180a;
    }
}
