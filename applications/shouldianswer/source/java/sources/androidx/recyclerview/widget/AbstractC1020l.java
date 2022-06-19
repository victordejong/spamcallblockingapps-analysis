package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public abstract class AbstractC1020l extends RecyclerView.AbstractC0950f {

    /* renamed from: h */
    boolean f3209h = true;

    /* renamed from: a */
    public final void m4552a(RecyclerView.AbstractC0977w abstractC0977w, boolean z) {
        mo4235d(abstractC0977w, z);
        m4933f(abstractC0977w);
    }

    /* renamed from: a */
    public void m4551a(boolean z) {
        this.f3209h = z;
    }

    /* renamed from: a */
    public abstract boolean mo4178a(RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: a */
    public abstract boolean mo4177a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public boolean mo4554a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2) {
        int i = c0953c.f2946a;
        int i2 = c0953c.f2947b;
        View view = abstractC0977w.itemView;
        int left = c0953c2 == null ? view.getLeft() : c0953c2.f2946a;
        int top = c0953c2 == null ? view.getTop() : c0953c2.f2947b;
        if (abstractC0977w.isRemoved() || (i == left && i2 == top)) {
            return mo4178a(abstractC0977w);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo4177a(abstractC0977w, i, i2, left, top);
    }

    /* renamed from: a */
    public abstract boolean mo4176a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public boolean mo4553a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2) {
        int i;
        int i2;
        int i3 = c0953c.f2946a;
        int i4 = c0953c.f2947b;
        if (abstractC0977w2.shouldIgnore()) {
            i2 = c0953c.f2946a;
            i = c0953c.f2947b;
        } else {
            i2 = c0953c2.f2946a;
            i = c0953c2.f2947b;
        }
        return mo4176a(abstractC0977w, abstractC0977w2, i3, i4, i2, i);
    }

    /* renamed from: b */
    public final void m4549b(RecyclerView.AbstractC0977w abstractC0977w, boolean z) {
        mo4236c(abstractC0977w, z);
    }

    /* renamed from: b */
    public abstract boolean mo4170b(RecyclerView.AbstractC0977w abstractC0977w);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: b */
    public boolean mo4550b(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2) {
        return (c0953c == null || (c0953c.f2946a == c0953c2.f2946a && c0953c.f2947b == c0953c2.f2947b)) ? mo4170b(abstractC0977w) : mo4177a(abstractC0977w, c0953c.f2946a, c0953c.f2947b, c0953c2.f2946a, c0953c2.f2947b);
    }

    /* renamed from: c */
    public void mo4236c(RecyclerView.AbstractC0977w abstractC0977w, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: c */
    public boolean mo4548c(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2) {
        if (c0953c.f2946a == c0953c2.f2946a && c0953c.f2947b == c0953c2.f2947b) {
            m4545j(abstractC0977w);
            return false;
        }
        return mo4177a(abstractC0977w, c0953c.f2946a, c0953c.f2947b, c0953c2.f2946a, c0953c2.f2947b);
    }

    /* renamed from: d */
    public void mo4235d(RecyclerView.AbstractC0977w abstractC0977w, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: h */
    public boolean mo4547h(RecyclerView.AbstractC0977w abstractC0977w) {
        return !this.f3209h || abstractC0977w.isInvalid();
    }

    /* renamed from: i */
    public final void m4546i(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4231p(abstractC0977w);
        m4933f(abstractC0977w);
    }

    /* renamed from: j */
    public final void m4545j(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4227t(abstractC0977w);
        m4933f(abstractC0977w);
    }

    /* renamed from: k */
    public final void m4544k(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4229r(abstractC0977w);
        m4933f(abstractC0977w);
    }

    /* renamed from: l */
    public final void m4543l(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4232o(abstractC0977w);
    }

    /* renamed from: m */
    public final void m4542m(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4228s(abstractC0977w);
    }

    /* renamed from: n */
    public final void m4541n(RecyclerView.AbstractC0977w abstractC0977w) {
        mo4230q(abstractC0977w);
    }

    /* renamed from: o */
    public void mo4232o(RecyclerView.AbstractC0977w abstractC0977w) {
    }

    /* renamed from: p */
    public void mo4231p(RecyclerView.AbstractC0977w abstractC0977w) {
    }

    /* renamed from: q */
    public void mo4230q(RecyclerView.AbstractC0977w abstractC0977w) {
    }

    /* renamed from: r */
    public void mo4229r(RecyclerView.AbstractC0977w abstractC0977w) {
    }

    /* renamed from: s */
    public void mo4228s(RecyclerView.AbstractC0977w abstractC0977w) {
    }

    /* renamed from: t */
    public void mo4227t(RecyclerView.AbstractC0977w abstractC0977w) {
    }
}
