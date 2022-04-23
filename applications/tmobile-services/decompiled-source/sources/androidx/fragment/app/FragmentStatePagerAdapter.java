package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStatePagerAdapter.class */
public abstract class FragmentStatePagerAdapter extends PagerAdapter {

    /* renamed from: a */
    private final FragmentManager f3814a;

    /* renamed from: b */
    private final int f3815b;

    /* renamed from: c */
    private FragmentTransaction f3816c;

    /* renamed from: d */
    private ArrayList<Fragment.SavedState> f3817d;

    /* renamed from: e */
    private ArrayList<Fragment> f3818e;

    /* renamed from: f */
    private Fragment f3819f;

    @Deprecated
    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager, int i) {
        this.f3816c = null;
        this.f3817d = new ArrayList<>();
        this.f3818e = new ArrayList<>();
        this.f3819f = null;
        this.f3814a = fragmentManager;
        this.f3815b = i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f3816c == null) {
            this.f3816c = this.f3814a.beginTransaction();
        }
        while (this.f3817d.size() <= i) {
            this.f3817d.add(null);
        }
        this.f3817d.set(i, fragment.isAdded() ? this.f3814a.saveFragmentInstanceState(fragment) : null);
        this.f3818e.set(i, null);
        this.f3816c.mo18331q(fragment);
        if (fragment.equals(this.f3819f)) {
            this.f3819f = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f3816c;
        if (fragmentTransaction != null) {
            try {
                fragmentTransaction.mo18336l();
            } catch (IllegalStateException e) {
                this.f3816c.mo18338j();
            }
            this.f3816c = null;
        }
    }

    @NonNull
    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f3818e.size() > i && (fragment = this.f3818e.get(i)) != null) {
            return fragment;
        }
        if (this.f3816c == null) {
            this.f3816c = this.f3814a.beginTransaction();
        }
        Fragment item = getItem(i);
        if (this.f3817d.size() > i && (savedState = this.f3817d.get(i)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.f3818e.size() <= i) {
            this.f3818e.add(null);
        }
        item.setMenuVisibility(false);
        if (this.f3815b == 0) {
            item.setUserVisibleHint(false);
        }
        this.f3818e.set(i, item);
        this.f3816c.m18346b(viewGroup.getId(), item);
        if (this.f3815b == 1) {
            this.f3816c.mo18328t(item, Lifecycle.State.STARTED);
        }
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f3817d.clear();
            this.f3818e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f3817d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f3814a.getFragment(bundle, str);
                    if (fragment != null) {
                        while (this.f3818e.size() <= parseInt) {
                            this.f3818e.add(null);
                        }
                        fragment.setMenuVisibility(false);
                        this.f3818e.set(parseInt, fragment);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f3817d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f3817d.size()];
            this.f3817d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.f3818e.size(); i++) {
            Fragment fragment = this.f3818e.get(i);
            bundle = bundle;
            if (fragment != null) {
                bundle = bundle;
                if (fragment.isAdded()) {
                    bundle = bundle;
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    this.f3814a.putFragment(bundle, "f" + i, fragment);
                }
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f3819f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f3815b == 1) {
                    if (this.f3816c == null) {
                        this.f3816c = this.f3814a.beginTransaction();
                    }
                    this.f3816c.mo18328t(this.f3819f, Lifecycle.State.STARTED);
                } else {
                    this.f3819f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f3815b == 1) {
                if (this.f3816c == null) {
                    this.f3816c = this.f3814a.beginTransaction();
                }
                this.f3816c.mo18328t(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f3819f = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }
}
