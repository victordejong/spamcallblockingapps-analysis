package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/i.class */
final /* synthetic */ class CallableC2509i implements Callable {

    /* renamed from: a */
    private final C2536k f10778a;

    private CallableC2509i(C2536k kVar) {
        this.f10778a = kVar;
    }

    /* renamed from: a */
    public static Callable m3292a(C2536k kVar) {
        return new CallableC2509i(kVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f10778a.m3173d();
    }
}
