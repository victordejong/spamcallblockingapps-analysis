package android.support.v4.view.a;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.a.d;
import android.support.v4.view.a.e;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/a/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final a f209b;

    /* renamed from: a  reason: collision with root package name */
    public final Object f210a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/c$a.class */
    interface a {
        Object a(c cVar);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/c$b.class */
    static final class b extends d {
        b() {
        }

        @Override // android.support.v4.view.a.c.d, android.support.v4.view.a.c.a
        public final Object a(final c cVar) {
            final d.a aVar = new d.a() { // from class: android.support.v4.view.a.c.b.1
                @Override // android.support.v4.view.a.d.a
                public final boolean a() {
                    return c.b();
                }

                @Override // android.support.v4.view.a.d.a
                public final List<Object> b() {
                    c.c();
                    new ArrayList();
                    throw new NullPointerException();
                }

                @Override // android.support.v4.view.a.d.a
                public final Object c() {
                    c.a();
                    return null;
                }
            };
            return new AccessibilityNodeProvider() { // from class: android.support.v4.view.a.d.1
                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                    aVar.c();
                    return null;
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
                    return aVar.b();
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final boolean performAction(int i, int i2, Bundle bundle) {
                    return aVar.a();
                }
            };
        }
    }

    /* renamed from: android.support.v4.view.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/c$c.class */
    static final class C0014c extends d {
        C0014c() {
        }

        @Override // android.support.v4.view.a.c.d, android.support.v4.view.a.c.a
        public final Object a(final c cVar) {
            final e.a aVar = new e.a() { // from class: android.support.v4.view.a.c.c.1
                @Override // android.support.v4.view.a.e.a
                public final boolean a() {
                    return c.b();
                }

                @Override // android.support.v4.view.a.e.a
                public final List<Object> b() {
                    c.c();
                    new ArrayList();
                    throw new NullPointerException();
                }

                @Override // android.support.v4.view.a.e.a
                public final Object c() {
                    c.a();
                    return null;
                }

                @Override // android.support.v4.view.a.e.a
                public final Object d() {
                    c.d();
                    return null;
                }
            };
            return new AccessibilityNodeProvider() { // from class: android.support.v4.view.a.e.1
                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                    aVar.c();
                    return null;
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
                    return aVar.b();
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final AccessibilityNodeInfo findFocus(int i) {
                    aVar.d();
                    return null;
                }

                @Override // android.view.accessibility.AccessibilityNodeProvider
                public final boolean performAction(int i, int i2, Bundle bundle) {
                    return aVar.a();
                }
            };
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/c$d.class */
    static class d implements a {
        d() {
        }

        @Override // android.support.v4.view.a.c.a
        public Object a(c cVar) {
            return null;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f209b = new C0014c();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f209b = new b();
        } else {
            f209b = new d();
        }
    }

    public c() {
        this.f210a = f209b.a(this);
    }

    public c(Object obj) {
        this.f210a = obj;
    }

    public static android.support.v4.view.a.b a() {
        return null;
    }

    public static boolean b() {
        return false;
    }

    public static List<android.support.v4.view.a.b> c() {
        return null;
    }

    public static android.support.v4.view.a.b d() {
        return null;
    }
}
