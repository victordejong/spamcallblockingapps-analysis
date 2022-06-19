package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxItemDecoration.class */
public class FlexboxItemDecoration extends RecyclerView.AbstractC0955h {
    public static final int BOTH = 3;
    public static final int HORIZONTAL = 1;
    private static final int[] LIST_DIVIDER_ATTRS = {16843284};
    public static final int VERTICAL = 2;
    private Drawable mDrawable;
    private int mOrientation;

    public FlexboxItemDecoration(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(LIST_DIVIDER_ATTRS);
        this.mDrawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setOrientation(3);
    }

    private void drawHorizontalDecorations(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!needsHorizontalDecoration()) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        int flexDirection = flexboxLayoutManager.getFlexDirection();
        int left = recyclerView.getLeft();
        int paddingLeft = recyclerView.getPaddingLeft();
        int right = recyclerView.getRight();
        int paddingRight = recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = recyclerView.getChildAt(i7);
            RecyclerView.C0961j c0961j = (RecyclerView.C0961j) childAt.getLayoutParams();
            if (flexDirection == 3) {
                i2 = childAt.getBottom() + c0961j.bottomMargin;
                i = this.mDrawable.getIntrinsicHeight() + i2;
            } else {
                i = childAt.getTop() - c0961j.topMargin;
                i2 = i - this.mDrawable.getIntrinsicHeight();
            }
            if (!flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                i3 = childAt.getLeft() - c0961j.leftMargin;
                i6 = childAt.getRight();
                i5 = c0961j.rightMargin;
            } else if (flexboxLayoutManager.isLayoutRtl()) {
                i4 = Math.min(childAt.getRight() + c0961j.rightMargin + this.mDrawable.getIntrinsicWidth(), right + paddingRight);
                i3 = childAt.getLeft() - c0961j.leftMargin;
                this.mDrawable.setBounds(i3, i2, i4, i);
                this.mDrawable.draw(canvas);
            } else {
                i3 = Math.max((childAt.getLeft() - c0961j.leftMargin) - this.mDrawable.getIntrinsicWidth(), left - paddingLeft);
                i6 = childAt.getRight();
                i5 = c0961j.rightMargin;
            }
            i4 = i6 + i5;
            this.mDrawable.setBounds(i3, i2, i4, i);
            this.mDrawable.draw(canvas);
        }
    }

    private void drawVerticalDecorations(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        int i4;
        int bottom;
        int i5;
        if (!needsVerticalDecoration()) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        int top = recyclerView.getTop();
        int paddingTop = recyclerView.getPaddingTop();
        int bottom2 = recyclerView.getBottom();
        int paddingBottom = recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        int flexDirection = flexboxLayoutManager.getFlexDirection();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            RecyclerView.C0961j c0961j = (RecyclerView.C0961j) childAt.getLayoutParams();
            if (flexboxLayoutManager.isLayoutRtl()) {
                i2 = childAt.getRight() + c0961j.rightMargin;
                i = this.mDrawable.getIntrinsicWidth() + i2;
            } else {
                i = childAt.getLeft() - c0961j.leftMargin;
                i2 = i - this.mDrawable.getIntrinsicWidth();
            }
            if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                i4 = childAt.getTop() - c0961j.topMargin;
                bottom = childAt.getBottom();
                i5 = c0961j.bottomMargin;
            } else if (flexDirection == 3) {
                i3 = Math.min(childAt.getBottom() + c0961j.bottomMargin + this.mDrawable.getIntrinsicHeight(), bottom2 + paddingBottom);
                i4 = childAt.getTop() - c0961j.topMargin;
                this.mDrawable.setBounds(i2, i4, i, i3);
                this.mDrawable.draw(canvas);
            } else {
                i4 = Math.max((childAt.getTop() - c0961j.topMargin) - this.mDrawable.getIntrinsicHeight(), top - paddingTop);
                bottom = childAt.getBottom();
                i5 = c0961j.bottomMargin;
            }
            i3 = bottom + i5;
            this.mDrawable.setBounds(i2, i4, i, i3);
            this.mDrawable.draw(canvas);
        }
    }

    private boolean isFirstItemInLine(int i, List<FlexLine> list, FlexboxLayoutManager flexboxLayoutManager) {
        int positionToFlexLineIndex = flexboxLayoutManager.getPositionToFlexLineIndex(i);
        if ((positionToFlexLineIndex == -1 || positionToFlexLineIndex >= flexboxLayoutManager.getFlexLinesInternal().size() || flexboxLayoutManager.getFlexLinesInternal().get(positionToFlexLineIndex).mFirstIndex != i) && i != 0) {
            boolean z = false;
            if (list.size() == 0) {
                return false;
            }
            if (list.get(list.size() - 1).mLastIndex == i - 1) {
                z = true;
            }
            return z;
        }
        return true;
    }

    private boolean needsHorizontalDecoration() {
        boolean z = true;
        if ((this.mOrientation & 1) <= 0) {
            z = false;
        }
        return z;
    }

    private boolean needsVerticalDecoration() {
        return (this.mOrientation & 2) > 0;
    }

    private void setOffsetAlongCrossAxis(Rect rect, int i, FlexboxLayoutManager flexboxLayoutManager, List<FlexLine> list) {
        if (list.size() == 0 || flexboxLayoutManager.getPositionToFlexLineIndex(i) == 0) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (!needsHorizontalDecoration()) {
                rect.top = 0;
                rect.bottom = 0;
                return;
            }
            rect.top = this.mDrawable.getIntrinsicHeight();
            rect.bottom = 0;
        } else if (!needsVerticalDecoration()) {
        } else {
            if (flexboxLayoutManager.isLayoutRtl()) {
                rect.right = this.mDrawable.getIntrinsicWidth();
                rect.left = 0;
                return;
            }
            rect.left = this.mDrawable.getIntrinsicWidth();
            rect.right = 0;
        }
    }

    private void setOffsetAlongMainAxis(Rect rect, int i, FlexboxLayoutManager flexboxLayoutManager, List<FlexLine> list, int i2) {
        if (isFirstItemInLine(i, list, flexboxLayoutManager)) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (!needsVerticalDecoration()) {
                rect.left = 0;
                rect.right = 0;
            } else if (flexboxLayoutManager.isLayoutRtl()) {
                rect.right = this.mDrawable.getIntrinsicWidth();
                rect.left = 0;
            } else {
                rect.left = this.mDrawable.getIntrinsicWidth();
                rect.right = 0;
            }
        } else if (!needsHorizontalDecoration()) {
            rect.top = 0;
            rect.bottom = 0;
        } else if (i2 == 3) {
            rect.bottom = this.mDrawable.getIntrinsicHeight();
            rect.top = 0;
        } else {
            rect.top = this.mDrawable.getIntrinsicHeight();
            rect.bottom = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!needsHorizontalDecoration() && !needsVerticalDecoration()) {
            rect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        List<FlexLine> flexLines = flexboxLayoutManager.getFlexLines();
        setOffsetAlongMainAxis(rect, childAdapterPosition, flexboxLayoutManager, flexLines, flexboxLayoutManager.getFlexDirection());
        setOffsetAlongCrossAxis(rect, childAdapterPosition, flexboxLayoutManager, flexLines);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        drawHorizontalDecorations(canvas, recyclerView);
        drawVerticalDecorations(canvas, recyclerView);
    }

    public void setDrawable(Drawable drawable) {
        if (drawable != null) {
            this.mDrawable = drawable;
            return;
        }
        throw new IllegalArgumentException("Drawable cannot be null.");
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }
}
