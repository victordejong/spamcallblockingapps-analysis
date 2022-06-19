package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.appupdate.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/appupdate/b.class */
final class ResultReceiverC8356b extends ResultReceiver {

    /* renamed from: d */
    final /* synthetic */ C8581m f37645d;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C8581m c8581m;
        int i2;
        if (i == 1) {
            c8581m = this.f37645d;
            i2 = -1;
        } else if (i != 2) {
            c8581m = this.f37645d;
            i2 = 1;
        } else {
            c8581m = this.f37645d;
            i2 = 0;
        }
        c8581m.m3311e(Integer.valueOf(i2));
    }
}
