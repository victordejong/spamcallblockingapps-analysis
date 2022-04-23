package com.google.firebase.installations;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/g.class */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32430a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32431b;

    private g(c cVar, boolean z) {
        this.f32430a = cVar;
        this.f32431b = z;
    }

    public static Runnable a(c cVar, boolean z) {
        return new g(cVar, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        c.a(this.f32430a, this.f32431b);
    }
}
