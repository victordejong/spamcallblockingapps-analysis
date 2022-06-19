package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public final class C1108j {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C1109a> f4366a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    private final FragmentManager f4367b;

    /* renamed from: androidx.fragment.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$a.class */
    public static final class C1109a {

        /* renamed from: a */
        public final FragmentManager.AbstractC1063c f4368a;

        /* renamed from: b */
        final boolean f4369b;

        public C1109a(FragmentManager.AbstractC1063c abstractC1063c, boolean z) {
            this.f4368a = abstractC1063c;
            this.f4369b = z;
        }
    }

    public C1108j(FragmentManager fragmentManager) {
        this.f4367b = fragmentManager;
    }

    /* renamed from: a */
    public final void m43605a(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43605a(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    public final void m43604a(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43604a(fragment, bundle);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    public final void m43603a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43603a(fragment, view, bundle, true);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            C1109a next = it2.next();
            if (!z || next.f4369b) {
                next.f4368a.mo39577a(this.f4367b, fragment, view);
            }
        }
    }

    /* renamed from: a */
    public final void m43602a(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43602a(fragment, true);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            C1109a next = it2.next();
            if (!z || next.f4369b) {
                next.f4368a.mo645a(this.f4367b, fragment);
            }
        }
    }

    /* renamed from: b */
    public final void m43601b(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43601b(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: b */
    public final void m43600b(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43600b(fragment, bundle);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: c */
    public final void m43599c(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43599c(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: c */
    public final void m43598c(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43598c(fragment, bundle);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: d */
    public final void m43597d(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43597d(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: d */
    public final void m43596d(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43596d(fragment, bundle);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: e */
    public final void m43595e(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43595e(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: f */
    public final void m43594f(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43594f(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: g */
    public final void m43593g(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43593g(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: h */
    public final void m43592h(Fragment fragment) {
        Fragment fragment2 = this.f4367b.f4222n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f4218j.m43592h(fragment);
        }
        Iterator<C1109a> it2 = this.f4366a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }
}
