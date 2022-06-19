package p1727n3.p1859r.p1860a;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* renamed from: n3.r.a.d0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/d0.class */
public abstract class AbstractC26919d0 extends AbstractC26640a {

    /* renamed from: c */
    public final FragmentManager f75300c;

    /* renamed from: d */
    public final int f75301d;

    /* renamed from: e */
    public AbstractC26924f0 f75302e = null;

    /* renamed from: f */
    public ArrayList<Fragment$SavedState> f75303f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<Fragment> f75304g = new ArrayList<>();

    /* renamed from: h */
    public Fragment f75305h = null;

    /* renamed from: i */
    public boolean f75306i;

    public AbstractC26919d0(FragmentManager fragmentManager, int i) {
        this.f75300c = fragmentManager;
        this.f75301d = i;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: b */
    public void mo1149b(ViewGroup viewGroup) {
        AbstractC26924f0 abstractC26924f0 = this.f75302e;
        if (abstractC26924f0 != null) {
            if (!this.f75306i) {
                try {
                    this.f75306i = true;
                    abstractC26924f0.mo1124i();
                } finally {
                    this.f75306i = false;
                }
            }
            this.f75302e = null;
        }
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: g */
    public boolean mo1148g(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: i */
    public void mo1147i(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f75303f.clear();
            this.f75304g.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f75303f.add((Fragment$SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment m42939N = this.f75300c.m42939N(bundle, str);
                    if (m42939N != null) {
                        while (this.f75304g.size() <= parseInt) {
                            this.f75304g.add(null);
                        }
                        m42939N.setMenuVisibility(false);
                        this.f75304g.set(parseInt, m42939N);
                    }
                }
            }
        }
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: j */
    public Parcelable mo1146j() {
        Bundle bundle;
        if (this.f75303f.size() > 0) {
            bundle = new Bundle();
            Fragment$SavedState[] fragment$SavedStateArr = new Fragment$SavedState[this.f75303f.size()];
            this.f75303f.toArray(fragment$SavedStateArr);
            bundle.putParcelableArray("states", fragment$SavedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (i < this.f75304g.size()) {
            Fragment fragment = this.f75304g.get(i);
            Bundle bundle2 = bundle;
            if (fragment != null) {
                bundle2 = bundle;
                if (fragment.isAdded()) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    this.f75300c.m42913g0(bundle2, C22128a.m8611i2("f", i), fragment);
                }
            }
            i++;
            bundle = bundle2;
        }
        return bundle;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: k */
    public void mo1145k(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f75305h;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f75301d == 1) {
                    if (this.f75302e == null) {
                        this.f75302e = new C26907a(this.f75300c);
                    }
                    this.f75302e.mo1117p(this.f75305h, AbstractC27028u.EnumC27030b.STARTED);
                } else {
                    this.f75305h.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f75301d == 1) {
                if (this.f75302e == null) {
                    this.f75302e = new C26907a(this.f75300c);
                }
                this.f75302e.mo1117p(fragment, AbstractC27028u.EnumC27030b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f75305h = fragment;
        }
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: l */
    public void mo1144l(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
}
