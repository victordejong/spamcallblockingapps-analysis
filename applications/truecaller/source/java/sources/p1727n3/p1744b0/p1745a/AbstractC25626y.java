package p1727n3.p1744b0.p1745a;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.y */
/* loaded from: classes-dex2jar.jar:n3/b0/a/y.class */
public abstract class AbstractC25626y extends RecyclerView.AbstractC0336r {

    /* renamed from: a */
    public RecyclerView f71795a;

    /* renamed from: b */
    public Scroller f71796b;

    /* renamed from: c */
    public final RecyclerView.AbstractC0338t f71797c = new C25627a();

    /* renamed from: n3.b0.a.y$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/y$a.class */
    public class C25627a extends RecyclerView.AbstractC0338t {

        /* renamed from: a */
        public boolean f71798a = false;

        public C25627a() {
            AbstractC25626y.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i != 0 || !this.f71798a) {
                return;
            }
            this.f71798a = false;
            AbstractC25626y.this.m3113f();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f71798a = true;
        }
    }

    /* renamed from: a */
    public void m3118a(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f71795a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeOnScrollListener(this.f71797c);
            this.f71795a.setOnFlingListener(null);
        }
        this.f71795a = recyclerView;
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f71795a.addOnScrollListener(this.f71797c);
        this.f71795a.setOnFlingListener(this);
        this.f71796b = new Scroller(this.f71795a.getContext(), new DecelerateInterpolator());
        m3113f();
    }

    /* renamed from: b */
    public abstract int[] m3117b(RecyclerView.AbstractC0329o abstractC0329o, View view);

    /* renamed from: c */
    public RecyclerView.AbstractC0344y m3116c(RecyclerView.AbstractC0329o abstractC0329o) {
        return !(abstractC0329o instanceof RecyclerView.AbstractC0344y.AbstractC0346b) ? null : new z(this, this.f71795a.getContext());
    }

    /* renamed from: d */
    public abstract View m3115d(RecyclerView.AbstractC0329o abstractC0329o);

    /* renamed from: e */
    public abstract int m3114e(RecyclerView.AbstractC0329o abstractC0329o, int i, int i2);

    /* renamed from: f */
    public void m3113f() {
        RecyclerView.AbstractC0329o layoutManager;
        View m3115d;
        RecyclerView recyclerView = this.f71795a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (m3115d = m3115d(layoutManager)) == null) {
            return;
        }
        int[] m3117b = m3117b(layoutManager, m3115d);
        if (m3117b[0] == 0 && m3117b[1] == 0) {
            return;
        }
        this.f71795a.smoothScrollBy(m3117b[0], m3117b[1]);
    }
}
