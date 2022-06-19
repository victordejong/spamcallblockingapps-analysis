package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.AbstractC0325j;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public class C0323i {

    /* renamed from: a */
    private final CopyOnWriteArrayList<C0324a> f1890a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    private final AbstractC0325j f1891b;

    /* renamed from: androidx.fragment.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$a.class */
    public static final class C0324a {

        /* renamed from: a */
        final AbstractC0325j.AbstractC0328f f1892a;

        /* renamed from: b */
        final boolean f1893b;
    }

    public C0323i(AbstractC0325j abstractC0325j) {
        this.f1891b = abstractC0325j;
    }

    /* renamed from: a */
    public void m13267a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13267a(fragment, bundle, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13150a(this.f1891b, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    public void m13266b(Fragment fragment, Context context, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13266b(fragment, context, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13149b(this.f1891b, fragment, context);
            }
        }
    }

    /* renamed from: c */
    public void m13265c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13265c(fragment, bundle, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13148c(this.f1891b, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    public void m13264d(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13264d(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13147d(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: e */
    public void m13263e(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13263e(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13146e(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: f */
    public void m13262f(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13262f(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13145f(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: g */
    public void m13261g(Fragment fragment, Context context, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13261g(fragment, context, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13144g(this.f1891b, fragment, context);
            }
        }
    }

    /* renamed from: h */
    public void m13260h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13260h(fragment, bundle, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13143h(this.f1891b, fragment, bundle);
            }
        }
    }

    /* renamed from: i */
    public void m13259i(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13259i(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13142i(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: j */
    public void m13258j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13258j(fragment, bundle, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13141j(this.f1891b, fragment, bundle);
            }
        }
    }

    /* renamed from: k */
    public void m13257k(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13257k(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13140k(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: l */
    public void m13256l(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13256l(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13139l(this.f1891b, fragment);
            }
        }
    }

    /* renamed from: m */
    public void m13255m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13255m(fragment, view, bundle, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13138m(this.f1891b, fragment, view, bundle);
            }
        }
    }

    /* renamed from: n */
    public void m13254n(Fragment fragment, boolean z) {
        Fragment m13183j0 = this.f1891b.m13183j0();
        if (m13183j0 != null) {
            m13183j0.H().m13185i0().m13254n(fragment, true);
        }
        Iterator<C0324a> it = this.f1890a.iterator();
        while (it.hasNext()) {
            C0324a next = it.next();
            if (!z || next.f1893b) {
                next.f1892a.m13137n(this.f1891b, fragment);
            }
        }
    }
}
