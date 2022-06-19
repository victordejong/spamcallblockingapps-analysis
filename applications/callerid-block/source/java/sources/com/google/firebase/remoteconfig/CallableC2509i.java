package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/i.class */
public final /* synthetic */ class CallableC2509i implements Callable {

    /* renamed from: a */
    private final C2536k f10778a;

    private CallableC2509i(C2536k c2536k) {
        this.f10778a = c2536k;
    }

    /* renamed from: a */
    public static Callable m3292a(C2536k c2536k) {
        return new CallableC2509i(c2536k);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f10778a.m3173d();
    }
}
