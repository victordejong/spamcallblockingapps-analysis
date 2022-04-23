package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/d.class */
public final /* synthetic */ class d implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32608a;

    private d(o oVar) {
        this.f32608a = oVar;
    }

    public static Callable a(o oVar) {
        return new d(oVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f32608a.a();
    }
}
