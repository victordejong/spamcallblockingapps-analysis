package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
/* renamed from: androidx.viewpager2.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e.class */
public final class C2977e extends RecyclerView.AbstractC2645m {

    /* renamed from: a */
    ViewPager2.AbstractC2963e f11093a;

    /* renamed from: b */
    public int f11094b;

    /* renamed from: c */
    boolean f11095c;

    /* renamed from: d */
    boolean f11096d;

    /* renamed from: e */
    private final ViewPager2 f11097e;

    /* renamed from: f */
    private final RecyclerView f11098f;

    /* renamed from: g */
    private final LinearLayoutManager f11099g;

    /* renamed from: h */
    private int f11100h;

    /* renamed from: i */
    private C2978a f11101i = new C2978a();

    /* renamed from: j */
    private int f11102j;

    /* renamed from: k */
    private int f11103k;

    /* renamed from: l */
    private boolean f11104l;

    /* renamed from: m */
    private boolean f11105m;

    /* renamed from: androidx.viewpager2.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/e$a.class */
    public static final class C2978a {

        /* renamed from: a */
        int f11106a;

        /* renamed from: b */
        float f11107b;

        /* renamed from: c */
        int f11108c;

        C2978a() {
        }

        /* renamed from: a */
        final void m39521a() {
            this.f11106a = -1;
            this.f11107b = BitmapDescriptorFactory.HUE_RED;
            this.f11108c = 0;
        }
    }

    public C2977e(ViewPager2 viewPager2) {
        this.f11097e = viewPager2;
        RecyclerView recyclerView = viewPager2.f11050f;
        this.f11098f = recyclerView;
        this.f11099g = (LinearLayoutManager) recyclerView.getLayoutManager();
        m39524c();
    }

    /* renamed from: a */
    private void m39529a(int i) {
        if ((this.f11100h == 3 && this.f11094b == 0) || this.f11094b == i) {
            return;
        }
        this.f11094b = i;
        ViewPager2.AbstractC2963e abstractC2963e = this.f11093a;
        if (abstractC2963e == null) {
            return;
        }
        abstractC2963e.mo39533a(i);
    }

    /* renamed from: a */
    private void m39528a(int i, float f, int i2) {
        ViewPager2.AbstractC2963e abstractC2963e = this.f11093a;
        if (abstractC2963e != null) {
            abstractC2963e.mo39532a(i, f, i2);
        }
    }

    /* renamed from: b */
    private void m39525b(int i) {
        ViewPager2.AbstractC2963e abstractC2963e = this.f11093a;
        if (abstractC2963e != null) {
            abstractC2963e.mo39531b(i);
        }
    }

    /* renamed from: c */
    private void m39524c() {
        this.f11100h = 0;
        this.f11094b = 0;
        this.f11101i.m39521a();
        this.f11102j = -1;
        this.f11103k = -1;
        this.f11104l = false;
        this.f11105m = false;
        this.f11096d = false;
        this.f11095c = false;
    }

    /* renamed from: d */
    private void m39523d() {
        int i;
        int i2;
        C2978a c2978a = this.f11101i;
        c2978a.f11106a = this.f11099g.m40521i();
        if (c2978a.f11106a == -1) {
            c2978a.m39521a();
            return;
        }
        View mo40376b = this.f11099g.mo40376b(c2978a.f11106a);
        if (mo40376b == null) {
            c2978a.m39521a();
            return;
        }
        int m = LinearLayoutManager.m40349m(mo40376b);
        int n = LinearLayoutManager.m40348n(mo40376b);
        int k = LinearLayoutManager.m40352k(mo40376b);
        int l = LinearLayoutManager.m40351l(mo40376b);
        ViewGroup.LayoutParams layoutParams = mo40376b.getLayoutParams();
        int i3 = m;
        int i4 = n;
        int i5 = k;
        int i6 = l;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i3 = m + marginLayoutParams.leftMargin;
            i4 = n + marginLayoutParams.rightMargin;
            i5 = k + marginLayoutParams.topMargin;
            i6 = l + marginLayoutParams.bottomMargin;
        }
        int height = mo40376b.getHeight() + i5 + i6;
        int width = mo40376b.getWidth();
        if (this.f11099g.getOrientation() == 0) {
            int left = (mo40376b.getLeft() - i3) - this.f11098f.getPaddingLeft();
            i = left;
            if (this.f11097e.m39566c()) {
                i = -left;
            }
            i2 = width + i3 + i4;
        } else {
            i = (mo40376b.getTop() - i5) - this.f11098f.getPaddingTop();
            i2 = height;
        }
        c2978a.f11108c = -i;
        if (c2978a.f11108c >= 0) {
            c2978a.f11107b = i2 == 0 ? 0.0f : c2978a.f11108c / i2;
        } else if (!new C2972a(this.f11099g).m39538a()) {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(c2978a.f11108c)));
        } else {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    /* renamed from: e */
    private boolean m39522e() {
        int i = this.f11100h;
        return i == 1 || i == 4;
    }

    /* renamed from: a */
    public final void m39527a(int i, boolean z) {
        this.f11100h = z ? 2 : 3;
        boolean z2 = false;
        this.f11096d = false;
        if (this.f11103k != i) {
            z2 = true;
        }
        this.f11103k = i;
        m39529a(2);
        if (z2) {
            m39525b(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10833a(RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.f11100h == 1 && this.f11094b == 1) && i == 1) {
            this.f11096d = false;
            this.f11100h = 1;
            int i2 = this.f11103k;
            if (i2 != -1) {
                this.f11102j = i2;
                this.f11103k = -1;
            } else if (this.f11102j == -1) {
                this.f11102j = this.f11099g.m40521i();
            }
            m39529a(1);
        } else if (m39522e() && i == 2) {
            if (!this.f11105m) {
                return;
            }
            m39529a(2);
            this.f11104l = true;
        } else {
            if (m39522e() && i == 0) {
                m39523d();
                if (!this.f11105m) {
                    z = true;
                    if (this.f11101i.f11106a != -1) {
                        m39528a(this.f11101i.f11106a, BitmapDescriptorFactory.HUE_RED, 0);
                        z = true;
                    }
                } else if (this.f11101i.f11108c == 0) {
                    z = true;
                    if (this.f11102j != this.f11101i.f11106a) {
                        m39525b(this.f11101i.f11106a);
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    m39529a(0);
                    m39524c();
                }
            }
            if (this.f11100h != 2 || i != 0 || !this.f11095c) {
                return;
            }
            m39523d();
            if (this.f11101i.f11108c != 0) {
                return;
            }
            if (this.f11103k != this.f11101i.f11106a) {
                m39525b(this.f11101i.f11106a == -1 ? 0 : this.f11101i.f11106a);
            }
            m39529a(0);
            m39524c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.f11097e.m39566c()) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo10832a(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.C2977e.mo10832a(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* renamed from: a */
    public final boolean m39530a() {
        return this.f11094b == 0;
    }

    /* renamed from: b */
    public final double m39526b() {
        m39523d();
        return this.f11101i.f11106a + this.f11101i.f11107b;
    }
}
