package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC1253j;
import androidx.viewpager.widget.AbstractC2941a;
@Deprecated
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public abstract class AbstractC1114n extends AbstractC2941a {

    /* renamed from: a */
    private final FragmentManager f4378a;

    /* renamed from: b */
    private final int f4379b;

    /* renamed from: c */
    private AbstractC1121s f4380c;

    /* renamed from: d */
    private Fragment f4381d;

    /* renamed from: e */
    private boolean f4382e;

    @Deprecated
    public AbstractC1114n(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public AbstractC1114n(FragmentManager fragmentManager, int i) {
        this.f4380c = null;
        this.f4381d = null;
        this.f4378a = fragmentManager;
        this.f4379b = i;
    }

    /* renamed from: a */
    private static String m43584a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final Object mo26231a(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f4380c == null) {
            this.f4380c = this.f4378a.m43765a();
        }
        long itemId = getItemId(i);
        Fragment m43740a = this.f4378a.m43740a(m43584a(viewGroup.getId(), itemId));
        if (m43740a != null) {
            this.f4380c.m43531c(m43740a);
            fragment = m43740a;
        } else {
            Fragment item = getItem(i);
            this.f4380c.m43541a(viewGroup.getId(), item, m43584a(viewGroup.getId(), itemId));
            fragment = item;
        }
        if (fragment != this.f4381d) {
            fragment.setMenuVisibility(false);
            if (this.f4379b == 1) {
                this.f4380c.mo43538a(fragment, AbstractC1253j.EnumC1256b.STARTED);
            } else {
                fragment.setUserVisibleHint(false);
            }
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo39595a() {
        AbstractC1121s abstractC1121s = this.f4380c;
        if (abstractC1121s != null) {
            if (!this.f4382e) {
                try {
                    this.f4382e = true;
                    abstractC1121s.mo43529e();
                } finally {
                    this.f4382e = false;
                }
            }
            this.f4380c = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo39593a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo39592a(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f4380c == null) {
            this.f4380c = this.f4378a.m43765a();
        }
        this.f4380c.mo43534b(fragment);
        if (fragment.equals(this.f4381d)) {
            this.f4381d = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final boolean mo26232a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: b */
    public final Parcelable mo39591b() {
        return null;
    }

    public abstract Fragment getItem(int i);

    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final void setPrimaryItem$30510aeb(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f4381d;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f4379b == 1) {
                    if (this.f4380c == null) {
                        this.f4380c = this.f4378a.m43765a();
                    }
                    this.f4380c.mo43538a(this.f4381d, AbstractC1253j.EnumC1256b.STARTED);
                } else {
                    this.f4381d.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f4379b == 1) {
                if (this.f4380c == null) {
                    this.f4380c = this.f4378a.m43765a();
                }
                this.f4380c.mo43538a(fragment, AbstractC1253j.EnumC1256b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f4381d = fragment;
        }
    }
}
