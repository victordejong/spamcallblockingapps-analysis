package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.j;
import androidx.viewpager.widget.a;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public abstract class q extends a {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentManager f2315a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2316b;

    /* renamed from: c  reason: collision with root package name */
    private s f2317c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<Fragment.SavedState> f2318d;
    private ArrayList<Fragment> e;
    private Fragment f;
    private boolean g;

    @Deprecated
    public q(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public q(FragmentManager fragmentManager, int i) {
        this.f2317c = null;
        this.f2318d = new ArrayList<>();
        this.e = new ArrayList<>();
        this.f = null;
        this.f2315a = fragmentManager;
        this.f2316b = i;
    }

    @Override // androidx.viewpager.widget.a
    public final Object a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.e.size() > i && (fragment = this.e.get(i)) != null) {
            return fragment;
        }
        if (this.f2317c == null) {
            this.f2317c = this.f2315a.a();
        }
        Fragment item = getItem(i);
        if (this.f2318d.size() > i && (savedState = this.f2318d.get(i)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.e.size() <= i) {
            this.e.add(null);
        }
        item.setMenuVisibility(false);
        if (this.f2316b == 0) {
            item.setUserVisibleHint(false);
        }
        this.e.set(i, item);
        this.f2317c.a(viewGroup.getId(), item);
        if (this.f2316b == 1) {
            this.f2317c.a(item, j.b.STARTED);
        }
        return item;
    }

    @Override // androidx.viewpager.widget.a
    public final void a() {
        s sVar = this.f2317c;
        if (sVar != null) {
            if (!this.g) {
                try {
                    this.g = true;
                    sVar.e();
                } finally {
                    this.g = false;
                }
            }
            this.f2317c = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public final void a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f2318d.clear();
            this.e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f2318d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment a2 = this.f2315a.a(bundle, str);
                    if (a2 != null) {
                        while (this.e.size() <= parseInt) {
                            this.e.add(null);
                        }
                        a2.setMenuVisibility(false);
                        this.e.set(parseInt, a2);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key ".concat(String.valueOf(str)));
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f2317c == null) {
            this.f2317c = this.f2315a.a();
        }
        while (this.f2318d.size() <= i) {
            this.f2318d.add(null);
        }
        this.f2318d.set(i, fragment.isAdded() ? this.f2315a.c(fragment) : null);
        this.e.set(i, null);
        this.f2317c.a(fragment);
        if (fragment.equals(this.f)) {
            this.f = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public final boolean a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.a
    public final Parcelable b() {
        Bundle bundle;
        if (this.f2318d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f2318d.size()];
            this.f2318d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.e.size(); i++) {
            Fragment fragment = this.e.get(i);
            bundle = bundle;
            if (fragment != null) {
                bundle = bundle;
                if (fragment.isAdded()) {
                    bundle = bundle;
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    this.f2315a.a(bundle, "f".concat(String.valueOf(i)), fragment);
                }
            }
        }
        return bundle;
    }

    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.a
    public final void setPrimaryItem$30510aeb(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f2316b == 1) {
                    if (this.f2317c == null) {
                        this.f2317c = this.f2315a.a();
                    }
                    this.f2317c.a(this.f, j.b.STARTED);
                } else {
                    this.f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f2316b == 1) {
                if (this.f2317c == null) {
                    this.f2317c = this.f2315a.a();
                }
                this.f2317c.a(fragment, j.b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f = fragment;
        }
    }
}
