package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabd.class */
public final class zabd implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaa;

    public zabd(GoogleApiManager.zaa zaaVar) {
        this.zaa = zaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiManager.zaa.zaa(this.zaa);
    }
}
