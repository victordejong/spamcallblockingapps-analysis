package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
public abstract class AbstractC0998o extends RecyclerView.AbstractC0919f {

    /* renamed from: h */
    boolean f3410h = true;

    /* renamed from: a */
    public final void m18424a(RecyclerView.AbstractC0948x abstractC0948x, boolean z) {
        m18418d(abstractC0948x, z);
        m19024f(abstractC0948x);
    }

    /* renamed from: a */
    public abstract boolean mo18429a(RecyclerView.AbstractC0948x abstractC0948x);

    /* renamed from: a */
    public abstract boolean mo18428a(RecyclerView.AbstractC0948x abstractC0948x, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: a */
    public boolean mo18427a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2) {
        boolean mo18429a;
        int i = c0922c.f3093a;
        int i2 = c0922c.f3094b;
        View view = abstractC0948x.f3183a;
        int left = c0922c2 == null ? view.getLeft() : c0922c2.f3093a;
        int top = c0922c2 == null ? view.getTop() : c0922c2.f3094b;
        if (abstractC0948x.m18781q() || (i == left && i2 == top)) {
            mo18429a = mo18429a(abstractC0948x);
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            mo18429a = mo18428a(abstractC0948x, i, i2, left, top);
        }
        return mo18429a;
    }

    /* renamed from: a */
    public abstract boolean mo18426a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0948x abstractC0948x2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: a */
    public boolean mo18425a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0948x abstractC0948x2, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2) {
        int i;
        int i2;
        int i3 = c0922c.f3093a;
        int i4 = c0922c.f3094b;
        if (abstractC0948x2.m18795c()) {
            i = c0922c.f3093a;
            i2 = c0922c.f3094b;
        } else {
            i = c0922c2.f3093a;
            i2 = c0922c2.f3094b;
        }
        return mo18426a(abstractC0948x, abstractC0948x2, i3, i4, i, i2);
    }

    /* renamed from: b */
    public final void m18421b(RecyclerView.AbstractC0948x abstractC0948x, boolean z) {
        m18419c(abstractC0948x, z);
    }

    /* renamed from: b */
    public abstract boolean mo18423b(RecyclerView.AbstractC0948x abstractC0948x);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: b */
    public boolean mo18422b(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2) {
        return (c0922c == null || (c0922c.f3093a == c0922c2.f3093a && c0922c.f3094b == c0922c2.f3094b)) ? mo18423b(abstractC0948x) : mo18428a(abstractC0948x, c0922c.f3093a, c0922c.f3094b, c0922c2.f3093a, c0922c2.f3094b);
    }

    /* renamed from: c */
    public void m18419c(RecyclerView.AbstractC0948x abstractC0948x, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: c */
    public boolean mo18420c(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2) {
        boolean z;
        if (c0922c.f3093a == c0922c2.f3093a && c0922c.f3094b == c0922c2.f3094b) {
            m18415j(abstractC0948x);
            z = false;
        } else {
            z = mo18428a(abstractC0948x, c0922c.f3093a, c0922c.f3094b, c0922c2.f3093a, c0922c2.f3094b);
        }
        return z;
    }

    /* renamed from: d */
    public void m18418d(RecyclerView.AbstractC0948x abstractC0948x, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f
    /* renamed from: h */
    public boolean mo18417h(RecyclerView.AbstractC0948x abstractC0948x) {
        return !this.f3410h || abstractC0948x.m18784n();
    }

    /* renamed from: i */
    public final void m18416i(RecyclerView.AbstractC0948x abstractC0948x) {
        m18409p(abstractC0948x);
        m19024f(abstractC0948x);
    }

    /* renamed from: j */
    public final void m18415j(RecyclerView.AbstractC0948x abstractC0948x) {
        m18405t(abstractC0948x);
        m19024f(abstractC0948x);
    }

    /* renamed from: k */
    public final void m18414k(RecyclerView.AbstractC0948x abstractC0948x) {
        m18407r(abstractC0948x);
        m19024f(abstractC0948x);
    }

    /* renamed from: l */
    public final void m18413l(RecyclerView.AbstractC0948x abstractC0948x) {
        m18410o(abstractC0948x);
    }

    /* renamed from: m */
    public final void m18412m(RecyclerView.AbstractC0948x abstractC0948x) {
        m18406s(abstractC0948x);
    }

    /* renamed from: n */
    public final void m18411n(RecyclerView.AbstractC0948x abstractC0948x) {
        m18408q(abstractC0948x);
    }

    /* renamed from: o */
    public void m18410o(RecyclerView.AbstractC0948x abstractC0948x) {
    }

    /* renamed from: p */
    public void m18409p(RecyclerView.AbstractC0948x abstractC0948x) {
    }

    /* renamed from: q */
    public void m18408q(RecyclerView.AbstractC0948x abstractC0948x) {
    }

    /* renamed from: r */
    public void m18407r(RecyclerView.AbstractC0948x abstractC0948x) {
    }

    /* renamed from: s */
    public void m18406s(RecyclerView.AbstractC0948x abstractC0948x) {
    }

    /* renamed from: t */
    public void m18405t(RecyclerView.AbstractC0948x abstractC0948x) {
    }
}
