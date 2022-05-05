package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabj.class */
final class zabj implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaix;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabj(GoogleApiManager.zaa zaaVar) {
        this.zaix = zaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaix.zabg();
    }
}
