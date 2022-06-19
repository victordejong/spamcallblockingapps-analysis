package com.github.jdsjlzx.recyclerview;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.List;
import p078c.p081b.p082a.p083g.AbstractC1825b;
import p078c.p081b.p082a.p083g.AbstractC1826c;
import p078c.p081b.p082a.p083g.AbstractC1827d;
/* renamed from: com.github.jdsjlzx.recyclerview.a */
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a.class */
public class C4568a extends RecyclerView.Adapter<RecyclerView.AbstractC0905b0> {

    /* renamed from: d */
    private static List<Integer> f13899d = new ArrayList();

    /* renamed from: e */
    private AbstractC1825b f13900e;

    /* renamed from: f */
    private AbstractC1826c f13901f;

    /* renamed from: g */
    private AbstractC1827d f13902g;

    /* renamed from: h */
    private RecyclerView.Adapter f13903h;

    /* renamed from: i */
    private ArrayList<View> f13904i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<View> f13905j = new ArrayList<>();

    /* renamed from: k */
    private AbstractC4572d f13906k;

    /* renamed from: com.github.jdsjlzx.recyclerview.a$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a$a.class */
    public class View$OnClickListenerC4569a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f13907d;

        /* renamed from: e */
        final /* synthetic */ int f13908e;

        View$OnClickListenerC4569a(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
            C4568a.this = r4;
            this.f13907d = abstractC0905b0;
            this.f13908e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C4568a.this.f13901f.m28809a(this.f13907d.f4070b, this.f13908e);
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.a$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a$b.class */
    public class View$OnLongClickListenerC4570b implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f13910d;

        /* renamed from: e */
        final /* synthetic */ int f13911e;

        View$OnLongClickListenerC4570b(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
            C4568a.this = r4;
            this.f13910d = abstractC0905b0;
            this.f13911e = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C4568a.this.f13902g.m28808a(this.f13910d.f4070b, this.f13911e);
            return true;
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.a$c */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a$c.class */
    class C4571c extends GridLayoutManager.AbstractC0896b {

        /* renamed from: e */
        final /* synthetic */ GridLayoutManager f13913e;

        C4571c(GridLayoutManager gridLayoutManager) {
            C4568a.this = r4;
            this.f13913e = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b
        /* renamed from: f */
        public int mo22209f(int i) {
            int i2 = 1;
            if (C4568a.this.f13906k != null) {
                return (C4568a.this.m22234K(i) || C4568a.this.m22235J(i) || C4568a.this.m22232M(i)) ? this.f13913e.m32181V2() : C4568a.this.f13906k.mo22228a(this.f13913e, i - (C4568a.this.m22237H() + 1));
            }
            if (C4568a.this.m22234K(i) || C4568a.this.m22235J(i) || C4568a.this.m22232M(i)) {
                i2 = this.f13913e.m32181V2();
            }
            return i2;
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.a$d */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a$d.class */
    public interface AbstractC4572d {
        /* renamed from: a */
        int mo22228a(GridLayoutManager gridLayoutManager, int i);
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.a$e */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/a$e.class */
    public static class C4573e extends RecyclerView.AbstractC0905b0 {
        public C4573e(View view) {
            super(view);
        }
    }

    public C4568a(RecyclerView.Adapter adapter) {
        this.f13903h = adapter;
    }

    /* renamed from: G */
    private View m22238G(int i) {
        if (!m22233L(i)) {
            return null;
        }
        return this.f13904i.get(i - 10002);
    }

    /* renamed from: L */
    private boolean m22233L(int i) {
        return this.f13904i.size() > 0 && f13899d.contains(Integer.valueOf(i));
    }

    /* renamed from: D */
    public void m22241D(View view) {
        if (view != null) {
            m22231N();
            this.f13905j.add(view);
            return;
        }
        throw new RuntimeException("footer is null");
    }

    /* renamed from: E */
    public View m22240E() {
        return m22239F() > 0 ? this.f13905j.get(0) : null;
    }

    /* renamed from: F */
    public int m22239F() {
        return this.f13905j.size();
    }

    /* renamed from: H */
    public int m22237H() {
        return this.f13904i.size();
    }

    /* renamed from: I */
    public RecyclerView.Adapter m22236I() {
        return this.f13903h;
    }

    /* renamed from: J */
    public boolean m22235J(int i) {
        return m22239F() > 0 && i >= mo4501d() - m22239F();
    }

    /* renamed from: K */
    public boolean m22234K(int i) {
        boolean z = true;
        if (i < 1 || i >= this.f13904i.size() + 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: M */
    public boolean m22232M(int i) {
        return i == 0;
    }

    /* renamed from: N */
    public void m22231N() {
        if (m22239F() > 0) {
            this.f13905j.remove(m22240E());
            m31967i();
        }
    }

    /* renamed from: O */
    public void m22230O(AbstractC1825b abstractC1825b) {
        this.f13900e = abstractC1825b;
    }

    /* renamed from: P */
    public void m22229P(AbstractC4572d abstractC4572d) {
        this.f13906k = abstractC4572d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        int m22237H;
        int m22239F;
        if (this.f13903h != null) {
            m22237H = m22237H() + m22239F();
            m22239F = this.f13903h.mo4501d();
        } else {
            m22237H = m22237H();
            m22239F = m22239F();
        }
        return m22237H + m22239F + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public long mo4500e(int i) {
        if (this.f13903h == null || i < m22237H()) {
            return -1L;
        }
        int m22237H = i - m22237H();
        int i2 = m22237H;
        if (m31968h()) {
            i2 = m22237H - 1;
        }
        if (i2 >= this.f13903h.mo4501d()) {
            return -1L;
        }
        return this.f13903h.mo4500e(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        int m22237H = i - (m22237H() + 1);
        if (m22232M(i)) {
            return 10000;
        }
        if (m22234K(i)) {
            return f13899d.get(i - 1).intValue();
        }
        if (m22235J(i)) {
            return 10001;
        }
        RecyclerView.Adapter adapter = this.f13903h;
        if (adapter != null && m22237H < adapter.mo4501d()) {
            return this.f13903h.mo4499f(m22237H);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: o */
    public void mo22214o(RecyclerView recyclerView) {
        super.mo22214o(recyclerView);
        RecyclerView.AbstractC0921o layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.m32173d3(new C4571c(gridLayoutManager));
        }
        this.f13903h.mo22214o(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        if (m22234K(i) || m22232M(i)) {
            return;
        }
        int m22237H = i - (m22237H() + 1);
        RecyclerView.Adapter adapter = this.f13903h;
        if (adapter == null || m22237H >= adapter.mo4501d()) {
            return;
        }
        this.f13903h.mo4498p(abstractC0905b0, m22237H);
        if (this.f13901f != null) {
            abstractC0905b0.f4070b.setOnClickListener(new View$OnClickListenerC4569a(abstractC0905b0, m22237H));
        }
        if (this.f13902g == null) {
            return;
        }
        abstractC0905b0.f4070b.setOnLongClickListener(new View$OnLongClickListenerC4570b(abstractC0905b0, m22237H));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void mo22213q(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, List<Object> list) {
        if (list.isEmpty()) {
            mo4498p(abstractC0905b0, i);
        } else if (m22234K(i) || m22232M(i)) {
        } else {
            int m22237H = i - (m22237H() + 1);
            RecyclerView.Adapter adapter = this.f13903h;
            if (adapter == null || m22237H >= adapter.mo4501d()) {
                return;
            }
            this.f13903h.mo22213q(abstractC0905b0, m22237H, list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return i == 10000 ? new C4573e(this.f13900e.getHeaderView()) : m22233L(i) ? new C4573e(m22238G(i)) : i == 10001 ? new C4573e(this.f13905j.get(0)) : this.f13903h.mo4497r(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: s */
    public void mo22212s(RecyclerView recyclerView) {
        this.f13903h.mo22212s(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: u */
    public void mo22211u(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        super.mo22211u(abstractC0905b0);
        ViewGroup.LayoutParams layoutParams = abstractC0905b0.f4070b.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (m22234K(abstractC0905b0.m31919m()) || m22232M(abstractC0905b0.m31919m()) || m22235J(abstractC0905b0.m31919m()))) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).m31602f(true);
        }
        this.f13903h.mo22211u(abstractC0905b0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: v */
    public void mo22210v(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        this.f13903h.mo22210v(abstractC0905b0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: w */
    public void mo4496w(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        this.f13903h.mo4496w(abstractC0905b0);
    }
}
