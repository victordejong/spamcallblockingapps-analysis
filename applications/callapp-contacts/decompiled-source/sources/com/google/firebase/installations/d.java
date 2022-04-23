package com.google.firebase.installations;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/d.class */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f32426a;

    private d(c cVar) {
        this.f32426a = cVar;
    }

    public static Runnable a(c cVar) {
        return new d(cVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32426a.a(false);
    }
}
