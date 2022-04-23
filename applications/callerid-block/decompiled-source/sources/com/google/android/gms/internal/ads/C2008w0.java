package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.w0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/w0.class */
public final class C2008w0 {

    /* renamed from: a */
    private final String f8966a;

    /* renamed from: b */
    private final AbstractC1987v0 f8967b;

    public C2008w0(AbstractC1987v0 v0Var) {
        String str;
        this.f8967b = v0Var;
        try {
            str = v0Var.m5325a();
        } catch (RemoteException e) {
            C1894po.m6182d("", e);
            str = null;
        }
        this.f8966a = str;
    }

    public final String toString() {
        return this.f8966a;
    }
}
