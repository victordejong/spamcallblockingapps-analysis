package p081h.p093b.p099c.p103c.p104f;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewParent;
import androidx.collection.LruCache;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;
/* renamed from: h.b.c.c.f.b */
/* loaded from: classes-dex2jar.jar:h/b/c/c/f/b.class */
public abstract class AbstractC5641b extends PagerAdapter {

    /* renamed from: a */
    public final FragmentManager f14119a;

    /* renamed from: b */
    public FragmentTransaction f14120b = null;

    /* renamed from: c */
    public Fragment f14121c = null;

    /* renamed from: d */
    public LruCache<String, Fragment> f14122d = new C5642a(5);

    /* renamed from: h.b.c.c.f.b$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/f/b$a.class */
    public class C5642a extends LruCache<String, Fragment> {
        public C5642a(int i) {
            super(i);
        }

        /* renamed from: a */
        public void entryRemoved(boolean z, String str, Fragment fragment, Fragment fragment2) {
            if (z || !(fragment2 == null || fragment == fragment2)) {
                AbstractC5641b.this.f14120b.remove(fragment);
            }
        }
    }

    public AbstractC5641b(FragmentManager fragmentManager) {
        this.f14119a = fragmentManager;
    }

    /* renamed from: a */
    public String mo24914a(int i, int i2) {
        return "android:switcher:" + i + ":" + i2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(View view, int i, Object obj) {
        if (this.f14120b == null) {
            this.f14120b = this.f14119a.beginTransaction();
        }
        Fragment fragment = (Fragment) obj;
        String tag = fragment.getTag();
        String str = tag;
        if (tag == null) {
            str = mo24914a(view.getId(), i);
        }
        this.f14122d.put(str, fragment);
        this.f14120b.detach(fragment);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(View view) {
        if (this.f14120b != null && !this.f14119a.isDestroyed()) {
            this.f14120b.commitAllowingStateLoss();
            this.f14120b = null;
            this.f14119a.executePendingTransactions();
        }
    }

    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(View view, int i) {
        Fragment fragment;
        if (this.f14120b == null) {
            this.f14120b = this.f14119a.beginTransaction();
        }
        String a = mo24914a(view.getId(), i);
        this.f14122d.remove(a);
        Fragment findFragmentByTag = this.f14119a.findFragmentByTag(a);
        if (findFragmentByTag != null) {
            this.f14120b.attach(findFragmentByTag);
            fragment = findFragmentByTag;
        } else {
            Fragment item = getItem(i);
            if (item == null) {
                return null;
            }
            this.f14120b.add(view.getId(), item, mo24914a(view.getId(), i));
            fragment = item;
        }
        if (fragment != this.f14121c) {
            fragment.setMenuVisibility(false);
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        View view2 = ((Fragment) obj).getView();
        for (ViewParent viewParent = view; viewParent instanceof View; viewParent = viewParent.getParent()) {
            if (viewParent == view2) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(View view, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f14121c;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
            }
            this.f14121c = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(View view) {
    }
}
