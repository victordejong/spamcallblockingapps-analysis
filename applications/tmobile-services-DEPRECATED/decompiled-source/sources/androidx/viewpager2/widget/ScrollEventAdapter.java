package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ScrollEventAdapter.class */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* renamed from: a */
    private ViewPager2.OnPageChangeCallback f5614a;
    @NonNull

    /* renamed from: b */
    private final ViewPager2 f5615b;
    @NonNull

    /* renamed from: c */
    private final RecyclerView f5616c;
    @NonNull

    /* renamed from: d */
    private final LinearLayoutManager f5617d;

    /* renamed from: e */
    private int f5618e;

    /* renamed from: f */
    private int f5619f;

    /* renamed from: g */
    private ScrollEventValues f5620g = new ScrollEventValues();

    /* renamed from: h */
    private int f5621h;

    /* renamed from: i */
    private int f5622i;

    /* renamed from: j */
    private boolean f5623j;

    /* renamed from: k */
    private boolean f5624k;

    /* renamed from: l */
    private boolean f5625l;

    /* renamed from: m */
    private boolean f5626m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues.class */
    public static final class ScrollEventValues {

        /* renamed from: a */
        int f5627a;

        /* renamed from: b */
        float f5628b;

        /* renamed from: c */
        int f5629c;

        ScrollEventValues() {
        }

        /* renamed from: a */
        void m16425a() {
            this.f5627a = -1;
            this.f5628b = 0.0f;
            this.f5629c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.f5615b = viewPager2;
        RecyclerView recyclerView = viewPager2.f5640o;
        this.f5616c = recyclerView;
        this.f5617d = (LinearLayoutManager) recyclerView.getLayoutManager();
        m16429n();
    }

    /* renamed from: c */
    private void m16440c(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f5614a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.mo8894b(i, f, i2);
        }
    }

    /* renamed from: d */
    private void m16439d(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f5614a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.mo8893c(i);
        }
    }

    /* renamed from: e */
    private void m16438e(int i) {
        if ((this.f5618e != 3 || this.f5619f != 0) && this.f5619f != i) {
            this.f5619f = i;
            ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f5614a;
            if (onPageChangeCallback != null) {
                onPageChangeCallback.mo8895a(i);
            }
        }
    }

    /* renamed from: f */
    private int m16437f() {
        return this.f5617d.m17624b2();
    }

    /* renamed from: k */
    private boolean m16432k() {
        int i = this.f5618e;
        boolean z = true;
        if (i != 1) {
            z = i == 4;
        }
        return z;
    }

    /* renamed from: n */
    private void m16429n() {
        this.f5618e = 0;
        this.f5619f = 0;
        this.f5620g.m16425a();
        this.f5621h = -1;
        this.f5622i = -1;
        this.f5623j = false;
        this.f5624k = false;
        this.f5626m = false;
        this.f5625l = false;
    }

    /* renamed from: p */
    private void m16427p(boolean z) {
        this.f5626m = z;
        this.f5618e = z ? 4 : 1;
        int i = this.f5622i;
        if (i != -1) {
            this.f5621h = i;
            this.f5622i = -1;
        } else if (this.f5621h == -1) {
            this.f5621h = m16437f();
        }
        m16438e(1);
    }

    /* renamed from: q */
    private void m16426q() {
        int i;
        ScrollEventValues scrollEventValues = this.f5620g;
        int b2 = this.f5617d.m17624b2();
        scrollEventValues.f5627a = b2;
        if (b2 == -1) {
            scrollEventValues.m16425a();
            return;
        }
        View D = this.f5617d.mo17454D(b2);
        if (D == null) {
            scrollEventValues.m16425a();
            return;
        }
        int b0 = this.f5617d.m17417b0(D);
        int k0 = this.f5617d.m17395k0(D);
        int n0 = this.f5617d.m17390n0(D);
        int I = this.f5617d.m17445I(D);
        ViewGroup.LayoutParams layoutParams = D.getLayoutParams();
        int i2 = b0;
        int i3 = k0;
        int i4 = n0;
        int i5 = I;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i2 = b0 + marginLayoutParams.leftMargin;
            i3 = k0 + marginLayoutParams.rightMargin;
            i4 = n0 + marginLayoutParams.topMargin;
            i5 = I + marginLayoutParams.bottomMargin;
        }
        int i6 = D.getHeight() + i4 + i5;
        int width = D.getWidth();
        if (this.f5617d.m17608r2() == 0) {
            int left = (D.getLeft() - i2) - this.f5616c.getPaddingLeft();
            i = left;
            if (this.f5615b.m16421d()) {
                i = -left;
            }
            i6 = width + i2 + i3;
        } else {
            i = (D.getTop() - i4) - this.f5616c.getPaddingTop();
        }
        int i7 = -i;
        scrollEventValues.f5629c = i7;
        if (i7 >= 0) {
            scrollEventValues.f5628b = i6 == 0 ? 0.0f : i7 / i6;
        } else if (new AnimateLayoutChangeDetector(this.f5617d).m16449d()) {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        } else {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.f5629c)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /* renamed from: a */
    public void mo5963a(@NonNull RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.f5618e == 1 && this.f5619f == 1) && i == 1) {
            m16427p(false);
        } else if (!m16432k() || i != 2) {
            if (m16432k() && i == 0) {
                m16426q();
                if (!this.f5624k) {
                    int i2 = this.f5620g.f5627a;
                    z = true;
                    if (i2 != -1) {
                        m16440c(i2, 0.0f, 0);
                        z = true;
                    }
                } else {
                    ScrollEventValues scrollEventValues = this.f5620g;
                    if (scrollEventValues.f5629c == 0) {
                        int i3 = this.f5621h;
                        int i4 = scrollEventValues.f5627a;
                        z = true;
                        if (i3 != i4) {
                            m16439d(i4);
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    m16438e(0);
                    m16429n();
                }
            }
            if (this.f5618e == 2 && i == 0 && this.f5625l) {
                m16426q();
                ScrollEventValues scrollEventValues2 = this.f5620g;
                if (scrollEventValues2.f5629c == 0) {
                    int i5 = this.f5622i;
                    int i6 = scrollEventValues2.f5627a;
                    if (i5 != i6) {
                        int i7 = i6;
                        if (i6 == -1) {
                            i7 = 0;
                        }
                        m16439d(i7);
                    }
                    m16438e(0);
                    m16429n();
                }
            }
        } else if (this.f5624k) {
            m16438e(2);
            this.f5623j = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.f5615b.m16421d()) goto L_0x003e;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7064b(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.mo7064b(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public double m16436g() {
        m16426q();
        ScrollEventValues scrollEventValues = this.f5620g;
        return scrollEventValues.f5627a + scrollEventValues.f5628b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int m16435h() {
        return this.f5619f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public boolean m16434i() {
        return this.f5626m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public boolean m16433j() {
        return this.f5619f == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m16431l() {
        this.f5625l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m16430m(int i, boolean z) {
        this.f5618e = z ? 2 : 3;
        boolean z2 = false;
        this.f5626m = false;
        if (this.f5622i != i) {
            z2 = true;
        }
        this.f5622i = i;
        m16438e(2);
        if (z2) {
            m16439d(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m16428o(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f5614a = onPageChangeCallback;
    }
}
