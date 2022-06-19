package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public abstract class AbstractC0984n extends RecyclerView.AbstractC0927q {

    /* renamed from: a */
    RecyclerView f4380a;

    /* renamed from: b */
    private Scroller f4381b;

    /* renamed from: c */
    private final RecyclerView.AbstractC0929s f4382c = new C0985a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$a.class */
    public class C0985a extends RecyclerView.AbstractC0929s {

        /* renamed from: a */
        boolean f4383a = false;

        C0985a() {
            AbstractC0984n.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: a */
        public void mo4985a(RecyclerView recyclerView, int i) {
            super.mo4985a(recyclerView, i);
            if (i != 0 || !this.f4383a) {
                return;
            }
            this.f4383a = false;
            AbstractC0984n.this.m31333j();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f4383a = true;
        }
    }

    /* renamed from: e */
    private void m31337e() {
        this.f4380a.m32048Z0(this.f4382c);
        this.f4380a.setOnFlingListener(null);
    }

    /* renamed from: h */
    private void m31335h() {
        if (this.f4380a.getOnFlingListener() == null) {
            this.f4380a.m32015l(this.f4382c);
            this.f4380a.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException("An instance of OnFlingListener already set.");
    }

    /* renamed from: i */
    private boolean m31334i(RecyclerView.AbstractC0921o abstractC0921o, int i, int i2) {
        RecyclerView.AbstractC0935x mo31338d;
        int mo31336g;
        if (!(abstractC0921o instanceof RecyclerView.AbstractC0935x.AbstractC0937b) || (mo31338d = mo31338d(abstractC0921o)) == null || (mo31336g = mo31336g(abstractC0921o, i, i2)) == -1) {
            return false;
        }
        mo31338d.m31712p(mo31336g);
        abstractC0921o.m31856K1(mo31338d);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (java.lang.Math.abs(r6) > r0) goto L12;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0927q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo31341a(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4380a
            androidx.recyclerview.widget.RecyclerView$o r0 = r0.getLayoutManager()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L11
            r0 = 0
            return r0
        L11:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4380a
            androidx.recyclerview.widget.RecyclerView$Adapter r0 = r0.getAdapter()
            if (r0 != 0) goto L1d
            r0 = 0
            return r0
        L1d:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.f4380a
            int r0 = r0.getMinFlingVelocity()
            r10 = r0
            r0 = r7
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 > r1) goto L3c
            r0 = r9
            r11 = r0
            r0 = r6
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 <= r1) goto L4d
        L3c:
            r0 = r9
            r11 = r0
            r0 = r5
            r1 = r8
            r2 = r6
            r3 = r7
            boolean r0 = r0.m31334i(r1, r2, r3)
            if (r0 == 0) goto L4d
            r0 = 1
            r11 = r0
        L4d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AbstractC0984n.mo31341a(int, int):boolean");
    }

    /* renamed from: b */
    public void m31340b(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f4380a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m31337e();
        }
        this.f4380a = recyclerView;
        if (recyclerView == null) {
            return;
        }
        m31335h();
        this.f4381b = new Scroller(this.f4380a.getContext(), new DecelerateInterpolator());
        m31333j();
    }

    /* renamed from: c */
    public abstract int[] mo31339c(RecyclerView.AbstractC0921o abstractC0921o, View view);

    /* renamed from: d */
    protected abstract RecyclerView.AbstractC0935x mo31338d(RecyclerView.AbstractC0921o abstractC0921o);

    /* renamed from: f */
    public abstract View mo30652f(RecyclerView.AbstractC0921o abstractC0921o);

    /* renamed from: g */
    public abstract int mo31336g(RecyclerView.AbstractC0921o abstractC0921o, int i, int i2);

    /* renamed from: j */
    void m31333j() {
        RecyclerView.AbstractC0921o layoutManager;
        View mo30652f;
        RecyclerView recyclerView = this.f4380a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (mo30652f = mo30652f(layoutManager)) == null) {
            return;
        }
        int[] mo31339c = mo31339c(layoutManager, mo30652f);
        if (mo31339c[0] == 0 && mo31339c[1] == 0) {
            return;
        }
        this.f4380a.m32010m1(mo31339c[0], mo31339c[1]);
    }
}
