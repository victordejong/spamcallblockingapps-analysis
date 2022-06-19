package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabf.class */
public final class zabf implements Runnable {
    private final /* synthetic */ int zaa;
    private final /* synthetic */ GoogleApiManager.zaa zab;

    public zabf(GoogleApiManager.zaa zaaVar, int i) {
        this.zab = zaaVar;
        this.zaa = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiManager.zaa.zaa(this.zab, this.zaa);
    }
}
