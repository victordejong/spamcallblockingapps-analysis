package zendesk.support.guide;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import zendesk.support.guide.HelpRecyclerViewAdapter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/SeparatorDecoration.class */
class SeparatorDecoration extends RecyclerView.ItemDecoration {
    private Drawable mDivider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SeparatorDecoration(Drawable drawable) {
        this.mDivider = drawable;
    }

    private boolean isItemACategory(RecyclerView.ViewHolder viewHolder) {
        return viewHolder instanceof HelpRecyclerViewAdapter.CategoryViewHolder;
    }

    private boolean isItemAnExpandedCategory(RecyclerView.ViewHolder viewHolder) {
        return (viewHolder instanceof HelpRecyclerViewAdapter.CategoryViewHolder) && ((HelpRecyclerViewAdapter.CategoryViewHolder) viewHolder).isExpanded();
    }

    private boolean isItemAnUnexpandedCategory(RecyclerView.ViewHolder viewHolder) {
        return (viewHolder instanceof HelpRecyclerViewAdapter.CategoryViewHolder) && !((HelpRecyclerViewAdapter.CategoryViewHolder) viewHolder).isExpanded();
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (recyclerView.getItemAnimator() == null || !recyclerView.getItemAnimator().isRunning()) {
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (shouldShowTopSeparator(recyclerView, i)) {
                    int paddingLeft = recyclerView.getPaddingLeft();
                    int width = recyclerView.getWidth();
                    int paddingRight = recyclerView.getPaddingRight();
                    int top = childAt.getTop() + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).topMargin;
                    this.mDivider.setBounds(paddingLeft, top, width - paddingRight, this.mDivider.getIntrinsicHeight() + top);
                    this.mDivider.draw(canvas);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (r8 == false) goto L_0x0052;
     */
    @android.support.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean shouldShowTopSeparator(android.support.p004v7.widget.RecyclerView r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r7
            r3 = r8
            android.view.View r2 = r2.getChildAt(r3)
            android.support.v7.widget.RecyclerView$ViewHolder r1 = r1.getChildViewHolder(r2)
            boolean r0 = r0.isItemACategory(r1)
            r9 = r0
            r0 = r6
            r1 = r7
            r2 = r7
            r3 = r8
            android.view.View r2 = r2.getChildAt(r3)
            android.support.v7.widget.RecyclerView$ViewHolder r1 = r1.getChildViewHolder(r2)
            boolean r0 = r0.isItemAnExpandedCategory(r1)
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r8
            if (r0 <= 0) goto L_0x003b
            r0 = r6
            r1 = r7
            r2 = r7
            r3 = r8
            r4 = 1
            int r3 = r3 - r4
            android.view.View r2 = r2.getChildAt(r3)
            android.support.v7.widget.RecyclerView$ViewHolder r1 = r1.getChildViewHolder(r2)
            boolean r0 = r0.isItemAnUnexpandedCategory(r1)
            if (r0 == 0) goto L_0x003b
            r0 = 1
            r8 = r0
            goto L_0x003d
        L_0x003b:
            r0 = 0
            r8 = r0
        L_0x003d:
            r0 = r11
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0055
            r0 = r10
            if (r0 != 0) goto L_0x0052
            r0 = r11
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0055
        L_0x0052:
            r0 = 1
            r12 = r0
        L_0x0055:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.support.guide.SeparatorDecoration.shouldShowTopSeparator(android.support.v7.widget.RecyclerView, int):boolean");
    }
}
