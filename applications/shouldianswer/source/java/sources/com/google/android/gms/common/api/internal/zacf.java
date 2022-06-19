package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacf.class */
public final class zacf implements Runnable {
    private final /* synthetic */ zace zakk;

    public zacf(zace zaceVar) {
        this.zakk = zaceVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zach zachVar;
        zachVar = this.zakk.zakj;
        zachVar.zag(new ConnectionResult(4));
    }
}
