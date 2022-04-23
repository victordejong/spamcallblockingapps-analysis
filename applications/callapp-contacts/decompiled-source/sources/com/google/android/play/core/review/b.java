package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/b.class */
final class b extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31410a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Handler handler, p pVar) {
        super(handler);
        this.f31410a = pVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        this.f31410a.a((p) null);
    }
}
