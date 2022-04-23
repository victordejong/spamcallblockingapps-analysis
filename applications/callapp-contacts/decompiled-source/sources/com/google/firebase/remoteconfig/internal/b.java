package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/b.class */
public final /* synthetic */ class b implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final a f32603a;

    /* renamed from: b  reason: collision with root package name */
    private final f f32604b;

    private b(a aVar, f fVar) {
        this.f32603a = aVar;
        this.f32604b = fVar;
    }

    public static Callable a(a aVar, f fVar) {
        return new b(aVar, fVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void a2;
        a2 = this.f32603a.f32599a.a(this.f32604b);
        return a2;
    }
}
