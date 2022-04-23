package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.j;
import androidx.viewpager.widget.a;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public abstract class n extends a {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentManager f2304a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2305b;

    /* renamed from: c  reason: collision with root package name */
    private s f2306c;

    /* renamed from: d  reason: collision with root package name */
    private Fragment f2307d;
    private boolean e;

    @Deprecated
    public n(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public n(FragmentManager fragmentManager, int i) {
        this.f2306c = null;
        this.f2307d = null;
        this.f2304a = fragmentManager;
        this.f2305b = i;
    }

    private static String a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.viewpager.widget.a
    public final Object a(ViewGroup viewGroup, int i) {
        Fragment fragment;
        if (this.f2306c == null) {
            this.f2306c = this.f2304a.a();
        }
        long itemId = getItemId(i);
        Fragment a2 = this.f2304a.a(a(viewGroup.getId(), itemId));
        if (a2 != null) {
            this.f2306c.c(a2);
            fragment = a2;
        } else {
            Fragment item = getItem(i);
            this.f2306c.a(viewGroup.getId(), item, a(viewGroup.getId(), itemId));
            fragment = item;
        }
        if (fragment != this.f2307d) {
            fragment.setMenuVisibility(false);
            if (this.f2305b == 1) {
                this.f2306c.a(fragment, j.b.STARTED);
            } else {
                fragment.setUserVisibleHint(false);
            }
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.a
    public final void a() {
        s sVar = this.f2306c;
        if (sVar != null) {
            if (!this.e) {
                try {
                    this.e = true;
                    sVar.e();
                } finally {
                    this.e = false;
                }
            }
            this.f2306c = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public final void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f2306c == null) {
            this.f2306c = this.f2304a.a();
        }
        this.f2306c.b(fragment);
        if (fragment.equals(this.f2307d)) {
            this.f2307d = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public final boolean a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.a
    public final Parcelable b() {
        return null;
    }

    public abstract Fragment getItem(int i);

    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.a
    public final void setPrimaryItem$30510aeb(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f2307d;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f2305b == 1) {
                    if (this.f2306c == null) {
                        this.f2306c = this.f2304a.a();
                    }
                    this.f2306c.a(this.f2307d, j.b.STARTED);
                } else {
                    this.f2307d.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f2305b == 1) {
                if (this.f2306c == null) {
                    this.f2306c = this.f2304a.a();
                }
                this.f2306c.a(fragment, j.b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f2307d = fragment;
        }
    }
}
