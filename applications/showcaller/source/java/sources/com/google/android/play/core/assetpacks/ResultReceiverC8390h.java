package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/h.class */
final class ResultReceiverC8390h extends ResultReceiver {

    /* renamed from: d */
    final /* synthetic */ C8581m f37750d;

    /* renamed from: e */
    final /* synthetic */ C8385f2 f37751e;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C8379e0 c8379e0;
        if (i == 1) {
            this.f37750d.m3311e(-1);
            c8379e0 = this.f37751e.f37721h;
            c8379e0.m3760a(null);
        } else if (i != 2) {
            this.f37750d.m3312d(new AssetPackException(-100));
        } else {
            this.f37750d.m3311e(0);
        }
    }
}
