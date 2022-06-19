package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.AbstractC1197a;
import java.util.ArrayList;
@Deprecated
/* renamed from: androidx.fragment.app.q */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public abstract class AbstractC0752q extends AbstractC1197a {

    /* renamed from: c */
    private final FragmentManager f3538c;

    /* renamed from: d */
    private final int f3539d;

    /* renamed from: e */
    private AbstractC0754s f3540e;

    /* renamed from: f */
    private ArrayList<Fragment.SavedState> f3541f;

    /* renamed from: g */
    private ArrayList<Fragment> f3542g;

    /* renamed from: h */
    private Fragment f3543h;

    /* renamed from: i */
    private boolean f3544i;

    @Deprecated
    public AbstractC0752q(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public AbstractC0752q(FragmentManager fragmentManager, int i) {
        this.f3540e = null;
        this.f3541f = new ArrayList<>();
        this.f3542g = new ArrayList<>();
        this.f3543h = null;
        this.f3538c = fragmentManager;
        this.f3539d = i;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: b */
    public void mo27516b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f3540e == null) {
            this.f3540e = this.f3538c.m32776l();
        }
        while (this.f3541f.size() <= i) {
            this.f3541f.add(null);
        }
        this.f3541f.set(i, fragment.m32917k0() ? this.f3538c.m32783i1(fragment) : null);
        this.f3542g.set(i, null);
        this.f3540e.mo32496o(fragment);
        if (fragment.equals(this.f3543h)) {
            this.f3543h = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: d */
    public void mo30712d(ViewGroup viewGroup) {
        AbstractC0754s abstractC0754s = this.f3540e;
        if (abstractC0754s != null) {
            if (!this.f3544i) {
                try {
                    this.f3544i = true;
                    abstractC0754s.mo32500k();
                } finally {
                    this.f3544i = false;
                }
            }
            this.f3540e = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: j */
    public Object mo27515j(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f3542g.size() <= i || (fragment = this.f3542g.get(i)) == null) {
            if (this.f3540e == null) {
                this.f3540e = this.f3538c.m32776l();
            }
            Fragment mo25080v = mo25080v(i);
            if (this.f3541f.size() > i && (savedState = this.f3541f.get(i)) != null) {
                mo25080v.m32964O1(savedState);
            }
            while (this.f3542g.size() <= i) {
                this.f3542g.add(null);
            }
            mo25080v.m32961P1(false);
            if (this.f3539d == 0) {
                mo25080v.mo26766V1(false);
            }
            this.f3542g.set(i, mo25080v);
            this.f3540e.m32509b(viewGroup.getId(), mo25080v);
            if (this.f3539d == 1) {
                this.f3540e.mo32493r(mo25080v, Lifecycle.State.STARTED);
            }
            return mo25080v;
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: k */
    public boolean mo27514k(View view, Object obj) {
        return ((Fragment) obj).m32928f0() == view;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: n */
    public void mo27513n(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f3541f.clear();
            this.f3542g.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f3541f.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment m32763p0 = this.f3538c.m32763p0(bundle, str);
                    if (m32763p0 != null) {
                        while (this.f3542g.size() <= parseInt) {
                            this.f3542g.add(null);
                        }
                        m32763p0.m32961P1(false);
                        this.f3542g.set(parseInt, m32763p0);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: o */
    public Parcelable mo27512o() {
        Bundle bundle;
        if (this.f3541f.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f3541f.size()];
            this.f3541f.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (i < this.f3542g.size()) {
            Fragment fragment = this.f3542g.get(i);
            Bundle bundle2 = bundle;
            if (fragment != null) {
                bundle2 = bundle;
                if (fragment.m32917k0()) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    this.f3538c.m32807a1(bundle2, "f" + i, fragment);
                }
            }
            i++;
            bundle = bundle2;
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: q */
    public void mo30705q(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f3543h;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.m32961P1(false);
                if (this.f3539d == 1) {
                    if (this.f3540e == null) {
                        this.f3540e = this.f3538c.m32776l();
                    }
                    this.f3540e.mo32493r(this.f3543h, Lifecycle.State.STARTED);
                } else {
                    this.f3543h.mo26766V1(false);
                }
            }
            fragment.m32961P1(true);
            if (this.f3539d == 1) {
                if (this.f3540e == null) {
                    this.f3540e = this.f3538c.m32776l();
                }
                this.f3540e.mo32493r(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.mo26766V1(true);
            }
            this.f3543h = fragment;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: t */
    public void mo27511t(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    /* renamed from: v */
    public abstract Fragment mo25080v(int i);
}
