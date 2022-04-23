package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e.class */
public final class e extends RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    ViewPager2.e f5944a;

    /* renamed from: b  reason: collision with root package name */
    public int f5945b;

    /* renamed from: c  reason: collision with root package name */
    boolean f5946c;

    /* renamed from: d  reason: collision with root package name */
    boolean f5947d;
    private final ViewPager2 e;
    private final RecyclerView f;
    private final LinearLayoutManager g;
    private int h;
    private a i = new a();
    private int j;
    private int k;
    private boolean l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f5948a;

        /* renamed from: b  reason: collision with root package name */
        float f5949b;

        /* renamed from: c  reason: collision with root package name */
        int f5950c;

        a() {
        }

        final void a() {
            this.f5948a = -1;
            this.f5949b = BitmapDescriptorFactory.HUE_RED;
            this.f5950c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ViewPager2 viewPager2) {
        this.e = viewPager2;
        RecyclerView recyclerView = viewPager2.f;
        this.f = recyclerView;
        this.g = (LinearLayoutManager) recyclerView.getLayoutManager();
        c();
    }

    private void a(int i) {
        if ((this.h != 3 || this.f5945b != 0) && this.f5945b != i) {
            this.f5945b = i;
            ViewPager2.e eVar = this.f5944a;
            if (eVar != null) {
                eVar.a(i);
            }
        }
    }

    private void a(int i, float f, int i2) {
        ViewPager2.e eVar = this.f5944a;
        if (eVar != null) {
            eVar.a(i, f, i2);
        }
    }

    private void b(int i) {
        ViewPager2.e eVar = this.f5944a;
        if (eVar != null) {
            eVar.b(i);
        }
    }

    private void c() {
        this.h = 0;
        this.f5945b = 0;
        this.i.a();
        this.j = -1;
        this.k = -1;
        this.l = false;
        this.m = false;
        this.f5947d = false;
        this.f5946c = false;
    }

    private void d() {
        int i;
        a aVar = this.i;
        aVar.f5948a = this.g.i();
        if (aVar.f5948a == -1) {
            aVar.a();
            return;
        }
        View b2 = this.g.b(aVar.f5948a);
        if (b2 == null) {
            aVar.a();
            return;
        }
        int m = LinearLayoutManager.m(b2);
        int n = LinearLayoutManager.n(b2);
        int k = LinearLayoutManager.k(b2);
        int l = LinearLayoutManager.l(b2);
        ViewGroup.LayoutParams layoutParams = b2.getLayoutParams();
        int i2 = m;
        int i3 = n;
        int i4 = k;
        int i5 = l;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i2 = m + marginLayoutParams.leftMargin;
            i3 = n + marginLayoutParams.rightMargin;
            i4 = k + marginLayoutParams.topMargin;
            i5 = l + marginLayoutParams.bottomMargin;
        }
        int i6 = b2.getHeight() + i4 + i5;
        int width = b2.getWidth();
        if (this.g.getOrientation() == 0) {
            int left = (b2.getLeft() - i2) - this.f.getPaddingLeft();
            i = left;
            if (this.e.c()) {
                i = -left;
            }
            i6 = width + i2 + i3;
        } else {
            i = (b2.getTop() - i4) - this.f.getPaddingTop();
        }
        aVar.f5950c = -i;
        if (aVar.f5950c >= 0) {
            aVar.f5949b = i6 == 0 ? BitmapDescriptorFactory.HUE_RED : aVar.f5950c / i6;
        } else if (new androidx.viewpager2.widget.a(this.g).a()) {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        } else {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(aVar.f5950c)));
        }
    }

    private boolean e() {
        int i = this.h;
        return i == 1 || i == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, boolean z) {
        this.h = z ? 2 : 3;
        boolean z2 = false;
        this.f5947d = false;
        if (this.k != i) {
            z2 = true;
        }
        this.k = i;
        a(2);
        if (z2) {
            b(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.h == 1 && this.f5945b == 1) && i == 1) {
            this.f5947d = false;
            this.h = 1;
            int i2 = this.k;
            if (i2 != -1) {
                this.j = i2;
                this.k = -1;
            } else if (this.j == -1) {
                this.j = this.g.i();
            }
            a(1);
        } else if (!e() || i != 2) {
            if (e() && i == 0) {
                d();
                if (!this.m) {
                    z = true;
                    if (this.i.f5948a != -1) {
                        a(this.i.f5948a, BitmapDescriptorFactory.HUE_RED, 0);
                        z = true;
                    }
                } else if (this.i.f5950c == 0) {
                    z = true;
                    if (this.j != this.i.f5948a) {
                        b(this.i.f5948a);
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    a(0);
                    c();
                }
            }
            if (this.h == 2 && i == 0 && this.f5946c) {
                d();
                if (this.i.f5950c == 0) {
                    if (this.k != this.i.f5948a) {
                        b(this.i.f5948a == -1 ? 0 : this.i.f5948a);
                    }
                    a(0);
                    c();
                }
            }
        } else if (this.m) {
            a(2);
            this.l = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.e.c()) goto L_0x003e;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.e.a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f5945b == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double b() {
        d();
        return this.i.f5948a + this.i.f5949b;
    }
}
