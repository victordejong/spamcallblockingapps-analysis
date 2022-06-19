package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p019c.C0463a;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.C0618c;
import androidx.customview.view.AbsSavedState;
import com.google.android.flexbox.FlexItem;
import com.google.android.material.C1284R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior.class */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0396b<V> {
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int activePointerId;
    private BottomSheetCallback callback;
    int collapsedOffset;
    int fitToContentsOffset;
    int halfExpandedOffset;
    boolean hideable;
    private boolean ignoreEvents;
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialY;
    private int lastNestedScrollDy;
    private int lastPeekHeight;
    private float maximumVelocity;
    private boolean nestedScrolled;
    WeakReference<View> nestedScrollingChildRef;
    int parentHeight;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightMin;
    private boolean skipCollapsed;
    boolean touchingScrollingChild;
    private VelocityTracker velocityTracker;
    C0618c viewDragHelper;
    WeakReference<V> viewRef;
    private boolean fitToContents = true;
    int state = 4;
    private final C0618c.AbstractC0621a dragCallback = new C0618c.AbstractC0621a() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionVertical(View view, int i, int i2) {
            return C0463a.m6545a(i, BottomSheetBehavior.this.getExpandedOffset(), BottomSheetBehavior.this.hideable ? BottomSheetBehavior.this.parentHeight : BottomSheetBehavior.this.collapsedOffset);
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int getViewVerticalDragRange(View view) {
            return BottomSheetBehavior.this.hideable ? BottomSheetBehavior.this.parentHeight : BottomSheetBehavior.this.collapsedOffset;
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.dispatchOnSlide(i2);
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewReleased(View view, float f, float f2) {
            int i = 0;
            int i2 = 4;
            if (f2 < FlexItem.FLEX_GROW_DEFAULT) {
                if (BottomSheetBehavior.this.fitToContents) {
                    i = BottomSheetBehavior.this.fitToContentsOffset;
                } else if (view.getTop() > BottomSheetBehavior.this.halfExpandedOffset) {
                    i = BottomSheetBehavior.this.halfExpandedOffset;
                    i2 = 6;
                }
                i2 = 3;
            } else if (BottomSheetBehavior.this.hideable && BottomSheetBehavior.this.shouldHide(view, f2) && (view.getTop() > BottomSheetBehavior.this.collapsedOffset || Math.abs(f) < Math.abs(f2))) {
                i = BottomSheetBehavior.this.parentHeight;
                i2 = 5;
            } else if (f2 == FlexItem.FLEX_GROW_DEFAULT || Math.abs(f) > Math.abs(f2)) {
                int top = view.getTop();
                if (!BottomSheetBehavior.this.fitToContents) {
                    if (top < BottomSheetBehavior.this.halfExpandedOffset) {
                        if (top >= Math.abs(top - BottomSheetBehavior.this.collapsedOffset)) {
                            i = BottomSheetBehavior.this.halfExpandedOffset;
                        }
                        i2 = 3;
                    } else if (Math.abs(top - BottomSheetBehavior.this.halfExpandedOffset) < Math.abs(top - BottomSheetBehavior.this.collapsedOffset)) {
                        i = BottomSheetBehavior.this.halfExpandedOffset;
                    } else {
                        i = BottomSheetBehavior.this.collapsedOffset;
                    }
                    i2 = 6;
                } else if (Math.abs(top - BottomSheetBehavior.this.fitToContentsOffset) < Math.abs(top - BottomSheetBehavior.this.collapsedOffset)) {
                    i = BottomSheetBehavior.this.fitToContentsOffset;
                    i2 = 3;
                } else {
                    i = BottomSheetBehavior.this.collapsedOffset;
                }
            } else {
                i = BottomSheetBehavior.this.collapsedOffset;
            }
            if (!BottomSheetBehavior.this.viewDragHelper.m5925a(view.getLeft(), i)) {
                BottomSheetBehavior.this.setStateInternal(i2);
                return;
            }
            BottomSheetBehavior.this.setStateInternal(2);
            C0552u.m6265a(view, new SettleRunnable(view, i2));
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public boolean tryCaptureView(View view, int i) {
            View view2;
            boolean z = true;
            if (BottomSheetBehavior.this.state != 1 && !BottomSheetBehavior.this.touchingScrollingChild) {
                if (BottomSheetBehavior.this.state == 3 && BottomSheetBehavior.this.activePointerId == i && (view2 = BottomSheetBehavior.this.nestedScrollingChildRef.get()) != null && view2.canScrollVertically(-1)) {
                    return false;
                }
                if (BottomSheetBehavior.this.viewRef == null || BottomSheetBehavior.this.viewRef.get() != view) {
                    z = false;
                }
                return z;
            }
            return false;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback.class */
    public static abstract class BottomSheetCallback {
        public abstract void onSlide(View view, float f);

        public abstract void onStateChanged(View view, int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable.class */
    public class SettleRunnable implements Runnable {
        private final int targetState;
        private final View view;

        SettleRunnable(View view, int i) {
            BottomSheetBehavior.this = r4;
            this.view = view;
            this.targetState = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.viewDragHelper == null || !BottomSheetBehavior.this.viewDragHelper.m5915a(true)) {
                BottomSheetBehavior.this.setStateInternal(this.targetState);
            } else {
                C0552u.m6265a(this.view, this);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$State.class */
    public @interface State {
    }

    public BottomSheetBehavior() {
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1284R.styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(C1284R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || peekValue.data != -1) {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(C1284R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            setPeekHeight(peekValue.data);
        }
        setHideable(obtainStyledAttributes.getBoolean(C1284R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setFitToContents(obtainStyledAttributes.getBoolean(C1284R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(C1284R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void calculateCollapsedOffset() {
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - this.lastPeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - this.lastPeekHeight;
        }
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.C0399e) {
            CoordinatorLayout.AbstractC0396b m6779b = ((CoordinatorLayout.C0399e) layoutParams).m6779b();
            if (!(m6779b instanceof BottomSheetBehavior)) {
                throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
            }
            return (BottomSheetBehavior) m6779b;
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    public int getExpandedOffset() {
        return this.fitToContents ? this.fitToContentsOffset : 0;
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private void reset() {
        this.activePointerId = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private void updateImportantForAccessibility(boolean z) {
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (Build.VERSION.SDK_INT >= 16 && z) {
            if (this.importantForAccessibilityMap != null) {
                return;
            }
            this.importantForAccessibilityMap = new HashMap(childCount);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.viewRef.get()) {
                if (!z) {
                    Map<View, Integer> map = this.importantForAccessibilityMap;
                    if (map != null && map.containsKey(childAt)) {
                        C0552u.m6258b(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                } else {
                    if (Build.VERSION.SDK_INT >= 16) {
                        this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                    C0552u.m6258b(childAt, 4);
                }
            }
        }
        if (z) {
            return;
        }
        this.importantForAccessibilityMap = null;
    }

    void dispatchOnSlide(int i) {
        BottomSheetCallback bottomSheetCallback;
        V v = this.viewRef.get();
        if (v == null || (bottomSheetCallback = this.callback) == null) {
            return;
        }
        int i2 = this.collapsedOffset;
        if (i > i2) {
            bottomSheetCallback.onSlide(v, (i2 - i) / (this.parentHeight - i2));
        } else {
            bottomSheetCallback.onSlide(v, (i2 - i) / (i2 - getExpandedOffset()));
        }
    }

    View findScrollingChild(View view) {
        if (C0552u.m6222y(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
            if (findScrollingChild != null) {
                return findScrollingChild;
            }
        }
        return null;
    }

    public final int getPeekHeight() {
        return this.peekHeightAuto ? -1 : this.peekHeight;
    }

    int getPeekHeightMin() {
        return this.peekHeightMin;
    }

    public boolean getSkipCollapsed() {
        return this.skipCollapsed;
    }

    public final int getState() {
        return this.state;
    }

    public boolean isFitToContents() {
        return this.fitToContents;
    }

    public boolean isHideable() {
        return this.hideable;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0618c c0618c;
        if (!v.isShown()) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.initialY = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.nestedScrollingChildRef;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.initialY)) {
                this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.touchingScrollingChild = true;
            }
            this.ignoreEvents = this.activePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.initialY);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.touchingScrollingChild = false;
            this.activePointerId = -1;
            if (this.ignoreEvents) {
                this.ignoreEvents = false;
                return false;
            }
        }
        if (!this.ignoreEvents && (c0618c = this.viewDragHelper) != null && c0618c.m5922a(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
        View view2 = null;
        if (weakReference2 != null) {
            view2 = weakReference2.get();
        }
        boolean z = false;
        if (actionMasked == 2) {
            z = false;
            if (view2 != null) {
                z = false;
                if (!this.ignoreEvents) {
                    z = false;
                    if (this.state != 1) {
                        z = false;
                        if (!coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            z = false;
                            if (this.viewDragHelper != null) {
                                z = false;
                                if (Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.m5900d()) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (C0552u.m6227t(coordinatorLayout) && !C0552u.m6227t(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.parentHeight = coordinatorLayout.getHeight();
        if (this.peekHeightAuto) {
            if (this.peekHeightMin == 0) {
                this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(C1284R.dimen.design_bottom_sheet_peek_height_min);
            }
            this.lastPeekHeight = Math.max(this.peekHeightMin, this.parentHeight - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.lastPeekHeight = this.peekHeight;
        }
        this.fitToContentsOffset = Math.max(0, this.parentHeight - v.getHeight());
        this.halfExpandedOffset = this.parentHeight / 2;
        calculateCollapsedOffset();
        int i2 = this.state;
        if (i2 == 3) {
            C0552u.m6246e(v, getExpandedOffset());
        } else if (i2 == 6) {
            C0552u.m6246e(v, this.halfExpandedOffset);
        } else if (!this.hideable || i2 != 5) {
            int i3 = this.state;
            if (i3 == 4) {
                C0552u.m6246e(v, this.collapsedOffset);
            } else if (i3 == 1 || i3 == 2) {
                C0552u.m6246e(v, top - v.getTop());
            }
        } else {
            C0552u.m6246e(v, this.parentHeight);
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = C0618c.m5916a(coordinatorLayout, this.dragCallback);
        }
        this.viewRef = new WeakReference<>(v);
        this.nestedScrollingChildRef = new WeakReference<>(findScrollingChild(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return view == this.nestedScrollingChildRef.get() && (this.state != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 != 1 && view == this.nestedScrollingChildRef.get()) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < getExpandedOffset()) {
                    iArr[1] = top - getExpandedOffset();
                    C0552u.m6246e(v, -iArr[1]);
                    setStateInternal(3);
                } else {
                    iArr[1] = i2;
                    C0552u.m6246e(v, -i2);
                    setStateInternal(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.collapsedOffset;
                if (i4 <= i5 || this.hideable) {
                    iArr[1] = i2;
                    C0552u.m6246e(v, -i2);
                    setStateInternal(1);
                } else {
                    iArr[1] = top - i5;
                    C0552u.m6246e(v, -iArr[1]);
                    setStateInternal(4);
                }
            }
            dispatchOnSlide(v.getTop());
            this.lastNestedScrollDy = i2;
            this.nestedScrolled = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        if (savedState.state == 1 || savedState.state == 2) {
            this.state = 4;
        } else {
            this.state = savedState.state;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.state);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        boolean z = false;
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        if ((i & 2) != 0) {
            z = true;
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int i2;
        int i3 = 3;
        if (v.getTop() == getExpandedOffset()) {
            setStateInternal(3);
        } else if (view != this.nestedScrollingChildRef.get() || !this.nestedScrolled) {
        } else {
            if (this.lastNestedScrollDy > 0) {
                i2 = getExpandedOffset();
            } else if (!this.hideable || !shouldHide(v, getYVelocity())) {
                if (this.lastNestedScrollDy == 0) {
                    int top = v.getTop();
                    if (!this.fitToContents) {
                        int i4 = this.halfExpandedOffset;
                        if (top < i4) {
                            if (top < Math.abs(top - this.collapsedOffset)) {
                                i2 = 0;
                            } else {
                                i2 = this.halfExpandedOffset;
                            }
                        } else if (Math.abs(top - i4) < Math.abs(top - this.collapsedOffset)) {
                            i2 = this.halfExpandedOffset;
                        } else {
                            i2 = this.collapsedOffset;
                        }
                        i3 = 6;
                    } else if (Math.abs(top - this.fitToContentsOffset) < Math.abs(top - this.collapsedOffset)) {
                        i2 = this.fitToContentsOffset;
                    } else {
                        i2 = this.collapsedOffset;
                    }
                } else {
                    i2 = this.collapsedOffset;
                }
                i3 = 4;
            } else {
                i2 = this.parentHeight;
                i3 = 5;
            }
            if (this.viewDragHelper.m5919a((View) v, v.getLeft(), i2)) {
                setStateInternal(2);
                C0552u.m6265a(v, new SettleRunnable(v, i3));
            } else {
                setStateInternal(i3);
            }
            this.nestedScrolled = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        C0618c c0618c = this.viewDragHelper;
        if (c0618c != null) {
            c0618c.m5907b(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.ignoreEvents && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.m5900d()) {
            this.viewDragHelper.m5920a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.ignoreEvents;
    }

    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.callback = bottomSheetCallback;
    }

    public void setFitToContents(boolean z) {
        if (this.fitToContents == z) {
            return;
        }
        this.fitToContents = z;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
        }
        setStateInternal((!this.fitToContents || this.state != 6) ? this.state : 3);
    }

    public void setHideable(boolean z) {
        this.hideable = z;
    }

    public final void setPeekHeight(int i) {
        boolean z;
        WeakReference<V> weakReference;
        V v;
        if (i == -1) {
            if (!this.peekHeightAuto) {
                this.peekHeightAuto = true;
                z = true;
            }
            z = false;
        } else {
            if (this.peekHeightAuto || this.peekHeight != i) {
                this.peekHeightAuto = false;
                this.peekHeight = Math.max(0, i);
                this.collapsedOffset = this.parentHeight - i;
                z = true;
            }
            z = false;
        }
        if (!z || this.state != 4 || (weakReference = this.viewRef) == null || (v = weakReference.get()) == null) {
            return;
        }
        v.requestLayout();
    }

    public void setSkipCollapsed(boolean z) {
        this.skipCollapsed = z;
    }

    public final void setState(final int i) {
        if (i == this.state) {
            return;
        }
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            if (i != 4 && i != 3 && i != 6 && (!this.hideable || i != 5)) {
                return;
            }
            this.state = i;
            return;
        }
        final V v = weakReference.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent == null || !parent.isLayoutRequested() || !C0552u.m6292D(v)) {
            startSettlingAnimation(v, i);
        } else {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.startSettlingAnimation(v, i);
                }
            });
        }
    }

    void setStateInternal(int i) {
        BottomSheetCallback bottomSheetCallback;
        if (this.state == i) {
            return;
        }
        this.state = i;
        if (i == 6 || i == 3) {
            updateImportantForAccessibility(true);
        } else if (i == 5 || i == 4) {
            updateImportantForAccessibility(false);
        }
        V v = this.viewRef.get();
        if (v == null || (bottomSheetCallback = this.callback) == null) {
            return;
        }
        bottomSheetCallback.onStateChanged(v, i);
    }

    boolean shouldHide(View view, float f) {
        boolean z = true;
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        if (Math.abs((view.getTop() + (f * HIDE_FRICTION)) - this.collapsedOffset) / this.peekHeight <= HIDE_THRESHOLD) {
            z = false;
        }
        return z;
    }

    void startSettlingAnimation(View view, int i) {
        int i2;
        if (i == 4) {
            i2 = this.collapsedOffset;
        } else if (i == 6) {
            int i3 = this.halfExpandedOffset;
            if (this.fitToContents) {
                i2 = this.fitToContentsOffset;
                if (i3 <= i2) {
                    i = 3;
                }
            }
            i2 = i3;
        } else if (i == 3) {
            i2 = getExpandedOffset();
        } else if (!this.hideable || i != 5) {
            throw new IllegalArgumentException("Illegal state argument: " + i);
        } else {
            i2 = this.parentHeight;
        }
        if (!this.viewDragHelper.m5919a(view, view.getLeft(), i2)) {
            setStateInternal(i);
            return;
        }
        setStateInternal(2);
        C0552u.m6265a(view, new SettleRunnable(view, i));
    }
}
