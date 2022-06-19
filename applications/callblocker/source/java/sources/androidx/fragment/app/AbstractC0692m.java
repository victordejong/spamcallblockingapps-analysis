package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0864e;
import androidx.viewpager.widget.AbstractC1099a;
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m.class */
public abstract class AbstractC0692m extends AbstractC1099a {

    /* renamed from: a */
    private final AbstractC0670i f2454a;

    /* renamed from: b */
    private final int f2455b;

    /* renamed from: c */
    private AbstractC0695o f2456c = null;

    /* renamed from: d */
    private Fragment f2457d = null;

    public AbstractC0692m(AbstractC0670i abstractC0670i, int i) {
        this.f2454a = abstractC0670i;
        this.f2455b = i;
    }

    /* renamed from: a */
    private static String m19671a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public Parcelable mo18062a() {
        return null;
    }

    /* renamed from: a */
    public abstract Fragment mo869a(int i);

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public Object mo18054a(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f2456c == null) {
            this.f2456c = this.f2454a.mo19803a();
        }
        long m19670b = m19670b(i);
        Fragment mo19772a = this.f2454a.mo19772a(m19671a(viewGroup.getId(), m19670b));
        if (mo19772a != null) {
            this.f2456c.m19648e(mo19772a);
            fragment = mo19772a;
        } else {
            Fragment mo869a = mo869a(i);
            this.f2456c.m19663a(viewGroup.getId(), mo869a, m19671a(viewGroup.getId(), m19670b));
            fragment = mo869a;
        }
        if (fragment != this.f2457d) {
            fragment.m19945d(false);
            if (this.f2455b == 1) {
                this.f2456c.mo19660a(fragment, AbstractC0864e.EnumC0866b.STARTED);
            } else {
                fragment.m19944e(false);
            }
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public void mo18060a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public void mo18055a(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public void mo18053a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f2456c == null) {
            this.f2456c = this.f2454a.mo19803a();
        }
        this.f2456c.mo19650d(fragment);
        if (fragment == this.f2457d) {
            this.f2457d = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: a */
    public boolean mo18056a(View view, Object obj) {
        return ((Fragment) obj).m20016G() == view;
    }

    /* renamed from: b */
    public long m19670b(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: b */
    public void mo18048b(ViewGroup viewGroup) {
        if (this.f2456c != null) {
            this.f2456c.mo19649e();
            this.f2456c = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1099a
    /* renamed from: b */
    public void mo18047b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.f2457d) {
            if (this.f2457d != null) {
                this.f2457d.m19945d(false);
                if (this.f2455b == 1) {
                    if (this.f2456c == null) {
                        this.f2456c = this.f2454a.mo19803a();
                    }
                    this.f2456c.mo19660a(this.f2457d, AbstractC0864e.EnumC0866b.STARTED);
                } else {
                    this.f2457d.m19944e(false);
                }
            }
            fragment.m19945d(true);
            if (this.f2455b == 1) {
                if (this.f2456c == null) {
                    this.f2456c = this.f2454a.mo19803a();
                }
                this.f2456c.mo19660a(fragment, AbstractC0864e.EnumC0866b.RESUMED);
            } else {
                fragment.m19944e(true);
            }
            this.f2457d = fragment;
        }
    }
}
