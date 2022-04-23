package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SimpleItemAnimator.class */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {

    /* renamed from: g */
    boolean f4841g = true;

    /* renamed from: A */
    public abstract boolean mo17254A(RecyclerView.ViewHolder viewHolder);

    /* renamed from: B */
    public final void m17253B(RecyclerView.ViewHolder viewHolder) {
        m17245J(viewHolder);
        m17488h(viewHolder);
    }

    /* renamed from: C */
    public final void m17252C(RecyclerView.ViewHolder viewHolder) {
        m17244K(viewHolder);
    }

    /* renamed from: D */
    public final void m17251D(RecyclerView.ViewHolder viewHolder, boolean z) {
        m17243L(viewHolder, z);
        m17488h(viewHolder);
    }

    /* renamed from: E */
    public final void m17250E(RecyclerView.ViewHolder viewHolder, boolean z) {
        m17242M(viewHolder, z);
    }

    /* renamed from: F */
    public final void m17249F(RecyclerView.ViewHolder viewHolder) {
        m17241N(viewHolder);
        m17488h(viewHolder);
    }

    /* renamed from: G */
    public final void m17248G(RecyclerView.ViewHolder viewHolder) {
        m17240O(viewHolder);
    }

    /* renamed from: H */
    public final void m17247H(RecyclerView.ViewHolder viewHolder) {
        m17239P(viewHolder);
        m17488h(viewHolder);
    }

    /* renamed from: I */
    public final void m17246I(RecyclerView.ViewHolder viewHolder) {
        m17238Q(viewHolder);
    }

    /* renamed from: J */
    public void m17245J(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: K */
    public void m17244K(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: L */
    public void m17243L(RecyclerView.ViewHolder viewHolder, boolean z) {
    }

    /* renamed from: M */
    public void m17242M(RecyclerView.ViewHolder viewHolder, boolean z) {
    }

    /* renamed from: N */
    public void m17241N(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: O */
    public void m17240O(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: P */
    public void m17239P(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: Q */
    public void m17238Q(RecyclerView.ViewHolder viewHolder) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: a */
    public boolean mo17237a(@NonNull RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        return (itemHolderInfo == null || (itemHolderInfo.f4750a == itemHolderInfo2.f4750a && itemHolderInfo.f4751b == itemHolderInfo2.f4751b)) ? mo17232x(viewHolder) : mo17230z(viewHolder, itemHolderInfo.f4750a, itemHolderInfo.f4751b, itemHolderInfo2.f4750a, itemHolderInfo2.f4751b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: b */
    public boolean mo17236b(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i;
        int i2;
        int i3 = itemHolderInfo.f4750a;
        int i4 = itemHolderInfo.f4751b;
        if (viewHolder2.shouldIgnore()) {
            i2 = itemHolderInfo.f4750a;
            i = itemHolderInfo.f4751b;
        } else {
            i2 = itemHolderInfo2.f4750a;
            i = itemHolderInfo2.f4751b;
        }
        return mo17231y(viewHolder, viewHolder2, i3, i4, i2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: c */
    public boolean mo17235c(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i = itemHolderInfo.f4750a;
        int i2 = itemHolderInfo.f4751b;
        View view = viewHolder.itemView;
        int left = itemHolderInfo2 == null ? view.getLeft() : itemHolderInfo2.f4750a;
        int top = itemHolderInfo2 == null ? view.getTop() : itemHolderInfo2.f4751b;
        if (viewHolder.isRemoved() || (i == left && i2 == top)) {
            return mo17254A(viewHolder);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo17230z(viewHolder, i, i2, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: d */
    public boolean mo17234d(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        if (itemHolderInfo.f4750a != itemHolderInfo2.f4750a || itemHolderInfo.f4751b != itemHolderInfo2.f4751b) {
            return mo17230z(viewHolder, itemHolderInfo.f4750a, itemHolderInfo.f4751b, itemHolderInfo2.f4750a, itemHolderInfo2.f4751b);
        }
        m17249F(viewHolder);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    /* renamed from: f */
    public boolean mo17233f(@NonNull RecyclerView.ViewHolder viewHolder) {
        return !this.f4841g || viewHolder.isInvalid();
    }

    /* renamed from: x */
    public abstract boolean mo17232x(RecyclerView.ViewHolder viewHolder);

    /* renamed from: y */
    public abstract boolean mo17231y(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4);

    /* renamed from: z */
    public abstract boolean mo17230z(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4);
}
