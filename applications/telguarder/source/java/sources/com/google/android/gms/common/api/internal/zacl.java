package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacl.class */
public final class zacl implements Runnable {
    final /* synthetic */ zaco zaa;

    public zacl(zaco zacoVar) {
        this.zaa = zacoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacn zacnVar;
        zacnVar = this.zaa.zah;
        zacnVar.zaa(new ConnectionResult(4));
    }
}
