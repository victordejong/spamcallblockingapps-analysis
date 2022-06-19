package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC1253j;
import androidx.viewpager.widget.AbstractC2941a;
import java.util.ArrayList;
@Deprecated
/* renamed from: androidx.fragment.app.q */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public abstract class AbstractC1119q extends AbstractC2941a {

    /* renamed from: a */
    private final FragmentManager f4391a;

    /* renamed from: b */
    private final int f4392b;

    /* renamed from: c */
    private AbstractC1121s f4393c;

    /* renamed from: d */
    private ArrayList<Fragment.SavedState> f4394d;

    /* renamed from: e */
    private ArrayList<Fragment> f4395e;

    /* renamed from: f */
    private Fragment f4396f;

    /* renamed from: g */
    private boolean f4397g;

    @Deprecated
    public AbstractC1119q(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public AbstractC1119q(FragmentManager fragmentManager, int i) {
        this.f4393c = null;
        this.f4394d = new ArrayList<>();
        this.f4395e = new ArrayList<>();
        this.f4396f = null;
        this.f4391a = fragmentManager;
        this.f4392b = i;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final Object mo26231a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f4395e.size() <= i || (fragment = this.f4395e.get(i)) == null) {
            if (this.f4393c == null) {
                this.f4393c = this.f4391a.m43765a();
            }
            Fragment item = getItem(i);
            if (this.f4394d.size() > i && (savedState = this.f4394d.get(i)) != null) {
                item.setInitialSavedState(savedState);
            }
            while (this.f4395e.size() <= i) {
                this.f4395e.add(null);
            }
            item.setMenuVisibility(false);
            if (this.f4392b == 0) {
                item.setUserVisibleHint(false);
            }
            this.f4395e.set(i, item);
            this.f4393c.m43542a(viewGroup.getId(), item);
            if (this.f4392b == 1) {
                this.f4393c.mo43538a(item, AbstractC1253j.EnumC1256b.STARTED);
            }
            return item;
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo39595a() {
        AbstractC1121s abstractC1121s = this.f4393c;
        if (abstractC1121s != null) {
            if (!this.f4397g) {
                try {
                    this.f4397g = true;
                    abstractC1121s.mo43529e();
                } finally {
                    this.f4397g = false;
                }
            }
            this.f4393c = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo39593a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f4394d.clear();
            this.f4395e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f4394d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment m43761a = this.f4391a.m43761a(bundle, str);
                    if (m43761a != null) {
                        while (this.f4395e.size() <= parseInt) {
                            this.f4395e.add(null);
                        }
                        m43761a.setMenuVisibility(false);
                        this.f4395e.set(parseInt, m43761a);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key ".concat(String.valueOf(str)));
                    }
                }
            }
        }
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
    public final void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f4393c == null) {
            this.f4393c = this.f4391a.m43765a();
        }
        while (this.f4394d.size() <= i) {
            this.f4394d.add(null);
        }
        this.f4394d.set(i, fragment.isAdded() ? this.f4391a.m43718c(fragment) : null);
        this.f4395e.set(i, null);
        this.f4393c.mo43539a(fragment);
        if (fragment.equals(this.f4396f)) {
            this.f4396f = null;
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
        Bundle bundle;
        if (this.f4394d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f4394d.size()];
            this.f4394d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (i < this.f4395e.size()) {
            Fragment fragment = this.f4395e.get(i);
            Bundle bundle2 = bundle;
            if (fragment != null) {
                bundle2 = bundle;
                if (fragment.isAdded()) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    this.f4391a.m43760a(bundle2, "f".concat(String.valueOf(i)), fragment);
                }
            }
            i++;
            bundle = bundle2;
        }
        return bundle;
    }

    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final void setPrimaryItem$30510aeb(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f4396f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f4392b == 1) {
                    if (this.f4393c == null) {
                        this.f4393c = this.f4391a.m43765a();
                    }
                    this.f4393c.mo43538a(this.f4396f, AbstractC1253j.EnumC1256b.STARTED);
                } else {
                    this.f4396f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f4392b == 1) {
                if (this.f4393c == null) {
                    this.f4393c = this.f4391a.m43765a();
                }
                this.f4393c.mo43538a(fragment, AbstractC1253j.EnumC1256b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f4396f = fragment;
        }
    }
}
