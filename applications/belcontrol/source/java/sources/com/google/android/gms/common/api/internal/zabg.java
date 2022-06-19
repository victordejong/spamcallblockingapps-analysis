package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabg.class */
public final class zabg implements Runnable {
    private final /* synthetic */ zabh zaa;

    public zabg(zabh zabhVar) {
        this.zaa = zabhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiManager.zaa.zac(this.zaa.zaa).disconnect(String.valueOf(GoogleApiManager.zaa.zab(this.zaa.zaa).getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
