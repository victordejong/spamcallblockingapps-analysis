package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.kb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kb.class */
public final class HandlerC6658kb extends Handler {

    /* renamed from: a */
    final /* synthetic */ C6695lb f25095a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6658kb(C6695lb c6695lb, Looper looper) {
        super(looper);
        this.f25095a = c6695lb;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f25095a.m13613b(message);
    }
}
