package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.BackgroundDetector;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabg.class */
final class zabg implements BackgroundDetector.BackgroundStateChangeListener {
    final /* synthetic */ GoogleApiManager zaa;

    public zabg(GoogleApiManager googleApiManager) {
        this.zaa = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.zaa.zat;
        handler2 = this.zaa.zat;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
