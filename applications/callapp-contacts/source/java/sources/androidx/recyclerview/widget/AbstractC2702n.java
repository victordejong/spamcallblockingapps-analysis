package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public abstract class AbstractC2702n extends RecyclerView.AbstractC2632f {

    /* renamed from: l */
    public boolean f10307l = true;

    /* renamed from: a */
    public abstract boolean mo40045a(RecyclerView.AbstractC2657v abstractC2657v);

    /* renamed from: a */
    public abstract boolean mo40044a(RecyclerView.AbstractC2657v abstractC2657v, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: a */
    public final boolean mo40043a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2) {
        int i = c2634b.f10013a;
        int i2 = c2634b.f10014b;
        View view = abstractC2657v.itemView;
        int left = c2634b2 == null ? view.getLeft() : c2634b2.f10013a;
        int top = c2634b2 == null ? view.getTop() : c2634b2.f10014b;
        if (abstractC2657v.isRemoved() || (i == left && i2 == top)) {
            return mo40045a(abstractC2657v);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo40044a(abstractC2657v, i, i2, left, top);
    }

    /* renamed from: a */
    public abstract boolean mo40042a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2657v abstractC2657v2, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: a */
    public final boolean mo40041a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2657v abstractC2657v2, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2) {
        int i;
        int i2;
        int i3 = c2634b.f10013a;
        int i4 = c2634b.f10014b;
        if (abstractC2657v2.m40291c()) {
            i2 = c2634b.f10013a;
            i = c2634b.f10014b;
        } else {
            i2 = c2634b2.f10013a;
            i = c2634b2.f10014b;
        }
        return mo40042a(abstractC2657v, abstractC2657v2, i3, i4, i2, i);
    }

    /* renamed from: b */
    public abstract boolean mo40040b(RecyclerView.AbstractC2657v abstractC2657v);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: b */
    public final boolean mo40039b(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2) {
        return (c2634b == null || (c2634b.f10013a == c2634b2.f10013a && c2634b.f10014b == c2634b2.f10014b)) ? mo40040b(abstractC2657v) : mo40044a(abstractC2657v, c2634b.f10013a, c2634b.f10014b, c2634b2.f10013a, c2634b2.f10014b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: c */
    public final boolean mo40038c(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2) {
        if (c2634b.f10013a == c2634b2.f10013a && c2634b.f10014b == c2634b2.f10014b) {
            m40398f(abstractC2657v);
            return false;
        }
        return mo40044a(abstractC2657v, c2634b.f10013a, c2634b.f10014b, c2634b2.f10013a, c2634b2.f10014b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f
    /* renamed from: g */
    public final boolean mo40037g(RecyclerView.AbstractC2657v abstractC2657v) {
        return !this.f10307l || abstractC2657v.isInvalid();
    }
}
