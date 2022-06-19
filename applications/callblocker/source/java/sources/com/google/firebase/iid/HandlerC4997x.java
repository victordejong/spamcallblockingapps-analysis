package com.google.firebase.iid;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.p140g.HandlerC3738e;
/* renamed from: com.google.firebase.iid.x */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/x.class */
public final class HandlerC4997x extends HandlerC3738e {

    /* renamed from: a */
    private final /* synthetic */ C4994u f21192a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC4997x(C4994u c4994u, Looper looper) {
        super(looper);
        this.f21192a = c4994u;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f21192a.m1905a(message);
    }
}
