package androidx.fragment.app;

import androidx.core.e.d;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final h<?> f2287a;

    private f(h<?> hVar) {
        this.f2287a = hVar;
    }

    public static f a(h<?> hVar) {
        return new f((h) d.a(hVar, "callbacks == null"));
    }

    public final void a() {
        this.f2287a.e.i();
    }

    public final boolean b() {
        return this.f2287a.e.a(true);
    }
}
