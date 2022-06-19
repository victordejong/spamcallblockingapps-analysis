package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.internal.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/b.class */
public final /* synthetic */ class CallableC15914b implements Callable {

    /* renamed from: a */
    private final C15911a f56502a;

    /* renamed from: b */
    private final C15918f f56503b;

    private CallableC15914b(C15911a c15911a, C15918f c15918f) {
        this.f56502a = c15911a;
        this.f56503b = c15918f;
    }

    /* renamed from: a */
    public static Callable m8073a(C15911a c15911a, C15918f c15918f) {
        return new CallableC15914b(c15911a, c15918f);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void m8038a;
        m8038a = this.f56502a.f56498a.m8038a(this.f56503b);
        return m8038a;
    }
}
