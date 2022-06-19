package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabk.class */
public final class zabk implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaiy;

    public zabk(GoogleApiManager.zaa zaaVar) {
        this.zaiy = zaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaiy.zabh();
    }
}
