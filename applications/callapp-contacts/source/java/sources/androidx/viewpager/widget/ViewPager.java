package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
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
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.content.C0790b;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.C0865a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
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
    AbstractC2941a mAdapter;
    private List<AbstractC2935d> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
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
    private AbstractC2936e mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private float mLastMotionX;
    private float mLastMotionY;
    private EdgeEffect mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private C2938g mObserver;
    private AbstractC2936e mOnPageChangeListener;
    private List<AbstractC2936e> mOnPageChangeListeners;
    private int mPageMargin;
    private AbstractC2937f mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private EdgeEffect mRightEdge;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {16842931};
    private static final Comparator<C2933b> COMPARATOR = new Comparator<C2933b>() { // from class: androidx.viewpager.widget.ViewPager.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(C2933b c2933b, C2933b c2933b2) {
            return c2933b.f11008b - c2933b2.f11008b;
        }
    };
    private static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    private static final C2940i sPositionComparator = new C2940i();
    private final ArrayList<C2933b> mItems = new ArrayList<>();
    private final C2933b mTempItem = new C2933b();
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
    private final Runnable mEndScrollRunnable = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
        @Override // java.lang.Runnable
        public final void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.populate();
        }
    };
    private int mScrollState = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f11001a;

        /* renamed from: b */
        public int f11002b;

        /* renamed from: c */
        float f11003c = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: d */
        boolean f11004d;

        /* renamed from: e */
        int f11005e;

        /* renamed from: f */
        int f11006f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.f11002b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager.widget.ViewPager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader2);
            this.loader = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public @interface AbstractC2932a {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class C2933b {

        /* renamed from: a */
        Object f11007a;

        /* renamed from: b */
        int f11008b;

        /* renamed from: c */
        boolean f11009c;

        /* renamed from: d */
        float f11010d;

        /* renamed from: e */
        float f11011e;

        C2933b() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public final class C2934c extends C0865a {
        C2934c() {
            ViewPager.this = r4;
        }

        /* renamed from: a */
        private boolean m39596a() {
            return ViewPager.this.mAdapter != null && ViewPager.this.mAdapter.getCount() > 1;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            super.mo9886a(view, c0869c);
            c0869c.m44265b((CharSequence) ViewPager.class.getName());
            c0869c.m44240j(m39596a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                c0869c.m44284a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                c0869c.m44284a(PropertyFlags.UNSIGNED);
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo10179a(View view, int i, Bundle bundle) {
            if (super.mo10179a(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.mCurItem + 1);
                return true;
            } else if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.mCurItem - 1);
                return true;
            }
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: d */
        public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo10621d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m39596a());
            if (accessibilityEvent.getEventType() != 4096 || ViewPager.this.mAdapter == null) {
                return;
            }
            accessibilityEvent.setItemCount(ViewPager.this.mAdapter.getCount());
            accessibilityEvent.setFromIndex(ViewPager.this.mCurItem);
            accessibilityEvent.setToIndex(ViewPager.this.mCurItem);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public interface AbstractC2935d {
        /* renamed from: a */
        void mo10092a(ViewPager viewPager, AbstractC2941a abstractC2941a, AbstractC2941a abstractC2941a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public interface AbstractC2936e {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public interface AbstractC2937f {
        /* renamed from: a */
        void mo26193a(View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public final class C2938g extends DataSetObserver {
        C2938g() {
            ViewPager.this = r4;
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

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public static class C2939h implements AbstractC2936e {
        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageSelected(int i) {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public static final class C2940i implements Comparator<View> {
        C2940i() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            return layoutParams.f11001a != layoutParams2.f11001a ? layoutParams.f11001a ? 1 : -1 : layoutParams.f11005e - layoutParams2.f11005e;
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

    private void calculatePageOffsets(C2933b c2933b, int i, C2933b c2933b2) {
        C2933b c2933b3;
        int i2;
        float f;
        C2933b c2933b4;
        int i3;
        float f2;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (c2933b2 != null) {
            int i4 = c2933b2.f11008b;
            if (i4 < c2933b.f11008b) {
                float f4 = c2933b2.f11011e + c2933b2.f11010d + f3;
                int i5 = 0;
                for (int i6 = i4 + 1; i6 <= c2933b.f11008b && i5 < this.mItems.size(); i6 = i3 + 1) {
                    C2933b c2933b5 = this.mItems.get(i5);
                    while (true) {
                        c2933b4 = c2933b5;
                        i3 = i6;
                        f2 = f4;
                        if (i6 <= c2933b4.f11008b) {
                            break;
                        }
                        i3 = i6;
                        f2 = f4;
                        if (i5 >= this.mItems.size() - 1) {
                            break;
                        }
                        i5++;
                        c2933b5 = this.mItems.get(i5);
                    }
                    while (i3 < c2933b4.f11008b) {
                        f2 += this.mAdapter.getPageWidth(i3) + f3;
                        i3++;
                    }
                    c2933b4.f11011e = f2;
                    f4 = f2 + c2933b4.f11010d + f3;
                }
            } else if (i4 > c2933b.f11008b) {
                int size = this.mItems.size() - 1;
                float f5 = c2933b2.f11011e;
                for (int i7 = i4 - 1; i7 >= c2933b.f11008b && size >= 0; i7 = i2 - 1) {
                    C2933b c2933b6 = this.mItems.get(size);
                    while (true) {
                        c2933b3 = c2933b6;
                        i2 = i7;
                        f = f5;
                        if (i7 >= c2933b3.f11008b) {
                            break;
                        }
                        i2 = i7;
                        f = f5;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        c2933b6 = this.mItems.get(size);
                    }
                    while (i2 > c2933b3.f11008b) {
                        f -= this.mAdapter.getPageWidth(i2) + f3;
                        i2--;
                    }
                    f5 = f - (c2933b3.f11010d + f3);
                    c2933b3.f11011e = f5;
                }
            }
        }
        int size2 = this.mItems.size();
        float f6 = c2933b.f11011e;
        int i8 = c2933b.f11008b - 1;
        this.mFirstOffset = c2933b.f11008b == 0 ? c2933b.f11011e : -3.4028235E38f;
        int i9 = count - 1;
        this.mLastOffset = c2933b.f11008b == i9 ? (c2933b.f11011e + c2933b.f11010d) - 1.0f : Float.MAX_VALUE;
        int i10 = i - 1;
        float f7 = f6;
        while (i10 >= 0) {
            C2933b c2933b7 = this.mItems.get(i10);
            while (i8 > c2933b7.f11008b) {
                f7 -= this.mAdapter.getPageWidth(i8) + f3;
                i8--;
            }
            f7 -= c2933b7.f11010d + f3;
            c2933b7.f11011e = f7;
            if (c2933b7.f11008b == 0) {
                this.mFirstOffset = f7;
            }
            i10--;
            i8--;
        }
        float f8 = c2933b.f11011e + c2933b.f11010d + f3;
        int i11 = i + 1;
        int i12 = c2933b.f11008b + 1;
        while (i11 < size2) {
            C2933b c2933b8 = this.mItems.get(i11);
            while (i12 < c2933b8.f11008b) {
                f8 += this.mAdapter.getPageWidth(i12) + f3;
                i12++;
            }
            if (c2933b8.f11008b == i9) {
                this.mLastOffset = (c2933b8.f11010d + f8) - 1.0f;
            }
            c2933b8.f11011e = f8;
            f8 += c2933b8.f11010d + f3;
            i11++;
            i12++;
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
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        for (int i = 0; i < this.mItems.size(); i++) {
            C2933b c2933b = this.mItems.get(i);
            if (c2933b.f11009c) {
                c2933b.f11009c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                C0926v.m44117a(this, this.mEndScrollRunnable);
            } else {
                this.mEndScrollRunnable.run();
            }
        }
    }

    private int determineTargetPage(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.mFlingDistance || Math.abs(i2) <= this.mMinimumVelocity) {
            i += (int) (f + (i >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.mItems.size() > 0) {
            C2933b c2933b = this.mItems.get(0);
            ArrayList<C2933b> arrayList = this.mItems;
            i4 = Math.max(c2933b.f11008b, Math.min(i, arrayList.get(arrayList.size() - 1).f11008b));
        }
        return i4;
    }

    private void dispatchOnPageScrolled(int i, float f, int i2) {
        AbstractC2936e abstractC2936e = this.mOnPageChangeListener;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
        List<AbstractC2936e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC2936e abstractC2936e2 = this.mOnPageChangeListeners.get(i3);
                if (abstractC2936e2 != null) {
                    abstractC2936e2.onPageScrolled(i, f, i2);
                }
            }
        }
        AbstractC2936e abstractC2936e3 = this.mInternalPageChangeListener;
        if (abstractC2936e3 != null) {
            abstractC2936e3.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchOnPageSelected(int i) {
        AbstractC2936e abstractC2936e = this.mOnPageChangeListener;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
        List<AbstractC2936e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC2936e abstractC2936e2 = this.mOnPageChangeListeners.get(i2);
                if (abstractC2936e2 != null) {
                    abstractC2936e2.onPageSelected(i);
                }
            }
        }
        AbstractC2936e abstractC2936e3 = this.mInternalPageChangeListener;
        if (abstractC2936e3 != null) {
            abstractC2936e3.onPageSelected(i);
        }
    }

    private void dispatchOnScrollStateChanged(int i) {
        AbstractC2936e abstractC2936e = this.mOnPageChangeListener;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
        List<AbstractC2936e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC2936e abstractC2936e2 = this.mOnPageChangeListeners.get(i2);
                if (abstractC2936e2 != null) {
                    abstractC2936e2.onPageScrollStateChanged(i);
                }
            }
        }
        AbstractC2936e abstractC2936e3 = this.mInternalPageChangeListener;
        if (abstractC2936e3 != null) {
            abstractC2936e3.onPageScrollStateChanged(i);
        }
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.mPageTransformerLayerType : 0, null);
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof ViewGroup) || viewParent == this) {
                break;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private C2933b infoForCurrentScrollPosition() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        C2933b c2933b = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.mItems.size()) {
            C2933b c2933b2 = this.mItems.get(i2);
            int i3 = i2;
            C2933b c2933b3 = c2933b2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                c2933b3 = c2933b2;
                if (c2933b2.f11008b != i4) {
                    c2933b3 = this.mTempItem;
                    c2933b3.f11011e = f + f3 + f2;
                    c2933b3.f11008b = i4;
                    c2933b3.f11010d = this.mAdapter.getPageWidth(c2933b3.f11008b);
                    i3 = i2 - 1;
                }
            }
            f = c2933b3.f11011e;
            float f4 = c2933b3.f11010d;
            if (!z && scrollX < f) {
                return c2933b;
            }
            if (scrollX < f4 + f + f2 || i3 == this.mItems.size() - 1) {
                return c2933b3;
            }
            i = c2933b3.f11008b;
            f3 = c2933b3.f11010d;
            i2 = i3 + 1;
            z = false;
            c2933b = c2933b3;
        }
        return c2933b;
    }

    private static boolean isDecorView(View view) {
        return view.getClass().getAnnotation(AbstractC2932a.class) != null;
    }

    private boolean isGutterDrag(float f, float f2) {
        if (f >= this.mGutterSize || f2 <= BitmapDescriptorFactory.HUE_RED) {
            return f > ((float) (getWidth() - this.mGutterSize)) && f2 < BitmapDescriptorFactory.HUE_RED;
        }
        return true;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    private boolean pageScrolled(int i) {
        int i2;
        if (this.mItems.size() == 0) {
            if (this.mFirstLayout) {
                return false;
            }
            this.mCalledSuper = false;
            onPageScrolled(0, BitmapDescriptorFactory.HUE_RED, 0);
            if (!this.mCalledSuper) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C2933b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
        int clientWidth = getClientWidth();
        float f = this.mPageMargin;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = infoForCurrentScrollPosition.f11008b;
        float f4 = ((i / f2) - infoForCurrentScrollPosition.f11011e) / (infoForCurrentScrollPosition.f11010d + f3);
        this.mCalledSuper = false;
        onPageScrolled(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.mCalledSuper) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    private boolean performDrag(float f) {
        boolean z;
        boolean z2;
        float f2 = this.mLastMotionX;
        this.mLastMotionX = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.mFirstOffset * clientWidth;
        float f4 = this.mLastOffset * clientWidth;
        boolean z3 = false;
        C2933b c2933b = this.mItems.get(0);
        ArrayList<C2933b> arrayList = this.mItems;
        C2933b c2933b2 = arrayList.get(arrayList.size() - 1);
        if (c2933b.f11008b != 0) {
            f3 = c2933b.f11011e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c2933b2.f11008b != this.mAdapter.getCount() - 1) {
            f4 = c2933b2.f11011e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            z3 = false;
            f3 = scrollX;
            if (scrollX > f4) {
                z3 = false;
                if (z2) {
                    this.mRightEdge.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.mLeftEdge.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.mLastMotionX += f3 - i;
        scrollTo(i, getScrollY());
        pageScrolled(i);
        return z3;
    }

    private void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.mItems.isEmpty()) {
            C2933b infoForPosition = infoForPosition(this.mCurItem);
            int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.f11011e, this.mLastOffset) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            completeScroll(false);
            scrollTo(min, getScrollY());
        } else if (!this.mScroller.isFinished()) {
            this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f11001a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            } else {
                return;
            }
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
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return this.mLeftEdge.isFinished() || this.mRightEdge.isFinished();
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        C2933b infoForPosition = infoForPosition(i);
        int clientWidth = infoForPosition != null ? (int) (getClientWidth() * Math.max(this.mFirstOffset, Math.min(infoForPosition.f11011e, this.mLastOffset))) : 0;
        if (z) {
            smoothScrollTo(clientWidth, 0, i2);
            if (!z2) {
                return;
            }
            dispatchOnPageSelected(i);
            return;
        }
        if (z2) {
            dispatchOnPageSelected(i);
        }
        completeScroll(false);
        scrollTo(clientWidth, 0);
        pageScrolled(clientWidth);
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            ArrayList<View> arrayList = this.mDrawingOrderedChildren;
            if (arrayList == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.mDrawingOrderedChildren.add(getChildAt(i));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C2933b infoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f11008b == this.mCurItem) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    C2933b addNewItem(int i, int i2) {
        C2933b c2933b = new C2933b();
        c2933b.f11008b = i;
        c2933b.f11007a = this.mAdapter.mo26231a(this, i);
        c2933b.f11010d = this.mAdapter.getPageWidth(i);
        if (i2 < 0 || i2 >= this.mItems.size()) {
            this.mItems.add(c2933b);
        } else {
            this.mItems.add(i2, c2933b);
        }
        return c2933b;
    }

    public void addOnAdapterChangeListener(AbstractC2935d abstractC2935d) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(abstractC2935d);
    }

    public void addOnPageChangeListener(AbstractC2936e abstractC2936e) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(abstractC2936e);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C2933b infoForChild;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f11008b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        layoutParams3.f11001a |= isDecorView(view);
        if (!this.mInLayout) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 != null && layoutParams3.f11001a) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            layoutParams3.f11004d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0157, code lost:
        if (r6 != 2) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean arrowScroll(int r6) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.arrowScroll(int):boolean");
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = BitmapDescriptorFactory.HUE_RED;
        this.mInitialMotionX = BitmapDescriptorFactory.HUE_RED;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        this.mVelocityTracker.addMovement(obtain);
        obtain.recycle();
        this.mFakeDragBeginTime = uptimeMillis;
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.mFirstOffset)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        List<AbstractC2936e> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.clear();
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
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C0926v.m44101d(this);
    }

    void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        int i = this.mCurItem;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = z;
        while (i2 < this.mItems.size()) {
            C2933b c2933b = this.mItems.get(i2);
            int itemPosition$5d527804 = this.mAdapter.getItemPosition$5d527804();
            boolean z4 = z3;
            int i3 = i;
            int i4 = i2;
            boolean z5 = z2;
            if (itemPosition$5d527804 != -1) {
                if (itemPosition$5d527804 == -2) {
                    this.mItems.remove(i2);
                    int i5 = i2 - 1;
                    boolean z6 = z2;
                    if (!z2) {
                        this.mAdapter.mo39592a(this);
                        z6 = true;
                    }
                    this.mAdapter.mo26230a(this, c2933b.f11008b, c2933b.f11007a);
                    i2 = i5;
                    z2 = z6;
                    if (this.mCurItem == c2933b.f11008b) {
                        i = Math.max(0, Math.min(this.mCurItem, count - 1));
                        z2 = z6;
                        i2 = i5;
                    }
                } else {
                    z4 = z3;
                    i3 = i;
                    i4 = i2;
                    z5 = z2;
                    if (c2933b.f11008b != itemPosition$5d527804) {
                        if (c2933b.f11008b == this.mCurItem) {
                            i = itemPosition$5d527804;
                        }
                        c2933b.f11008b = itemPosition$5d527804;
                    }
                }
                z4 = true;
                i3 = i;
                i4 = i2;
                z5 = z2;
            }
            i2 = i4 + 1;
            z3 = z4;
            i = i3;
            z2 = z5;
        }
        if (z2) {
            this.mAdapter.mo39595a();
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z3) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f11001a) {
                    layoutParams.f11003c = BitmapDescriptorFactory.HUE_RED;
                }
            }
            setCurrentItemInternal(i, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C2933b infoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f11008b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC2941a abstractC2941a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC2941a = this.mAdapter) != null && abstractC2941a.getCount() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.setSize(height, width);
                z2 = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.mRightEdge.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.mRightEdge.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (z) {
            C0926v.m44101d(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public void endFakeDrag() {
        if (this.mFakeDragging) {
            if (this.mAdapter != null) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                this.mPopulatePending = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                C2933b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f11008b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.f11011e) / infoForCurrentScrollPosition.f11010d, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
            }
            endDrag();
            this.mFakeDragging = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? pageLeft() : arrowScroll(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? pageRight() : arrowScroll(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = arrowScroll(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = arrowScroll(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public void fakeDragBy(float f) {
        if (this.mFakeDragging) {
            if (this.mAdapter == null) {
                return;
            }
            this.mLastMotionX += f;
            float scrollX = getScrollX() - f;
            float clientWidth = getClientWidth();
            float f2 = this.mFirstOffset * clientWidth;
            float f3 = this.mLastOffset * clientWidth;
            C2933b c2933b = this.mItems.get(0);
            ArrayList<C2933b> arrayList = this.mItems;
            C2933b c2933b2 = arrayList.get(arrayList.size() - 1);
            if (c2933b.f11008b != 0) {
                f2 = c2933b.f11011e * clientWidth;
            }
            if (c2933b2.f11008b != this.mAdapter.getCount() - 1) {
                f3 = c2933b2.f11011e * clientWidth;
            }
            if (scrollX >= f2) {
                f2 = scrollX;
                if (scrollX > f3) {
                    f2 = f3;
                }
            }
            int i = (int) f2;
            this.mLastMotionX += f2 - i;
            scrollTo(i, getScrollY());
            pageScrolled(i);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, BitmapDescriptorFactory.HUE_RED, 0);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
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

    public AbstractC2941a getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.mDrawingOrder == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.mDrawingOrderedChildren.get(i3).getLayoutParams()).f11006f;
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

    C2933b infoForAnyChild(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return infoForChild(view);
            }
        }
    }

    C2933b infoForChild(View view) {
        for (int i = 0; i < this.mItems.size(); i++) {
            C2933b c2933b = this.mItems.get(i);
            if (this.mAdapter.mo26232a(view, c2933b.f11007a)) {
                return c2933b;
            }
        }
        return null;
    }

    C2933b infoForPosition(int i) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            C2933b c2933b = this.mItems.get(i2);
            if (c2933b.f11008b == i) {
                return c2933b;
            }
        }
        return null;
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (f * 16.0f);
        C0926v.m44123a(this, new C2934c());
        if (C0926v.m44099e(this) == 0) {
            C0926v.m44102c((View) this, 1);
        }
        C0926v.m44120a(this, new AbstractC0922r() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: b */
            private final Rect f11000b = new Rect();

            @Override // androidx.core.view.AbstractC0922r
            /* renamed from: a */
            public final C0889ac mo10180a(View view, C0889ac c0889ac) {
                C0889ac m44122a = C0926v.m44122a(view, c0889ac);
                if (m44122a.f3696b.mo44215b()) {
                    return m44122a;
                }
                Rect rect = this.f11000b;
                rect.left = m44122a.m44231a();
                rect.top = m44122a.m44227b();
                rect.right = m44122a.m44225c();
                rect.bottom = m44122a.m44224d();
                int childCount = ViewPager.this.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    C0889ac m44107b = C0926v.m44107b(ViewPager.this.getChildAt(i), m44122a);
                    rect.left = Math.min(m44107b.m44231a(), rect.left);
                    rect.top = Math.min(m44107b.m44227b(), rect.top);
                    rect.right = Math.min(m44107b.m44225c(), rect.right);
                    rect.bottom = Math.min(m44107b.m44224d(), rect.bottom);
                }
                return m44122a.m44230a(rect.left, rect.top, rect.right, rect.bottom);
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
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        float f;
        super.onDraw(canvas);
        if (this.mPageMargin <= 0 || this.mMarginDrawable == null || this.mItems.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.mPageMargin / width2;
        int i = 0;
        C2933b c2933b = this.mItems.get(0);
        float f3 = c2933b.f11011e;
        int size = this.mItems.size();
        int i2 = this.mItems.get(size - 1).f11008b;
        for (int i3 = c2933b.f11008b; i3 < i2; i3++) {
            while (i3 > c2933b.f11008b && i < size) {
                i++;
                c2933b = this.mItems.get(i);
            }
            if (i3 == c2933b.f11008b) {
                f = (c2933b.f11011e + c2933b.f11010d) * width2;
                f3 = c2933b.f11011e + c2933b.f11010d + f2;
            } else {
                float pageWidth = this.mAdapter.getPageWidth(i3);
                f3 += pageWidth + f2;
                f = (f3 + pageWidth) * width2;
            }
            if (this.mPageMargin + f > scrollX) {
                this.mMarginDrawable.setBounds(Math.round(f), this.mTopPageBounds, Math.round(this.mPageMargin + f), this.mBottomPageBounds);
                this.mMarginDrawable.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            resetTouch();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.mInitialMotionX = x;
            this.mLastMotionX = x;
            float y = motionEvent.getY();
            this.mInitialMotionY = y;
            this.mLastMotionY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsUnableToDrag = false;
            this.mIsScrollStarted = true;
            this.mScroller.computeScrollOffset();
            if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                completeScroll(false);
                this.mIsBeingDragged = false;
            } else {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                requestParentDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.mActivePointerId;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.mLastMotionX;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.mInitialMotionY);
                int i2 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                if (i2 != 0 && !isGutterDrag(this.mLastMotionX, f) && canScroll(this, false, (int) f, (int) x2, (int) y2)) {
                    this.mLastMotionX = x2;
                    this.mLastMotionY = y2;
                    this.mIsUnableToDrag = true;
                    return false;
                }
                int i3 = this.mTouchSlop;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.mIsBeingDragged = true;
                    requestParentDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    float f2 = this.mInitialMotionX;
                    float f3 = this.mTouchSlop;
                    this.mLastMotionX = i2 > 0 ? f2 + f3 : f2 - f3;
                    this.mLastMotionY = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.mIsUnableToDrag = true;
                }
                if (this.mIsBeingDragged && performDrag(x2)) {
                    C0926v.m44101d(this);
                }
            }
        } else if (action == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0142  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    protected void onPageScrolled(int i, float f, int i2) {
        int i3;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i5 = paddingLeft;
                int i6 = paddingRight;
                if (layoutParams.f11001a) {
                    int i7 = layoutParams.f11002b & 7;
                    if (i7 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i7 == 3) {
                        i3 = paddingLeft;
                        paddingLeft = childAt.getWidth() + paddingLeft;
                    } else if (i7 != 5) {
                        i3 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i3 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    i6 = paddingRight;
                    i5 = paddingLeft;
                }
                i4++;
                paddingLeft = i5;
                paddingRight = i6;
            }
        }
        dispatchOnPageScrolled(i, f, i2);
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt2 = getChildAt(i8);
                if (!((LayoutParams) childAt2.getLayoutParams()).f11001a) {
                    this.mPageTransformer.mo26193a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.mCalledSuper = true;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C2933b infoForChild;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i2 = 1;
        } else {
            i3 = childCount - 1;
            i2 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f11008b == this.mCurItem && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        AbstractC2941a abstractC2941a = this.mAdapter;
        if (abstractC2941a != null) {
            abstractC2941a.mo39593a(savedState.adapterState, savedState.loader);
            setCurrentItemInternal(savedState.position, false, true);
            return;
        }
        this.mRestoredCurItem = savedState.position;
        this.mRestoredAdapterState = savedState.adapterState;
        this.mRestoredClassLoader = savedState.loader;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        AbstractC2941a abstractC2941a = this.mAdapter;
        if (abstractC2941a != null) {
            savedState.adapterState = abstractC2941a.mo39591b();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.mPageMargin;
            recomputeScrollPosition(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC2941a abstractC2941a;
        if (this.mFakeDragging) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC2941a = this.mAdapter) == null || abstractC2941a.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            float x = motionEvent.getX();
            this.mInitialMotionX = x;
            this.mLastMotionX = x;
            float y = motionEvent.getY();
            this.mInitialMotionY = y;
            this.mLastMotionY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.mIsBeingDragged) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex == -1) {
                        z = resetTouch();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.mLastMotionX);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.mLastMotionY);
                        if (abs > this.mTouchSlop && abs > abs2) {
                            this.mIsBeingDragged = true;
                            requestParentDisallowInterceptTouchEvent(true);
                            float f = this.mInitialMotionX;
                            this.mLastMotionX = x2 - f > BitmapDescriptorFactory.HUE_RED ? f + this.mTouchSlop : f - this.mTouchSlop;
                            this.mLastMotionY = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.mIsBeingDragged) {
                    z = false | performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.mLastMotionX = motionEvent.getX(actionIndex);
                    this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    onSecondaryPointerUp(motionEvent);
                    this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                }
            } else if (this.mIsBeingDragged) {
                scrollToItem(this.mCurItem, true, 0, false);
                z = resetTouch();
            }
        } else if (this.mIsBeingDragged) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C2933b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            float f2 = clientWidth;
            setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f11008b, ((scrollX / f2) - infoForCurrentScrollPosition.f11011e) / (infoForCurrentScrollPosition.f11010d + (this.mPageMargin / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
            z = resetTouch();
        }
        if (!z) {
            return true;
        }
        C0926v.m44101d(this);
        return true;
    }

    boolean pageLeft() {
        int i = this.mCurItem;
        if (i > 0) {
            setCurrentItem(i - 1, true);
            return true;
        }
        return false;
    }

    boolean pageRight() {
        AbstractC2941a abstractC2941a = this.mAdapter;
        if (abstractC2941a == null || this.mCurItem >= abstractC2941a.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r13.f11008b == r6.mCurItem) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void populate(int r7) {
        /*
            Method dump skipped, instructions count: 1303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.populate(int):void");
    }

    public void removeOnAdapterChangeListener(AbstractC2935d abstractC2935d) {
        List<AbstractC2935d> list = this.mAdapterChangeListeners;
        if (list != null) {
            list.remove(abstractC2935d);
        }
    }

    public void removeOnPageChangeListener(AbstractC2936e abstractC2936e) {
        List<AbstractC2936e> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.remove(abstractC2936e);
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

    public void setAdapter(AbstractC2941a abstractC2941a) {
        AbstractC2941a abstractC2941a2 = this.mAdapter;
        if (abstractC2941a2 != null) {
            abstractC2941a2.setViewPagerObserver(null);
            this.mAdapter.mo39592a(this);
            for (int i = 0; i < this.mItems.size(); i++) {
                C2933b c2933b = this.mItems.get(i);
                this.mAdapter.mo26230a(this, c2933b.f11008b, c2933b.f11007a);
            }
            this.mAdapter.mo39595a();
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        AbstractC2941a abstractC2941a3 = this.mAdapter;
        this.mAdapter = abstractC2941a;
        this.mExpectedAdapterCount = 0;
        if (abstractC2941a != null) {
            if (this.mObserver == null) {
                this.mObserver = new C2938g();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.mo39593a(this.mRestoredAdapterState, this.mRestoredClassLoader);
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
        List<AbstractC2935d> list = this.mAdapterChangeListeners;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.mAdapterChangeListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mAdapterChangeListeners.get(i2).mo10092a(this, abstractC2941a3, abstractC2941a);
        }
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, z, false);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2) {
        setCurrentItemInternal(i, z, z2, 0);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC2941a abstractC2941a = this.mAdapter;
        if (abstractC2941a == null || abstractC2941a.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.mCurItem != i || this.mItems.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.mAdapter.getCount()) {
                    i3 = this.mAdapter.getCount() - 1;
                }
            }
            int i4 = this.mOffscreenPageLimit;
            int i5 = this.mCurItem;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.mItems.size(); i6++) {
                    this.mItems.get(i6).f11009c = true;
                }
            }
            boolean z3 = false;
            if (this.mCurItem != i3) {
                z3 = true;
            }
            if (!this.mFirstLayout) {
                populate(i3);
                scrollToItem(i3, z, i2, z3);
                return;
            }
            this.mCurItem = i3;
            if (z3) {
                dispatchOnPageSelected(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public AbstractC2936e setInternalPageChangeListener(AbstractC2936e abstractC2936e) {
        AbstractC2936e abstractC2936e2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = abstractC2936e;
        return abstractC2936e2;
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i <= 0) {
            Log.w(TAG, "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i2;
            populate();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC2936e abstractC2936e) {
        this.mOnPageChangeListener = abstractC2936e;
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0790b.m44502a(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, AbstractC2937f abstractC2937f) {
        setPageTransformer(z, abstractC2937f, 2);
    }

    public void setPageTransformer(boolean z, AbstractC2937f abstractC2937f, int i) {
        int i2 = 1;
        boolean z2 = abstractC2937f != null;
        boolean z3 = z2 != (this.mPageTransformer != null);
        this.mPageTransformer = abstractC2937f;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i2 = 2;
            }
            this.mDrawingOrder = i2;
            this.mPageTransformerLayerType = i;
        } else {
            this.mDrawingOrder = 0;
        }
        if (z3) {
            populate();
        }
    }

    void setScrollState(int i) {
        if (this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        if (this.mPageTransformer != null) {
            enableLayers(i != 0);
        }
        dispatchOnScrollStateChanged(i);
    }

    void smoothScrollTo(int i, int i2) {
        smoothScrollTo(i, i2, 0);
    }

    void smoothScrollTo(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
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
        float abs = Math.abs(i5);
        float f = clientWidth;
        float f2 = i7;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (distanceInfluenceForSnapDuration * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f), 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(i4, scrollY, i5, i6, min);
        C0926v.m44101d(this);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }
}
