package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.internal.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/c.class */
final /* synthetic */ class CallableC2512c implements Callable {

    /* renamed from: a */
    private final o f10792a;

    private CallableC2512c(o oVar) {
        this.f10792a = oVar;
    }

    /* renamed from: a */
    public static Callable m3277a(o oVar) {
        return new CallableC2512c(oVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f10792a.d();
    }
}
