package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0896g;
import androidx.viewpager.widget.AbstractC1100a;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.k */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/k.class */
public abstract class AbstractC0737k extends AbstractC1100a {

    /* renamed from: a */
    private final AbstractC0717h f2411a;

    /* renamed from: b */
    private final int f2412b;

    /* renamed from: c */
    private AbstractC0738l f2413c;

    /* renamed from: d */
    private ArrayList<Fragment.SavedState> f2414d;

    /* renamed from: e */
    private ArrayList<Fragment> f2415e;

    /* renamed from: f */
    private Fragment f2416f;

    @Deprecated
    public AbstractC0737k(AbstractC0717h abstractC0717h) {
        this(abstractC0717h, 0);
    }

    public AbstractC0737k(AbstractC0717h abstractC0717h, int i) {
        this.f2413c = null;
        this.f2414d = new ArrayList<>();
        this.f2415e = new ArrayList<>();
        this.f2416f = null;
        this.f2411a = abstractC0717h;
        this.f2412b = i;
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public Parcelable mo4284a() {
        Bundle bundle;
        if (this.f2414d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f2414d.size()];
            this.f2414d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (i < this.f2415e.size()) {
            Fragment fragment = this.f2415e.get(i);
            Bundle bundle2 = bundle;
            if (fragment != null) {
                bundle2 = bundle;
                if (fragment.isAdded()) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    this.f2411a.mo5583a(bundle2, "f" + i, fragment);
                }
            }
            i++;
            bundle = bundle2;
        }
        return bundle;
    }

    /* renamed from: a */
    public abstract Fragment mo237a(int i);

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public Object mo4276a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f2415e.size() <= i || (fragment = this.f2415e.get(i)) == null) {
            if (this.f2413c == null) {
                this.f2413c = this.f2411a.mo5592a();
            }
            Fragment mo237a = mo237a(i);
            if (this.f2414d.size() > i && (savedState = this.f2414d.get(i)) != null) {
                mo237a.setInitialSavedState(savedState);
            }
            while (this.f2415e.size() <= i) {
                this.f2415e.add(null);
            }
            mo237a.setMenuVisibility(false);
            if (this.f2412b == 0) {
                mo237a.setUserVisibleHint(false);
            }
            this.f2415e.set(i, mo237a);
            this.f2413c.m5463a(viewGroup.getId(), mo237a);
            if (this.f2412b == 1) {
                this.f2413c.mo5460a(mo237a, AbstractC0896g.EnumC0898b.STARTED);
            }
            return mo237a;
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public void mo4282a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f2414d.clear();
            this.f2415e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f2414d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment mo5584a = this.f2411a.mo5584a(bundle, str);
                    if (mo5584a != null) {
                        while (this.f2415e.size() <= parseInt) {
                            this.f2415e.add(null);
                        }
                        mo5584a.setMenuVisibility(false);
                        this.f2415e.set(parseInt, mo5584a);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public void mo4277a(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public void mo4275a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f2413c == null) {
            this.f2413c = this.f2411a.mo5592a();
        }
        while (this.f2414d.size() <= i) {
            this.f2414d.add(null);
        }
        this.f2414d.set(i, fragment.isAdded() ? this.f2411a.mo5577a(fragment) : null);
        this.f2415e.set(i, null);
        this.f2413c.mo5461a(fragment);
        if (fragment == this.f2416f) {
            this.f2416f = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: a */
    public boolean mo4278a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: b */
    public void mo4270b(ViewGroup viewGroup) {
        AbstractC0738l abstractC0738l = this.f2413c;
        if (abstractC0738l != null) {
            abstractC0738l.mo5454e();
            this.f2413c = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: b */
    public void mo4269b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f2416f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f2412b == 1) {
                    if (this.f2413c == null) {
                        this.f2413c = this.f2411a.mo5592a();
                    }
                    this.f2413c.mo5460a(this.f2416f, AbstractC0896g.EnumC0898b.STARTED);
                } else {
                    this.f2416f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f2412b == 1) {
                if (this.f2413c == null) {
                    this.f2413c = this.f2411a.mo5592a();
                }
                this.f2413c.mo5460a(fragment, AbstractC0896g.EnumC0898b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f2416f = fragment;
        }
    }
}
