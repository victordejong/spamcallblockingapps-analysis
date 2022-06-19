package com.github.jdsjlzx.recyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.core.content.C0586a;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.github.jdsjlzx.view.ArrowRefreshHeader;
import com.github.jdsjlzx.view.LoadingFooter;
import java.util.Objects;
import p078c.p081b.p082a.p083g.AbstractC1824a;
import p078c.p081b.p082a.p083g.AbstractC1825b;
import p078c.p081b.p082a.p083g.AbstractC1828e;
import p078c.p081b.p082a.p083g.AbstractC1829f;
import p078c.p081b.p082a.p083g.AbstractC1830g;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView.class */
public class LRecyclerView extends RecyclerView {

    /* renamed from: O0 */
    private boolean f13830O0;

    /* renamed from: P0 */
    private boolean f13831P0;

    /* renamed from: Q0 */
    private boolean f13832Q0;

    /* renamed from: R0 */
    private boolean f13833R0;

    /* renamed from: S0 */
    private AbstractC1830g f13834S0;

    /* renamed from: T0 */
    private AbstractC1828e f13835T0;

    /* renamed from: U0 */
    private AbstractC4563d f13836U0;

    /* renamed from: V0 */
    private AbstractC1825b f13837V0;

    /* renamed from: W0 */
    private AbstractC1824a f13838W0;

    /* renamed from: X0 */
    private View f13839X0;

    /* renamed from: Y0 */
    private View f13840Y0;

    /* renamed from: Z0 */
    private final RecyclerView.AbstractC0912i f13841Z0;

    /* renamed from: a1 */
    private float f13842a1;

    /* renamed from: b1 */
    private float f13843b1;

    /* renamed from: c1 */
    private int f13844c1;

    /* renamed from: d1 */
    private C4568a f13845d1;

    /* renamed from: e1 */
    private boolean f13846e1;

    /* renamed from: f1 */
    private boolean f13847f1;

    /* renamed from: g1 */
    private int f13848g1;

    /* renamed from: h1 */
    private float f13849h1;

    /* renamed from: i1 */
    private float f13850i1;

    /* renamed from: j1 */
    private boolean f13851j1;

    /* renamed from: k1 */
    protected LayoutManagerType f13852k1;

    /* renamed from: l1 */
    private int[] f13853l1;

    /* renamed from: m1 */
    private int f13854m1;

    /* renamed from: n1 */
    private int f13855n1;

    /* renamed from: o1 */
    private int f13856o1;

    /* renamed from: p1 */
    private boolean f13857p1;

    /* renamed from: q1 */
    private int f13858q1;

    /* renamed from: r1 */
    private int f13859r1;

    /* renamed from: s1 */
    private AppBarStateChangeListener$State f13860s1;

    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType.class */
    public enum LayoutManagerType {
        LinearLayout,
        StaggeredGridLayout,
        GridLayout
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.jdsjlzx.recyclerview.LRecyclerView$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView$a.class */
    public class View$OnClickListenerC4560a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC1829f f13865d;

        View$OnClickListenerC4560a(AbstractC1829f abstractC1829f) {
            LRecyclerView.this = r4;
            this.f13865d = abstractC1829f;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LRecyclerView.this.f13838W0.mo22193c();
            this.f13865d.m28807a();
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.LRecyclerView$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView$b.class */
    static /* synthetic */ class C4561b {

        /* renamed from: a */
        static final /* synthetic */ int[] f13867a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[LayoutManagerType.values().length];
            f13867a = iArr;
            try {
                iArr[LayoutManagerType.LinearLayout.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13867a[LayoutManagerType.GridLayout.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13867a[LayoutManagerType.StaggeredGridLayout.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.github.jdsjlzx.recyclerview.LRecyclerView$c */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView$c.class */
    public class C4562c extends RecyclerView.AbstractC0912i {
        private C4562c() {
            LRecyclerView.this = r4;
        }

        /* synthetic */ C4562c(LRecyclerView lRecyclerView, View$OnClickListenerC4560a view$OnClickListenerC4560a) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: a */
        public void mo22252a() {
            RecyclerView.Adapter adapter = LRecyclerView.this.getAdapter();
            if (adapter instanceof C4568a) {
                C4568a c4568a = (C4568a) adapter;
                if (c4568a.m22236I() != null && LRecyclerView.this.f13839X0 != null) {
                    if (c4568a.m22236I().mo4501d() == 0) {
                        LRecyclerView.this.f13839X0.setVisibility(0);
                        LRecyclerView.this.setVisibility(8);
                    } else {
                        LRecyclerView.this.f13839X0.setVisibility(8);
                        LRecyclerView.this.setVisibility(0);
                    }
                }
            } else if (adapter != null && LRecyclerView.this.f13839X0 != null) {
                if (adapter.mo4501d() == 0) {
                    LRecyclerView.this.f13839X0.setVisibility(0);
                    LRecyclerView.this.setVisibility(8);
                } else {
                    LRecyclerView.this.f13839X0.setVisibility(8);
                    LRecyclerView.this.setVisibility(0);
                }
            }
            if (LRecyclerView.this.f13845d1 != null) {
                LRecyclerView.this.f13845d1.m31967i();
                if (LRecyclerView.this.f13845d1.m22236I().mo4501d() >= LRecyclerView.this.f13844c1) {
                    return;
                }
                LRecyclerView.this.f13840Y0.setVisibility(8);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: b */
        public void mo22251b(int i, int i2) {
            LRecyclerView.this.f13845d1.m31965k(i + LRecyclerView.this.f13845d1.m22237H() + 1, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: d */
        public void mo22250d(int i, int i2) {
            LRecyclerView.this.f13845d1.m31964l(i + LRecyclerView.this.f13845d1.m22237H() + 1, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: e */
        public void mo22249e(int i, int i2) {
            LRecyclerView.this.f13845d1.m31963m(i + LRecyclerView.this.f13845d1.m22237H() + 1, i2);
            if (LRecyclerView.this.f13845d1.m22236I().mo4501d() < LRecyclerView.this.f13844c1) {
                LRecyclerView.this.f13840Y0.setVisibility(8);
            }
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.LRecyclerView$d */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LRecyclerView$d.class */
    public interface AbstractC4563d {
        /* renamed from: a */
        void m22266a();

        /* renamed from: b */
        void m22265b(int i, int i2);

        /* renamed from: c */
        void m22264c(int i);

        /* renamed from: d */
        void m22263d();
    }

    public LRecyclerView(Context context) {
        this(context, null);
    }

    public LRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13830O0 = true;
        this.f13831P0 = true;
        this.f13832Q0 = false;
        this.f13833R0 = false;
        this.f13841Z0 = new C4562c(this, null);
        this.f13842a1 = -1.0f;
        this.f13844c1 = 10;
        this.f13846e1 = false;
        this.f13855n1 = 0;
        this.f13856o1 = 0;
        this.f13857p1 = true;
        this.f13858q1 = 0;
        this.f13859r1 = 0;
        this.f13860s1 = AppBarStateChangeListener$State.EXPANDED;
        m22271F1();
    }

    /* renamed from: D1 */
    private void m22273D1(int i, int i2) {
        AbstractC4563d abstractC4563d = this.f13836U0;
        if (abstractC4563d != null) {
            if (i != 0) {
                int i3 = this.f13856o1;
                if (i3 > 20 && this.f13857p1) {
                    this.f13857p1 = false;
                    abstractC4563d.m22263d();
                    this.f13856o1 = 0;
                } else if (i3 < -20 && !this.f13857p1) {
                    this.f13857p1 = true;
                    abstractC4563d.m22266a();
                    this.f13856o1 = 0;
                }
            } else if (!this.f13857p1) {
                this.f13857p1 = true;
                abstractC4563d.m22266a();
            }
        }
        boolean z = this.f13857p1;
        if ((!z || i2 <= 0) && (z || i2 >= 0)) {
            return;
        }
        this.f13856o1 += i2;
    }

    /* renamed from: E1 */
    private int m22272E1(int[] iArr) {
        int i = 0;
        int i2 = iArr[0];
        int length = iArr.length;
        while (i < length) {
            int i3 = iArr[i];
            int i4 = i2;
            if (i3 > i2) {
                i4 = i3;
            }
            i++;
            i2 = i4;
        }
        return i2;
    }

    /* renamed from: F1 */
    private void m22271F1() {
        this.f13848g1 = ViewConfiguration.get(getContext().getApplicationContext()).getScaledTouchSlop();
        if (this.f13830O0) {
            setRefreshHeader(new ArrowRefreshHeader(getContext().getApplicationContext()));
        }
        if (this.f13831P0) {
            setLoadMoreFooter(new LoadingFooter(getContext().getApplicationContext()));
        }
    }

    /* renamed from: G1 */
    public boolean m22270G1() {
        return this.f13830O0 && this.f13837V0.getHeaderView().getParent() != null;
    }

    /* renamed from: H1 */
    public void m22269H1(int i) {
        this.f13844c1 = i;
        if (!this.f13832Q0) {
            if (!this.f13833R0) {
                return;
            }
            this.f13833R0 = false;
            this.f13838W0.mo22195a();
            return;
        }
        this.f13846e1 = false;
        this.f13832Q0 = false;
        this.f13837V0.mo22205c();
        if (this.f13845d1.m22236I().mo4501d() >= i) {
            return;
        }
        this.f13840Y0.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: L0 */
    public void mo22256L0(int i) {
        super.mo22256L0(i);
        this.f13855n1 = i;
        AbstractC4563d abstractC4563d = this.f13836U0;
        if (abstractC4563d != null) {
            abstractC4563d.m22264c(i);
        }
        if (this.f13835T0 == null || !this.f13831P0 || this.f13855n1 != 0) {
            return;
        }
        RecyclerView.AbstractC0921o layoutManager = getLayoutManager();
        int m31858J = layoutManager.m31858J();
        int m31835Y = layoutManager.m31835Y();
        if (m31858J <= 0 || this.f13854m1 < m31835Y - 1 || m31835Y <= m31858J || this.f13846e1 || this.f13832Q0) {
            return;
        }
        this.f13840Y0.setVisibility(0);
        if (this.f13833R0) {
            return;
        }
        this.f13833R0 = true;
        this.f13838W0.mo22193c();
        this.f13835T0.mo27163a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: M0 */
    public void mo22255M0(int i, int i2) {
        int i3;
        super.mo22255M0(i, i2);
        RecyclerView.AbstractC0921o layoutManager = getLayoutManager();
        if (this.f13852k1 == null) {
            if (layoutManager instanceof LinearLayoutManager) {
                this.f13852k1 = LayoutManagerType.LinearLayout;
            } else if (layoutManager instanceof GridLayoutManager) {
                this.f13852k1 = LayoutManagerType.GridLayout;
            } else if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                throw new RuntimeException("Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager");
            } else {
                this.f13852k1 = LayoutManagerType.StaggeredGridLayout;
            }
        }
        int i4 = C4561b.f13867a[this.f13852k1.ordinal()];
        if (i4 == 1) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            i3 = linearLayoutManager.m32140Z1();
            this.f13854m1 = linearLayoutManager.m32138b2();
        } else if (i4 == 2) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            i3 = gridLayoutManager.m32140Z1();
            this.f13854m1 = gridLayoutManager.m32138b2();
        } else if (i4 != 3) {
            i3 = 0;
        } else {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            if (this.f13853l1 == null) {
                this.f13853l1 = new int[staggeredGridLayoutManager.m31614t2()];
            }
            staggeredGridLayoutManager.m31632j2(this.f13853l1);
            this.f13854m1 = m22272E1(this.f13853l1);
            staggeredGridLayoutManager.m31640d2(this.f13853l1);
            i3 = m22272E1(this.f13853l1);
        }
        m22273D1(i3, i2);
        int i5 = this.f13859r1 + i;
        this.f13859r1 = i5;
        int i6 = this.f13858q1 + i2;
        this.f13858q1 = i6;
        int i7 = i5;
        if (i5 < 0) {
            i7 = 0;
        }
        this.f13859r1 = i7;
        int i8 = i6;
        if (i6 < 0) {
            i8 = 0;
        }
        this.f13858q1 = i8;
        if (this.f13857p1 && i2 == 0) {
            this.f13858q1 = 0;
        }
        AbstractC4563d abstractC4563d = this.f13836U0;
        if (abstractC4563d != null) {
            abstractC4563d.m22265b(i7, this.f13858q1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C4568a c4568a = this.f13845d1;
        if (c4568a == null || this.f13841Z0 == null || !this.f13851j1) {
            return;
        }
        c4568a.m22236I().m31958z(this.f13841Z0);
        this.f13851j1 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r0 != 3) goto L21;
     */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.getAction()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L62
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L5a
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L1b
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L5a
            goto L77
        L1b:
            r0 = r3
            boolean r0 = r0.f13847f1
            if (r0 == 0) goto L24
            r0 = 0
            return r0
        L24:
            r0 = r4
            float r0 = r0.getY()
            r6 = r0
            r0 = r4
            float r0 = r0.getX()
            r1 = r3
            float r1 = r1.f13850i1
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r7 = r0
            r0 = r6
            r1 = r3
            float r1 = r1.f13849h1
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r6 = r0
            r0 = r7
            r1 = r3
            int r1 = r1.f13848g1
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L77
            r0 = r7
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L77
            r0 = r3
            r1 = 1
            r0.f13847f1 = r1
            r0 = 0
            return r0
        L5a:
            r0 = r3
            r1 = 0
            r0.f13847f1 = r1
            goto L77
        L62:
            r0 = r3
            r1 = r4
            float r1 = r1.getY()
            r0.f13849h1 = r1
            r0 = r3
            r1 = r4
            float r1 = r1.getX()
            r0.f13850i1 = r1
            r0 = r3
            r1 = 0
            r0.f13847f1 = r1
        L77:
            r0 = r3
            r1 = r4
            boolean r0 = super.onInterceptTouchEvent(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.jdsjlzx.recyclerview.LRecyclerView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (this.f13842a1 == -1.0f) {
                this.f13842a1 = motionEvent.getRawY();
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f13842a1 = motionEvent.getRawY();
                this.f13843b1 = 0.0f;
            } else if (action != 2) {
                this.f13842a1 = -1.0f;
                if (m22270G1() && this.f13830O0 && !this.f13832Q0 && this.f13837V0.mo22206b() && this.f13834S0 != null) {
                    this.f13832Q0 = true;
                    this.f13840Y0.setVisibility(8);
                    this.f13834S0.mo27162a();
                }
            } else {
                float rawY = (motionEvent.getRawY() - this.f13842a1) / 2.0f;
                this.f13842a1 = motionEvent.getRawY();
                this.f13843b1 += rawY;
                if (m22270G1() && this.f13830O0 && !this.f13832Q0 && this.f13860s1 == AppBarStateChangeListener$State.EXPANDED) {
                    this.f13837V0.mo22207a(rawY, this.f13843b1);
                    if (this.f13837V0.getVisibleHeight() > 0) {
                        return false;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        C4568a c4568a = this.f13845d1;
        if (c4568a != null && this.f13841Z0 != null && this.f13851j1) {
            c4568a.m22236I().m31958z(this.f13841Z0);
        }
        C4568a c4568a2 = (C4568a) adapter;
        this.f13845d1 = c4568a2;
        super.setAdapter(c4568a2);
        this.f13845d1.m22236I().m31960x(this.f13841Z0);
        this.f13841Z0.mo22252a();
        this.f13851j1 = true;
        this.f13845d1.m22230O(this.f13837V0);
        if (!this.f13831P0 || this.f13845d1.m22239F() != 0) {
            return;
        }
        this.f13845d1.m22241D(this.f13840Y0);
    }

    public void setArrowImageView(int i) {
        AbstractC1825b abstractC1825b = this.f13837V0;
        if (abstractC1825b == null || !(abstractC1825b instanceof ArrowRefreshHeader)) {
            return;
        }
        ((ArrowRefreshHeader) abstractC1825b).setArrowImageView(i);
    }

    public void setEmptyView(View view) {
        this.f13839X0 = view;
        this.f13841Z0.mo22252a();
    }

    public void setFooterViewColor(int i, int i2, int i3) {
        AbstractC1824a abstractC1824a = this.f13838W0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        LoadingFooter loadingFooter = (LoadingFooter) abstractC1824a;
        loadingFooter.setIndicatorColor(C0586a.m33350d(getContext(), i));
        loadingFooter.setHintTextColor(i2);
        loadingFooter.setViewBackgroundColor(i3);
    }

    public void setFooterViewHint(String str, String str2, String str3) {
        AbstractC1824a abstractC1824a = this.f13838W0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        LoadingFooter loadingFooter = (LoadingFooter) abstractC1824a;
        loadingFooter.setLoadingHint(str);
        loadingFooter.setNoMoreHint(str2);
        loadingFooter.setNoNetWorkHint(str3);
    }

    public void setHeaderViewColor(int i, int i2, int i3) {
        AbstractC1825b abstractC1825b = this.f13837V0;
        if (abstractC1825b == null || !(abstractC1825b instanceof ArrowRefreshHeader)) {
            return;
        }
        ArrowRefreshHeader arrowRefreshHeader = (ArrowRefreshHeader) abstractC1825b;
        arrowRefreshHeader.setIndicatorColor(C0586a.m33350d(getContext(), i));
        arrowRefreshHeader.setHintTextColor(i2);
        arrowRefreshHeader.setViewBackgroundColor(i3);
    }

    public void setLScrollListener(AbstractC4563d abstractC4563d) {
        this.f13836U0 = abstractC4563d;
    }

    public void setLoadMoreEnabled(boolean z) {
        C4568a c4568a = this.f13845d1;
        Objects.requireNonNull(c4568a, "LRecyclerViewAdapter cannot be null, please make sure the variable mWrapAdapter have been initialized.");
        this.f13831P0 = z;
        if (!z) {
            if (c4568a != null) {
                c4568a.m22231N();
            } else {
                this.f13838W0.mo22192d();
            }
        }
    }

    public void setLoadMoreFooter(AbstractC1824a abstractC1824a) {
        this.f13838W0 = abstractC1824a;
        View footView = abstractC1824a.getFootView();
        this.f13840Y0 = footView;
        footView.setVisibility(8);
        ViewGroup.LayoutParams layoutParams = this.f13840Y0.getLayoutParams();
        if (layoutParams != null) {
            this.f13840Y0.setLayoutParams(new RecyclerView.LayoutParams(layoutParams));
        } else {
            this.f13840Y0.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        }
    }

    public void setLoadingMoreProgressStyle(int i) {
        AbstractC1824a abstractC1824a = this.f13838W0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        ((LoadingFooter) abstractC1824a).setProgressStyle(i);
    }

    public void setNoMore(boolean z) {
        this.f13833R0 = false;
        this.f13846e1 = z;
        if (z) {
            this.f13838W0.mo22194b();
        } else {
            this.f13838W0.mo22195a();
        }
    }

    public void setOnLoadMoreListener(AbstractC1828e abstractC1828e) {
        this.f13835T0 = abstractC1828e;
    }

    public void setOnNetWorkErrorListener(AbstractC1829f abstractC1829f) {
        LoadingFooter loadingFooter = (LoadingFooter) this.f13840Y0;
        loadingFooter.setState(LoadingFooter.State.NetWorkError);
        loadingFooter.setOnClickListener(new View$OnClickListenerC4560a(abstractC1829f));
    }

    public void setOnRefreshListener(AbstractC1830g abstractC1830g) {
        this.f13834S0 = abstractC1830g;
    }

    public void setPullRefreshEnabled(boolean z) {
        this.f13830O0 = z;
    }

    public void setRefreshHeader(AbstractC1825b abstractC1825b) {
        if (!this.f13851j1) {
            this.f13837V0 = abstractC1825b;
            return;
        }
        throw new RuntimeException("setRefreshHeader must been invoked before setting the adapter.");
    }

    public void setRefreshProgressStyle(int i) {
        AbstractC1825b abstractC1825b = this.f13837V0;
        if (abstractC1825b == null || !(abstractC1825b instanceof ArrowRefreshHeader)) {
            return;
        }
        ((ArrowRefreshHeader) abstractC1825b).setProgressStyle(i);
    }
}
