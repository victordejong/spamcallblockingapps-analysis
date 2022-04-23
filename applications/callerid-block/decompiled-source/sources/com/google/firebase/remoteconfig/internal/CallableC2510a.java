package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/a.class */
public final /* synthetic */ class CallableC2510a implements Callable {

    /* renamed from: a */
    private final C2514e f10787a;

    /* renamed from: b */
    private final C2517f f10788b;

    private CallableC2510a(C2514e eVar, C2517f fVar) {
        this.f10787a = eVar;
        this.f10788b = fVar;
    }

    /* renamed from: a */
    public static Callable m3279a(C2514e eVar, C2517f fVar) {
        return new CallableC2510a(eVar, fVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Void e;
        e = this.f10787a.f10797b.e(this.f10788b);
        return e;
    }
}
