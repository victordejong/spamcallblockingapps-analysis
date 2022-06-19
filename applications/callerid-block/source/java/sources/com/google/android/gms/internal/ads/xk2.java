package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xk2.class */
final class xk2 extends Handler {

    /* renamed from: a */
    final /* synthetic */ yk2 f9124a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    xk2(yk2 yk2Var, Looper looper) {
        super(looper);
        this.f9124a = yk2Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f9124a.s(message);
    }
}
