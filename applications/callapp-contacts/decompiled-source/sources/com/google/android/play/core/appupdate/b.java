package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/b.class */
final class b extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31031a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b(Handler handler, p pVar) {
        super(handler);
        this.f31031a = pVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        p pVar;
        int i2 = 1;
        if (i == 1) {
            pVar = this.f31031a;
            i2 = -1;
        } else if (i != 2) {
            pVar = this.f31031a;
        } else {
            pVar = this.f31031a;
            i2 = 0;
        }
        pVar.a((p) Integer.valueOf(i2));
    }
}
