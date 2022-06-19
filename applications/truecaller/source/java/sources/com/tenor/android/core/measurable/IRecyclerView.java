package com.tenor.android.core.measurable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import p1727n3.p1744b0.p1745a.C25623w;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/measurable/IRecyclerView.class */
public interface IRecyclerView {
    void addFocusables(ArrayList<View> arrayList, int i, int i2);

    void addItemDecoration(RecyclerView.AbstractC0328n abstractC0328n);

    void addItemDecoration(RecyclerView.AbstractC0328n abstractC0328n, int i);

    void addOnChildAttachStateChangeListener(RecyclerView.AbstractC0335q abstractC0335q);

    void addOnItemTouchListener(RecyclerView.AbstractC0337s abstractC0337s);

    void addOnScrollListener(RecyclerView.AbstractC0338t abstractC0338t);

    void clearOnChildAttachStateChangeListeners();

    void clearOnScrollListeners();

    int computeHorizontalScrollExtent();

    int computeHorizontalScrollOffset();

    int computeHorizontalScrollRange();

    int computeVerticalScrollExtent();

    int computeVerticalScrollOffset();

    int computeVerticalScrollRange();

    boolean dispatchNestedFling(float f, float f2, boolean z);

    boolean dispatchNestedPreFling(float f, float f2);

    boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2);

    boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3);

    boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr);

    boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5);

    void draw(Canvas canvas);

    boolean drawChild(Canvas canvas, View view, long j);

    View findChildViewUnder(float f, float f2);

    View findContainingItemView(View view);

    RecyclerView.AbstractC0313c0 findContainingViewHolder(View view);

    RecyclerView.AbstractC0313c0 findViewHolderForAdapterPosition(int i);

    RecyclerView.AbstractC0313c0 findViewHolderForItemId(long j);

    RecyclerView.AbstractC0313c0 findViewHolderForLayoutPosition(int i);

    RecyclerView.AbstractC0313c0 findViewHolderForPosition(int i);

    boolean fling(int i, int i2);

    View focusSearch(View view, int i);

    ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet);

    RecyclerView.AbstractC0317g getAdapter();

    int getBaseline();

    int getChildAdapterPosition(View view);

    long getChildItemId(View view);

    int getChildLayoutPosition(View view);

    int getChildPosition(View view);

    RecyclerView.AbstractC0313c0 getChildViewHolder(View view);

    boolean getClipToPadding();

    C25623w getCompatAccessibilityDelegate();

    void getDecoratedBoundsWithMargins(View view, Rect rect);

    RecyclerView.AbstractC0323l getItemAnimator();

    RecyclerView.AbstractC0328n getItemDecorationAt(int i);

    RecyclerView.AbstractC0329o getLayoutManager();

    int getMaxFlingVelocity();

    int getMinFlingVelocity();

    RecyclerView.AbstractC0336r getOnFlingListener();

    boolean getPreserveFocusAfterLayout();

    RecyclerView.C0339u getRecycledViewPool();

    int getScrollState();

    boolean hasFixedSize();

    boolean hasNestedScrollingParent();

    boolean hasNestedScrollingParent(int i);

    boolean hasPendingAdapterUpdates();

    void invalidateItemDecorations();

    boolean isAnimating();

    boolean isAttachedToWindow();

    boolean isComputingLayout();

    boolean isLayoutFrozen();

    boolean isNestedScrollingEnabled();

    void offsetChildrenHorizontal(int i);

    void offsetChildrenVertical(int i);

    void onChildAttachedToWindow(View view);

    void onChildDetachedFromWindow(View view);

    void onDraw(Canvas canvas);

    boolean onGenericMotionEvent(MotionEvent motionEvent);

    boolean onInterceptTouchEvent(MotionEvent motionEvent);

    void onScrollStateChanged(int i);

    void onScrolled(int i, int i2);

    boolean onTouchEvent(MotionEvent motionEvent);

    void removeItemDecoration(RecyclerView.AbstractC0328n abstractC0328n);

    void removeOnChildAttachStateChangeListener(RecyclerView.AbstractC0335q abstractC0335q);

    void removeOnItemTouchListener(RecyclerView.AbstractC0337s abstractC0337s);

    void removeOnScrollListener(RecyclerView.AbstractC0338t abstractC0338t);

    void requestChildFocus(View view, View view2);

    boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z);

    void requestDisallowInterceptTouchEvent(boolean z);

    void requestLayout();

    void scrollBy(int i, int i2);

    void scrollTo(int i, int i2);

    void scrollToPosition(int i);

    void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent);

    void setAccessibilityDelegateCompat(C25623w c25623w);

    void setAdapter(RecyclerView.AbstractC0317g abstractC0317g);

    void setChildDrawingOrderCallback(RecyclerView.AbstractC0321j abstractC0321j);

    void setClipToPadding(boolean z);

    void setHasFixedSize(boolean z);

    void setItemAnimator(RecyclerView.AbstractC0323l abstractC0323l);

    void setItemViewCacheSize(int i);

    void setLayoutFrozen(boolean z);

    void setLayoutManager(RecyclerView.AbstractC0329o abstractC0329o);

    void setNestedScrollingEnabled(boolean z);

    void setOnFlingListener(RecyclerView.AbstractC0336r abstractC0336r);

    void setOnScrollListener(RecyclerView.AbstractC0338t abstractC0338t);

    void setPreserveFocusAfterLayout(boolean z);

    void setRecycledViewPool(RecyclerView.C0339u c0339u);

    void setRecyclerListener(RecyclerView.AbstractC0342w abstractC0342w);

    void setScrollingTouchSlop(int i);

    void setViewCacheExtension(RecyclerView.AbstractC0309a0 abstractC0309a0);

    void smoothScrollBy(int i, int i2);

    void smoothScrollBy(int i, int i2, Interpolator interpolator);

    void smoothScrollToPosition(int i);

    boolean startNestedScroll(int i);

    boolean startNestedScroll(int i, int i2);

    void stopNestedScroll();

    void stopNestedScroll(int i);

    void stopScroll();

    void swapAdapter(RecyclerView.AbstractC0317g abstractC0317g, boolean z);
}
