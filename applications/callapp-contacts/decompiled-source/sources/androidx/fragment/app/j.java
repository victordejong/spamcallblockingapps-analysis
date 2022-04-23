package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList<a> f2296a = new CopyOnWriteArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final FragmentManager f2297b;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final FragmentManager.c f2298a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f2299b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(FragmentManager.c cVar, boolean z) {
            this.f2298a = cVar;
            this.f2299b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(FragmentManager fragmentManager) {
        this.f2297b = fragmentManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.a(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.a(fragment, bundle);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.a(fragment, view, bundle, true);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f2299b) {
                next.f2298a.a(this.f2297b, fragment, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.a(fragment, true);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f2299b) {
                next.f2298a.a(this.f2297b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.b(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.b(fragment, bundle);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.c(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.c(fragment, bundle);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.d(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(Fragment fragment, Bundle bundle) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.d(fragment, bundle);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.e(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.f(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.g(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(Fragment fragment) {
        Fragment fragment2 = this.f2297b.n;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().j.h(fragment);
        }
        Iterator<a> it2 = this.f2296a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }
}
