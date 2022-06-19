package p1727n3.p1859r.p1860a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1829l0.p1830a.C26648b;
/* renamed from: n3.r.a.w */
/* loaded from: classes-dex2jar.jar:n3/r/a/w.class */
public class C26971w {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C26972a> f75477a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    public final FragmentManager f75478b;

    /* renamed from: n3.r.a.w$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/w$a.class */
    public static final class C26972a {

        /* renamed from: a */
        public final FragmentManager.AbstractC0174k f75479a;

        /* renamed from: b */
        public final boolean f75480b;

        public C26972a(FragmentManager.AbstractC0174k abstractC0174k, boolean z) {
            this.f75479a = abstractC0174k;
            this.f75480b = z;
        }
    }

    public C26971w(FragmentManager fragmentManager) {
        this.f75478b = fragmentManager;
    }

    /* renamed from: a */
    public void m1045a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1045a(fragment, bundle, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: b */
    public void m1044b(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f75478b;
        Context context = fragmentManager.f854q.f75444b;
        Fragment fragment2 = fragmentManager.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1044b(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: c */
    public void m1043c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1043c(fragment, bundle, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: d */
    public void m1042d(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1042d(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: e */
    public void m1041e(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1041e(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: f */
    public void m1040f(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1040f(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: g */
    public void m1039g(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f75478b;
        Context context = fragmentManager.f854q.f75444b;
        Fragment fragment2 = fragmentManager.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1039g(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: h */
    public void m1038h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1038h(fragment, bundle, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: i */
    public void m1037i(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1037i(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: j */
    public void m1036j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1036j(fragment, bundle, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: k */
    public void m1035k(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1035k(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: l */
    public void m1034l(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1034l(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }

    /* renamed from: m */
    public void m1033m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1033m(fragment, view, bundle, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                FragmentManager.AbstractC0174k abstractC0174k = next.f75479a;
                FragmentManager fragmentManager = this.f75478b;
                C26648b c26648b = (C26648b) abstractC0174k;
                if (fragment == c26648b.f74588a) {
                    C26971w c26971w = fragmentManager.f851n;
                    synchronized (c26971w.f75477a) {
                        int i = 0;
                        int size = c26971w.f75477a.size();
                        while (true) {
                            if (i >= size) {
                                break;
                            } else if (c26971w.f75477a.get(i).f75479a == c26648b) {
                                c26971w.f75477a.remove(i);
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    c26648b.f74590c.m42632e(view, c26648b.f74589b);
                } else {
                    continue;
                }
            }
        }
    }

    /* renamed from: n */
    public void m1032n(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f75478b.f856s;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f851n.m1032n(fragment, true);
        }
        Iterator<C26972a> it = this.f75477a.iterator();
        while (it.hasNext()) {
            C26972a next = it.next();
            if (!z || next.f75480b) {
                Objects.requireNonNull(next.f75479a);
            }
        }
    }
}
