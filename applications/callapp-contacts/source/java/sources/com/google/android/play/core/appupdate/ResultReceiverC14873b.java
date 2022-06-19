package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/b.class */
final class ResultReceiverC14873b extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C15192p f54304a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResultReceiverC14873b(Handler handler, C15192p c15192p) {
        super(handler);
        this.f54304a = c15192p;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C15192p c15192p;
        int i2;
        if (i == 1) {
            c15192p = this.f54304a;
            i2 = -1;
        } else if (i != 2) {
            c15192p = this.f54304a;
            i2 = 1;
        } else {
            c15192p = this.f54304a;
            i2 = 0;
        }
        c15192p.m9323a((C15192p) Integer.valueOf(i2));
    }
}
