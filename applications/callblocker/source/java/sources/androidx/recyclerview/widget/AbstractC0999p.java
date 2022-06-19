package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
public abstract class AbstractC0999p extends RecyclerView.AbstractC0932l {

    /* renamed from: a */
    RecyclerView f3411a;

    /* renamed from: b */
    private Scroller f3412b;

    /* renamed from: c */
    private final RecyclerView.AbstractC0934n f3413c = new RecyclerView.AbstractC0934n() { // from class: androidx.recyclerview.widget.p.1

        /* renamed from: a */
        boolean f3414a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
        /* renamed from: a */
        public void mo3175a(RecyclerView recyclerView, int i) {
            super.mo3175a(recyclerView, i);
            if (i != 0 || !this.f3414a) {
                return;
            }
            this.f3414a = false;
            AbstractC0999p.this.m18404a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
        /* renamed from: a */
        public void mo1098a(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f3414a = true;
        }
    };

    /* renamed from: b */
    private void m18398b() {
        if (this.f3411a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f3411a.addOnScrollListener(this.f3413c);
        this.f3411a.setOnFlingListener(this);
    }

    /* renamed from: b */
    private boolean m18395b(RecyclerView.AbstractC0925i abstractC0925i, int i, int i2) {
        boolean z;
        if (!(abstractC0925i instanceof RecyclerView.AbstractC0942t.AbstractC0944b)) {
            z = false;
        } else {
            RecyclerView.AbstractC0942t m18393c = m18393c(abstractC0925i);
            z = false;
            if (m18393c != null) {
                int mo18401a = mo18401a(abstractC0925i, i, i2);
                z = false;
                if (mo18401a != -1) {
                    m18393c.m18838c(mo18401a);
                    abstractC0925i.m18968a(m18393c);
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    private void m18394c() {
        this.f3411a.removeOnScrollListener(this.f3413c);
        this.f3411a.setOnFlingListener(null);
    }

    /* renamed from: a */
    public abstract int mo18401a(RecyclerView.AbstractC0925i abstractC0925i, int i, int i2);

    /* renamed from: a */
    public abstract View mo18402a(RecyclerView.AbstractC0925i abstractC0925i);

    /* renamed from: a */
    void m18404a() {
        RecyclerView.AbstractC0925i layoutManager;
        View mo18402a;
        if (this.f3411a == null || (layoutManager = this.f3411a.getLayoutManager()) == null || (mo18402a = mo18402a(layoutManager)) == null) {
            return;
        }
        int[] mo18400a = mo18400a(layoutManager, mo18402a);
        if (mo18400a[0] == 0 && mo18400a[1] == 0) {
            return;
        }
        this.f3411a.smoothScrollBy(mo18400a[0], mo18400a[1]);
    }

    /* renamed from: a */
    public void m18399a(RecyclerView recyclerView) {
        if (this.f3411a == recyclerView) {
            return;
        }
        if (this.f3411a != null) {
            m18394c();
        }
        this.f3411a = recyclerView;
        if (this.f3411a == null) {
            return;
        }
        m18398b();
        this.f3412b = new Scroller(this.f3411a.getContext(), new DecelerateInterpolator());
        m18404a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        if (java.lang.Math.abs(r6) > r0) goto L13;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0932l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo18403a(int r6, int r7) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f3411a
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.getLayoutManager()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L16
            r0 = r8
            r10 = r0
        L13:
            r0 = r10
            return r0
        L16:
            r0 = r8
            r10 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f3411a
            androidx.recyclerview.widget.RecyclerView$a r0 = r0.getAdapter()
            if (r0 == 0) goto L13
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f3411a
            int r0 = r0.getMinFlingVelocity()
            r11 = r0
            r0 = r7
            int r0 = java.lang.Math.abs(r0)
            r1 = r11
            if (r0 > r1) goto L41
            r0 = r8
            r10 = r0
            r0 = r6
            int r0 = java.lang.Math.abs(r0)
            r1 = r11
            if (r0 <= r1) goto L13
        L41:
            r0 = r8
            r10 = r0
            r0 = r5
            r1 = r9
            r2 = r6
            r3 = r7
            boolean r0 = r0.m18395b(r1, r2, r3)
            if (r0 == 0) goto L13
            r0 = 1
            r10 = r0
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AbstractC0999p.mo18403a(int, int):boolean");
    }

    /* renamed from: a */
    public abstract int[] mo18400a(RecyclerView.AbstractC0925i abstractC0925i, View view);

    @Deprecated
    /* renamed from: b */
    protected C0986h mo18396b(RecyclerView.AbstractC0925i abstractC0925i) {
        return !(abstractC0925i instanceof RecyclerView.AbstractC0942t.AbstractC0944b) ? null : new C0986h(this.f3411a.getContext()) { // from class: androidx.recyclerview.widget.p.2
            @Override // androidx.recyclerview.widget.C0986h
            /* renamed from: a */
            protected float mo3113a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.C0986h, androidx.recyclerview.widget.RecyclerView.AbstractC0942t
            /* renamed from: a */
            protected void mo18392a(View view, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0942t.C0943a c0943a) {
                if (AbstractC0999p.this.f3411a == null) {
                    return;
                }
                int[] mo18400a = AbstractC0999p.this.mo18400a(AbstractC0999p.this.f3411a.getLayoutManager(), view);
                int i = mo18400a[0];
                int i2 = mo18400a[1];
                int a = m18493a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a <= 0) {
                    return;
                }
                c0943a.m18827a(i, i2, a, this.f3390b);
            }
        };
    }

    /* renamed from: b */
    public int[] m18397b(int i, int i2) {
        this.f3412b.fling(0, 0, i, i2, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
        return new int[]{this.f3412b.getFinalX(), this.f3412b.getFinalY()};
    }

    /* renamed from: c */
    protected RecyclerView.AbstractC0942t m18393c(RecyclerView.AbstractC0925i abstractC0925i) {
        return mo18396b(abstractC0925i);
    }
}
