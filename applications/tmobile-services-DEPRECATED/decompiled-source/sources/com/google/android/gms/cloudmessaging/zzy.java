package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.cloudmessaging.zze;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzy.class */
public final class zzy extends zze {

    /* renamed from: a */
    private final /* synthetic */ Rpc f6961a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzy(Rpc rpc, Looper looper) {
        super(looper);
        this.f6961a = rpc;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f6961a.m15126g(message);
    }
}
