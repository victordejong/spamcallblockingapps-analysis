package android.support.v4.a.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final b f18a;

    /* renamed from: android.support.v4.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$a.class */
    static class C0001a implements b {
        C0001a() {
        }

        @Override // android.support.v4.a.a.a.b
        public void a(Drawable drawable, int i) {
            if (drawable instanceof k) {
                ((k) drawable).setTint(i);
            }
        }

        @Override // android.support.v4.a.a.a.b
        public boolean a(Drawable drawable) {
            return false;
        }

        @Override // android.support.v4.a.a.a.b
        public Drawable b(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (!(drawable instanceof k)) {
                drawable2 = new android.support.v4.a.a.c(drawable);
            }
            return drawable2;
        }

        @Override // android.support.v4.a.a.a.b
        public void b(Drawable drawable, int i) {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$b.class */
    interface b {
        void a(Drawable drawable, int i);

        boolean a(Drawable drawable);

        Drawable b(Drawable drawable);

        void b(Drawable drawable, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$c.class */
    static class c extends C0001a {
        c() {
        }

        @Override // android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public Drawable b(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (!(drawable instanceof k)) {
                drawable2 = new android.support.v4.a.a.d(drawable);
            }
            return drawable2;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$d.class */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.a.a.a.c, android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public Drawable b(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (!(drawable instanceof k)) {
                drawable2 = new android.support.v4.a.a.e(drawable);
            }
            return drawable2;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$e.class */
    static class e extends d {
        e() {
        }

        @Override // android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public void b(Drawable drawable, int i) {
            if (!android.support.v4.a.a.b.f20b) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    android.support.v4.a.a.b.f19a = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("DrawableCompatJellybeanMr1", "Failed to retrieve setLayoutDirection(int) method", e);
                }
                android.support.v4.a.a.b.f20b = true;
            }
            if (android.support.v4.a.a.b.f19a != null) {
                try {
                    android.support.v4.a.a.b.f19a.invoke(drawable, Integer.valueOf(i));
                } catch (Exception e2) {
                    Log.i("DrawableCompatJellybeanMr1", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                    android.support.v4.a.a.b.f19a = null;
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$f.class */
    static class f extends e {
        f() {
        }

        @Override // android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public final boolean a(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        @Override // android.support.v4.a.a.a.d, android.support.v4.a.a.a.c, android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public Drawable b(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (!(drawable instanceof k)) {
                drawable2 = new android.support.v4.a.a.f(drawable);
            }
            return drawable2;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$g.class */
    static class g extends f {
        g() {
        }

        @Override // android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public final void a(Drawable drawable, int i) {
            drawable.setTint(i);
        }

        @Override // android.support.v4.a.a.a.f, android.support.v4.a.a.a.d, android.support.v4.a.a.a.c, android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public Drawable b(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (!(drawable instanceof k)) {
                drawable2 = new android.support.v4.a.a.g(drawable);
            }
            return drawable2;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/a$h.class */
    static final class h extends g {
        h() {
        }

        @Override // android.support.v4.a.a.a.g, android.support.v4.a.a.a.f, android.support.v4.a.a.a.d, android.support.v4.a.a.a.c, android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public final Drawable b(Drawable drawable) {
            return drawable;
        }

        @Override // android.support.v4.a.a.a.e, android.support.v4.a.a.a.C0001a, android.support.v4.a.a.a.b
        public final void b(Drawable drawable, int i) {
            drawable.setLayoutDirection(i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            f18a = new h();
        } else if (i >= 21) {
            f18a = new g();
        } else if (i >= 19) {
            f18a = new f();
        } else if (i >= 17) {
            f18a = new e();
        } else if (i >= 11) {
            f18a = new d();
        } else if (i >= 5) {
            f18a = new c();
        } else {
            f18a = new C0001a();
        }
    }

    public static void a(Drawable drawable, int i) {
        f18a.a(drawable, i);
    }

    public static boolean a(Drawable drawable) {
        return f18a.a(drawable);
    }

    public static Drawable b(Drawable drawable) {
        return f18a.b(drawable);
    }

    public static void b(Drawable drawable, int i) {
        f18a.b(drawable, i);
    }
}
