package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.p356b.HandlerC13148e;
/* renamed from: com.google.android.gms.cloudmessaging.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/y.class */
public final class HandlerC11802y extends HandlerC13148e {

    /* renamed from: a */
    private final /* synthetic */ C11779b f39147a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC11802y(C11779b c11779b, Looper looper) {
        super(looper);
        this.f39147a = c11779b;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        C11779b.m19502a(this.f39147a, message);
    }
}
