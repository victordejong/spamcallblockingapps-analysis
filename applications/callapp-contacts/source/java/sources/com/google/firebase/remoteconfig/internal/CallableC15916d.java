package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.internal.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/d.class */
public final /* synthetic */ class CallableC15916d implements Callable {

    /* renamed from: a */
    private final C15931o f56507a;

    private CallableC15916d(C15931o c15931o) {
        this.f56507a = c15931o;
    }

    /* renamed from: a */
    public static Callable m8071a(C15931o c15931o) {
        return new CallableC15916d(c15931o);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f56507a.m8040a();
    }
}
