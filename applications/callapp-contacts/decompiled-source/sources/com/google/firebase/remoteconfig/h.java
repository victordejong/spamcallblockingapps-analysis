package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/h.class */
public final /* synthetic */ class h implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final g f32592a;

    private h(g gVar) {
        this.f32592a = gVar;
    }

    public static Callable a(g gVar) {
        return new h(gVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f32592a.a("firebase");
    }
}
