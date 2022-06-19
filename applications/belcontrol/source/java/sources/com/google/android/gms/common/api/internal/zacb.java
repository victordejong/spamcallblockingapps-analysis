package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacb.class */
public final class zacb implements Runnable {
    private final /* synthetic */ zacc zaa;

    public zacb(zacc zaccVar) {
        this.zaa = zaccVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacc.zaa(this.zaa).zaa(new ConnectionResult(4));
    }
}
