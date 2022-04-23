package com.google.firebase.components;

import com.google.firebase.d.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/m.class */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32264a;

    /* renamed from: b  reason: collision with root package name */
    private final b f32265b;

    private m(w wVar, b bVar) {
        this.f32264a = wVar;
        this.f32265b = bVar;
    }

    public static Runnable a(w wVar, b bVar) {
        return new m(wVar, bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j.a(this.f32264a, this.f32265b);
    }
}
