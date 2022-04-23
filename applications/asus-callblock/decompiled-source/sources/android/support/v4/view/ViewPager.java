package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.os.b;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager.class */
public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private p mAdapter;
    private d mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private e mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private float mLastMotionX;
    private float mLastMotionY;
    private android.support.v4.widget.d mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private g mObserver;
    private e mOnPageChangeListener;
    private List<e> mOnPageChangeListeners;
    private int mPageMargin;
    private f mPageTransformer;
    private boolean mPopulatePending;
    private android.support.v4.widget.d mRightEdge;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private static final int[] LAYOUT_ATTRS = {16842931};
    private static final Comparator<b> COMPARATOR = new Comparator<b>() { // from class: android.support.v4.view.ViewPager.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(b bVar, b bVar2) {
            return bVar.f197b - bVar2.f197b;
        }
    };
    private static final Interpolator sInterpolator = new Interpolator() { // from class: android.support.v4.view.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    private static final i sPositionComparator = new i();
    private final ArrayList<b> mItems = new ArrayList<>();
    private final b mTempItem = new b();
    private final Rect mTempRect = new Rect();
    private int mRestoredCurItem = -1;
    private Parcelable mRestoredAdapterState = null;
    private ClassLoader mRestoredClassLoader = null;
    private float mFirstOffset = -3.4028235E38f;
    private float mLastOffset = Float.MAX_VALUE;
    private int mOffscreenPageLimit = 1;
    private int mActivePointerId = -1;
    private boolean mFirstLayout = true;
    private boolean mNeedCalculatePageOffsets = false;
    private final Runnable mEndScrollRunnable = new Runnable() { // from class: android.support.v4.view.ViewPager.3
        @Override // java.lang.Runnable
        public final void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.populate();
        }
    };
    private int mScrollState = 0;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f192a;

        /* renamed from: b  reason: collision with root package name */
        public int f193b;
        float c = 0.0f;
        boolean d;
        int e;
        int f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.f193b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;

        /* renamed from: a  reason: collision with root package name */
        int f194a;

        /* renamed from: b  reason: collision with root package name */
        Parcelable f195b;
        ClassLoader c;

        static {
            android.support.v4.os.c<SavedState> cVar = new android.support.v4.os.c<SavedState>() { // from class: android.support.v4.view.ViewPager.SavedState.1
                @Override // android.support.v4.os.c
                public final /* synthetic */ SavedState a(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.support.v4.os.c
                public final /* bridge */ /* synthetic */ SavedState[] a(int i) {
                    return new SavedState[i];
                }
            };
            CREATOR = Build.VERSION.SDK_INT >= 13 ? new android.support.v4.os.d<>(cVar) : new b.a<>(cVar);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f194a = parcel.readInt();
            this.f195b = parcel.readParcelable(classLoader2);
            this.c = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f194a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f194a);
            parcel.writeParcelable(this.f195b, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$a.class */
    interface a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        Object f196a;

        /* renamed from: b  reason: collision with root package name */
        int f197b;
        boolean c;
        float d;
        float e;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$c.class */
    public final class c extends android.support.v4.view.a {
        c() {
        }

        private boolean a() {
            boolean z = true;
            if (ViewPager.this.mAdapter == null || ViewPager.this.mAdapter.getCount() <= 1) {
                z = false;
            }
            return z;
        }

        @Override // android.support.v4.view.a
        public final void a(View view, android.support.v4.view.a.b bVar) {
            super.a(view, bVar);
            bVar.b(ViewPager.class.getName());
            bVar.i(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                bVar.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                bVar.a(8192);
            }
        }

        @Override // android.support.v4.view.a
        public final boolean a(View view, int i, Bundle bundle) {
            boolean z = true;
            if (!super.a(view, i, bundle)) {
                switch (i) {
                    case 4096:
                        if (!ViewPager.this.canScrollHorizontally(1)) {
                            z = false;
                            break;
                        } else {
                            ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + 1);
                            break;
                        }
                    case 8192:
                        if (!ViewPager.this.canScrollHorizontally(-1)) {
                            z = false;
                            break;
                        } else {
                            ViewPager.this.setCurrentItem(ViewPager.this.mCurItem - 1);
                            break;
                        }
                    default:
                        z = false;
                        break;
                }
            }
            return z;
        }

        @Override // android.support.v4.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            android.support.v4.view.a.f a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            a2.a(a());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
                android.support.v4.view.a.f.f219a.b(a2.f220b, ViewPager.this.mAdapter.getCount());
                android.support.v4.view.a.f.f219a.a(a2.f220b, ViewPager.this.mCurItem);
                android.support.v4.view.a.f.f219a.e(a2.f220b, ViewPager.this.mCurItem);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$d.class */
    interface d {
        void a(p pVar, p pVar2);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$e.class */
    public interface e {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$f.class */
    public interface f {
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$g.class */
    private final class g extends DataSetObserver {
        private g() {
        }

        /* synthetic */ g(ViewPager viewPager, byte b2) {
            this();
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$h.class */
    public static class h implements e {
        @Override // android.support.v4.view.ViewPager.e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.e
        public void onPageSelected(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/ViewPager$i.class */
    public static final class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            return layoutParams.f192a != layoutParams2.f192a ? layoutParams.f192a ? 1 : -1 : layoutParams.e - layoutParams2.e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        initViewPager();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initViewPager();
    }

    private void calculatePageOffsets(b bVar, int i2, b bVar2) {
        b bVar3;
        int i3;
        float f2;
        b bVar4;
        int i4;
        float f3;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f4 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (bVar2 != null) {
            int i5 = bVar2.f197b;
            if (i5 < bVar.f197b) {
                float f5 = bVar2.e + bVar2.d + f4;
                int i6 = 0;
                for (int i7 = i5 + 1; i7 <= bVar.f197b && i6 < this.mItems.size(); i7 = i4 + 1) {
                    b bVar5 = this.mItems.get(i6);
                    while (true) {
                        bVar4 = bVar5;
                        i4 = i7;
                        f3 = f5;
                        if (i7 <= bVar4.f197b) {
                            break;
                        }
                        i4 = i7;
                        f3 = f5;
                        if (i6 >= this.mItems.size() - 1) {
                            break;
                        }
                        i6++;
                        bVar5 = this.mItems.get(i6);
                    }
                    while (i4 < bVar4.f197b) {
                        f3 += this.mAdapter.getPageWidth(i4) + f4;
                        i4++;
                    }
                    bVar4.e = f3;
                    f5 = f3 + bVar4.d + f4;
                }
            } else if (i5 > bVar.f197b) {
                int size = this.mItems.size() - 1;
                float f6 = bVar2.e;
                for (int i8 = i5 - 1; i8 >= bVar.f197b && size >= 0; i8 = i3 - 1) {
                    b bVar6 = this.mItems.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        i3 = i8;
                        f2 = f6;
                        if (i8 >= bVar3.f197b) {
                            break;
                        }
                        i3 = i8;
                        f2 = f6;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        bVar6 = this.mItems.get(size);
                    }
                    while (i3 > bVar3.f197b) {
                        f2 -= this.mAdapter.getPageWidth(i3) + f4;
                        i3--;
                    }
                    f6 = f2 - (bVar3.d + f4);
                    bVar3.e = f6;
                }
            }
        }
        int size2 = this.mItems.size();
        float f7 = bVar.e;
        int i9 = bVar.f197b - 1;
        this.mFirstOffset = bVar.f197b == 0 ? bVar.e : -3.4028235E38f;
        this.mLastOffset = bVar.f197b == count - 1 ? (bVar.e + bVar.d) - 1.0f : Float.MAX_VALUE;
        for (int i10 = i2 - 1; i10 >= 0; i10--) {
            b bVar7 = this.mItems.get(i10);
            while (i9 > bVar7.f197b) {
                f7 -= this.mAdapter.getPageWidth(i9) + f4;
                i9--;
            }
            f7 -= bVar7.d + f4;
            bVar7.e = f7;
            if (bVar7.f197b == 0) {
                this.mFirstOffset = f7;
            }
            i9--;
        }
        float f8 = bVar.e + bVar.d + f4;
        int i11 = bVar.f197b + 1;
        for (int i12 = i2 + 1; i12 < size2; i12++) {
            b bVar8 = this.mItems.get(i12);
            while (i11 < bVar8.f197b) {
                f8 += this.mAdapter.getPageWidth(i11) + f4;
                i11++;
            }
            if (bVar8.f197b == count - 1) {
                this.mLastOffset = (bVar8.d + f8) - 1.0f;
            }
            bVar8.e = f8;
            f8 += bVar8.d + f4;
            i11++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    private void completeScroll(boolean z) {
        boolean z2 = this.mScrollState == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        boolean z3 = z2;
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            b bVar = this.mItems.get(i2);
            if (bVar.c) {
                bVar.c = false;
                z3 = true;
            }
        }
        if (!z3) {
            return;
        }
        if (z) {
            t.a(this, this.mEndScrollRunnable);
        } else {
            this.mEndScrollRunnable.run();
        }
    }

    private int determineTargetPage(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.mFlingDistance || Math.abs(i3) <= this.mMinimumVelocity) {
            i2 = (int) ((i2 >= this.mCurItem ? 0.4f : 0.6f) + i2 + f2);
        } else if (i3 <= 0) {
            i2++;
        }
        int i5 = i2;
        if (this.mItems.size() > 0) {
            i5 = Math.max(this.mItems.get(0).f197b, Math.min(i2, this.mItems.get(this.mItems.size() - 1).f197b));
        }
        return i5;
    }

    private void dispatchOnPageScrolled(int i2, float f2, int i3) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i2, f2, i3);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar = this.mOnPageChangeListeners.get(i4);
                if (eVar != null) {
                    eVar.onPageScrolled(i2, f2, i3);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(i2, f2, i3);
        }
    }

    private void dispatchOnPageSelected(int i2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(i2);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar = this.mOnPageChangeListeners.get(i3);
                if (eVar != null) {
                    eVar.onPageSelected(i2);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageSelected(i2);
        }
    }

    private void dispatchOnScrollStateChanged(int i2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrollStateChanged(i2);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar = this.mOnPageChangeListeners.get(i3);
                if (eVar != null) {
                    eVar.onPageScrollStateChanged(i2);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrollStateChanged(i2);
        }
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            t.a(getChildAt(i2), z ? 2 : 0, (Paint) null);
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.left = view.getLeft();
            rect.right = view.getRight();
            rect.top = view.getTop();
            rect.bottom = view.getBottom();
            ViewParent parent = view.getParent();
            while ((parent instanceof ViewGroup) && parent != this) {
                ViewGroup viewGroup = (ViewGroup) parent;
                rect.left += viewGroup.getLeft();
                rect.right += viewGroup.getRight();
                rect.top += viewGroup.getTop();
                rect.bottom += viewGroup.getBottom();
                parent = viewGroup.getParent();
            }
        }
        return rect;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c3, code lost:
        r13 = r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.v4.view.ViewPager.b infoForCurrentScrollPosition() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.infoForCurrentScrollPosition():android.support.v4.view.ViewPager$b");
    }

    private boolean isGutterDrag(float f2, float f3) {
        return (f2 < ((float) this.mGutterSize) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.mGutterSize)) && f3 < 0.0f);
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int b2 = j.b(motionEvent);
        if (j.b(motionEvent, b2) == this.mActivePointerId) {
            int i2 = b2 == 0 ? 1 : 0;
            this.mLastMotionX = j.c(motionEvent, i2);
            this.mActivePointerId = j.b(motionEvent, i2);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private boolean pageScrolled(int i2) {
        boolean z = false;
        if (this.mItems.size() != 0) {
            b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            int clientWidth = getClientWidth();
            int i3 = this.mPageMargin;
            float f2 = this.mPageMargin / clientWidth;
            int i4 = infoForCurrentScrollPosition.f197b;
            float f3 = ((i2 / clientWidth) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.d + f2);
            this.mCalledSuper = false;
            onPageScrolled(i4, f3, (int) ((i3 + clientWidth) * f3));
            if (!this.mCalledSuper) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            z = true;
        } else if (!this.mFirstLayout) {
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (!this.mCalledSuper) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        }
        return z;
    }

    private boolean performDrag(float f2) {
        boolean z;
        float f3;
        boolean z2 = true;
        r9 = false;
        boolean z3 = false;
        float f4 = this.mLastMotionX;
        this.mLastMotionX = f2;
        float scrollX = getScrollX() + (f4 - f2);
        int clientWidth = getClientWidth();
        float f5 = clientWidth * this.mFirstOffset;
        float f6 = clientWidth;
        float f7 = this.mLastOffset;
        b bVar = this.mItems.get(0);
        b bVar2 = this.mItems.get(this.mItems.size() - 1);
        if (bVar.f197b != 0) {
            f5 = clientWidth * bVar.e;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.f197b != this.mAdapter.getCount() - 1) {
            f3 = bVar2.e * clientWidth;
            z2 = false;
        } else {
            f3 = f6 * f7;
        }
        if (scrollX < f5) {
            f3 = f5;
            if (z) {
                z3 = this.mLeftEdge.a(Math.abs(f5 - scrollX) / clientWidth);
                f3 = f5;
            }
        } else if (scrollX <= f3) {
            f3 = scrollX;
        } else if (z2) {
            z3 = this.mRightEdge.a(Math.abs(scrollX - f3) / clientWidth);
        }
        this.mLastMotionX += f3 - ((int) f3);
        scrollTo((int) f3, getScrollY());
        pageScrolled((int) f3);
        return z3;
    }

    private void recomputeScrollPosition(int i2, int i3, int i4, int i5) {
        if (i3 <= 0 || this.mItems.isEmpty()) {
            b infoForPosition = infoForPosition(this.mCurItem);
            int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.e, this.mLastOffset) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                completeScroll(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.mScroller.isFinished()) {
            this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            scrollTo((int) ((((i2 - paddingLeft) - getPaddingRight()) + i4) * (getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5))), getScrollY());
        }
    }

    private void removeNonDecorViews() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            int i3 = i2;
            if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f192a) {
                removeViewAt(i2);
                i3 = i2 - 1;
            }
            i2 = i3 + 1;
        }
    }

    private void requestParentDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean resetTouch() {
        this.mActivePointerId = -1;
        endDrag();
        return this.mLeftEdge.c() | this.mRightEdge.c();
    }

    private void scrollToItem(int i2, boolean z, int i3, boolean z2) {
        int i4;
        b infoForPosition = infoForPosition(i2);
        if (infoForPosition != null) {
            i4 = (int) (Math.max(this.mFirstOffset, Math.min(infoForPosition.e, this.mLastOffset)) * getClientWidth());
        } else {
            i4 = 0;
        }
        if (z) {
            smoothScrollTo(i4, 0, i3);
            if (z2) {
                dispatchOnPageSelected(i2);
                return;
            }
            return;
        }
        if (z2) {
            dispatchOnPageSelected(i2);
        }
        completeScroll(false);
        scrollTo(i4, 0);
        pageScrolled(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int i2) {
        if (this.mScrollState != i2) {
            this.mScrollState = i2;
            if (this.mPageTransformer != null) {
                enableLayers(i2 != 0);
            }
            dispatchOnScrollStateChanged(i2);
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.mDrawingOrderedChildren.add(getChildAt(i2));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        b infoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f197b == this.mCurItem) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    b addNewItem(int i2, int i3) {
        b bVar = new b();
        bVar.f197b = i2;
        bVar.f196a = this.mAdapter.instantiateItem((ViewGroup) this, i2);
        bVar.d = this.mAdapter.getPageWidth(i2);
        if (i3 < 0 || i3 >= this.mItems.size()) {
            this.mItems.add(bVar);
        } else {
            this.mItems.add(i3, bVar);
        }
        return bVar;
    }

    public void addOnPageChangeListener(e eVar) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        b infoForChild;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f197b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.f192a |= view instanceof a;
        if (!this.mInLayout) {
            super.addView(view, i2, layoutParams);
        } else if (layoutParams2 == null || !layoutParams2.f192a) {
            layoutParams2.d = true;
            addViewInLayout(view, i2, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0143, code lost:
        if (r6 != 2) goto L_0x014f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean arrowScroll(int r6) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.arrowScroll(int):boolean");
    }

    public boolean beginFakeDrag() {
        boolean z = false;
        if (!this.mIsBeingDragged) {
            this.mFakeDragging = true;
            setScrollState(1);
            this.mLastMotionX = 0.0f;
            this.mInitialMotionX = 0.0f;
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            } else {
                this.mVelocityTracker.clear();
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
            this.mFakeDragBeginTime = uptimeMillis;
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a0, code lost:
        if (android.support.v4.view.t.a(r9, -r11) == false) goto L_0x00a3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean canScroll(android.view.View r9, boolean r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            r0 = 1
            r14 = r0
            r0 = r9
            boolean r0 = r0 instanceof android.view.ViewGroup
            if (r0 == 0) goto L_0x0093
            r0 = r9
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r15 = r0
            r0 = r9
            int r0 = r0.getScrollX()
            r16 = r0
            r0 = r9
            int r0 = r0.getScrollY()
            r17 = r0
            r0 = r15
            int r0 = r0.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            r18 = r0
        L_0x0025:
            r0 = r18
            if (r0 < 0) goto L_0x0093
            r0 = r15
            r1 = r18
            android.view.View r0 = r0.getChildAt(r1)
            r19 = r0
            r0 = r12
            r1 = r16
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getLeft()
            if (r0 < r1) goto L_0x008d
            r0 = r12
            r1 = r16
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getRight()
            if (r0 >= r1) goto L_0x008d
            r0 = r13
            r1 = r17
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getTop()
            if (r0 < r1) goto L_0x008d
            r0 = r13
            r1 = r17
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getBottom()
            if (r0 >= r1) goto L_0x008d
            r0 = r8
            r1 = r19
            r2 = 1
            r3 = r11
            r4 = r12
            r5 = r16
            int r4 = r4 + r5
            r5 = r19
            int r5 = r5.getLeft()
            int r4 = r4 - r5
            r5 = r13
            r6 = r17
            int r5 = r5 + r6
            r6 = r19
            int r6 = r6.getTop()
            int r5 = r5 - r6
            boolean r0 = r0.canScroll(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x008d
            r0 = r14
            r10 = r0
        L_0x008b:
            r0 = r10
            return r0
        L_0x008d:
            int r18 = r18 + (-1)
            goto L_0x0025
        L_0x0093:
            r0 = r10
            if (r0 == 0) goto L_0x00a3
            r0 = r14
            r10 = r0
            r0 = r9
            r1 = r11
            int r1 = -r1
            boolean r0 = android.support.v4.view.t.a(r0, r1)
            if (r0 != 0) goto L_0x008b
        L_0x00a3:
            r0 = 0
            r10 = r0
            goto L_0x008b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.canScroll(android.view.View, boolean, int, int, int):boolean");
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        boolean z;
        if (this.mAdapter == null) {
            z = false;
        } else {
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            if (i2 < 0) {
                z = false;
                if (scrollX > ((int) (clientWidth * this.mFirstOffset))) {
                    z = true;
                }
            } else {
                z = false;
                if (i2 > 0) {
                    z = false;
                    if (scrollX < ((int) (clientWidth * this.mLastOffset))) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.clear();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        t.c(this);
    }

    void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        int i2 = this.mCurItem;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < this.mItems.size()) {
            b bVar = this.mItems.get(i3);
            int itemPosition = this.mAdapter.getItemPosition(bVar.f196a);
            int i4 = i3;
            z2 = z2;
            i2 = i2;
            z = z;
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.mItems.remove(i3);
                    i4 = i3 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        z3 = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, bVar.f197b, bVar.f196a);
                    if (this.mCurItem == bVar.f197b) {
                        i2 = Math.max(0, Math.min(this.mCurItem, count - 1));
                        z = true;
                        z2 = z3;
                    } else {
                        z = true;
                        z2 = z3;
                        i2 = i2;
                    }
                } else {
                    i4 = i3;
                    z2 = z2;
                    i2 = i2;
                    z = z;
                    if (bVar.f197b != itemPosition) {
                        if (bVar.f197b == this.mCurItem) {
                            i2 = itemPosition;
                        }
                        bVar.f197b = itemPosition;
                        z = true;
                        i4 = i3;
                        z2 = z2;
                    }
                }
            }
            i3 = i4 + 1;
        }
        if (z2) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
                if (!layoutParams.f192a) {
                    layoutParams.c = 0.0f;
                }
            }
            setCurrentItemInternal(i2, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        b infoForChild;
        boolean z = false;
        if (accessibilityEvent.getEventType() != 4096) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f197b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    z = true;
                    break;
                }
                i2++;
            }
        } else {
            z = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        return z;
    }

    float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((float) ((f2 - 0.5f) * 0.4712389167638204d));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z = false;
        boolean z2 = false;
        int b2 = t.b(this);
        if (b2 == 0 || (b2 == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.a()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.a(height, width);
                z2 = this.mLeftEdge.a(canvas) | false;
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.mRightEdge.a()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.a((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.mRightEdge.a(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.mLeftEdge.b();
            this.mRightEdge.b();
        }
        if (z) {
            t.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int a2 = (int) s.a(velocityTracker, this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f197b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.e) / infoForCurrentScrollPosition.d, a2, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, a2);
        }
        endDrag();
        this.mFakeDragging = false;
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        boolean z = false;
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 21:
                    z = arrowScroll(17);
                    break;
                case 22:
                    z = arrowScroll(66);
                    break;
                case 61:
                    z = false;
                    if (Build.VERSION.SDK_INT >= 11) {
                        if (!android.support.v4.view.e.b(keyEvent)) {
                            z = false;
                            if (android.support.v4.view.e.a(keyEvent)) {
                                z = arrowScroll(1);
                                break;
                            }
                        } else {
                            z = arrowScroll(2);
                            break;
                        }
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        }
        return z;
    }

    public void fakeDragBy(float f2) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else if (this.mAdapter != null) {
            this.mLastMotionX += f2;
            float scrollX = getScrollX() - f2;
            int clientWidth = getClientWidth();
            float f3 = clientWidth;
            float f4 = this.mFirstOffset;
            float f5 = clientWidth;
            float f6 = this.mLastOffset;
            b bVar = this.mItems.get(0);
            b bVar2 = this.mItems.get(this.mItems.size() - 1);
            float f7 = bVar.f197b != 0 ? bVar.e * clientWidth : f3 * f4;
            float f8 = bVar2.f197b != this.mAdapter.getCount() - 1 ? bVar2.e * clientWidth : f5 * f6;
            if (scrollX >= f7) {
                f7 = scrollX > f8 ? f8 : scrollX;
            }
            this.mLastMotionX += f7 - ((int) f7);
            scrollTo((int) f7, getScrollY());
            pageScrolled((int) f7);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public p getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        int i4 = i3;
        if (this.mDrawingOrder == 2) {
            i4 = (i2 - 1) - i3;
        }
        return ((LayoutParams) this.mDrawingOrderedChildren.get(i4).getLayoutParams()).f;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    b infoForAnyChild(View view) {
        b infoForChild;
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                infoForChild = infoForChild(view);
                break;
            } else if (parent == null || !(parent instanceof View)) {
                break;
            } else {
                view = (View) parent;
            }
        }
        infoForChild = null;
        return infoForChild;
    }

    b infoForChild(View view) {
        b bVar;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mItems.size()) {
                bVar = null;
                break;
            }
            b bVar2 = this.mItems.get(i2);
            if (this.mAdapter.isViewFromObject(view, bVar2.f196a)) {
                bVar = bVar2;
                break;
            }
            i2++;
        }
        return bVar;
    }

    b infoForPosition(int i2) {
        b bVar;
        int i3 = 0;
        while (true) {
            if (i3 >= this.mItems.size()) {
                bVar = null;
                break;
            }
            bVar = this.mItems.get(i3);
            if (bVar.f197b == i2) {
                break;
            }
            i3++;
        }
        return bVar;
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = x.a(viewConfiguration);
        this.mMinimumVelocity = (int) (400.0f * f2);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new android.support.v4.widget.d(context);
        this.mRightEdge = new android.support.v4.widget.d(context);
        this.mFlingDistance = (int) (25.0f * f2);
        this.mCloseEnough = (int) (2.0f * f2);
        this.mDefaultGutterSize = (int) (16.0f * f2);
        t.a(this, new c());
        if (t.d(this) == 0) {
            t.b((View) this, 1);
        }
        t.a(this, new o() { // from class: android.support.v4.view.ViewPager.4

            /* renamed from: b  reason: collision with root package name */
            private final Rect f191b = new Rect();

            @Override // android.support.v4.view.o
            public final ab a(View view, ab abVar) {
                ab a2 = t.a(view, abVar);
                if (!a2.e()) {
                    Rect rect = this.f191b;
                    rect.left = a2.a();
                    rect.top = a2.b();
                    rect.right = a2.c();
                    rect.bottom = a2.d();
                    int childCount = ViewPager.this.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        ab b2 = t.b(ViewPager.this.getChildAt(i2), a2);
                        rect.left = Math.min(b2.a(), rect.left);
                        rect.top = Math.min(b2.b(), rect.top);
                        rect.right = Math.min(b2.c(), rect.right);
                        rect.bottom = Math.min(b2.d(), rect.bottom);
                    }
                    a2 = a2.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return a2;
            }
        });
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f3 = this.mPageMargin / width;
            b bVar = this.mItems.get(0);
            float f4 = bVar.e;
            int size = this.mItems.size();
            int i2 = this.mItems.get(size - 1).f197b;
            int i3 = 0;
            for (int i4 = bVar.f197b; i4 < i2; i4++) {
                while (i4 > bVar.f197b && i3 < size) {
                    i3++;
                    bVar = this.mItems.get(i3);
                }
                if (i4 == bVar.f197b) {
                    f2 = (bVar.e + bVar.d) * width;
                    f4 = bVar.e + bVar.d + f3;
                } else {
                    float pageWidth = this.mAdapter.getPageWidth(i4);
                    f2 = (f4 + pageWidth) * width;
                    f4 += pageWidth + f3;
                }
                if (this.mPageMargin + f2 > scrollX) {
                    this.mMarginDrawable.setBounds(Math.round(f2), this.mTopPageBounds, Math.round(this.mPageMargin + f2), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (f2 > scrollX + width) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r7.mIsUnableToDrag == false) goto L_0x003b;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        b infoForChild;
        int measuredWidth;
        int measuredHeight;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f192a) {
                    int i10 = layoutParams.f193b;
                    int i11 = layoutParams.f193b;
                    switch (i10 & 7) {
                        case 1:
                            measuredWidth = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            paddingLeft = paddingLeft;
                            paddingRight = paddingRight;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            paddingLeft = paddingLeft;
                            paddingRight = paddingRight;
                            break;
                        case 3:
                            paddingLeft += childAt.getMeasuredWidth();
                            measuredWidth = paddingLeft;
                            paddingRight = paddingRight;
                            break;
                        case 5:
                            measuredWidth = (i6 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            paddingLeft = paddingLeft;
                            break;
                    }
                    switch (i11 & 112) {
                        case DEFAULT_GUTTER_SIZE /* 16 */:
                            measuredHeight = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            break;
                        case 48:
                            paddingTop += childAt.getMeasuredHeight();
                            measuredHeight = paddingTop;
                            break;
                        case 80:
                            measuredHeight = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                            break;
                        default:
                            measuredHeight = paddingTop;
                            break;
                    }
                    int i12 = measuredWidth + scrollX;
                    childAt.layout(i12, measuredHeight, childAt.getMeasuredWidth() + i12, childAt.getMeasuredHeight() + measuredHeight);
                    i8++;
                }
            }
            i8 = i8;
            paddingRight = paddingRight;
            paddingLeft = paddingLeft;
        }
        int i13 = (i6 - paddingLeft) - paddingRight;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f192a && (infoForChild = infoForChild(childAt2)) != null) {
                    int i15 = ((int) (infoForChild.e * i13)) + paddingLeft;
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams2.c * i13), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i15, paddingTop, childAt2.getMeasuredWidth() + i15, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i7 - paddingBottom;
        this.mDecorChildCount = i8;
        if (this.mFirstLayout) {
            scrollToItem(this.mCurItem, false, 0, false);
        }
        this.mFirstLayout = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0169  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onMeasure(int, int):void");
    }

    protected void onPageScrolled(int i2, float f2, int i3) {
        int measuredWidth;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f192a) {
                    switch (layoutParams.f193b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            break;
                        case 3:
                            paddingLeft += childAt.getWidth();
                            measuredWidth = paddingLeft;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    paddingRight = paddingRight;
                    paddingLeft = paddingLeft;
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                        paddingLeft = paddingLeft;
                        paddingRight = paddingRight;
                    }
                } else {
                    paddingRight = paddingRight;
                    paddingLeft = paddingLeft;
                }
            }
        }
        dispatchOnPageScrolled(i2, f2, i3);
        if (this.mPageTransformer != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                View childAt2 = getChildAt(i5);
                if (!((LayoutParams) childAt2.getLayoutParams()).f192a) {
                    childAt2.getLeft();
                    getClientWidth();
                }
            }
        }
        this.mCalledSuper = true;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        b infoForChild;
        boolean z = true;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = 1;
            i3 = 0;
        } else {
            i3 = childCount - 1;
            childCount = -1;
            i4 = -1;
        }
        while (true) {
            if (i3 == childCount) {
                z = false;
                break;
            }
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f197b == this.mCurItem && childAt.requestFocus(i2, rect)) {
                break;
            }
            i3 += i4;
        }
        return z;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(savedState.f195b, savedState.c);
            setCurrentItemInternal(savedState.f194a, false, true);
            return;
        }
        this.mRestoredCurItem = savedState.f194a;
        this.mRestoredAdapterState = savedState.f195b;
        this.mRestoredClassLoader = savedState.c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f194a = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.f195b = this.mAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            recomputeScrollPosition(i2, i4, this.mPageMargin, this.mPageMargin);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.mFakeDragging) {
            z = true;
        } else if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            z = false;
        } else if (this.mAdapter == null || this.mAdapter.getCount() == 0) {
            z = false;
        } else {
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            boolean z2 = false;
            switch (motionEvent.getAction() & 255) {
                case 0:
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = false;
                    populate();
                    float x = motionEvent.getX();
                    this.mInitialMotionX = x;
                    this.mLastMotionX = x;
                    float y = motionEvent.getY();
                    this.mInitialMotionY = y;
                    this.mLastMotionY = y;
                    this.mActivePointerId = j.b(motionEvent, 0);
                    z2 = false;
                    break;
                case 1:
                    z2 = false;
                    if (this.mIsBeingDragged) {
                        VelocityTracker velocityTracker = this.mVelocityTracker;
                        velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                        int a2 = (int) s.a(velocityTracker, this.mActivePointerId);
                        this.mPopulatePending = true;
                        int clientWidth = getClientWidth();
                        int scrollX = getScrollX();
                        b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                        setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f197b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.d + (this.mPageMargin / clientWidth)), a2, (int) (j.c(motionEvent, j.a(motionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, a2);
                        z2 = resetTouch();
                        break;
                    }
                    break;
                case 2:
                    if (!this.mIsBeingDragged) {
                        int a3 = j.a(motionEvent, this.mActivePointerId);
                        if (a3 == -1) {
                            z2 = resetTouch();
                            break;
                        } else {
                            float c2 = j.c(motionEvent, a3);
                            float abs = Math.abs(c2 - this.mLastMotionX);
                            float d2 = j.d(motionEvent, a3);
                            float abs2 = Math.abs(d2 - this.mLastMotionY);
                            if (abs > this.mTouchSlop && abs > abs2) {
                                this.mIsBeingDragged = true;
                                requestParentDisallowInterceptTouchEvent(true);
                                this.mLastMotionX = c2 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                                this.mLastMotionY = d2;
                                setScrollState(1);
                                setScrollingCacheEnabled(true);
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                    z2 = false;
                    if (this.mIsBeingDragged) {
                        z2 = performDrag(j.c(motionEvent, j.a(motionEvent, this.mActivePointerId))) | false;
                        break;
                    }
                    break;
                case 3:
                    z2 = false;
                    if (this.mIsBeingDragged) {
                        scrollToItem(this.mCurItem, true, 0, false);
                        z2 = resetTouch();
                        break;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    int b2 = j.b(motionEvent);
                    this.mLastMotionX = j.c(motionEvent, b2);
                    this.mActivePointerId = j.b(motionEvent, b2);
                    z2 = false;
                    break;
                case 6:
                    onSecondaryPointerUp(motionEvent);
                    this.mLastMotionX = j.c(motionEvent, j.a(motionEvent, this.mActivePointerId));
                    z2 = false;
                    break;
                default:
                    z2 = false;
                    break;
            }
            if (z2) {
                t.c(this);
            }
            z = true;
        }
        return z;
    }

    boolean pageLeft() {
        boolean z = true;
        if (this.mCurItem > 0) {
            setCurrentItem(this.mCurItem - 1, true);
        } else {
            z = false;
        }
        return z;
    }

    boolean pageRight() {
        boolean z = true;
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            z = false;
        } else {
            setCurrentItem(this.mCurItem + 1, true);
        }
        return z;
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0109, code lost:
        if (r12.f197b == r6.mCurItem) goto L_0x010c;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00ce -> B:17:0x007d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void populate(int r7) {
        /*
            Method dump skipped, instructions count: 1216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.populate(int):void");
    }

    public void removeOnPageChangeListener(e eVar) {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.remove(eVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(p pVar) {
        if (this.mAdapter != null) {
            this.mAdapter.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i2 = 0; i2 < this.mItems.size(); i2++) {
                b bVar = this.mItems.get(i2);
                this.mAdapter.destroyItem((ViewGroup) this, bVar.f197b, bVar.f196a);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        p pVar2 = this.mAdapter;
        this.mAdapter = pVar;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new g(this, (byte) 0);
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (!z) {
                populate();
            } else {
                requestLayout();
            }
        }
        if (!(this.mAdapterChangeListener == null || pVar2 == pVar)) {
            this.mAdapterChangeListener.a(pVar2, pVar);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (Build.VERSION.SDK_INT >= 7) {
            if (this.mSetChildrenDrawingOrderEnabled == null) {
                try {
                    this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e2) {
                    Log.e(TAG, "Can't find setChildrenDrawingOrderEnabled", e2);
                }
            }
            try {
                this.mSetChildrenDrawingOrderEnabled.invoke(this, Boolean.valueOf(z));
            } catch (Exception e3) {
                Log.e(TAG, "Error changing children drawing order", e3);
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i2, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int i2, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i2, z, false);
    }

    void setCurrentItemInternal(int i2, boolean z, boolean z2) {
        setCurrentItemInternal(i2, z, z2, 0);
    }

    void setCurrentItemInternal(int i2, boolean z, boolean z2, int i3) {
        int i4;
        boolean z3 = false;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.mCurItem != i2 || this.mItems.size() == 0) {
            if (i2 < 0) {
                i4 = 0;
            } else {
                i4 = i2;
                if (i2 >= this.mAdapter.getCount()) {
                    i4 = this.mAdapter.getCount() - 1;
                }
            }
            int i5 = this.mOffscreenPageLimit;
            if (i4 > this.mCurItem + i5 || i4 < this.mCurItem - i5) {
                for (int i6 = 0; i6 < this.mItems.size(); i6++) {
                    this.mItems.get(i6).c = true;
                }
            }
            if (this.mCurItem != i4) {
                z3 = true;
            }
            if (this.mFirstLayout) {
                this.mCurItem = i4;
                if (z3) {
                    dispatchOnPageSelected(i4);
                }
                requestLayout();
                return;
            }
            populate(i4);
            scrollToItem(i4, z, i3, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e setInternalPageChangeListener(e eVar) {
        e eVar2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = eVar;
        return eVar2;
    }

    public void setOffscreenPageLimit(int i2) {
        int i3 = i2;
        if (i2 <= 0) {
            Log.w(TAG, "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i3 = 1;
        }
        if (i3 != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i3;
            populate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnAdapterChangeListener(d dVar) {
        this.mAdapterChangeListener = dVar;
    }

    @Deprecated
    public void setOnPageChangeListener(e eVar) {
        this.mOnPageChangeListener = eVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.mPageMargin;
        this.mPageMargin = i2;
        int width = getWidth();
        recomputeScrollPosition(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i2));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, f fVar) {
        int i2 = 1;
        if (Build.VERSION.SDK_INT >= 11) {
            boolean z2 = fVar != null;
            boolean z3 = z2 != (this.mPageTransformer != null);
            this.mPageTransformer = fVar;
            setChildrenDrawingOrderEnabledCompat(z2);
            if (z2) {
                if (z) {
                    i2 = 2;
                }
                this.mDrawingOrder = i2;
            } else {
                this.mDrawingOrder = 0;
            }
            if (z3) {
                populate();
            }
        }
    }

    void smoothScrollTo(int i2, int i3) {
        smoothScrollTo(i2, i3, 0);
    }

    void smoothScrollTo(int i2, int i3, int i4) {
        int scrollX;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            scrollX = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i2 - scrollX;
        int i6 = i3 - scrollY;
        if (i5 == 0 && i6 == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f2 = i7;
        float f3 = i7;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i5) * 1.0f) / clientWidth));
        int abs = Math.abs(i4);
        int min = Math.min(abs > 0 ? Math.round(1000.0f * Math.abs(((f3 * distanceInfluenceForSnapDuration) + f2) / abs)) * 4 : (int) (((Math.abs(i5) / ((clientWidth * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f), (int) MAX_SETTLE_DURATION);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(scrollX, scrollY, i5, i6, min);
        t.c(this);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }
}
