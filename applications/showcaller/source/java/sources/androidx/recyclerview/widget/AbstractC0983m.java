package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
public abstract class AbstractC0983m extends RecyclerView.AbstractC0915l {

    /* renamed from: g */
    boolean f4379g = true;

    /* renamed from: A */
    public final void m31366A(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31358I(abstractC0905b0);
        m31895h(abstractC0905b0);
    }

    /* renamed from: B */
    public final void m31365B(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31357J(abstractC0905b0);
    }

    /* renamed from: C */
    public final void m31364C(RecyclerView.AbstractC0905b0 abstractC0905b0, boolean z) {
        m31356K(abstractC0905b0, z);
        m31895h(abstractC0905b0);
    }

    /* renamed from: D */
    public final void m31363D(RecyclerView.AbstractC0905b0 abstractC0905b0, boolean z) {
        m31355L(abstractC0905b0, z);
    }

    /* renamed from: E */
    public final void m31362E(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31354M(abstractC0905b0);
        m31895h(abstractC0905b0);
    }

    /* renamed from: F */
    public final void m31361F(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31353N(abstractC0905b0);
    }

    /* renamed from: G */
    public final void m31360G(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31352O(abstractC0905b0);
        m31895h(abstractC0905b0);
    }

    /* renamed from: H */
    public final void m31359H(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31351P(abstractC0905b0);
    }

    /* renamed from: I */
    public void m31358I(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    /* renamed from: J */
    public void m31357J(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    /* renamed from: K */
    public void m31356K(RecyclerView.AbstractC0905b0 abstractC0905b0, boolean z) {
    }

    /* renamed from: L */
    public void m31355L(RecyclerView.AbstractC0905b0 abstractC0905b0, boolean z) {
    }

    /* renamed from: M */
    public void m31354M(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    /* renamed from: N */
    public void m31353N(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    /* renamed from: O */
    public void m31352O(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    /* renamed from: P */
    public void m31351P(RecyclerView.AbstractC0905b0 abstractC0905b0) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: a */
    public boolean mo31350a(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2) {
        int i;
        int i2;
        return (c0918c == null || ((i = c0918c.f4099a) == (i2 = c0918c2.f4099a) && c0918c.f4100b == c0918c2.f4100b)) ? mo31345w(abstractC0905b0) : mo31343y(abstractC0905b0, i, c0918c.f4100b, i2, c0918c2.f4100b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: b */
    public boolean mo31349b(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0905b0 abstractC0905b02, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2) {
        int i;
        int i2;
        int i3 = c0918c.f4099a;
        int i4 = c0918c.f4100b;
        if (abstractC0905b02.m31934J()) {
            i2 = c0918c.f4099a;
            i = c0918c.f4100b;
        } else {
            i2 = c0918c2.f4099a;
            i = c0918c2.f4100b;
        }
        return mo31344x(abstractC0905b0, abstractC0905b02, i3, i4, i2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: c */
    public boolean mo31348c(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2) {
        int i = c0918c.f4099a;
        int i2 = c0918c.f4100b;
        View view = abstractC0905b0.f4070b;
        int left = c0918c2 == null ? view.getLeft() : c0918c2.f4099a;
        int top = c0918c2 == null ? view.getTop() : c0918c2.f4100b;
        if (abstractC0905b0.m31910v() || (i == left && i2 == top)) {
            return mo31342z(abstractC0905b0);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo31343y(abstractC0905b0, i, i2, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: d */
    public boolean mo31347d(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2) {
        int i = c0918c.f4099a;
        int i2 = c0918c2.f4099a;
        if (i == i2 && c0918c.f4100b == c0918c2.f4100b) {
            m31362E(abstractC0905b0);
            return false;
        }
        return mo31343y(abstractC0905b0, i, c0918c.f4100b, i2, c0918c2.f4100b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0915l
    /* renamed from: f */
    public boolean mo31346f(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        return !this.f4379g || abstractC0905b0.m31912t();
    }

    /* renamed from: w */
    public abstract boolean mo31345w(RecyclerView.AbstractC0905b0 abstractC0905b0);

    /* renamed from: x */
    public abstract boolean mo31344x(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0905b0 abstractC0905b02, int i, int i2, int i3, int i4);

    /* renamed from: y */
    public abstract boolean mo31343y(RecyclerView.AbstractC0905b0 abstractC0905b0, int i, int i2, int i3, int i4);

    /* renamed from: z */
    public abstract boolean mo31342z(RecyclerView.AbstractC0905b0 abstractC0905b0);
}
