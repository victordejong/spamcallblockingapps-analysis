package com.google.firebase.installations;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/e.class */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32427a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32428b;

    private e(c cVar, boolean z) {
        this.f32427a = cVar;
        this.f32428b = z;
    }

    public static Runnable a(c cVar, boolean z) {
        return new e(cVar, false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32427a.a(this.f32428b);
    }
}
