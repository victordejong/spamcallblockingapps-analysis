package com.github.jdsjlzx.recyclerview;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.List;
import p078c.p081b.p082a.p083g.AbstractC1826c;
import p078c.p081b.p082a.p083g.AbstractC1827d;
/* renamed from: com.github.jdsjlzx.recyclerview.b */
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b.class */
public class C4574b extends RecyclerView.Adapter<RecyclerView.AbstractC0905b0> {

    /* renamed from: d */
    private static List<Integer> f13915d = new ArrayList();

    /* renamed from: e */
    private AbstractC1826c f13916e;

    /* renamed from: f */
    private AbstractC1827d f13917f;

    /* renamed from: g */
    private RecyclerView.Adapter f13918g;

    /* renamed from: h */
    private ArrayList<View> f13919h;

    /* renamed from: i */
    private ArrayList<View> f13920i;

    /* renamed from: j */
    private AbstractC4578d f13921j;

    /* renamed from: com.github.jdsjlzx.recyclerview.b$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b$a.class */
    public class View$OnClickListenerC4575a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f13922d;

        /* renamed from: e */
        final /* synthetic */ int f13923e;

        View$OnClickListenerC4575a(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
            C4574b.this = r4;
            this.f13922d = abstractC0905b0;
            this.f13923e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C4574b.this.f13916e.m28809a(this.f13922d.f4070b, this.f13923e);
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.b$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b$b.class */
    public class View$OnLongClickListenerC4576b implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ RecyclerView.AbstractC0905b0 f13925d;

        /* renamed from: e */
        final /* synthetic */ int f13926e;

        View$OnLongClickListenerC4576b(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
            C4574b.this = r4;
            this.f13925d = abstractC0905b0;
            this.f13926e = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C4574b.this.f13917f.m28808a(this.f13925d.f4070b, this.f13926e);
            return true;
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.b$c */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b$c.class */
    class C4577c extends GridLayoutManager.AbstractC0896b {

        /* renamed from: e */
        final /* synthetic */ GridLayoutManager f13928e;

        C4577c(GridLayoutManager gridLayoutManager) {
            C4574b.this = r4;
            this.f13928e = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b
        /* renamed from: f */
        public int mo22209f(int i) {
            int i2 = 1;
            if (C4574b.this.f13921j != null) {
                return (C4574b.this.m22217K(i) || C4574b.this.m22218J(i)) ? this.f13928e.m32181V2() : C4574b.this.f13921j.m22208a(this.f13928e, i - (C4574b.this.m22220H() + 1));
            }
            if (C4574b.this.m22217K(i) || C4574b.this.m22218J(i)) {
                i2 = this.f13928e.m32181V2();
            }
            return i2;
        }
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.b$d */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b$d.class */
    public interface AbstractC4578d {
        /* renamed from: a */
        int m22208a(GridLayoutManager gridLayoutManager, int i);
    }

    /* renamed from: com.github.jdsjlzx.recyclerview.b$e */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/recyclerview/b$e.class */
    public static class C4579e extends RecyclerView.AbstractC0905b0 {
        public C4579e(View view) {
            super(view);
        }
    }

    /* renamed from: G */
    private View m22221G(int i) {
        if (!m22216L(i)) {
            return null;
        }
        return this.f13919h.get(i - 10002);
    }

    /* renamed from: L */
    private boolean m22216L(int i) {
        return this.f13919h.size() > 0 && f13915d.contains(Integer.valueOf(i));
    }

    /* renamed from: D */
    public void m22224D(View view) {
        if (view != null) {
            if (m22222F() > 0) {
                m22215M();
            }
            this.f13920i.add(view);
            return;
        }
        throw new RuntimeException("footer is null");
    }

    /* renamed from: E */
    public View m22223E() {
        return m22222F() > 0 ? this.f13920i.get(0) : null;
    }

    /* renamed from: F */
    public int m22222F() {
        return this.f13920i.size();
    }

    /* renamed from: H */
    public int m22220H() {
        return this.f13919h.size();
    }

    /* renamed from: I */
    public RecyclerView.Adapter m22219I() {
        return this.f13918g;
    }

    /* renamed from: J */
    public boolean m22218J(int i) {
        int mo4501d = mo4501d();
        boolean z = true;
        if (m22222F() <= 0 || i < mo4501d - 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: K */
    public boolean m22217K(int i) {
        return i >= 0 && i < this.f13919h.size();
    }

    /* renamed from: M */
    public void m22215M() {
        if (m22222F() > 0) {
            this.f13920i.remove(m22223E());
            m31967i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        int m22220H;
        int m22222F;
        if (this.f13918g != null) {
            m22220H = m22220H() + m22222F();
            m22222F = this.f13918g.mo4501d();
        } else {
            m22220H = m22220H();
            m22222F = m22222F();
        }
        return m22220H + m22222F;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public long mo4500e(int i) {
        int m22220H;
        if (this.f13918g == null || i < m22220H() || (m22220H = i - m22220H()) >= this.f13918g.mo4501d()) {
            return -1L;
        }
        return this.f13918g.mo4500e(m22220H);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        int m22220H = i - m22220H();
        if (m22217K(i)) {
            return f13915d.get(i).intValue();
        }
        if (m22218J(i)) {
            return 10001;
        }
        RecyclerView.Adapter adapter = this.f13918g;
        if (adapter != null && m22220H < adapter.mo4501d()) {
            return this.f13918g.mo4499f(m22220H);
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
            gridLayoutManager.m32173d3(new C4577c(gridLayoutManager));
        }
        this.f13918g.mo22214o(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        if (m22217K(i)) {
            return;
        }
        int m22220H = i - m22220H();
        RecyclerView.Adapter adapter = this.f13918g;
        if (adapter == null || m22220H >= adapter.mo4501d()) {
            return;
        }
        this.f13918g.mo4498p(abstractC0905b0, m22220H);
        if (this.f13916e != null) {
            abstractC0905b0.f4070b.setOnClickListener(new View$OnClickListenerC4575a(abstractC0905b0, m22220H));
        }
        if (this.f13917f == null) {
            return;
        }
        abstractC0905b0.f4070b.setOnLongClickListener(new View$OnLongClickListenerC4576b(abstractC0905b0, m22220H));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void mo22213q(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, List<Object> list) {
        if (list.isEmpty()) {
            mo4498p(abstractC0905b0, i);
        } else if (m22217K(i)) {
        } else {
            int m22220H = i - m22220H();
            RecyclerView.Adapter adapter = this.f13918g;
            if (adapter == null || m22220H >= adapter.mo4501d()) {
                return;
            }
            this.f13918g.mo22213q(abstractC0905b0, m22220H, list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return m22216L(i) ? new C4579e(m22221G(i)) : i == 10001 ? new C4579e(this.f13920i.get(0)) : this.f13918g.mo4497r(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: s */
    public void mo22212s(RecyclerView recyclerView) {
        this.f13918g.mo22212s(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: u */
    public void mo22211u(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        super.mo22211u(abstractC0905b0);
        ViewGroup.LayoutParams layoutParams = abstractC0905b0.f4070b.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (m22217K(abstractC0905b0.m31919m()) || m22218J(abstractC0905b0.m31919m()))) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).m31602f(true);
        }
        this.f13918g.mo22211u(abstractC0905b0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: v */
    public void mo22210v(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        this.f13918g.mo22210v(abstractC0905b0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: w */
    public void mo4496w(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        this.f13918g.mo4496w(abstractC0905b0);
    }
}
