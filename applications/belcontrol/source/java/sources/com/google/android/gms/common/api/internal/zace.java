package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zam;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zace.class */
public final class zace implements Runnable {
    private final /* synthetic */ zam zaa;
    private final /* synthetic */ zacc zab;

    public zace(zacc zaccVar, zam zamVar) {
        this.zab = zaccVar;
        this.zaa = zamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacc.zaa(this.zab, this.zaa);
    }
}
