package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.review.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/b.class */
final class ResultReceiverC15096b extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C15192p f54825a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultReceiverC15096b(Handler handler, C15192p c15192p) {
        super(handler);
        this.f54825a = c15192p;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        this.f54825a.m9323a((C15192p) null);
    }
}
