package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.g;
import android.support.v4.view.h;
import android.view.LayoutInflater;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final a f229a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/f$a.class */
    interface a {
        void a(LayoutInflater layoutInflater, i iVar);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/f$b.class */
    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.f.a
        public void a(LayoutInflater layoutInflater, i iVar) {
            layoutInflater.setFactory(iVar != null ? new g.a(iVar) : null);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/f$c.class */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.f.b, android.support.v4.view.f.a
        public void a(LayoutInflater layoutInflater, i iVar) {
            h.a aVar = iVar != null ? new h.a(iVar) : null;
            layoutInflater.setFactory2(aVar);
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                h.a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                h.a(layoutInflater, aVar);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/f$d.class */
    static final class d extends c {
        d() {
        }

        @Override // android.support.v4.view.f.c, android.support.v4.view.f.b, android.support.v4.view.f.a
        public final void a(LayoutInflater layoutInflater, i iVar) {
            layoutInflater.setFactory2(iVar != null ? new h.a(iVar) : null);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f229a = new d();
        } else if (i >= 11) {
            f229a = new c();
        } else {
            f229a = new b();
        }
    }

    public static void a(LayoutInflater layoutInflater, i iVar) {
        f229a.a(layoutInflater, iVar);
    }
}
