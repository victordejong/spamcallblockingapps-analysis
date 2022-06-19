package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/h.class */
public final /* synthetic */ class CallableC15909h implements Callable {

    /* renamed from: a */
    private final C15908g f56486a;

    private CallableC15909h(C15908g c15908g) {
        this.f56486a = c15908g;
    }

    /* renamed from: a */
    public static Callable m8089a(C15908g c15908g) {
        return new CallableC15909h(c15908g);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f56486a.m8092a("firebase");
    }
}
