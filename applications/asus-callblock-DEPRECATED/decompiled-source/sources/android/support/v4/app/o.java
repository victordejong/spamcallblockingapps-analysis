package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.p;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/o.class */
public abstract class o extends p {

    /* renamed from: a  reason: collision with root package name */
    private final m f90a;

    /* renamed from: b  reason: collision with root package name */
    private q f91b = null;
    private Fragment c = null;

    public o(m mVar) {
        this.f90a = mVar;
    }

    private static String a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    public abstract Fragment a(int i);

    @Override // android.support.v4.view.p
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.f91b == null) {
            this.f91b = this.f90a.a();
        }
        this.f91b.b((Fragment) obj);
    }

    @Override // android.support.v4.view.p
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.f91b != null) {
            this.f91b.b();
            this.f91b = null;
            this.f90a.b();
        }
    }

    @Override // android.support.v4.view.p
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f91b == null) {
            this.f91b = this.f90a.a();
        }
        long j = i;
        Fragment a2 = this.f90a.a(a(viewGroup.getId(), j));
        if (a2 != null) {
            this.f91b.c(a2);
            fragment = a2;
        } else {
            Fragment a3 = a(i);
            this.f91b.a(viewGroup.getId(), a3, a(viewGroup.getId(), j));
            fragment = a3;
        }
        if (fragment != this.c) {
            fragment.setMenuVisibility(false);
            fragment.setUserVisibleHint(false);
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
                this.c.setMenuVisibility(false);
                this.c.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.c = fragment;
        }
    }

    @Override // android.support.v4.view.p
    public void startUpdate(ViewGroup viewGroup) {
    }
}
