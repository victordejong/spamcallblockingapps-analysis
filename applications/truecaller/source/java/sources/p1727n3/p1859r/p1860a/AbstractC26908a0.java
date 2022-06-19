package p1727n3.p1859r.p1860a;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* renamed from: n3.r.a.a0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/a0.class */
public abstract class AbstractC26908a0 extends AbstractC26640a {

    /* renamed from: c */
    public final FragmentManager f75272c;

    /* renamed from: g */
    public boolean f75276g;

    /* renamed from: e */
    public AbstractC26924f0 f75274e = null;

    /* renamed from: f */
    public Fragment f75275f = null;

    /* renamed from: d */
    public final int f75273d = 0;

    @Deprecated
    public AbstractC26908a0(FragmentManager fragmentManager) {
        this.f75272c = fragmentManager;
    }

    /* renamed from: m */
    public static String m1176m(int i, long j) {
        return "android:switcher:" + i + StringConstant.COLON + j;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: a */
    public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f75274e == null) {
            this.f75274e = new C26907a(this.f75272c);
        }
        C26907a c26907a = (C26907a) this.f75274e;
        Objects.requireNonNull(c26907a);
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != c26907a.f75269q) {
            StringBuilder m8728C = C22128a.m8728C("Cannot detach Fragment attached to a different FragmentManager. Fragment ");
            m8728C.append(fragment.toString());
            m8728C.append(" is already attached to a FragmentManager.");
            throw new IllegalStateException(m8728C.toString());
        }
        c26907a.m1129d(new AbstractC26924f0.C26925a(6, fragment));
        if (!fragment.equals(this.f75275f)) {
            return;
        }
        this.f75275f = null;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: b */
    public void mo1149b(ViewGroup viewGroup) {
        AbstractC26924f0 abstractC26924f0 = this.f75274e;
        if (abstractC26924f0 != null) {
            if (!this.f75276g) {
                try {
                    this.f75276g = true;
                    abstractC26924f0.mo1124i();
                } finally {
                    this.f75276g = false;
                }
            }
            this.f75274e = null;
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
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: j */
    public Parcelable mo1146j() {
        return null;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: k */
    public void mo1145k(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f75275f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f75273d == 1) {
                    if (this.f75274e == null) {
                        this.f75274e = new C26907a(this.f75272c);
                    }
                    this.f75274e.mo1117p(this.f75275f, AbstractC27028u.EnumC27030b.STARTED);
                } else {
                    this.f75275f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f75273d == 1) {
                if (this.f75274e == null) {
                    this.f75274e = new C26907a(this.f75272c);
                }
                this.f75274e.mo1117p(fragment, AbstractC27028u.EnumC27030b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f75275f = fragment;
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
