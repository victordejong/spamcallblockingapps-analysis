package android.support.v4.view.a;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final d f202a;

    /* renamed from: android.support.v4.view.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/a$a.class */
    static class C0012a extends c {
        C0012a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/a$b.class */
    static final class b extends C0012a {
        b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/a$c.class */
    static class c implements d {
        c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/a$d.class */
    interface d {
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f202a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f202a = new C0012a();
        } else {
            f202a = new c();
        }
    }

    public static f a(AccessibilityEvent accessibilityEvent) {
        return new f(accessibilityEvent);
    }
}
