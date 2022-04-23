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
import androidx.core.view.ac;
import androidx.core.view.r;
import androidx.core.view.v;
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
    androidx.viewpager.widget.a mAdapter;
    private List<d> mAdapterChangeListeners;
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
    private e mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private float mLastMotionX;
    private float mLastMotionY;
    private EdgeEffect mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private g mObserver;
    private e mOnPageChangeListener;
    private List<e> mOnPageChangeListeners;
    private int mPageMargin;
    private f mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private EdgeEffect mRightEdge;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {16842931};
    private static final Comparator<b> COMPARATOR = new Comparator<b>() { // from class: androidx.viewpager.widget.ViewPager.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(b bVar, b bVar2) {
            return bVar.f5885b - bVar2.f5885b;
        }
    };
    private static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
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

        /* renamed from: a  reason: collision with root package name */
        public boolean f5880a;

        /* renamed from: b  reason: collision with root package name */
        public int f5881b;

        /* renamed from: c  reason: collision with root package name */
        float f5882c = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: d  reason: collision with root package name */
        boolean f5883d;
        int e;
        int f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.f5881b = obtainStyledAttributes.getInteger(0, 48);
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
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public @interface a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        Object f5884a;

        /* renamed from: b  reason: collision with root package name */
        int f5885b;

        /* renamed from: c  reason: collision with root package name */
        boolean f5886c;

        /* renamed from: d  reason: collision with root package name */
        float f5887d;
        float e;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public final class c extends androidx.core.view.a {
        c() {
        }

        private boolean a() {
            return ViewPager.this.mAdapter != null && ViewPager.this.mAdapter.getCount() > 1;
        }

        @Override // androidx.core.view.a
        public final void a(View view, androidx.core.view.a.c cVar) {
            super.a(view, cVar);
            cVar.b((CharSequence) ViewPager.class.getName());
            cVar.j(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(PropertyFlags.UNSIGNED);
            }
        }

        @Override // androidx.core.view.a
        public final boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.mCurItem - 1);
                return true;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.mCurItem + 1);
                return true;
            }
        }

        @Override // androidx.core.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
                accessibilityEvent.setItemCount(ViewPager.this.mAdapter.getCount());
                accessibilityEvent.setFromIndex(ViewPager.this.mCurItem);
                accessibilityEvent.setToIndex(ViewPager.this.mCurItem);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public interface d {
        void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public interface e {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public interface f {
        void a(View view, float f);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    final class g extends DataSetObserver {
        g() {
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

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public static class h implements e {
        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageSelected(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public static final class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            return layoutParams.f5880a != layoutParams2.f5880a ? layoutParams.f5880a ? 1 : -1 : layoutParams.e - layoutParams2.e;
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
        float f4 = clientWidth > 0 ? this.mPageMargin / clientWidth : BitmapDescriptorFactory.HUE_RED;
        if (bVar2 != null) {
            int i5 = bVar2.f5885b;
            if (i5 < bVar.f5885b) {
                float f5 = bVar2.e + bVar2.f5887d + f4;
                int i6 = 0;
                for (int i7 = i5 + 1; i7 <= bVar.f5885b && i6 < this.mItems.size(); i7 = i4 + 1) {
                    b bVar5 = this.mItems.get(i6);
                    while (true) {
                        bVar4 = bVar5;
                        i4 = i7;
                        f3 = f5;
                        if (i7 <= bVar4.f5885b) {
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
                    while (i4 < bVar4.f5885b) {
                        f3 += this.mAdapter.getPageWidth(i4) + f4;
                        i4++;
                    }
                    bVar4.e = f3;
                    f5 = f3 + bVar4.f5887d + f4;
                }
            } else if (i5 > bVar.f5885b) {
                int size = this.mItems.size() - 1;
                float f6 = bVar2.e;
                for (int i8 = i5 - 1; i8 >= bVar.f5885b && size >= 0; i8 = i3 - 1) {
                    b bVar6 = this.mItems.get(size);
                    while (true) {
                        bVar3 = bVar6;
                        i3 = i8;
                        f2 = f6;
                        if (i8 >= bVar3.f5885b) {
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
                    while (i3 > bVar3.f5885b) {
                        f2 -= this.mAdapter.getPageWidth(i3) + f4;
                        i3--;
                    }
                    f6 = f2 - (bVar3.f5887d + f4);
                    bVar3.e = f6;
                }
            }
        }
        int size2 = this.mItems.size();
        float f7 = bVar.e;
        int i9 = bVar.f5885b - 1;
        this.mFirstOffset = bVar.f5885b == 0 ? bVar.e : -3.4028235E38f;
        int i10 = count - 1;
        this.mLastOffset = bVar.f5885b == i10 ? (bVar.e + bVar.f5887d) - 1.0f : Float.MAX_VALUE;
        int i11 = i2 - 1;
        while (i11 >= 0) {
            b bVar7 = this.mItems.get(i11);
            while (i9 > bVar7.f5885b) {
                f7 -= this.mAdapter.getPageWidth(i9) + f4;
                i9--;
            }
            f7 -= bVar7.f5887d + f4;
            bVar7.e = f7;
            if (bVar7.f5885b == 0) {
                this.mFirstOffset = f7;
            }
            i11--;
            i9--;
        }
        float f8 = bVar.e + bVar.f5887d + f4;
        int i12 = bVar.f5885b + 1;
        int i13 = i2 + 1;
        while (i13 < size2) {
            b bVar8 = this.mItems.get(i13);
            while (i12 < bVar8.f5885b) {
                f8 += this.mAdapter.getPageWidth(i12) + f4;
                i12++;
            }
            if (bVar8.f5885b == i10) {
                this.mLastOffset = (bVar8.f5887d + f8) - 1.0f;
            }
            bVar8.e = f8;
            f8 += bVar8.f5887d + f4;
            i13++;
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
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            b bVar = this.mItems.get(i2);
            if (bVar.f5886c) {
                bVar.f5886c = false;
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        if (z) {
            v.a(this, this.mEndScrollRunnable);
        } else {
            this.mEndScrollRunnable.run();
        }
    }

    private int determineTargetPage(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.mFlingDistance || Math.abs(i3) <= this.mMinimumVelocity) {
            i2 += (int) (f2 + (i2 >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        int i5 = i2;
        if (this.mItems.size() > 0) {
            b bVar = this.mItems.get(0);
            ArrayList<b> arrayList = this.mItems;
            i5 = Math.max(bVar.f5885b, Math.min(i2, arrayList.get(arrayList.size() - 1).f5885b));
        }
        return i5;
    }

    private void dispatchOnPageScrolled(int i2, float f2, int i3) {
        e eVar = this.mOnPageChangeListener;
        if (eVar != null) {
            eVar.onPageScrolled(i2, f2, i3);
        }
        List<e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar2 = this.mOnPageChangeListeners.get(i4);
                if (eVar2 != null) {
                    eVar2.onPageScrolled(i2, f2, i3);
                }
            }
        }
        e eVar3 = this.mInternalPageChangeListener;
        if (eVar3 != null) {
            eVar3.onPageScrolled(i2, f2, i3);
        }
    }

    private void dispatchOnPageSelected(int i2) {
        e eVar = this.mOnPageChangeListener;
        if (eVar != null) {
            eVar.onPageSelected(i2);
        }
        List<e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar2 = this.mOnPageChangeListeners.get(i3);
                if (eVar2 != null) {
                    eVar2.onPageSelected(i2);
                }
            }
        }
        e eVar3 = this.mInternalPageChangeListener;
        if (eVar3 != null) {
            eVar3.onPageSelected(i2);
        }
    }

    private void dispatchOnScrollStateChanged(int i2) {
        e eVar = this.mOnPageChangeListener;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i2);
        }
        List<e> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar2 = this.mOnPageChangeListeners.get(i3);
                if (eVar2 != null) {
                    eVar2.onPageScrollStateChanged(i2);
                }
            }
        }
        e eVar3 = this.mInternalPageChangeListener;
        if (eVar3 != null) {
            eVar3.onPageScrollStateChanged(i2);
        }
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z ? this.mPageTransformerLayerType : 0, null);
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
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
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

    private b infoForCurrentScrollPosition() {
        int clientWidth = getClientWidth();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : BitmapDescriptorFactory.HUE_RED;
        float f3 = clientWidth > 0 ? this.mPageMargin / clientWidth : BitmapDescriptorFactory.HUE_RED;
        b bVar = null;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        while (i3 < this.mItems.size()) {
            b bVar2 = this.mItems.get(i3);
            int i4 = i3;
            b bVar3 = bVar2;
            if (!z) {
                int i5 = i2 + 1;
                i4 = i3;
                bVar3 = bVar2;
                if (bVar2.f5885b != i5) {
                    bVar3 = this.mTempItem;
                    bVar3.e = f2 + f4 + f3;
                    bVar3.f5885b = i5;
                    bVar3.f5887d = this.mAdapter.getPageWidth(bVar3.f5885b);
                    i4 = i3 - 1;
                }
            }
            f2 = bVar3.e;
            float f5 = bVar3.f5887d;
            if (!z && scrollX < f2) {
                return bVar;
            }
            if (scrollX < f5 + f2 + f3 || i4 == this.mItems.size() - 1) {
                return bVar3;
            }
            i2 = bVar3.f5885b;
            f4 = bVar3.f5887d;
            i3 = i4 + 1;
            z = false;
            bVar = bVar3;
        }
        return bVar;
    }

    private static boolean isDecorView(View view) {
        return view.getClass().getAnnotation(a.class) != null;
    }

    private boolean isGutterDrag(float f2, float f3) {
        if (f2 >= this.mGutterSize || f3 <= BitmapDescriptorFactory.HUE_RED) {
            return f2 > ((float) (getWidth() - this.mGutterSize)) && f3 < BitmapDescriptorFactory.HUE_RED;
        }
        return true;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i2);
            this.mActivePointerId = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private boolean pageScrolled(int i2) {
        int i3;
        if (this.mItems.size() != 0) {
            b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            int clientWidth = getClientWidth();
            float f2 = this.mPageMargin;
            float f3 = clientWidth;
            float f4 = f2 / f3;
            int i4 = infoForCurrentScrollPosition.f5885b;
            float f5 = ((i2 / f3) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.f5887d + f4);
            this.mCalledSuper = false;
            onPageScrolled(i4, f5, (int) ((clientWidth + i3) * f5));
            if (this.mCalledSuper) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.mFirstLayout) {
            return false;
        } else {
            this.mCalledSuper = false;
            onPageScrolled(0, BitmapDescriptorFactory.HUE_RED, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    private boolean performDrag(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.mLastMotionX;
        this.mLastMotionX = f2;
        float scrollX = getScrollX() + (f3 - f2);
        float clientWidth = getClientWidth();
        float f4 = this.mFirstOffset * clientWidth;
        float f5 = this.mLastOffset * clientWidth;
        r13 = false;
        r13 = false;
        boolean z3 = false;
        b bVar = this.mItems.get(0);
        ArrayList<b> arrayList = this.mItems;
        b bVar2 = arrayList.get(arrayList.size() - 1);
        if (bVar.f5885b != 0) {
            f4 = bVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.f5885b != this.mAdapter.getCount() - 1) {
            f5 = bVar2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f4) {
            f4 = scrollX;
            if (scrollX > f5) {
                if (z2) {
                    this.mRightEdge.onPull(Math.abs(scrollX - f5) / clientWidth);
                    z3 = true;
                }
                f4 = f5;
            }
        } else if (z) {
            this.mLeftEdge.onPull(Math.abs(f4 - scrollX) / clientWidth);
            z3 = true;
        }
        int i2 = (int) f4;
        this.mLastMotionX += f4 - i2;
        scrollTo(i2, getScrollY());
        pageScrolled(i2);
        return z3;
    }

    private void recomputeScrollPosition(int i2, int i3, int i4, int i5) {
        if (i3 <= 0 || this.mItems.isEmpty()) {
            b infoForPosition = infoForPosition(this.mCurItem);
            int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.e, this.mLastOffset) : BitmapDescriptorFactory.HUE_RED) * ((i2 - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                completeScroll(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.mScroller.isFinished()) {
            this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - paddingLeft) - paddingRight) + i4)), getScrollY());
        }
    }

    private void removeNonDecorViews() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            int i3 = i2;
            if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f5880a) {
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
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return this.mLeftEdge.isFinished() || this.mRightEdge.isFinished();
    }

    private void scrollToItem(int i2, boolean z, int i3, boolean z2) {
        b infoForPosition = infoForPosition(i2);
        int clientWidth = infoForPosition != null ? (int) (getClientWidth() * Math.max(this.mFirstOffset, Math.min(infoForPosition.e, this.mLastOffset))) : 0;
        if (z) {
            smoothScrollTo(clientWidth, 0, i3);
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
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f5885b == this.mCurItem) {
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
        bVar.f5885b = i2;
        bVar.f5884a = this.mAdapter.a(this, i2);
        bVar.f5887d = this.mAdapter.getPageWidth(i2);
        if (i3 < 0 || i3 >= this.mItems.size()) {
            this.mItems.add(bVar);
        } else {
            this.mItems.add(i3, bVar);
        }
        return bVar;
    }

    public void addOnAdapterChangeListener(d dVar) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(dVar);
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
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f5885b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        layoutParams3.f5880a |= isDecorView(view);
        if (!this.mInLayout) {
            super.addView(view, i2, layoutParams2);
        } else if (layoutParams3 == null || !layoutParams3.f5880a) {
            layoutParams3.f5883d = true;
            addViewInLayout(view, i2, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0157, code lost:
        if (r6 != 2) goto L_0x0167;
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

    protected boolean canScroll(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.mFirstOffset)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        List<e> list = this.mOnPageChangeListeners;
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
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        v.d(this);
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
            int itemPosition$5d527804 = this.mAdapter.getItemPosition$5d527804();
            z = z;
            i2 = i2;
            i3 = i3;
            z2 = z2;
            if (itemPosition$5d527804 != -1) {
                if (itemPosition$5d527804 == -2) {
                    this.mItems.remove(i3);
                    int i4 = i3 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.mAdapter.a(this);
                        z3 = true;
                    }
                    this.mAdapter.a(this, bVar.f5885b, bVar.f5884a);
                    i3 = i4;
                    z2 = z3;
                    if (this.mCurItem == bVar.f5885b) {
                        i2 = Math.max(0, Math.min(this.mCurItem, count - 1));
                        z2 = z3;
                        i3 = i4;
                    }
                } else {
                    z = z;
                    i2 = i2;
                    i3 = i3;
                    z2 = z2;
                    if (bVar.f5885b != itemPosition$5d527804) {
                        if (bVar.f5885b == this.mCurItem) {
                            i2 = itemPosition$5d527804;
                        }
                        bVar.f5885b = itemPosition$5d527804;
                    }
                }
                z = true;
            }
            i3++;
        }
        if (z2) {
            this.mAdapter.a();
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
                if (!layoutParams.f5880a) {
                    layoutParams.f5882c = BitmapDescriptorFactory.HUE_RED;
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
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f5885b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        androidx.viewpager.widget.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.mAdapter) != null && aVar.getCount() > 1)) {
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
            v.d(this);
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
        if (this.mFakeDragging) {
            if (this.mAdapter != null) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                this.mPopulatePending = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f5885b, ((scrollX / clientWidth) - infoForCurrentScrollPosition.e) / infoForCurrentScrollPosition.f5887d, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
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

    public void fakeDragBy(float f2) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else if (this.mAdapter != null) {
            this.mLastMotionX += f2;
            float scrollX = getScrollX() - f2;
            float clientWidth = getClientWidth();
            float f3 = this.mFirstOffset * clientWidth;
            float f4 = this.mLastOffset * clientWidth;
            b bVar = this.mItems.get(0);
            ArrayList<b> arrayList = this.mItems;
            b bVar2 = arrayList.get(arrayList.size() - 1);
            if (bVar.f5885b != 0) {
                f3 = bVar.e * clientWidth;
            }
            if (bVar2.f5885b != this.mAdapter.getCount() - 1) {
                f4 = bVar2.e * clientWidth;
            }
            if (scrollX >= f3) {
                f3 = scrollX;
                if (scrollX > f4) {
                    f3 = f4;
                }
            }
            int i2 = (int) f3;
            this.mLastMotionX += f3 - i2;
            scrollTo(i2, getScrollY());
            pageScrolled(i2);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, BitmapDescriptorFactory.HUE_RED, 0);
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

    public androidx.viewpager.widget.a getAdapter() {
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
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return infoForChild(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    b infoForChild(View view) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            b bVar = this.mItems.get(i2);
            if (this.mAdapter.a(view, bVar.f5884a)) {
                return bVar;
            }
        }
        return null;
    }

    b infoForPosition(int i2) {
        for (int i3 = 0; i3 < this.mItems.size(); i3++) {
            b bVar = this.mItems.get(i3);
            if (bVar.f5885b == i2) {
                return bVar;
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
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f2);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.mFlingDistance = (int) (25.0f * f2);
        this.mCloseEnough = (int) (2.0f * f2);
        this.mDefaultGutterSize = (int) (f2 * 16.0f);
        v.a(this, new c());
        if (v.e(this) == 0) {
            v.c((View) this, 1);
        }
        v.a(this, new r() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: b  reason: collision with root package name */
            private final Rect f5879b = new Rect();

            @Override // androidx.core.view.r
            public final ac a(View view, ac acVar) {
                ac a2 = v.a(view, acVar);
                if (a2.f1974b.b()) {
                    return a2;
                }
                Rect rect = this.f5879b;
                rect.left = a2.a();
                rect.top = a2.b();
                rect.right = a2.c();
                rect.bottom = a2.d();
                int childCount = ViewPager.this.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    ac b2 = v.b(ViewPager.this.getChildAt(i2), a2);
                    rect.left = Math.min(b2.a(), rect.left);
                    rect.top = Math.min(b2.b(), rect.top);
                    rect.right = Math.min(b2.c(), rect.right);
                    rect.bottom = Math.min(b2.d(), rect.bottom);
                }
                return a2.a(rect.left, rect.top, rect.right, rect.bottom);
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
        float f2;
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f3 = this.mPageMargin / width2;
            int i2 = 0;
            b bVar = this.mItems.get(0);
            float f4 = bVar.e;
            int size = this.mItems.size();
            int i3 = this.mItems.get(size - 1).f5885b;
            for (int i4 = bVar.f5885b; i4 < i3; i4++) {
                while (i4 > bVar.f5885b && i2 < size) {
                    i2++;
                    bVar = this.mItems.get(i2);
                }
                if (i4 == bVar.f5885b) {
                    f2 = (bVar.e + bVar.f5887d) * width2;
                    f4 = bVar.e + bVar.f5887d + f3;
                } else {
                    float pageWidth = this.mAdapter.getPageWidth(i4);
                    f4 += pageWidth + f3;
                    f2 = (f4 + pageWidth) * width2;
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
            int i2 = this.mActivePointerId;
            if (i2 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(findPointerIndex);
                float f2 = x2 - this.mLastMotionX;
                float abs = Math.abs(f2);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.mInitialMotionY);
                int i3 = (f2 > BitmapDescriptorFactory.HUE_RED ? 1 : (f2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                if (i3 == 0 || isGutterDrag(this.mLastMotionX, f2) || !canScroll(this, false, (int) f2, (int) x2, (int) y2)) {
                    int i4 = this.mTouchSlop;
                    if (abs > i4 && abs * 0.5f > abs2) {
                        this.mIsBeingDragged = true;
                        requestParentDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        float f3 = this.mInitialMotionX;
                        float f4 = this.mTouchSlop;
                        this.mLastMotionX = i3 > 0 ? f3 + f4 : f3 - f4;
                        this.mLastMotionY = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > i4) {
                        this.mIsUnableToDrag = true;
                    }
                    if (this.mIsBeingDragged && performDrag(x2)) {
                        v.d(this);
                    }
                } else {
                    this.mLastMotionX = x2;
                    this.mLastMotionY = y2;
                    this.mIsUnableToDrag = true;
                    return false;
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

    protected void onPageScrolled(int i2, float f2, int i3) {
        int i4;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                paddingLeft = paddingLeft;
                paddingRight = paddingRight;
                if (layoutParams.f5880a) {
                    int i6 = layoutParams.f5881b & 7;
                    if (i6 == 1) {
                        i4 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i6 == 3) {
                        paddingLeft = childAt.getWidth() + paddingLeft;
                        i4 = paddingLeft;
                    } else if (i6 != 5) {
                        i4 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i4 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i4 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        dispatchOnPageScrolled(i2, f2, i3);
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt2 = getChildAt(i7);
                if (!((LayoutParams) childAt2.getLayoutParams()).f5880a) {
                    this.mPageTransformer.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
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
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i4 = 0;
            i3 = 1;
        } else {
            i4 = childCount - 1;
            i3 = -1;
        }
        while (i4 != i5) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f5885b == this.mCurItem && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i4 += i3;
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
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar != null) {
            aVar.a(savedState.adapterState, savedState.loader);
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
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar != null) {
            savedState.adapterState = aVar.b();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.mPageMargin;
            recomputeScrollPosition(i2, i4, i6, i6);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        androidx.viewpager.widget.a aVar;
        if (this.mFakeDragging) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.mAdapter) == null || aVar.getCount() == 0) {
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
                            float f2 = this.mInitialMotionX;
                            this.mLastMotionX = x2 - f2 > BitmapDescriptorFactory.HUE_RED ? f2 + this.mTouchSlop : f2 - this.mTouchSlop;
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
            b infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            float f3 = clientWidth;
            setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.f5885b, ((scrollX / f3) - infoForCurrentScrollPosition.e) / (infoForCurrentScrollPosition.f5887d + (this.mPageMargin / f3)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
            z = resetTouch();
        }
        if (!z) {
            return true;
        }
        v.d(this);
        return true;
    }

    boolean pageLeft() {
        int i2 = this.mCurItem;
        if (i2 <= 0) {
            return false;
        }
        setCurrentItem(i2 - 1, true);
        return true;
    }

    boolean pageRight() {
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar == null || this.mCurItem >= aVar.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r13.f5885b == r6.mCurItem) goto L_0x00b2;
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

    public void removeOnAdapterChangeListener(d dVar) {
        List<d> list = this.mAdapterChangeListeners;
        if (list != null) {
            list.remove(dVar);
        }
    }

    public void removeOnPageChangeListener(e eVar) {
        List<e> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.remove(eVar);
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

    public void setAdapter(androidx.viewpager.widget.a aVar) {
        androidx.viewpager.widget.a aVar2 = this.mAdapter;
        if (aVar2 != null) {
            aVar2.setViewPagerObserver(null);
            this.mAdapter.a(this);
            for (int i2 = 0; i2 < this.mItems.size(); i2++) {
                b bVar = this.mItems.get(i2);
                this.mAdapter.a(this, bVar.f5885b, bVar.f5884a);
            }
            this.mAdapter.a();
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        androidx.viewpager.widget.a aVar3 = this.mAdapter;
        this.mAdapter = aVar;
        this.mExpectedAdapterCount = 0;
        if (aVar != null) {
            if (this.mObserver == null) {
                this.mObserver = new g();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.a(this.mRestoredAdapterState, this.mRestoredClassLoader);
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
        List<d> list = this.mAdapterChangeListeners;
        if (!(list == null || list.isEmpty())) {
            int size = this.mAdapterChangeListeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.mAdapterChangeListeners.get(i3).a(this, aVar3, aVar);
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
        androidx.viewpager.widget.a aVar = this.mAdapter;
        boolean z3 = false;
        if (aVar == null || aVar.getCount() <= 0) {
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
            int i6 = this.mCurItem;
            if (i4 > i6 + i5 || i4 < i6 - i5) {
                for (int i7 = 0; i7 < this.mItems.size(); i7++) {
                    this.mItems.get(i7).f5886c = true;
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
        setPageMarginDrawable(androidx.core.content.b.a(getContext(), i2));
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
        setPageTransformer(z, fVar, 2);
    }

    public void setPageTransformer(boolean z, f fVar, int i2) {
        int i3 = 1;
        boolean z2 = fVar != null;
        boolean z3 = z2 != (this.mPageTransformer != null);
        this.mPageTransformer = fVar;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i3 = 2;
            }
            this.mDrawingOrder = i3;
            this.mPageTransformerLayerType = i2;
        } else {
            this.mDrawingOrder = 0;
        }
        if (z3) {
            populate();
        }
    }

    void setScrollState(int i2) {
        if (this.mScrollState != i2) {
            this.mScrollState = i2;
            if (this.mPageTransformer != null) {
                enableLayers(i2 != 0);
            }
            dispatchOnScrollStateChanged(i2);
        }
    }

    void smoothScrollTo(int i2, int i3) {
        smoothScrollTo(i2, i3, 0);
    }

    void smoothScrollTo(int i2, int i3, int i4) {
        int i5;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            i5 = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i5 = getScrollX();
        }
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float abs = Math.abs(i6);
        float f2 = clientWidth;
        float f3 = i8;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, (abs * 1.0f) / f2));
        int abs2 = Math.abs(i4);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f3 + (distanceInfluenceForSnapDuration * f3)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i6) / ((f2 * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f), 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(i5, scrollY, i6, i7, min);
        v.d(this);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }
}
