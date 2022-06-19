package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
import p078c.p084c.p085a.p086a.p088b.p090b.HandlerC1845e;
/* renamed from: com.google.android.gms.cloudmessaging.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/y.class */
public final class HandlerC5979y extends HandlerC1845e {

    /* renamed from: a */
    private final /* synthetic */ C5956b f19143a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC5979y(C5956b c5956b, Looper looper) {
        super(looper);
        this.f19143a = c5956b;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f19143a.m17537g(message);
    }
}
