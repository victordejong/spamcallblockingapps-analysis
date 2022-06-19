package p1727n3.p1744b0.p1745a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.x */
/* loaded from: classes-dex2jar.jar:n3/b0/a/x.class */
public abstract class AbstractC25625x extends RecyclerView.AbstractC0323l {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    public boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView.AbstractC0313c0 abstractC0313c0);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0323l
    public boolean animateAppearance(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0323l.C0326c c0326c, RecyclerView.AbstractC0323l.C0326c c0326c2) {
        int i;
        int i2;
        return (c0326c == null || ((i = c0326c.f1305a) == (i2 = c0326c2.f1305a) && c0326c.f1306b == c0326c2.f1306b)) ? animateAdd(abstractC0313c0) : animateMove(abstractC0313c0, i, c0326c.f1306b, i2, c0326c2.f1306b);
    }

    public abstract boolean animateChange(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0313c0 abstractC0313c02, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0323l
    public boolean animateChange(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0313c0 abstractC0313c02, RecyclerView.AbstractC0323l.C0326c c0326c, RecyclerView.AbstractC0323l.C0326c c0326c2) {
        int i;
        int i2;
        int i3 = c0326c.f1305a;
        int i4 = c0326c.f1306b;
        if (abstractC0313c02.shouldIgnore()) {
            i2 = c0326c.f1305a;
            i = c0326c.f1306b;
        } else {
            i2 = c0326c2.f1305a;
            i = c0326c2.f1306b;
        }
        return animateChange(abstractC0313c0, abstractC0313c02, i3, i4, i2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0323l
    public boolean animateDisappearance(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0323l.C0326c c0326c, RecyclerView.AbstractC0323l.C0326c c0326c2) {
        int i = c0326c.f1305a;
        int i2 = c0326c.f1306b;
        View view = abstractC0313c0.itemView;
        int left = c0326c2 == null ? view.getLeft() : c0326c2.f1305a;
        int top = c0326c2 == null ? view.getTop() : c0326c2.f1306b;
        if (abstractC0313c0.isRemoved() || (i == left && i2 == top)) {
            return animateRemove(abstractC0313c0);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(abstractC0313c0, i, i2, left, top);
    }

    public abstract boolean animateMove(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, int i2, int i3, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0323l
    public boolean animatePersistence(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0323l.C0326c c0326c, RecyclerView.AbstractC0323l.C0326c c0326c2) {
        int i = c0326c.f1305a;
        int i2 = c0326c2.f1305a;
        if (i == i2 && c0326c.f1306b == c0326c2.f1306b) {
            dispatchMoveFinished(abstractC0313c0);
            return false;
        }
        return animateMove(abstractC0313c0, i, c0326c.f1306b, i2, c0326c2.f1306b);
    }

    public abstract boolean animateRemove(RecyclerView.AbstractC0313c0 abstractC0313c0);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0323l
    public boolean canReuseUpdatedViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        return !this.mSupportsChangeAnimations || abstractC0313c0.isInvalid();
    }

    public final void dispatchAddFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onAddFinished(abstractC0313c0);
        dispatchAnimationFinished(abstractC0313c0);
    }

    public final void dispatchAddStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onAddStarting(abstractC0313c0);
    }

    public final void dispatchChangeFinished(RecyclerView.AbstractC0313c0 abstractC0313c0, boolean z) {
        onChangeFinished(abstractC0313c0, z);
        dispatchAnimationFinished(abstractC0313c0);
    }

    public final void dispatchChangeStarting(RecyclerView.AbstractC0313c0 abstractC0313c0, boolean z) {
        onChangeStarting(abstractC0313c0, z);
    }

    public final void dispatchMoveFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onMoveFinished(abstractC0313c0);
        dispatchAnimationFinished(abstractC0313c0);
    }

    public final void dispatchMoveStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onMoveStarting(abstractC0313c0);
    }

    public final void dispatchRemoveFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onRemoveFinished(abstractC0313c0);
        dispatchAnimationFinished(abstractC0313c0);
    }

    public final void dispatchRemoveStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        onRemoveStarting(abstractC0313c0);
    }

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    public void onAddFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void onAddStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void onChangeFinished(RecyclerView.AbstractC0313c0 abstractC0313c0, boolean z) {
    }

    public void onChangeStarting(RecyclerView.AbstractC0313c0 abstractC0313c0, boolean z) {
    }

    public void onMoveFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void onMoveStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void onRemoveFinished(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void onRemoveStarting(RecyclerView.AbstractC0313c0 abstractC0313c0) {
    }

    public void setSupportsChangeAnimations(boolean z) {
        this.mSupportsChangeAnimations = z;
    }
}
