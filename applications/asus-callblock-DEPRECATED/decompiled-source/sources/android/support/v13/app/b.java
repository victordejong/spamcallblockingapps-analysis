package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Parcelable;
import android.support.v4.view.p;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:android/support/v13/app/b.class */
public abstract class b extends p {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentManager f15a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentTransaction f16b = null;
    private Fragment c = null;

    public b(FragmentManager fragmentManager) {
        this.f15a = fragmentManager;
    }

    private static String a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    public abstract Fragment a(int i);

    @Override // android.support.v4.view.p
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.f16b == null) {
            this.f16b = this.f15a.beginTransaction();
        }
        this.f16b.detach((Fragment) obj);
    }

    @Override // android.support.v4.view.p
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.f16b != null) {
            this.f16b.commitAllowingStateLoss();
            this.f16b = null;
            this.f15a.executePendingTransactions();
        }
    }

    @Override // android.support.v4.view.p
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f16b == null) {
            this.f16b = this.f15a.beginTransaction();
        }
        long j = i;
        Fragment findFragmentByTag = this.f15a.findFragmentByTag(a(viewGroup.getId(), j));
        if (findFragmentByTag != null) {
            this.f16b.attach(findFragmentByTag);
            fragment = findFragmentByTag;
        } else {
            Fragment a2 = a(i);
            this.f16b.add(viewGroup.getId(), a2, a(viewGroup.getId(), j));
            fragment = a2;
        }
        if (fragment != this.c) {
            a.a(fragment, false);
            a.b(fragment, false);
        }
        return fragment;
    }

    @Override // android.support.v4.view.p
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // android.support.v4.view.p
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // android.support.v4.view.p
    public Parcelable saveState() {
        return null;
    }

    @Override // android.support.v4.view.p
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.c) {
            if (this.c != null) {
                a.a(this.c, false);
                a.b(this.c, false);
            }
            if (fragment != null) {
                a.a(fragment, true);
                a.b(fragment, true);
            }
            this.c = fragment;
        }
    }

    @Override // android.support.v4.view.p
    public void startUpdate(ViewGroup viewGroup) {
    }
}
