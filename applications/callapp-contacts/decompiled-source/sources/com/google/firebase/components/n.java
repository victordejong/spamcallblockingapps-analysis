package com.google.firebase.components;

import com.google.firebase.d.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/n.class */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f32266a;

    /* renamed from: b  reason: collision with root package name */
    private final b f32267b;

    private n(v vVar, b bVar) {
        this.f32266a = vVar;
        this.f32267b = bVar;
    }

    public static Runnable a(v vVar, b bVar) {
        return new n(vVar, bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32266a.a(this.f32267b);
    }
}
