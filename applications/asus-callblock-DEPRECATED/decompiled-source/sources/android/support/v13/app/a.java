package android.support.v13.app;

import android.app.Fragment;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:android/support/v13/app/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final b f14a;

    /* renamed from: android.support.v13.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v13/app/a$a.class */
    static class C0000a implements b {
        C0000a() {
        }

        @Override // android.support.v13.app.a.b
        public void a(Fragment fragment, boolean z) {
        }

        @Override // android.support.v13.app.a.b
        public void b(Fragment fragment, boolean z) {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v13/app/a$b.class */
    interface b {
        void a(Fragment fragment, boolean z);

        void b(Fragment fragment, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v13/app/a$c.class */
    static class c extends C0000a {
        c() {
        }

        @Override // android.support.v13.app.a.C0000a, android.support.v13.app.a.b
        public final void a(Fragment fragment, boolean z) {
            fragment.setMenuVisibility(z);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v13/app/a$d.class */
    static class d extends c {
        d() {
        }

        @Override // android.support.v13.app.a.C0000a, android.support.v13.app.a.b
        public final void b(Fragment fragment, boolean z) {
            fragment.setUserVisibleHint(z);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v13/app/a$e.class */
    static final class e extends d {
        e() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            f14a = new e();
        } else if (Build.VERSION.SDK_INT >= 15) {
            f14a = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f14a = new c();
        } else {
            f14a = new C0000a();
        }
    }

    public static void a(Fragment fragment, boolean z) {
        f14a.a(fragment, z);
    }

    public static void b(Fragment fragment, boolean z) {
        f14a.b(fragment, z);
    }
}
