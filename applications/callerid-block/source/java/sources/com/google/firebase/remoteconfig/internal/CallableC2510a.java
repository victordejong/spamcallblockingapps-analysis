package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.firebase.remoteconfig.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/a.class */
public final /* synthetic */ class CallableC2510a implements Callable {

    /* renamed from: a */
    private final C2514e f10787a;

    /* renamed from: b */
    private final C2517f f10788b;

    private CallableC2510a(C2514e c2514e, C2517f c2517f) {
        this.f10787a = c2514e;
        this.f10788b = c2517f;
    }

    /* renamed from: a */
    public static Callable m3279a(C2514e c2514e, C2517f c2517f) {
        return new CallableC2510a(c2514e, c2517f);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Void e;
        e = this.f10787a.f10797b.e(this.f10788b);
        return e;
    }
}
