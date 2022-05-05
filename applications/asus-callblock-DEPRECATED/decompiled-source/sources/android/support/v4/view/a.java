package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.a.c;
import android.support.v4.view.b;
import android.support.v4.view.c;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/a.class */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final b f200b;
    private static final Object c;

    /* renamed from: a  reason: collision with root package name */
    final Object f201a = f200b.a(this);

    /* renamed from: android.support.v4.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a$a.class */
    static class C0011a extends d {
        C0011a() {
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final Object a() {
            return new View.AccessibilityDelegate();
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public Object a(final a aVar) {
            final b.a aVar2 = new b.a() { // from class: android.support.v4.view.a.a.1
                @Override // android.support.v4.view.b.a
                public final void a(View view, int i) {
                    a.a(view, i);
                }

                @Override // android.support.v4.view.b.a
                public final void a(View view, Object obj) {
                    aVar.a(view, new android.support.v4.view.a.b(obj));
                }

                @Override // android.support.v4.view.b.a
                public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.b(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public final void b(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.d(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public final void c(View view, AccessibilityEvent accessibilityEvent) {
                    a.c(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.b.a
                public final void d(View view, AccessibilityEvent accessibilityEvent) {
                    a.a(view, accessibilityEvent);
                }
            };
            return new View.AccessibilityDelegate() { // from class: android.support.v4.view.b.1
                @Override // android.view.View.AccessibilityDelegate
                public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar2.a(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.b(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    aVar2.a(view, accessibilityNodeInfo);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.c(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar2.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void sendAccessibilityEvent(View view, int i) {
                    aVar2.a(view, i);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.d(view, accessibilityEvent);
                }
            };
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final void a(Object obj, View view, int i) {
            ((View.AccessibilityDelegate) obj).sendAccessibilityEvent(view, i);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final void a(Object obj, View view, android.support.v4.view.a.b bVar) {
            ((View.AccessibilityDelegate) obj).onInitializeAccessibilityNodeInfo(view, (AccessibilityNodeInfo) bVar.f206b);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return ((View.AccessibilityDelegate) obj).dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return ((View.AccessibilityDelegate) obj).onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            ((View.AccessibilityDelegate) obj).onInitializeAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            ((View.AccessibilityDelegate) obj).onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            ((View.AccessibilityDelegate) obj).sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a$b.class */
    public interface b {
        c a(Object obj, View view);

        Object a();

        Object a(a aVar);

        void a(Object obj, View view, int i);

        void a(Object obj, View view, android.support.v4.view.a.b bVar);

        boolean a(Object obj, View view, int i, Bundle bundle);

        boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent);

        boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void b(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void c(Object obj, View view, AccessibilityEvent accessibilityEvent);

        void d(Object obj, View view, AccessibilityEvent accessibilityEvent);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a$c.class */
    static final class c extends C0011a {
        c() {
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final android.support.v4.view.a.c a(Object obj, View view) {
            AccessibilityNodeProvider accessibilityNodeProvider = ((View.AccessibilityDelegate) obj).getAccessibilityNodeProvider(view);
            return accessibilityNodeProvider != null ? new android.support.v4.view.a.c(accessibilityNodeProvider) : null;
        }

        @Override // android.support.v4.view.a.C0011a, android.support.v4.view.a.d, android.support.v4.view.a.b
        public final Object a(final a aVar) {
            final c.a aVar2 = new c.a() { // from class: android.support.v4.view.a.c.1
                @Override // android.support.v4.view.c.a
                public final Object a(View view) {
                    android.support.v4.view.a.c a2 = a.a(view);
                    return a2 != null ? a2.f210a : null;
                }

                @Override // android.support.v4.view.c.a
                public final void a(View view, int i) {
                    a.a(view, i);
                }

                @Override // android.support.v4.view.c.a
                public final void a(View view, Object obj) {
                    aVar.a(view, new android.support.v4.view.a.b(obj));
                }

                @Override // android.support.v4.view.c.a
                public final boolean a(View view, int i, Bundle bundle) {
                    return aVar.a(view, i, bundle);
                }

                @Override // android.support.v4.view.c.a
                public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.b(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public final void b(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.d(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public final void c(View view, AccessibilityEvent accessibilityEvent) {
                    a.c(view, accessibilityEvent);
                }

                @Override // android.support.v4.view.c.a
                public final void d(View view, AccessibilityEvent accessibilityEvent) {
                    a.a(view, accessibilityEvent);
                }
            };
            return new View.AccessibilityDelegate() { // from class: android.support.v4.view.c.1
                @Override // android.view.View.AccessibilityDelegate
                public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar2.a(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                    return (AccessibilityNodeProvider) aVar2.a(view);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.b(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    aVar2.a(view, accessibilityNodeInfo);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.c(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar2.a(viewGroup, view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                    return aVar2.a(view, i, bundle);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void sendAccessibilityEvent(View view, int i) {
                    aVar2.a(view, i);
                }

                @Override // android.view.View.AccessibilityDelegate
                public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    aVar2.d(view, accessibilityEvent);
                }
            };
        }

        @Override // android.support.v4.view.a.d, android.support.v4.view.a.b
        public final boolean a(Object obj, View view, int i, Bundle bundle) {
            return ((View.AccessibilityDelegate) obj).performAccessibilityAction(view, i, bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a$d.class */
    static class d implements b {
        d() {
        }

        @Override // android.support.v4.view.a.b
        public android.support.v4.view.a.c a(Object obj, View view) {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public Object a(a aVar) {
            return null;
        }

        @Override // android.support.v4.view.a.b
        public void a(Object obj, View view, int i) {
        }

        @Override // android.support.v4.view.a.b
        public void a(Object obj, View view, android.support.v4.view.a.b bVar) {
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, View view, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, View view, AccessibilityEvent accessibilityEvent) {
            return false;
        }

        @Override // android.support.v4.view.a.b
        public boolean a(Object obj, ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        @Override // android.support.v4.view.a.b
        public void b(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.a.b
        public void c(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.v4.view.a.b
        public void d(Object obj, View view, AccessibilityEvent accessibilityEvent) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f200b = new c();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f200b = new C0011a();
        } else {
            f200b = new d();
        }
        c = f200b.a();
    }

    public static android.support.v4.view.a.c a(View view) {
        return f200b.a(c, view);
    }

    public static void a(View view, int i) {
        f200b.a(c, view, i);
    }

    public static void a(View view, AccessibilityEvent accessibilityEvent) {
        f200b.d(c, view, accessibilityEvent);
    }

    public static void c(View view, AccessibilityEvent accessibilityEvent) {
        f200b.c(c, view, accessibilityEvent);
    }

    public void a(View view, android.support.v4.view.a.b bVar) {
        f200b.a(c, view, bVar);
    }

    public boolean a(View view, int i, Bundle bundle) {
        return f200b.a(c, view, i, bundle);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return f200b.a(c, viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityEvent) {
        return f200b.a(c, view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        f200b.b(c, view, accessibilityEvent);
    }
}
