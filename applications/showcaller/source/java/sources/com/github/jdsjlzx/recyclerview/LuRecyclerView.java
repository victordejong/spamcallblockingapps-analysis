package com.github.jdsjlzx.recyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.C0586a;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.github.jdsjlzx.view.LoadingFooter;
import java.util.Objects;
import p078c.p081b.p082a.p083g.AbstractC1824a;
import p078c.p081b.p082a.p083g.AbstractC1828e;
import p078c.p081b.p082a.p083g.AbstractC1829f;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView.class */
public class LuRecyclerView extends RecyclerView {

    /* renamed from: O0 */
    private boolean f13869O0;

    /* renamed from: P0 */
    private boolean f13870P0;

    /* renamed from: Q0 */
    private boolean f13871Q0;

    /* renamed from: R0 */
    private boolean f13872R0;

    /* renamed from: S0 */
    private AbstractC1828e f13873S0;

    /* renamed from: T0 */
    private AbstractC4567d f13874T0;

    /* renamed from: U0 */
    private AbstractC1824a f13875U0;

    /* renamed from: V0 */
    private View f13876V0;

    /* renamed from: W0 */
    private View f13877W0;

    /* renamed from: X0 */
    private final RecyclerView.AbstractC0912i f13878X0;

    /* renamed from: Y0 */
    private int f13879Y0;

    /* renamed from: Z0 */
    private C4574b f13880Z0;

    /* renamed from: a1 */
    private boolean f13881a1;

    /* renamed from: b1 */
    protected LayoutManagerType f13882b1;

    /* renamed from: c1 */
    private int[] f13883c1;

    /* renamed from: d1 */
    private int f13884d1;

    /* renamed from: e1 */
    private int f13885e1;

    /* renamed from: f1 */
    private int f13886f1;

    /* renamed from: g1 */
    private boolean f13887g1;

    /* renamed from: h1 */
    private int f13888h1;

    /* renamed from: i1 */
    private int f13889i1;

    /* renamed from: j1 */
    private AppBarStateChangeListener$State f13890j1;

    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView$LayoutManagerType.class */
    public enum LayoutManagerType {
        LinearLayout,
        StaggeredGridLayout,
        GridLayout
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.jdsjlzx.recyclerview.LuRecyclerView$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView$a.class */
    public class View$OnClickListenerC4564a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AbstractC1829f f13895d;

        View$OnClickListenerC4564a(AbstractC1829f abstractC1829f) {
            LuRecyclerView.this = r4;
            this.f13895d = abstractC1829f;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LuRecyclerView.this.f13875U0.mo22193c();
            this.f13895d.m28807a();
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.LuRecyclerView$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView$b.class */
    static /* synthetic */ class C4565b {

        /* renamed from: a */
        static final /* synthetic */ int[] f13897a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[LayoutManagerType.values().length];
            f13897a = iArr;
            try {
                iArr[LayoutManagerType.LinearLayout.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13897a[LayoutManagerType.GridLayout.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13897a[LayoutManagerType.StaggeredGridLayout.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.github.jdsjlzx.recyclerview.LuRecyclerView$c */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView$c.class */
    public class C4566c extends RecyclerView.AbstractC0912i {
        private C4566c() {
            LuRecyclerView.this = r4;
        }

        /* synthetic */ C4566c(LuRecyclerView luRecyclerView, View$OnClickListenerC4564a view$OnClickListenerC4564a) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: a */
        public void mo22252a() {
            RecyclerView.Adapter adapter = LuRecyclerView.this.getAdapter();
            if (adapter instanceof C4568a) {
                C4568a c4568a = (C4568a) adapter;
                if (c4568a.m22236I() != null && LuRecyclerView.this.f13876V0 != null) {
                    if (c4568a.m22236I().mo4501d() == 0) {
                        LuRecyclerView.this.f13876V0.setVisibility(0);
                        LuRecyclerView.this.setVisibility(8);
                    } else {
                        LuRecyclerView.this.f13876V0.setVisibility(8);
                        LuRecyclerView.this.setVisibility(0);
                    }
                }
            } else if (adapter != null && LuRecyclerView.this.f13876V0 != null) {
                if (adapter.mo4501d() == 0) {
                    LuRecyclerView.this.f13876V0.setVisibility(0);
                    LuRecyclerView.this.setVisibility(8);
                } else {
                    LuRecyclerView.this.f13876V0.setVisibility(8);
                    LuRecyclerView.this.setVisibility(0);
                }
            }
            if (LuRecyclerView.this.f13880Z0 != null) {
                LuRecyclerView.this.f13880Z0.m31967i();
                if (LuRecyclerView.this.f13880Z0.m22219I().mo4501d() >= LuRecyclerView.this.f13879Y0) {
                    return;
                }
                LuRecyclerView.this.f13877W0.setVisibility(8);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: b */
        public void mo22251b(int i, int i2) {
            LuRecyclerView.this.f13880Z0.m31965k(i + LuRecyclerView.this.f13880Z0.m22220H() + 1, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: d */
        public void mo22250d(int i, int i2) {
            LuRecyclerView.this.f13880Z0.m31964l(i + LuRecyclerView.this.f13880Z0.m22220H() + 1, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: e */
        public void mo22249e(int i, int i2) {
            LuRecyclerView.this.f13880Z0.m31963m(i + LuRecyclerView.this.f13880Z0.m22220H() + 1, i2);
            if (LuRecyclerView.this.f13880Z0.m22219I().mo4501d() < LuRecyclerView.this.f13879Y0) {
                LuRecyclerView.this.f13877W0.setVisibility(8);
            }
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.LuRecyclerView$d */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/LuRecyclerView$d.class */
    public interface AbstractC4567d {
        /* renamed from: a */
        void m22248a();

        /* renamed from: b */
        void m22247b(int i, int i2);

        /* renamed from: c */
        void m22246c(int i);

        /* renamed from: d */
        void m22245d();
    }

    public LuRecyclerView(Context context) {
        this(context, null);
    }

    public LuRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LuRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13869O0 = true;
        this.f13870P0 = false;
        this.f13871Q0 = false;
        this.f13872R0 = false;
        this.f13878X0 = new C4566c(this, null);
        this.f13879Y0 = 10;
        this.f13881a1 = false;
        this.f13885e1 = 0;
        this.f13886f1 = 0;
        this.f13887g1 = true;
        this.f13888h1 = 0;
        this.f13889i1 = 0;
        this.f13890j1 = AppBarStateChangeListener$State.EXPANDED;
        m22257F1();
    }

    /* renamed from: D1 */
    private void m22259D1(int i, int i2) {
        AbstractC4567d abstractC4567d = this.f13874T0;
        if (abstractC4567d != null) {
            if (i != 0) {
                int i3 = this.f13886f1;
                if (i3 > 20 && this.f13887g1) {
                    this.f13887g1 = false;
                    abstractC4567d.m22245d();
                    this.f13886f1 = 0;
                } else if (i3 < -20 && !this.f13887g1) {
                    this.f13887g1 = true;
                    abstractC4567d.m22248a();
                    this.f13886f1 = 0;
                }
            } else if (!this.f13887g1) {
                this.f13887g1 = true;
                abstractC4567d.m22248a();
            }
        }
        boolean z = this.f13887g1;
        if ((!z || i2 <= 0) && (z || i2 >= 0)) {
            return;
        }
        this.f13886f1 += i2;
    }

    /* renamed from: E1 */
    private int m22258E1(int[] iArr) {
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
    private void m22257F1() {
        if (this.f13869O0) {
            setLoadMoreFooter(new LoadingFooter(getContext().getApplicationContext()));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: L0 */
    public void mo22256L0(int i) {
        super.mo22256L0(i);
        this.f13885e1 = i;
        AbstractC4567d abstractC4567d = this.f13874T0;
        if (abstractC4567d != null) {
            abstractC4567d.m22246c(i);
        }
        if (this.f13873S0 == null || !this.f13869O0 || this.f13885e1 != 0) {
            return;
        }
        RecyclerView.AbstractC0921o layoutManager = getLayoutManager();
        int m31858J = layoutManager.m31858J();
        int m31835Y = layoutManager.m31835Y();
        if (m31858J <= 0 || this.f13884d1 < m31835Y - 1 || m31835Y <= m31858J || this.f13881a1 || this.f13870P0) {
            return;
        }
        this.f13877W0.setVisibility(0);
        if (this.f13871Q0) {
            return;
        }
        this.f13871Q0 = true;
        this.f13875U0.mo22193c();
        this.f13873S0.mo27163a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: M0 */
    public void mo22255M0(int i, int i2) {
        int i3;
        super.mo22255M0(i, i2);
        RecyclerView.AbstractC0921o layoutManager = getLayoutManager();
        if (this.f13882b1 == null) {
            if (layoutManager instanceof LinearLayoutManager) {
                this.f13882b1 = LayoutManagerType.LinearLayout;
            } else if (layoutManager instanceof GridLayoutManager) {
                this.f13882b1 = LayoutManagerType.GridLayout;
            } else if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                throw new RuntimeException("Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager");
            } else {
                this.f13882b1 = LayoutManagerType.StaggeredGridLayout;
            }
        }
        int i4 = C4565b.f13897a[this.f13882b1.ordinal()];
        if (i4 == 1) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            i3 = linearLayoutManager.m32140Z1();
            this.f13884d1 = linearLayoutManager.m32138b2();
        } else if (i4 == 2) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            i3 = gridLayoutManager.m32140Z1();
            this.f13884d1 = gridLayoutManager.m32138b2();
        } else if (i4 != 3) {
            i3 = 0;
        } else {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            if (this.f13883c1 == null) {
                this.f13883c1 = new int[staggeredGridLayoutManager.m31614t2()];
            }
            staggeredGridLayoutManager.m31632j2(this.f13883c1);
            this.f13884d1 = m22258E1(this.f13883c1);
            staggeredGridLayoutManager.m31640d2(this.f13883c1);
            i3 = m22258E1(this.f13883c1);
        }
        m22259D1(i3, i2);
        int i5 = this.f13889i1 + i;
        this.f13889i1 = i5;
        int i6 = this.f13888h1 + i2;
        this.f13888h1 = i6;
        int i7 = i5;
        if (i5 < 0) {
            i7 = 0;
        }
        this.f13889i1 = i7;
        int i8 = i6;
        if (i6 < 0) {
            i8 = 0;
        }
        this.f13888h1 = i8;
        if (this.f13887g1 && i2 == 0) {
            this.f13888h1 = 0;
        }
        AbstractC4567d abstractC4567d = this.f13874T0;
        if (abstractC4567d != null) {
            abstractC4567d.m22247b(i7, this.f13888h1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        C4574b c4574b = this.f13880Z0;
        if (c4574b != null && this.f13878X0 != null) {
            c4574b.m22219I().m31958z(this.f13878X0);
        }
        C4574b c4574b2 = (C4574b) adapter;
        this.f13880Z0 = c4574b2;
        super.setAdapter(c4574b2);
        this.f13880Z0.m22219I().m31960x(this.f13878X0);
        this.f13878X0.mo22252a();
        if (!this.f13869O0 || this.f13880Z0.m22222F() != 0) {
            return;
        }
        this.f13880Z0.m22224D(this.f13877W0);
    }

    public void setEmptyView(View view) {
        this.f13876V0 = view;
        this.f13878X0.mo22252a();
    }

    public void setFooterViewColor(int i, int i2, int i3) {
        AbstractC1824a abstractC1824a = this.f13875U0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        LoadingFooter loadingFooter = (LoadingFooter) abstractC1824a;
        loadingFooter.setIndicatorColor(C0586a.m33350d(getContext(), i));
        loadingFooter.setHintTextColor(i2);
        loadingFooter.setViewBackgroundColor(i3);
    }

    public void setFooterViewHint(String str, String str2, String str3) {
        AbstractC1824a abstractC1824a = this.f13875U0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        LoadingFooter loadingFooter = (LoadingFooter) abstractC1824a;
        loadingFooter.setLoadingHint(str);
        loadingFooter.setNoMoreHint(str2);
        loadingFooter.setNoNetWorkHint(str3);
    }

    public void setLScrollListener(AbstractC4567d abstractC4567d) {
        this.f13874T0 = abstractC4567d;
    }

    public void setLoadMoreEnabled(boolean z) {
        C4574b c4574b = this.f13880Z0;
        Objects.requireNonNull(c4574b, "mWrapAdapter cannot be null, please make sure the variable mWrapAdapter have been initialized.");
        this.f13869O0 = z;
        if (!z) {
            if (c4574b != null) {
                c4574b.m22215M();
            } else {
                this.f13875U0.mo22192d();
            }
        }
    }

    public void setLoadMoreFooter(AbstractC1824a abstractC1824a) {
        this.f13875U0 = abstractC1824a;
        View footView = abstractC1824a.getFootView();
        this.f13877W0 = footView;
        footView.setVisibility(8);
    }

    public void setLoadingMoreProgressStyle(int i) {
        AbstractC1824a abstractC1824a = this.f13875U0;
        if (abstractC1824a == null || !(abstractC1824a instanceof LoadingFooter)) {
            return;
        }
        ((LoadingFooter) abstractC1824a).setProgressStyle(i);
    }

    public void setNoMore(boolean z) {
        this.f13871Q0 = false;
        this.f13881a1 = z;
        if (z) {
            this.f13875U0.mo22194b();
        } else {
            this.f13875U0.mo22195a();
        }
    }

    public void setOnLoadMoreListener(AbstractC1828e abstractC1828e) {
        this.f13873S0 = abstractC1828e;
    }

    public void setOnNetWorkErrorListener(AbstractC1829f abstractC1829f) {
        LoadingFooter loadingFooter = (LoadingFooter) this.f13877W0;
        loadingFooter.setState(LoadingFooter.State.NetWorkError);
        loadingFooter.setOnClickListener(new View$OnClickListenerC4564a(abstractC1829f));
    }

    public void setRefreshing(boolean z) {
        this.f13870P0 = z;
    }
}
