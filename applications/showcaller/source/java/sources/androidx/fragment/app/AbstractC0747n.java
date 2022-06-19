package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.AbstractC1197a;
@Deprecated
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public abstract class AbstractC0747n extends AbstractC1197a {

    /* renamed from: c */
    private final FragmentManager f3525c;

    /* renamed from: d */
    private final int f3526d;

    /* renamed from: e */
    private AbstractC0754s f3527e;

    /* renamed from: f */
    private Fragment f3528f;

    /* renamed from: g */
    private boolean f3529g;

    @Deprecated
    public AbstractC0747n(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public AbstractC0747n(FragmentManager fragmentManager, int i) {
        this.f3527e = null;
        this.f3528f = null;
        this.f3525c = fragmentManager;
        this.f3526d = i;
    }

    /* renamed from: x */
    private static String m32558x(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: b */
    public void mo27516b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f3527e == null) {
            this.f3527e = this.f3525c.m32776l();
        }
        this.f3527e.mo32499l(fragment);
        if (fragment.equals(this.f3528f)) {
            this.f3528f = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: d */
    public void mo30712d(ViewGroup viewGroup) {
        AbstractC0754s abstractC0754s = this.f3527e;
        if (abstractC0754s != null) {
            if (!this.f3529g) {
                try {
                    this.f3529g = true;
                    abstractC0754s.mo32500k();
                } finally {
                    this.f3529g = false;
                }
            }
            this.f3527e = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: j */
    public Object mo27515j(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f3527e == null) {
            this.f3527e = this.f3525c.m32776l();
        }
        long m32559w = m32559w(i);
        Fragment m32784i0 = this.f3525c.m32784i0(m32558x(viewGroup.getId(), m32559w));
        if (m32784i0 != null) {
            this.f3527e.m32504g(m32784i0);
            fragment = m32784i0;
        } else {
            Fragment mo27709v = mo27709v(i);
            this.f3527e.m32508c(viewGroup.getId(), mo27709v, m32558x(viewGroup.getId(), m32559w));
            fragment = mo27709v;
        }
        if (fragment != this.f3528f) {
            fragment.m32961P1(false);
            if (this.f3526d == 1) {
                this.f3527e.mo32493r(fragment, Lifecycle.State.STARTED);
            } else {
                fragment.mo26766V1(false);
            }
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
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: o */
    public Parcelable mo27512o() {
        return null;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: q */
    public void mo30705q(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f3528f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.m32961P1(false);
                if (this.f3526d == 1) {
                    if (this.f3527e == null) {
                        this.f3527e = this.f3525c.m32776l();
                    }
                    this.f3527e.mo32493r(this.f3528f, Lifecycle.State.STARTED);
                } else {
                    this.f3528f.mo26766V1(false);
                }
            }
            fragment.m32961P1(true);
            if (this.f3526d == 1) {
                if (this.f3527e == null) {
                    this.f3527e = this.f3525c.m32776l();
                }
                this.f3527e.mo32493r(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.mo26766V1(true);
            }
            this.f3528f = fragment;
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
    public abstract Fragment mo27709v(int i);

    /* renamed from: w */
    public long m32559w(int i) {
        return i;
    }
}
