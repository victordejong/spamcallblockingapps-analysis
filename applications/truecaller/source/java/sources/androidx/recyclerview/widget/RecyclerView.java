package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C0297R;
import androidx.recyclerview.widget.GapWorker;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import n3.b0.a.g;
import p1727n3.p1744b0.p1745a.C25564a;
import p1727n3.p1744b0.p1745a.C25567a0;
import p1727n3.p1744b0.p1745a.C25571b0;
import p1727n3.p1744b0.p1745a.C25583f;
import p1727n3.p1744b0.p1745a.C25596j;
import p1727n3.p1744b0.p1745a.C25623w;
import p1727n3.p1807k.p1816e.C26516h;
import p1727n3.p1807k.p1821i.AbstractC26604i;
import p1727n3.p1807k.p1821i.C26605j;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26624y;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC26604i {
    public static final boolean DEBUG = false;
    public static final int DEFAULT_ORIENTATION = 1;
    public static final boolean DISPATCH_TEMP_DETACH = false;
    public static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    public static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    public static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    public static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    public static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    public static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    public static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    public static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    public static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    public C25623w mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    public AbstractC0317g mAdapter;
    public C25564a mAdapterHelper;
    public boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private AbstractC0321j mChildDrawingOrderCallback;
    public C25583f mChildHelper;
    public boolean mClipToPadding;
    public boolean mDataSetHasChangedAfterLayout;
    public boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private C0322k mEdgeEffectFactory;
    public boolean mEnableFastScroller;
    public boolean mFirstLayoutComplete;
    public GapWorker mGapWorker;
    public boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private AbstractC0337s mInterceptingOnItemTouchListener;
    public boolean mIsAttached;
    public AbstractC0323l mItemAnimator;
    private AbstractC0323l.AbstractC0325b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    public final ArrayList<AbstractC0328n> mItemDecorations;
    public boolean mItemsAddedOrRemoved;
    public boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    public AbstractC0329o mLayout;
    private int mLayoutOrScrollCounter;
    public boolean mLayoutSuppressed;
    public boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final C0343x mObserver;
    private List<AbstractC0335q> mOnChildAttachStateListeners;
    private AbstractC0336r mOnFlingListener;
    private final ArrayList<AbstractC0337s> mOnItemTouchListeners;
    public final List<AbstractC0313c0> mPendingAccessibilityImportanceChange;
    public SavedState mPendingSavedState;
    public boolean mPostedAnimatorRunner;
    public GapWorker.C0301b mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    public final C0341v mRecycler;
    public AbstractC0342w mRecyclerListener;
    public final List<AbstractC0342w> mRecyclerListeners;
    public final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private AbstractC0338t mScrollListener;
    private List<AbstractC0338t> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private C26605j mScrollingChildHelper;
    public final C0347z mState;
    public final Rect mTempRect;
    private final Rect mTempRect2;
    public final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    public final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    public final RunnableC0311b0 mViewFlinger;
    private final C25571b0.AbstractC25573b mViewInfoProcessCallback;
    public final C25571b0 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    public static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    public static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    public static final boolean POST_UPDATES_ON_ANIMATION = true;
    public static final boolean ALLOW_THREAD_GAP_WORK = true;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;
    public static final Interpolator sQuinticInterpolator = new animationInterpolatorC0312c();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0307a();

        /* renamed from: c */
        public Parcelable f1288c;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState$a.class */
        public class C0307a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1288c = parcel.readParcelable(classLoader == null ? AbstractC0329o.class.getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f713a, i);
            parcel.writeParcelable(this.f1288c, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public class RunnableC0308a implements Runnable {
        public RunnableC0308a() {
            RecyclerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.mIsAttached) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.mLayoutSuppressed) {
                recyclerView2.mLayoutWasDefered = true;
            } else {
                recyclerView2.consumePendingUpdateOperations();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
    public static abstract class AbstractC0309a0 {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public class RunnableC0310b implements Runnable {
        public RunnableC0310b() {
            RecyclerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0323l abstractC0323l = RecyclerView.this.mItemAnimator;
            if (abstractC0323l != null) {
                abstractC0323l.runPendingAnimations();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b0.class */
    public class RunnableC0311b0 implements Runnable {

        /* renamed from: a */
        public int f1291a;

        /* renamed from: b */
        public int f1292b;

        /* renamed from: c */
        public OverScroller f1293c;

        /* renamed from: d */
        public Interpolator f1294d;

        /* renamed from: e */
        public boolean f1295e = false;

        /* renamed from: f */
        public boolean f1296f = false;

        public RunnableC0311b0() {
            RecyclerView.this = r7;
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.f1294d = interpolator;
            this.f1293c = new OverScroller(r7.getContext(), interpolator);
        }

        /* renamed from: a */
        public void m42755a() {
            if (this.f1295e) {
                this.f1296f = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            recyclerView.postOnAnimation(this);
        }

        /* renamed from: b */
        public void m42754b(int i, int i2, int i3, Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                boolean z = abs > abs2;
                RecyclerView recyclerView = RecyclerView.this;
                i4 = Math.min((int) ((((z ? abs : abs2) / (z ? recyclerView.getWidth() : recyclerView.getHeight())) + 1.0f) * 300.0f), 2000);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.sQuinticInterpolator;
            }
            if (this.f1294d != interpolator2) {
                this.f1294d = interpolator2;
                this.f1293c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f1292b = 0;
            this.f1291a = 0;
            RecyclerView.this.setScrollState(2);
            this.f1293c.startScroll(0, 0, i, i2, i4);
            m42755a();
        }

        /* renamed from: c */
        public void m42753c() {
            RecyclerView.this.removeCallbacks(this);
            this.f1293c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                m42753c();
                return;
            }
            this.f1296f = false;
            this.f1295e = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.f1293c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f1291a;
                int i5 = currY - this.f1292b;
                this.f1291a = currX;
                this.f1292b = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                int i6 = i4;
                int i7 = i5;
                if (recyclerView2.dispatchNestedPreScroll(i4, i5, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    i6 = i4 - iArr2[0];
                    i7 = i5 - iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(i6, i7);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(i6, i7, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    int i8 = iArr4[0];
                    int i9 = iArr4[1];
                    int i10 = i6 - i8;
                    int i11 = i7 - i9;
                    AbstractC0344y abstractC0344y = recyclerView4.mLayout.mSmoothScroller;
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (abstractC0344y != null) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (!abstractC0344y.f1336d) {
                            i6 = i10;
                            i = i9;
                            i3 = i8;
                            i2 = i11;
                            if (abstractC0344y.f1337e) {
                                int m42710b = recyclerView4.mState.m42710b();
                                if (m42710b == 0) {
                                    abstractC0344y.m42714f();
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else if (abstractC0344y.f1333a >= m42710b) {
                                    abstractC0344y.f1333a = m42710b - 1;
                                    abstractC0344y.m42715a(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else {
                                    abstractC0344y.m42715a(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                }
                            }
                        }
                    }
                } else {
                    i = 0;
                    i2 = i7;
                    i3 = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i3, i, i6, i2, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i12 = i6 - iArr6[0];
                int i13 = i2 - iArr6[1];
                if (i3 != 0 || i != 0) {
                    recyclerView6.dispatchOnScrolled(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
                RecyclerView recyclerView7 = RecyclerView.this;
                AbstractC0344y abstractC0344y2 = recyclerView7.mLayout.mSmoothScroller;
                if ((abstractC0344y2 != null && abstractC0344y2.f1336d) || !z) {
                    m42755a();
                    RecyclerView recyclerView8 = RecyclerView.this;
                    GapWorker gapWorker = recyclerView8.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.m42769a(recyclerView8, i3, i);
                    }
                } else {
                    if (recyclerView7.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                        if (i13 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i13 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i14, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        GapWorker.C0301b c0301b = RecyclerView.this.mPrefetchRegistry;
                        int[] iArr7 = c0301b.f1255c;
                        if (iArr7 != null) {
                            Arrays.fill(iArr7, -1);
                        }
                        c0301b.f1256d = 0;
                    }
                }
            }
            AbstractC0344y abstractC0344y3 = RecyclerView.this.mLayout.mSmoothScroller;
            if (abstractC0344y3 != null && abstractC0344y3.f1336d) {
                abstractC0344y3.m42715a(0, 0);
            }
            this.f1295e = false;
            if (!this.f1296f) {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView9 = RecyclerView.this;
            AtomicInteger atomicInteger = C26614s.f74505a;
            recyclerView9.postOnAnimation(this);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public class animationInterpolatorC0312c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c0.class */
    public static abstract class AbstractC0313c0 {
        public static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        public static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        public static final int FLAG_BOUND = 1;
        public static final int FLAG_IGNORE = 128;
        public static final int FLAG_INVALID = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_NOT_RECYCLABLE = 16;
        public static final int FLAG_REMOVED = 8;
        public static final int FLAG_RETURNED_FROM_SCRAP = 32;
        public static final int FLAG_TMP_DETACHED = 256;
        public static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        public static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        public AbstractC0317g<? extends AbstractC0313c0> mBindingAdapter;
        public int mFlags;
        public WeakReference<RecyclerView> mNestedRecyclerView;
        public RecyclerView mOwnerRecyclerView;
        public int mPosition = -1;
        public int mOldPosition = -1;
        public long mItemId = -1;
        public int mItemViewType = -1;
        public int mPreLayoutPosition = -1;
        public AbstractC0313c0 mShadowedHolder = null;
        public AbstractC0313c0 mShadowingHolder = null;
        public List<Object> mPayloads = null;
        public List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        public C0341v mScrapContainer = null;
        public boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        public int mPendingAccessibilityState = -1;

        public AbstractC0313c0(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) != 0) {
            } else {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            boolean z;
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (view.hasTransientState()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final AbstractC0317g<? extends AbstractC0313c0> getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            AbstractC0317g adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            int i2 = i;
            if (i == -1) {
                i2 = this.mPosition;
            }
            return i2;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            int i2 = i;
            if (i == -1) {
                i2 = this.mPosition;
            }
            return i2;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) == 0) {
                List<Object> list = this.mPayloads;
                return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
            }
            return FULLUPDATE_PAYLOADS;
        }

        public boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            boolean z = true;
            if ((this.mFlags & 1) == 0) {
                z = false;
            }
            return z;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            boolean z;
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (!view.hasTransientState()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((C0334p) this.itemView.getLayoutParams()).f1316c = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                View view = this.itemView;
                AtomicInteger atomicInteger = C26614s.f74505a;
                this.mWasImportantForAccessibilityBeforeHidden = view.getImportantForAccessibility();
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (i2 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                String str = "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this;
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (!z || i2 != 0) {
            } else {
                this.mFlags &= -17;
            }
        }

        public void setScrapContainer(C0341v c0341v, boolean z) {
            this.mScrapContainer = c0341v;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder m8696K = C22128a.m8696K(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            m8696K.append(Integer.toHexString(hashCode()));
            m8696K.append(" position=");
            m8696K.append(this.mPosition);
            m8696K.append(" id=");
            m8696K.append(this.mItemId);
            m8696K.append(", oldPos=");
            m8696K.append(this.mOldPosition);
            m8696K.append(", pLpos:");
            m8696K.append(this.mPreLayoutPosition);
            StringBuilder sb = new StringBuilder(m8696K.toString());
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                StringBuilder m8728C = C22128a.m8728C(" not recyclable(");
                m8728C.append(this.mIsRecyclableCount);
                m8728C.append(")");
                sb.append(m8728C.toString());
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.m42718m(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public class C0314d implements C25571b0.AbstractC25573b {
        public C0314d() {
            RecyclerView.this = r4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public class C0315e implements C25583f.AbstractC25585b {
        public C0315e() {
            RecyclerView.this = r4;
        }

        /* renamed from: a */
        public View m42752a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        /* renamed from: b */
        public int m42751b() {
            return RecyclerView.this.getChildCount();
        }

        /* renamed from: c */
        public void m42750c(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public class C0316f implements C25564a.AbstractC25565a {
        public C0316f() {
            RecyclerView.this = r4;
        }

        /* renamed from: a */
        public void m42749a(C25564a.C25566b c25566b) {
            int i = c25566b.f71560a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.onItemsAdded(recyclerView, c25566b.f71561b, c25566b.f71563d);
            } else if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.onItemsRemoved(recyclerView2, c25566b.f71561b, c25566b.f71563d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.onItemsUpdated(recyclerView3, c25566b.f71561b, c25566b.f71563d, c25566b.f71562c);
            } else if (i != 8) {
            } else {
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.onItemsMoved(recyclerView4, c25566b.f71561b, c25566b.f71563d, 1);
            }
        }

        /* renamed from: b */
        public AbstractC0313c0 m42748b(int i) {
            AbstractC0313c0 findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
            if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.m3192k(findViewHolderForPosition.itemView)) {
                return findViewHolderForPosition;
            }
            return null;
        }

        /* renamed from: c */
        public void m42747c(int i, int i2, Object obj) {
            RecyclerView.this.viewRangeUpdate(i, i2, obj);
            RecyclerView.this.mItemsChanged = true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public static abstract class AbstractC0317g<VH extends AbstractC0313c0> {
        private final C0319h mObservable = new C0319h();
        private boolean mHasStableIds = false;
        private EnumC0318a mStateRestorationPolicy = EnumC0318a.ALLOW;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$g$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g$a.class */
        public enum EnumC0318a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        public final void bindViewHolder(VH vh, int i) {
            boolean z = vh.mBindingAdapter == null;
            if (z) {
                vh.mPosition = i;
                if (hasStableIds()) {
                    vh.mItemId = getItemId(i);
                }
                vh.setFlags(1, 519);
                Method method = C26516h.f74306b;
                Trace.beginSection(RecyclerView.TRACE_BIND_VIEW_TAG);
            }
            vh.mBindingAdapter = this;
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            if (z) {
                vh.clearPayload();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof C0334p) {
                    ((C0334p) layoutParams).f1316c = true;
                }
                Method method2 = C26516h.f74306b;
                Trace.endSection();
            }
        }

        public boolean canRestoreState() {
            int ordinal = this.mStateRestorationPolicy.ordinal();
            boolean z = false;
            if (ordinal != 1) {
                return ordinal != 2;
            }
            if (getItemCount() > 0) {
                z = true;
            }
            return z;
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                Method method = C26516h.f74306b;
                Trace.beginSection(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.mItemViewType = i;
                Trace.endSection();
                return onCreateViewHolder;
            } catch (Throwable th) {
                Method method2 = C26516h.f74306b;
                Trace.endSection();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(AbstractC0317g<? extends AbstractC0313c0> abstractC0317g, AbstractC0313c0 abstractC0313c0, int i) {
            if (abstractC0317g == this) {
                return i;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final EnumC0318a getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.m42746a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.m42745b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.m42743d(i, 1, null);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.m42743d(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.m42742e(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.m42744c(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.m42743d(i, i2, null);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.m42743d(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.m42742e(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.m42741f(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.m42741f(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(AbstractC0320i abstractC0320i) {
            this.mObservable.registerObserver(abstractC0320i);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.mHasStableIds = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void setStateRestorationPolicy(EnumC0318a enumC0318a) {
            this.mStateRestorationPolicy = enumC0318a;
            this.mObservable.m42740g();
        }

        public void unregisterAdapterDataObserver(AbstractC0320i abstractC0320i) {
            this.mObservable.unregisterObserver(abstractC0320i);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static class C0319h extends Observable<AbstractC0320i> {
        /* renamed from: a */
        public boolean m42746a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m42745b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        /* renamed from: c */
        public void m42744c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }

        /* renamed from: d */
        public void m42743d(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        /* renamed from: e */
        public void m42742e(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        /* renamed from: f */
        public void m42741f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        /* renamed from: g */
        public void m42740g() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0320i) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC0320i {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public interface AbstractC0321j {
        /* renamed from: a */
        int m42739a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public static class C0322k {
        /* renamed from: a */
        public EdgeEffect m42738a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0323l {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;
        private AbstractC0325b mListener = null;
        private ArrayList<AbstractC0324a> mFinishedListeners = new ArrayList<>();
        private long mAddDuration = 120;
        private long mRemoveDuration = 120;
        private long mMoveDuration = 250;
        private long mChangeDuration = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$a.class */
        public interface AbstractC0324a {
            /* renamed from: a */
            void m42737a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$b.class */
        public interface AbstractC0325b {
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$l$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$c.class */
        public static class C0326c {

            /* renamed from: a */
            public int f1305a;

            /* renamed from: b */
            public int f1306b;
        }

        public static int buildAdapterChangeFlagsForAnimations(AbstractC0313c0 abstractC0313c0) {
            int i = abstractC0313c0.mFlags & 14;
            if (abstractC0313c0.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = abstractC0313c0.getOldPosition();
                int absoluteAdapterPosition = abstractC0313c0.getAbsoluteAdapterPosition();
                i2 = i;
                if (oldPosition != -1) {
                    i2 = i;
                    if (absoluteAdapterPosition != -1) {
                        i2 = i;
                        if (oldPosition != absoluteAdapterPosition) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        public abstract boolean animateAppearance(AbstractC0313c0 abstractC0313c0, C0326c c0326c, C0326c c0326c2);

        public abstract boolean animateChange(AbstractC0313c0 abstractC0313c0, AbstractC0313c0 abstractC0313c02, C0326c c0326c, C0326c c0326c2);

        public abstract boolean animateDisappearance(AbstractC0313c0 abstractC0313c0, C0326c c0326c, C0326c c0326c2);

        public abstract boolean animatePersistence(AbstractC0313c0 abstractC0313c0, C0326c c0326c, C0326c c0326c2);

        public abstract boolean canReuseUpdatedViewHolder(AbstractC0313c0 abstractC0313c0);

        public boolean canReuseUpdatedViewHolder(AbstractC0313c0 abstractC0313c0, List<Object> list) {
            return canReuseUpdatedViewHolder(abstractC0313c0);
        }

        public final void dispatchAnimationFinished(AbstractC0313c0 abstractC0313c0) {
            onAnimationFinished(abstractC0313c0);
            AbstractC0325b abstractC0325b = this.mListener;
            if (abstractC0325b != null) {
                C0327m c0327m = (C0327m) abstractC0325b;
                Objects.requireNonNull(c0327m);
                abstractC0313c0.setIsRecyclable(true);
                if (abstractC0313c0.mShadowedHolder != null && abstractC0313c0.mShadowingHolder == null) {
                    abstractC0313c0.mShadowedHolder = null;
                }
                abstractC0313c0.mShadowingHolder = null;
                if (abstractC0313c0.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(abstractC0313c0.itemView) || !abstractC0313c0.isTmpDetached()) {
                    return;
                }
                RecyclerView.this.removeDetachedView(abstractC0313c0.itemView, false);
            }
        }

        public final void dispatchAnimationStarted(AbstractC0313c0 abstractC0313c0) {
            onAnimationStarted(abstractC0313c0);
        }

        public final void dispatchAnimationsFinished() {
            int size = this.mFinishedListeners.size();
            for (int i = 0; i < size; i++) {
                this.mFinishedListeners.get(i).m42737a();
            }
            this.mFinishedListeners.clear();
        }

        public abstract void endAnimation(AbstractC0313c0 abstractC0313c0);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.mAddDuration;
        }

        public long getChangeDuration() {
            return this.mChangeDuration;
        }

        public long getMoveDuration() {
            return this.mMoveDuration;
        }

        public long getRemoveDuration() {
            return this.mRemoveDuration;
        }

        public abstract boolean isRunning();

        public final boolean isRunning(AbstractC0324a abstractC0324a) {
            boolean isRunning = isRunning();
            if (abstractC0324a != null) {
                if (!isRunning) {
                    abstractC0324a.m42737a();
                } else {
                    this.mFinishedListeners.add(abstractC0324a);
                }
            }
            return isRunning;
        }

        public C0326c obtainHolderInfo() {
            return new C0326c();
        }

        public void onAnimationFinished(AbstractC0313c0 abstractC0313c0) {
        }

        public void onAnimationStarted(AbstractC0313c0 abstractC0313c0) {
        }

        public C0326c recordPostLayoutInformation(C0347z c0347z, AbstractC0313c0 abstractC0313c0) {
            C0326c obtainHolderInfo = obtainHolderInfo();
            Objects.requireNonNull(obtainHolderInfo);
            View view = abstractC0313c0.itemView;
            obtainHolderInfo.f1305a = view.getLeft();
            obtainHolderInfo.f1306b = view.getTop();
            view.getRight();
            view.getBottom();
            return obtainHolderInfo;
        }

        public C0326c recordPreLayoutInformation(C0347z c0347z, AbstractC0313c0 abstractC0313c0, int i, List<Object> list) {
            C0326c obtainHolderInfo = obtainHolderInfo();
            Objects.requireNonNull(obtainHolderInfo);
            View view = abstractC0313c0.itemView;
            obtainHolderInfo.f1305a = view.getLeft();
            obtainHolderInfo.f1306b = view.getTop();
            view.getRight();
            view.getBottom();
            return obtainHolderInfo;
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long j) {
            this.mAddDuration = j;
        }

        public void setChangeDuration(long j) {
            this.mChangeDuration = j;
        }

        public void setListener(AbstractC0325b abstractC0325b) {
            this.mListener = abstractC0325b;
        }

        public void setMoveDuration(long j) {
            this.mMoveDuration = j;
        }

        public void setRemoveDuration(long j) {
            this.mRemoveDuration = j;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public class C0327m implements AbstractC0323l.AbstractC0325b {
        public C0327m() {
            RecyclerView.this = r4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static abstract class AbstractC0328n {
        @Deprecated
        public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, C0347z c0347z) {
            getItemOffsets(rect, ((C0334p) view.getLayoutParams()).m42736a(), recyclerView);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, C0347z c0347z) {
            onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, C0347z c0347z) {
            onDrawOver(canvas, recyclerView);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static abstract class AbstractC0329o {
        public C25583f mChildHelper;
        private int mHeight;
        private int mHeightMode;
        public C25567a0 mHorizontalBoundCheck;
        private final C25567a0.AbstractC25569b mHorizontalBoundCheckCallback;
        public int mPrefetchMaxCountObserved;
        public boolean mPrefetchMaxObservedInInitialPrefetch;
        public RecyclerView mRecyclerView;
        public AbstractC0344y mSmoothScroller;
        public C25567a0 mVerticalBoundCheck;
        private final C25567a0.AbstractC25569b mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;
        public boolean mRequestedSimpleAnimations = false;
        public boolean mIsAttachedToWindow = false;
        public boolean mAutoMeasure = false;
        private boolean mMeasurementCacheEnabled = true;
        private boolean mItemPrefetchEnabled = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$a.class */
        public class C0330a implements C25567a0.AbstractC25569b {
            public C0330a() {
                AbstractC0329o.this = r4;
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: a */
            public int mo3220a() {
                return AbstractC0329o.this.getPaddingLeft();
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: b */
            public int mo3219b() {
                return AbstractC0329o.this.getWidth() - AbstractC0329o.this.getPaddingRight();
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: c */
            public View mo3218c(int i) {
                return AbstractC0329o.this.getChildAt(i);
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: d */
            public int mo3217d(View view) {
                return AbstractC0329o.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((C0334p) view.getLayoutParams())).leftMargin;
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: e */
            public int mo3216e(View view) {
                return AbstractC0329o.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((C0334p) view.getLayoutParams())).rightMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$b.class */
        public class C0331b implements C25567a0.AbstractC25569b {
            public C0331b() {
                AbstractC0329o.this = r4;
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: a */
            public int mo3220a() {
                return AbstractC0329o.this.getPaddingTop();
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: b */
            public int mo3219b() {
                return AbstractC0329o.this.getHeight() - AbstractC0329o.this.getPaddingBottom();
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: c */
            public View mo3218c(int i) {
                return AbstractC0329o.this.getChildAt(i);
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: d */
            public int mo3217d(View view) {
                return AbstractC0329o.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((C0334p) view.getLayoutParams())).topMargin;
            }

            @Override // p1727n3.p1744b0.p1745a.C25567a0.AbstractC25569b
            /* renamed from: e */
            public int mo3216e(View view) {
                return AbstractC0329o.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((C0334p) view.getLayoutParams())).bottomMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$c.class */
        public interface AbstractC0332c {
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$d */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$d.class */
        public static class C0333d {

            /* renamed from: a */
            public int f1310a;

            /* renamed from: b */
            public int f1311b;

            /* renamed from: c */
            public boolean f1312c;

            /* renamed from: d */
            public boolean f1313d;
        }

        public AbstractC0329o() {
            C0330a c0330a = new C0330a();
            this.mHorizontalBoundCheckCallback = c0330a;
            C0331b c0331b = new C0331b();
            this.mVerticalBoundCheckCallback = c0331b;
            this.mHorizontalBoundCheck = new C25567a0(c0330a);
            this.mVerticalBoundCheck = new C25567a0(c0331b);
        }

        private void addViewInt(View view, int i, boolean z) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.m3215a(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.m3210f(childViewHolderInt);
            }
            C0334p c0334p = (C0334p) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.m3201b(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int m3193j = this.mChildHelper.m3193j(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.mChildHelper.m3198e();
                }
                if (m3193j == -1) {
                    StringBuilder m8728C = C22128a.m8728C("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    m8728C.append(this.mRecyclerView.indexOfChild(view));
                    throw new IllegalStateException(C22128a.m8656W1(this.mRecyclerView, m8728C));
                } else if (m3193j != i2) {
                    this.mRecyclerView.mLayout.moveView(m3193j, i2);
                }
            } else {
                this.mChildHelper.m3202a(view, i, false);
                c0334p.f1316c = true;
                AbstractC0344y abstractC0344y = this.mSmoothScroller;
                if (abstractC0344y != null && abstractC0344y.f1337e && abstractC0344y.f1334b.getChildLayoutPosition(view) == abstractC0344y.f1333a) {
                    abstractC0344y.f1338f = view;
                }
            }
            if (c0334p.f1317d) {
                childViewHolderInt.itemView.invalidate();
                c0334p.f1317d = false;
            }
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    size = Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        private void detachViewInternal(int i, View view) {
            this.mChildHelper.m3200c(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r5 == 1073741824) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r4 = r0
                r0 = r8
                if (r0 == 0) goto L2c
                r0 = r7
                if (r0 < 0) goto L14
                goto L30
            L14:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L64
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L3b
                r0 = r5
                if (r0 == 0) goto L64
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L3b
                goto L64
            L2c:
                r0 = r7
                if (r0 < 0) goto L36
            L30:
                r0 = 1073741824(0x40000000, float:2.0)
                r5 = r0
                goto L68
            L36:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L40
            L3b:
                r0 = r4
                r7 = r0
                goto L68
            L40:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L64
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L5c
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L55
                goto L5c
            L55:
                r0 = 0
                r5 = r0
                r0 = r4
                r7 = r0
                goto L68
            L5c:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r5 = r0
                r0 = r4
                r7 = r0
                goto L68
            L64:
                r0 = 0
                r5 = r0
                r0 = r5
                r7 = r0
            L68:
                r0 = r7
                r1 = r5
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0329o.getChildMeasureSpec(int, int, int, int, boolean):int");
        }

        @Deprecated
        public static int getChildMeasureSpec(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            int max = Math.max(0, i - i2);
            if (z) {
                if (i3 >= 0) {
                    i4 = i3;
                    i5 = 1073741824;
                }
                i4 = 0;
                i5 = 0;
            } else {
                if (i3 >= 0) {
                    i4 = i3;
                } else if (i3 == -1) {
                    i4 = max;
                } else {
                    if (i3 == -2) {
                        i4 = max;
                        i5 = Integer.MIN_VALUE;
                    }
                    i4 = 0;
                    i5 = 0;
                }
                i5 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i5);
        }

        private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingBottom = getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = rect.width();
            int height2 = rect.height();
            int i = left - paddingLeft;
            int min = Math.min(0, i);
            int i2 = top - paddingTop;
            int min2 = Math.min(0, i2);
            int i3 = (width2 + left) - (width - paddingRight);
            int max = Math.max(0, i3);
            int max2 = Math.max(0, (height2 + top) - (height - paddingBottom));
            if (getLayoutDirection() == 1) {
                min = max != 0 ? max : Math.max(min, i3);
            } else if (min == 0) {
                min = Math.min(i, max);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            return new int[]{min, min2};
        }

        public static C0333d getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
            C0333d c0333d = new C0333d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0297R.styleable.RecyclerView, i, i2);
            c0333d.f1310a = obtainStyledAttributes.getInt(C0297R.styleable.RecyclerView_android_orientation, 1);
            c0333d.f1311b = obtainStyledAttributes.getInt(C0297R.styleable.RecyclerView_spanCount, 1);
            c0333d.f1312c = obtainStyledAttributes.getBoolean(C0297R.styleable.RecyclerView_reverseLayout, false);
            c0333d.f1313d = obtainStyledAttributes.getBoolean(C0297R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return c0333d;
        }

        private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingBottom = getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i < width - paddingRight && rect.right - i > paddingLeft && rect.top - i2 < height - paddingBottom && rect.bottom - i2 > paddingTop;
        }

        private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            boolean z = false;
            if (i3 <= 0 || i == i3) {
                if (mode == Integer.MIN_VALUE) {
                    boolean z2 = false;
                    if (size >= i) {
                        z2 = true;
                    }
                    return z2;
                } else if (mode == 0) {
                    return true;
                } else {
                    if (mode != 1073741824) {
                        return false;
                    }
                    if (size == i) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        private void scrapOrRecycleView(C0341v c0341v, int i, View view) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                removeViewAt(i);
                c0341v.m42721j(childViewHolderInt);
                return;
            }
            detachViewAt(i);
            c0341v.m42720k(view);
            this.mRecyclerView.mViewInfoStore.m3210f(childViewHolderInt);
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addDisappearingView(View view, int i) {
            addViewInt(view, i, true);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void addView(View view, int i) {
            addViewInt(view, i, false);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertInLayoutOrScroll(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(View view) {
            attachView(view, -1);
        }

        public void attachView(View view, int i) {
            attachView(view, i, (C0334p) view.getLayoutParams());
        }

        public void attachView(View view, int i, C0334p c0334p) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.m3215a(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.m3210f(childViewHolderInt);
            }
            this.mChildHelper.m3201b(view, i, c0334p, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(C0334p c0334p) {
            return c0334p != null;
        }

        public void collectAdjacentPrefetchPositions(int i, int i2, C0347z c0347z, AbstractC0332c abstractC0332c) {
        }

        public void collectInitialPrefetchPositions(int i, AbstractC0332c abstractC0332c) {
        }

        public int computeHorizontalScrollExtent(C0347z c0347z) {
            return 0;
        }

        public int computeHorizontalScrollOffset(C0347z c0347z) {
            return 0;
        }

        public int computeHorizontalScrollRange(C0347z c0347z) {
            return 0;
        }

        public int computeVerticalScrollExtent(C0347z c0347z) {
            return 0;
        }

        public int computeVerticalScrollOffset(C0347z c0347z) {
            return 0;
        }

        public int computeVerticalScrollRange(C0347z c0347z) {
            return 0;
        }

        public void detachAndScrapAttachedViews(C0341v c0341v) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(c0341v, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, C0341v c0341v) {
            scrapOrRecycleView(c0341v, this.mChildHelper.m3193j(view), view);
        }

        public void detachAndScrapViewAt(int i, C0341v c0341v) {
            scrapOrRecycleView(c0341v, i, getChildAt(i));
        }

        public void detachView(View view) {
            int m3193j = this.mChildHelper.m3193j(view);
            if (m3193j >= 0) {
                detachViewInternal(m3193j, view);
            }
        }

        public void detachViewAt(int i) {
            detachViewInternal(i, getChildAt(i));
        }

        public void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        public void dispatchDetachedFromWindow(RecyclerView recyclerView, C0341v c0341v) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, c0341v);
        }

        public void endAnimation(View view) {
            AbstractC0323l abstractC0323l = this.mRecyclerView.mItemAnimator;
            if (abstractC0323l != null) {
                abstractC0323l.endAnimation(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public View findContainingItemView(View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.f71608c.contains(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.f1354g || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract C0334p generateDefaultLayoutParams();

        public C0334p generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new C0334p(context, attributeSet);
        }

        public C0334p generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0334p ? new C0334p((C0334p) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0334p((ViewGroup.MarginLayoutParams) layoutParams) : new C0334p(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((C0334p) view.getLayoutParams()).f1315b.bottom;
        }

        public View getChildAt(int i) {
            View view;
            C25583f c25583f = this.mChildHelper;
            if (c25583f != null) {
                view = ((C0315e) c25583f.f71606a).m42752a(c25583f.m3197f(i));
            } else {
                view = null;
            }
            return view;
        }

        public int getChildCount() {
            C25583f c25583f = this.mChildHelper;
            return c25583f != null ? c25583f.m3198e() : 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(C0341v c0341v, C0347z c0347z) {
            return -1;
        }

        public int getDecoratedBottom(View view) {
            return getBottomDecorationHeight(view) + view.getBottom();
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((C0334p) view.getLayoutParams()).f1315b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((C0334p) view.getLayoutParams()).f1315b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return getRightDecorationWidth(view) + view.getRight();
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.f71608c.contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            AbstractC0317g adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            return adapter != null ? adapter.getItemCount() : 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            RecyclerView recyclerView = this.mRecyclerView;
            AtomicInteger atomicInteger = C26614s.f74505a;
            return recyclerView.getLayoutDirection();
        }

        public int getLeftDecorationWidth(View view) {
            return ((C0334p) view.getLayoutParams()).f1315b.left;
        }

        public int getMinimumHeight() {
            RecyclerView recyclerView = this.mRecyclerView;
            AtomicInteger atomicInteger = C26614s.f74505a;
            return recyclerView.getMinimumHeight();
        }

        public int getMinimumWidth() {
            RecyclerView recyclerView = this.mRecyclerView;
            AtomicInteger atomicInteger = C26614s.f74505a;
            return recyclerView.getMinimumWidth();
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        public int getPaddingEnd() {
            int i;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                i = recyclerView.getPaddingEnd();
            } else {
                i = 0;
            }
            return i;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingRight() : 0;
        }

        public int getPaddingStart() {
            int i;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                i = recyclerView.getPaddingStart();
            } else {
                i = 0;
            }
            return i;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        public int getPosition(View view) {
            return ((C0334p) view.getLayoutParams()).m42736a();
        }

        public int getRightDecorationWidth(View view) {
            return ((C0334p) view.getLayoutParams()).f1315b.right;
        }

        public int getRowCountForAccessibility(C0341v c0341v, C0347z c0347z) {
            return -1;
        }

        public int getSelectionModeForAccessibility(C0341v c0341v, C0347z c0347z) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((C0334p) view.getLayoutParams()).f1315b.top;
        }

        public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0334p) view.getLayoutParams()).f1315b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException(C22128a.m8656W1(this.mRecyclerView, C22128a.m8728C("View should be fully attached to be ignored")));
            }
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.m3209g(childViewHolderInt);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(C0341v c0341v, C0347z c0347z) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            AbstractC0344y abstractC0344y = this.mSmoothScroller;
            return abstractC0344y != null && abstractC0344y.f1337e;
        }

        public boolean isViewPartiallyVisible(View view, boolean z, boolean z2) {
            boolean z3 = this.mHorizontalBoundCheck.m3223b(view, 24579) && this.mVerticalBoundCheck.m3223b(view, 24579);
            return z ? z3 : !z3;
        }

        public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
            Rect rect = ((C0334p) view.getLayoutParams()).f1315b;
            view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
            C0334p c0334p = (C0334p) view.getLayoutParams();
            Rect rect = c0334p.f1315b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0334p).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0334p).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0334p).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0334p).bottomMargin);
        }

        public void measureChild(View view, int i, int i2) {
            C0334p c0334p = (C0334p) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + i3 + i4 + i, ((ViewGroup.MarginLayoutParams) c0334p).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + i5 + i6 + i2, ((ViewGroup.MarginLayoutParams) c0334p).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, c0334p)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(View view, int i, int i2) {
            C0334p c0334p = (C0334p) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0334p).leftMargin + ((ViewGroup.MarginLayoutParams) c0334p).rightMargin + i3 + i4 + i, ((ViewGroup.MarginLayoutParams) c0334p).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0334p).topMargin + ((ViewGroup.MarginLayoutParams) c0334p).bottomMargin + i5 + i6 + i2, ((ViewGroup.MarginLayoutParams) c0334p).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, c0334p)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                detachViewAt(i);
                attachView(childAt, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.mRecyclerView.toString());
        }

        public void offsetChildrenHorizontal(int i) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i);
            }
        }

        public void offsetChildrenVertical(int i) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i);
            }
        }

        public void onAdapterChanged(AbstractC0317g abstractC0317g, AbstractC0317g abstractC0317g2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, C0341v c0341v) {
            onDetachedFromWindow(recyclerView);
        }

        public View onFocusSearchFailed(View view, int i, C0341v c0341v, C0347z c0347z) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        public void onInitializeAccessibilityEvent(C0341v c0341v, C0347z c0347z, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1)) {
                z = true;
                if (!this.mRecyclerView.canScrollVertically(-1)) {
                    z = true;
                    if (!this.mRecyclerView.canScrollHorizontally(-1)) {
                        z = this.mRecyclerView.canScrollHorizontally(1);
                    }
                }
            }
            accessibilityEvent.setScrollable(z);
            AbstractC0317g abstractC0317g = this.mRecyclerView.mAdapter;
            if (abstractC0317g == null) {
                return;
            }
            accessibilityEvent.setItemCount(abstractC0317g.getItemCount());
        }

        public void onInitializeAccessibilityNodeInfo(C0341v c0341v, C0347z c0347z, C26584b c26584b) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                c26584b.f74463a.addAction(8192);
                c26584b.f74463a.setScrollable(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                c26584b.f74463a.addAction(4096);
                c26584b.f74463a.setScrollable(true);
            }
            c26584b.m1617n(C26584b.C26586b.m1611a(getRowCountForAccessibility(c0341v, c0347z), getColumnCountForAccessibility(c0341v, c0347z), isLayoutHierarchical(c0341v, c0347z), getSelectionModeForAccessibility(c0341v, c0347z)));
        }

        public void onInitializeAccessibilityNodeInfo(C26584b c26584b) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, c26584b);
        }

        public void onInitializeAccessibilityNodeInfoForItem(View view, C26584b c26584b) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.m3192k(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, c26584b);
        }

        public void onInitializeAccessibilityNodeInfoForItem(C0341v c0341v, C0347z c0347z, View view, C26584b c26584b) {
        }

        public View onInterceptFocusSearch(View view, int i) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
            onItemsUpdated(recyclerView, i, i2);
        }

        public void onLayoutChildren(C0341v c0341v, C0347z c0347z) {
        }

        public void onLayoutCompleted(C0347z c0347z) {
        }

        public void onMeasure(C0341v c0341v, C0347z c0347z, int i, int i2) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, C0347z c0347z, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i) {
        }

        public void onSmoothScrollerStopped(AbstractC0344y abstractC0344y) {
            if (this.mSmoothScroller == abstractC0344y) {
                this.mSmoothScroller = null;
            }
        }

        public boolean performAccessibilityAction(int i, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i, bundle);
        }

        public boolean performAccessibilityAction(C0341v c0341v, C0347z c0347z, int i, Bundle bundle) {
            int i2;
            int i3;
            int i4;
            int i5;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i5 = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                i2 = i5;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    i4 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    int i6 = i5;
                    i3 = i4;
                    i2 = i6;
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i5 = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                i2 = i5;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    i4 = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                    int i62 = i5;
                    i3 = i4;
                    i2 = i62;
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.mRecyclerView.smoothScrollBy(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        public boolean performAccessibilityActionForItem(View view, int i, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i, bundle);
        }

        public boolean performAccessibilityActionForItem(C0341v c0341v, C0347z c0347z, View view, int i, Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                recyclerView.postOnAnimation(runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.m3191l(childCount);
            }
        }

        public void removeAndRecycleAllViews(C0341v c0341v) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, c0341v);
                }
            }
        }

        public void removeAndRecycleScrapInt(C0341v c0341v) {
            int size = c0341v.f1324a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = c0341v.f1324a.get(i).itemView;
                AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(view, false);
                    }
                    AbstractC0323l abstractC0323l = this.mRecyclerView.mItemAnimator;
                    if (abstractC0323l != null) {
                        abstractC0323l.endAnimation(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    AbstractC0313c0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    c0341v.m42721j(childViewHolderInt2);
                }
            }
            c0341v.f1324a.clear();
            ArrayList<AbstractC0313c0> arrayList = c0341v.f1325b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, C0341v c0341v) {
            removeView(view);
            c0341v.m42722i(view);
        }

        public void removeAndRecycleViewAt(int i, C0341v c0341v) {
            View childAt = getChildAt(i);
            removeViewAt(i);
            c0341v.m42722i(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            C25583f c25583f = this.mChildHelper;
            int indexOfChild = RecyclerView.this.indexOfChild(view);
            if (indexOfChild < 0) {
                return;
            }
            if (c25583f.f71607b.m3184f(indexOfChild)) {
                c25583f.m3190m(view);
            }
            ((C0315e) c25583f.f71606a).m42750c(indexOfChild);
        }

        public void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                this.mChildHelper.m3191l(i);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
            int i = childRectangleOnScreenScrollAmount[0];
            int i2 = childRectangleOnScreenScrollAmount[1];
            if (!z2 || isFocusedChildVisibleAfterScrolling(recyclerView, i, i2)) {
                if (i == 0 && i2 == 0) {
                    return false;
                }
                if (z) {
                    recyclerView.scrollBy(i, i2);
                    return true;
                }
                recyclerView.smoothScrollBy(i, i2);
                return true;
            }
            return false;
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int i, C0341v c0341v, C0347z c0347z) {
            return 0;
        }

        public void scrollToPosition(int i) {
        }

        public int scrollVerticallyBy(int i, C0341v c0341v, C0347z c0347z) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z) {
            this.mAutoMeasure = z;
        }

        public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setItemPrefetchEnabled(boolean z) {
            if (z != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView == null) {
                    return;
                }
                recyclerView.mRecycler.m42717n();
            }
        }

        public void setMeasureSpecs(int i, int i2) {
            this.mWidth = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(int i, int i2) {
            this.mRecyclerView.setMeasuredDimension(i, i2);
        }

        public void setMeasuredDimension(Rect rect, int i, int i2) {
            int width = rect.width();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = rect.height();
            int paddingTop = getPaddingTop();
            setMeasuredDimension(chooseSize(i, paddingRight + paddingLeft + width, getMinimumWidth()), chooseSize(i2, getPaddingBottom() + paddingTop + height, getMinimumHeight()));
        }

        public void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i8 = rect.left;
                int i9 = i5;
                if (i8 < i5) {
                    i9 = i8;
                }
                int i10 = rect.right;
                int i11 = i4;
                if (i10 > i4) {
                    i11 = i10;
                }
                int i12 = rect.top;
                int i13 = i6;
                if (i12 < i6) {
                    i13 = i12;
                }
                int i14 = rect.bottom;
                int i15 = i7;
                if (i14 > i7) {
                    i15 = i14;
                }
                i3++;
                i4 = i11;
                i7 = i15;
                i5 = i9;
                i6 = i13;
            }
            this.mRecyclerView.mTempRect.set(i5, i6, i4, i7);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.mMeasurementCacheEnabled = z;
        }

        public void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        public boolean shouldMeasureChild(View view, int i, int i2, C0334p c0334p) {
            return view.isLayoutRequested() || !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0334p).width) || !isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0334p).height);
        }

        public boolean shouldMeasureTwice() {
            return false;
        }

        public boolean shouldReMeasureChild(View view, int i, int i2, C0334p c0334p) {
            return !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0334p).width) || !isMeasurementUpToDate(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0334p).height);
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, C0347z c0347z, int i) {
        }

        public void startSmoothScroll(AbstractC0344y abstractC0344y) {
            AbstractC0344y abstractC0344y2 = this.mSmoothScroller;
            if (abstractC0344y2 != null && abstractC0344y != abstractC0344y2 && abstractC0344y2.f1337e) {
                abstractC0344y2.m42714f();
            }
            this.mSmoothScroller = abstractC0344y;
            RecyclerView recyclerView = this.mRecyclerView;
            Objects.requireNonNull(abstractC0344y);
            recyclerView.mViewFlinger.m42753c();
            if (abstractC0344y.f1340h) {
                abstractC0344y.getClass().getSimpleName();
                abstractC0344y.getClass().getSimpleName();
            }
            abstractC0344y.f1334b = recyclerView;
            abstractC0344y.f1335c = this;
            int i = abstractC0344y.f1333a;
            if (i != -1) {
                recyclerView.mState.f1348a = i;
                abstractC0344y.f1337e = true;
                abstractC0344y.f1336d = true;
                abstractC0344y.f1338f = recyclerView.mLayout.findViewByPosition(i);
                abstractC0344y.mo3144c();
                abstractC0344y.f1334b.mViewFlinger.m42755a();
                abstractC0344y.f1340h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        public void stopIgnoringView(View view) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        public void stopSmoothScroller() {
            AbstractC0344y abstractC0344y = this.mSmoothScroller;
            if (abstractC0344y != null) {
                abstractC0344y.m42714f();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public static class C0334p extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public AbstractC0313c0 f1314a;

        /* renamed from: b */
        public final Rect f1315b = new Rect();

        /* renamed from: c */
        public boolean f1316c = true;

        /* renamed from: d */
        public boolean f1317d = false;

        public C0334p(int i, int i2) {
            super(i, i2);
        }

        public C0334p(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0334p(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0334p(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0334p(C0334p c0334p) {
            super((ViewGroup.LayoutParams) c0334p);
        }

        /* renamed from: a */
        public int m42736a() {
            return this.f1314a.getLayoutPosition();
        }

        /* renamed from: b */
        public boolean m42735b() {
            return this.f1314a.isUpdated();
        }

        /* renamed from: c */
        public boolean m42734c() {
            return this.f1314a.isRemoved();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public interface AbstractC0335q {
        void onChildViewAttachedToWindow(View view);

        void onChildViewDetachedFromWindow(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public static abstract class AbstractC0336r {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public interface AbstractC0337s {
        /* renamed from: a */
        void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: b */
        boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: c */
        void mo3153c(boolean z);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static abstract class AbstractC0338t {
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        }

        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public static class C0339u {

        /* renamed from: a */
        public SparseArray<C0340a> f1318a = new SparseArray<>();

        /* renamed from: b */
        public int f1319b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$u$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u$a.class */
        public static class C0340a {

            /* renamed from: a */
            public final ArrayList<AbstractC0313c0> f1320a = new ArrayList<>();

            /* renamed from: b */
            public int f1321b = 5;

            /* renamed from: c */
            public long f1322c = 0;

            /* renamed from: d */
            public long f1323d = 0;
        }

        /* renamed from: a */
        public final C0340a m42733a(int i) {
            C0340a c0340a = this.f1318a.get(i);
            C0340a c0340a2 = c0340a;
            if (c0340a == null) {
                c0340a2 = new C0340a();
                this.f1318a.put(i, c0340a2);
            }
            return c0340a2;
        }

        /* renamed from: b */
        public long m42732b(long j, long j2) {
            return j == 0 ? j2 : (j2 / 4) + ((j / 4) * 3);
        }

        /* renamed from: c */
        public void m42731c(int i, int i2) {
            C0340a m42733a = m42733a(i);
            m42733a.f1321b = i2;
            ArrayList<AbstractC0313c0> arrayList = m42733a.f1320a;
            while (arrayList.size() > i2) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public final class C0341v {

        /* renamed from: a */
        public final ArrayList<AbstractC0313c0> f1324a;

        /* renamed from: d */
        public final List<AbstractC0313c0> f1327d;

        /* renamed from: g */
        public C0339u f1330g;

        /* renamed from: b */
        public ArrayList<AbstractC0313c0> f1325b = null;

        /* renamed from: c */
        public final ArrayList<AbstractC0313c0> f1326c = new ArrayList<>();

        /* renamed from: e */
        public int f1328e = 2;

        /* renamed from: f */
        public int f1329f = 2;

        public C0341v() {
            RecyclerView.this = r5;
            ArrayList<AbstractC0313c0> arrayList = new ArrayList<>();
            this.f1324a = arrayList;
            this.f1327d = Collections.unmodifiableList(arrayList);
        }

        /* renamed from: a */
        public void m42730a(AbstractC0313c0 abstractC0313c0, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(abstractC0313c0);
            View view = abstractC0313c0.itemView;
            C25623w c25623w = RecyclerView.this.mAccessibilityDelegate;
            if (c25623w != null) {
                C25623w.C25624a c25624a = c25623w.f71792e;
                C26614s.m1564q(view, c25624a instanceof C25623w.C25624a ? c25624a.f71794e.remove(view) : null);
            }
            if (z) {
                AbstractC0342w abstractC0342w = RecyclerView.this.mRecyclerListener;
                if (abstractC0342w != null) {
                    abstractC0342w.onViewRecycled(abstractC0313c0);
                }
                int size = RecyclerView.this.mRecyclerListeners.size();
                for (int i = 0; i < size; i++) {
                    RecyclerView.this.mRecyclerListeners.get(i).onViewRecycled(abstractC0313c0);
                }
                AbstractC0317g abstractC0317g = RecyclerView.this.mAdapter;
                if (abstractC0317g != null) {
                    abstractC0317g.onViewRecycled(abstractC0313c0);
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mState != null) {
                    recyclerView.mViewInfoStore.m3209g(abstractC0313c0);
                }
            }
            abstractC0313c0.mBindingAdapter = null;
            abstractC0313c0.mOwnerRecyclerView = null;
            C0339u m42727d = m42727d();
            Objects.requireNonNull(m42727d);
            int itemViewType = abstractC0313c0.getItemViewType();
            ArrayList<AbstractC0313c0> arrayList = m42727d.m42733a(itemViewType).f1320a;
            if (m42727d.f1318a.get(itemViewType).f1321b <= arrayList.size()) {
                return;
            }
            abstractC0313c0.resetInternal();
            arrayList.add(abstractC0313c0);
        }

        /* renamed from: b */
        public void m42729b() {
            this.f1324a.clear();
            m42724g();
        }

        /* renamed from: c */
        public int m42728c(int i) {
            if (i >= 0 && i < RecyclerView.this.mState.m42710b()) {
                RecyclerView recyclerView = RecyclerView.this;
                return !recyclerView.mState.f1354g ? i : recyclerView.mAdapterHelper.m3232f(i, 0);
            }
            StringBuilder m8720E = C22128a.m8720E("invalid position ", i, ". State item count is ");
            m8720E.append(RecyclerView.this.mState.m42710b());
            throw new IndexOutOfBoundsException(C22128a.m8656W1(RecyclerView.this, m8720E));
        }

        /* renamed from: d */
        public C0339u m42727d() {
            if (this.f1330g == null) {
                this.f1330g = new C0339u();
            }
            return this.f1330g;
        }

        /* renamed from: e */
        public View m42726e(int i) {
            return m42719l(i, false, RecyclerView.FOREVER_NS).itemView;
        }

        /* renamed from: f */
        public final void m42725f(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m42725f((ViewGroup) childAt, true);
                }
            }
            if (!z) {
                return;
            }
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }

        /* renamed from: g */
        public void m42724g() {
            for (int size = this.f1326c.size() - 1; size >= 0; size--) {
                m42723h(size);
            }
            this.f1326c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                GapWorker.C0301b c0301b = RecyclerView.this.mPrefetchRegistry;
                int[] iArr = c0301b.f1255c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                c0301b.f1256d = 0;
            }
        }

        /* renamed from: h */
        public void m42723h(int i) {
            m42730a(this.f1326c.get(i), true);
            this.f1326c.remove(i);
        }

        /* renamed from: i */
        public void m42722i(View view) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            m42721j(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            RecyclerView.this.mItemAnimator.endAnimation(childViewHolderInt);
        }

        /* renamed from: j */
        public void m42721j(AbstractC0313c0 abstractC0313c0) {
            boolean z;
            boolean z2;
            int i;
            boolean z3 = false;
            boolean z4 = false;
            if (abstractC0313c0.isScrap() || abstractC0313c0.itemView.getParent() != null) {
                StringBuilder m8728C = C22128a.m8728C("Scrapped or attached views may not be recycled. isScrap:");
                m8728C.append(abstractC0313c0.isScrap());
                m8728C.append(" isAttached:");
                if (abstractC0313c0.itemView.getParent() != null) {
                    z4 = true;
                }
                m8728C.append(z4);
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, m8728C));
            } else if (abstractC0313c0.isTmpDetached()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb.append(abstractC0313c0);
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, sb));
            } else if (abstractC0313c0.shouldIgnore()) {
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, C22128a.m8728C("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            } else {
                boolean doesTransientStatePreventRecycling = abstractC0313c0.doesTransientStatePreventRecycling();
                AbstractC0317g abstractC0317g = RecyclerView.this.mAdapter;
                if ((abstractC0317g != null && doesTransientStatePreventRecycling && abstractC0317g.onFailedToRecycleView(abstractC0313c0)) || abstractC0313c0.isRecyclable()) {
                    if (this.f1329f <= 0 || abstractC0313c0.hasAnyOfTheFlags(526)) {
                        z2 = false;
                    } else {
                        int size = this.f1326c.size();
                        int i2 = size;
                        if (size >= this.f1329f) {
                            i2 = size;
                            if (size > 0) {
                                m42723h(0);
                                i2 = size - 1;
                            }
                        }
                        int i3 = i2;
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                            i3 = i2;
                            if (i2 > 0) {
                                i3 = i2;
                                if (!RecyclerView.this.mPrefetchRegistry.m42764c(abstractC0313c0.mPosition)) {
                                    do {
                                        i = i2 - 1;
                                        if (i < 0) {
                                            break;
                                        }
                                        i2 = i;
                                    } while (RecyclerView.this.mPrefetchRegistry.m42764c(this.f1326c.get(i).mPosition));
                                    i3 = i + 1;
                                }
                            }
                        }
                        this.f1326c.add(i3, abstractC0313c0);
                        z2 = true;
                    }
                    boolean z5 = false;
                    if (!z2) {
                        m42730a(abstractC0313c0, true);
                        z5 = true;
                    }
                    boolean z6 = z5;
                    z3 = z2;
                    z = z6;
                } else {
                    z = false;
                }
                RecyclerView.this.mViewInfoStore.m3209g(abstractC0313c0);
                if (z3 || z || !doesTransientStatePreventRecycling) {
                    return;
                }
                abstractC0313c0.mBindingAdapter = null;
                abstractC0313c0.mOwnerRecyclerView = null;
            }
        }

        /* renamed from: k */
        public void m42720k(View view) {
            AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f1325b == null) {
                    this.f1325b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f1325b.add(childViewHolderInt);
            } else if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, C22128a.m8728C("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
            } else {
                childViewHolderInt.setScrapContainer(this, false);
                this.f1324a.add(childViewHolderInt);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:174:0x05ae, code lost:
            r21 = r16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:255:0x0865, code lost:
            if ((r0 == 0 || r0 + r0 < r12) == false) goto L256;
         */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0347  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x045e  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0799  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x0838  */
        /* JADX WARN: Removed duplicated region for block: B:259:0x08b5  */
        /* JADX WARN: Removed duplicated region for block: B:273:0x0926  */
        /* JADX WARN: Removed duplicated region for block: B:276:0x0935  */
        /* JADX WARN: Removed duplicated region for block: B:280:0x0953  */
        /* JADX WARN: Removed duplicated region for block: B:281:0x096c  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x09aa  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00fd  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x011a  */
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 m42719l(int r10, boolean r11, long r12) {
            /*
                Method dump skipped, instructions count: 2545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0341v.m42719l(int, boolean, long):androidx.recyclerview.widget.RecyclerView$c0");
        }

        /* renamed from: m */
        public void m42718m(AbstractC0313c0 abstractC0313c0) {
            if (abstractC0313c0.mInChangeScrap) {
                this.f1325b.remove(abstractC0313c0);
            } else {
                this.f1324a.remove(abstractC0313c0);
            }
            abstractC0313c0.mScrapContainer = null;
            abstractC0313c0.mInChangeScrap = false;
            abstractC0313c0.clearReturnedFromScrapFlag();
        }

        /* renamed from: n */
        public void m42717n() {
            AbstractC0329o abstractC0329o = RecyclerView.this.mLayout;
            this.f1329f = this.f1328e + (abstractC0329o != null ? abstractC0329o.mPrefetchMaxCountObserved : 0);
            for (int size = this.f1326c.size() - 1; size >= 0 && this.f1326c.size() > this.f1329f; size--) {
                m42723h(size);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public interface AbstractC0342w {
        void onViewRecycled(AbstractC0313c0 abstractC0313c0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
    public class C0343x extends AbstractC0320i {
        public C0343x() {
            RecyclerView.this = r4;
        }

        /* renamed from: a */
        public void m42716a() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    recyclerView.postOnAnimation(runnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f1353f = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (!RecyclerView.this.mAdapterHelper.m3231g()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeChanged(int i, int i2, Object obj) {
            boolean z;
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            C25564a c25564a = RecyclerView.this.mAdapterHelper;
            Objects.requireNonNull(c25564a);
            if (i2 < 1) {
                z = false;
            } else {
                c25564a.f71555b.add(c25564a.m3230h(4, i, i2, obj));
                c25564a.f71559f |= 4;
                z = false;
                if (c25564a.f71555b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m42716a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeInserted(int i, int i2) {
            boolean z;
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            C25564a c25564a = RecyclerView.this.mAdapterHelper;
            Objects.requireNonNull(c25564a);
            if (i2 < 1) {
                z = false;
            } else {
                c25564a.f71555b.add(c25564a.m3230h(1, i, i2, null));
                c25564a.f71559f |= 1;
                z = false;
                if (c25564a.f71555b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m42716a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeMoved(int i, int i2, int i3) {
            boolean z;
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            C25564a c25564a = RecyclerView.this.mAdapterHelper;
            Objects.requireNonNull(c25564a);
            if (i == i2) {
                z = false;
            } else if (i3 != 1) {
                throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
            } else {
                c25564a.f71555b.add(c25564a.m3230h(8, i, i2, null));
                c25564a.f71559f |= 8;
                z = false;
                if (c25564a.f71555b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m42716a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeRemoved(int i, int i2) {
            boolean z;
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            C25564a c25564a = RecyclerView.this.mAdapterHelper;
            Objects.requireNonNull(c25564a);
            if (i2 < 1) {
                z = false;
            } else {
                c25564a.f71555b.add(c25564a.m3230h(2, i, i2, null));
                c25564a.f71559f |= 2;
                z = false;
                if (c25564a.f71555b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m42716a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onStateRestorationPolicyChanged() {
            AbstractC0317g abstractC0317g;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (abstractC0317g = recyclerView.mAdapter) == null || !abstractC0317g.canRestoreState()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$y */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y.class */
    public static abstract class AbstractC0344y {

        /* renamed from: b */
        public RecyclerView f1334b;

        /* renamed from: c */
        public AbstractC0329o f1335c;

        /* renamed from: d */
        public boolean f1336d;

        /* renamed from: e */
        public boolean f1337e;

        /* renamed from: f */
        public View f1338f;

        /* renamed from: h */
        public boolean f1340h;

        /* renamed from: a */
        public int f1333a = -1;

        /* renamed from: g */
        public final C0345a f1339g = new C0345a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$y$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y$a.class */
        public static class C0345a {

            /* renamed from: a */
            public int f1341a;

            /* renamed from: b */
            public int f1342b;

            /* renamed from: d */
            public int f1344d = -1;

            /* renamed from: f */
            public boolean f1346f = false;

            /* renamed from: g */
            public int f1347g = 0;

            /* renamed from: c */
            public int f1343c = Integer.MIN_VALUE;

            /* renamed from: e */
            public Interpolator f1345e = null;

            public C0345a(int i, int i2) {
                this.f1341a = i;
                this.f1342b = i2;
            }

            /* renamed from: a */
            public void m42713a(RecyclerView recyclerView) {
                int i = this.f1344d;
                if (i >= 0) {
                    this.f1344d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f1346f = false;
                } else if (!this.f1346f) {
                    this.f1347g = 0;
                } else {
                    Interpolator interpolator = this.f1345e;
                    if (interpolator != null && this.f1343c < 1) {
                        throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    int i2 = this.f1343c;
                    if (i2 < 1) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    recyclerView.mViewFlinger.m42754b(this.f1341a, this.f1342b, i2, interpolator);
                    this.f1347g++;
                    this.f1346f = false;
                }
            }

            /* renamed from: b */
            public void m42712b(int i, int i2, int i3, Interpolator interpolator) {
                this.f1341a = i;
                this.f1342b = i2;
                this.f1343c = i3;
                this.f1345e = interpolator;
                this.f1346f = true;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$y$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y$b.class */
        public interface AbstractC0346b {
            PointF computeScrollVectorForPosition(int i);
        }

        /* renamed from: a */
        public void m42715a(int i, int i2) {
            AbstractC0329o abstractC0329o;
            RecyclerView recyclerView = this.f1334b;
            if (this.f1333a == -1 || recyclerView == null) {
                m42714f();
            }
            if (this.f1336d && this.f1338f == null && (abstractC0329o = this.f1335c) != null) {
                PointF computeScrollVectorForPosition = abstractC0329o instanceof AbstractC0346b ? ((AbstractC0346b) abstractC0329o).computeScrollVectorForPosition(this.f1333a) : null;
                if (computeScrollVectorForPosition != null) {
                    float f = computeScrollVectorForPosition.x;
                    if (f != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                        recyclerView.scrollStep((int) Math.signum(f), (int) Math.signum(computeScrollVectorForPosition.y), null);
                    }
                }
            }
            this.f1336d = false;
            View view = this.f1338f;
            if (view != null) {
                if (this.f1334b.getChildLayoutPosition(view) == this.f1333a) {
                    mo3142e(this.f1338f, recyclerView.mState, this.f1339g);
                    this.f1339g.m42713a(recyclerView);
                    m42714f();
                } else {
                    this.f1338f = null;
                }
            }
            if (this.f1337e) {
                mo3145b(i, i2, recyclerView.mState, this.f1339g);
                C0345a c0345a = this.f1339g;
                boolean z = false;
                if (c0345a.f1344d >= 0) {
                    z = true;
                }
                c0345a.m42713a(recyclerView);
                if (!z || !this.f1337e) {
                    return;
                }
                this.f1336d = true;
                recyclerView.mViewFlinger.m42755a();
            }
        }

        /* renamed from: b */
        public abstract void mo3145b(int i, int i2, C0347z c0347z, C0345a c0345a);

        /* renamed from: c */
        public abstract void mo3144c();

        /* renamed from: d */
        public abstract void mo3143d();

        /* renamed from: e */
        public abstract void mo3142e(View view, C0347z c0347z, C0345a c0345a);

        /* renamed from: f */
        public final void m42714f() {
            if (!this.f1337e) {
                return;
            }
            this.f1337e = false;
            mo3143d();
            this.f1334b.mState.f1348a = -1;
            this.f1338f = null;
            this.f1333a = -1;
            this.f1336d = false;
            this.f1335c.onSmoothScrollerStopped(this);
            this.f1335c = null;
            this.f1334b = null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
    public static class C0347z {

        /* renamed from: a */
        public int f1348a = -1;

        /* renamed from: b */
        public int f1349b = 0;

        /* renamed from: c */
        public int f1350c = 0;

        /* renamed from: d */
        public int f1351d = 1;

        /* renamed from: e */
        public int f1352e = 0;

        /* renamed from: f */
        public boolean f1353f = false;

        /* renamed from: g */
        public boolean f1354g = false;

        /* renamed from: h */
        public boolean f1355h = false;

        /* renamed from: i */
        public boolean f1356i = false;

        /* renamed from: j */
        public boolean f1357j = false;

        /* renamed from: k */
        public boolean f1358k = false;

        /* renamed from: l */
        public int f1359l;

        /* renamed from: m */
        public long f1360m;

        /* renamed from: n */
        public int f1361n;

        /* renamed from: a */
        public void m42711a(int i) {
            if ((this.f1351d & i) != 0) {
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Layout state should be one of ");
            m8728C.append(Integer.toBinaryString(i));
            m8728C.append(" but it is ");
            m8728C.append(Integer.toBinaryString(this.f1351d));
            throw new IllegalStateException(m8728C.toString());
        }

        /* renamed from: b */
        public int m42710b() {
            return this.f1354g ? this.f1349b - this.f1350c : this.f1352e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("State{mTargetPosition=");
            m8728C.append(this.f1348a);
            m8728C.append(", mData=");
            m8728C.append((Object) null);
            m8728C.append(", mItemCount=");
            m8728C.append(this.f1352e);
            m8728C.append(", mIsMeasuring=");
            m8728C.append(this.f1356i);
            m8728C.append(", mPreviousLayoutItemCount=");
            m8728C.append(this.f1349b);
            m8728C.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            m8728C.append(this.f1350c);
            m8728C.append(", mStructureChanged=");
            m8728C.append(this.f1353f);
            m8728C.append(", mInPreLayout=");
            m8728C.append(this.f1354g);
            m8728C.append(", mRunSimpleAnimations=");
            m8728C.append(this.f1357j);
            m8728C.append(", mRunPredictiveAnimations=");
            return C22128a.m8598m(m8728C, this.f1358k, '}');
        }
    }

    static {
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0297R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mObserver = new C0343x();
        this.mRecycler = new C0341v();
        this.mViewInfoStore = new C25571b0();
        this.mUpdateChildViewsRunnable = new RunnableC0308a();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new C0322k();
        this.mItemAnimator = new g();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new RunnableC0311b0();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new GapWorker.C0301b() : null;
        this.mState = new C0347z();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new C0327m();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new RunnableC0310b();
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new C0314d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        Method method = C26624y.f74522a;
        int i2 = Build.VERSION.SDK_INT;
        this.mScaledHorizontalScrollFactor = i2 >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : C26624y.m1552a(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = i2 >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : C26624y.m1552a(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.setListener(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C25623w(this));
        int[] iArr = C0297R.styleable.RecyclerView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C26614s.m1565p(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        String string = obtainStyledAttributes.getString(C0297R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C0297R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(C0297R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z = obtainStyledAttributes.getBoolean(C0297R.styleable.RecyclerView_fastScrollEnabled, false);
        this.mEnableFastScroller = z;
        if (z) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(C0297R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C0297R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C0297R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C0297R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i, 0);
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        C26614s.m1565p(this, context, iArr2, attributeSet, obtainStyledAttributes2, i, 0);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
    }

    private void addAnimatingView(AbstractC0313c0 abstractC0313c0) {
        View view = abstractC0313c0.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.m42718m(getChildViewHolder(view));
        if (abstractC0313c0.isTmpDetached()) {
            this.mChildHelper.m3201b(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.mChildHelper.m3202a(view, -1, true);
        } else {
            C25583f c25583f = this.mChildHelper;
            int indexOfChild = RecyclerView.this.indexOfChild(view);
            if (indexOfChild >= 0) {
                c25583f.f71607b.m3182h(indexOfChild);
                c25583f.m3194i(view);
                return;
            }
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    private void animateChange(AbstractC0313c0 abstractC0313c0, AbstractC0313c0 abstractC0313c02, AbstractC0323l.C0326c c0326c, AbstractC0323l.C0326c c0326c2, boolean z, boolean z2) {
        abstractC0313c0.setIsRecyclable(false);
        if (z) {
            addAnimatingView(abstractC0313c0);
        }
        if (abstractC0313c0 != abstractC0313c02) {
            if (z2) {
                addAnimatingView(abstractC0313c02);
            }
            abstractC0313c0.mShadowedHolder = abstractC0313c02;
            addAnimatingView(abstractC0313c0);
            this.mRecycler.m42718m(abstractC0313c0);
            abstractC0313c02.setIsRecyclable(false);
            abstractC0313c02.mShadowingHolder = abstractC0313c0;
        }
        if (this.mItemAnimator.animateChange(abstractC0313c0, abstractC0313c02, c0326c, c0326c2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    public static void clearNestedRecyclerViewIfNotNested(AbstractC0313c0 abstractC0313c0) {
        WeakReference<RecyclerView> weakReference = abstractC0313c0.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC0313c0.mNestedRecyclerView = null;
                    return;
                } else if (view == abstractC0313c0.itemView) {
                    return;
                } else {
                    ViewParent parent = view.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                }
            }
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0329o.class);
                Object[] objArr = null;
                try {
                    Constructor constructor2 = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                    constructor = constructor2;
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0329o) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e7);
            }
        }
    }

    private boolean didChildRangeChange(int i, int i2) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        boolean z = false;
        if (iArr[0] != i || iArr[1] != i2) {
            z = true;
        }
        return z;
    }

    private void dispatchContentChangedIfNecessary() {
        int i = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        obtain.setContentChangeTypes(i);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.m42711a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f1356i = false;
        startInterceptRequestLayout();
        C25571b0 c25571b0 = this.mViewInfoStore;
        c25571b0.f71572a.clear();
        c25571b0.f71573b.m2608b();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        C0347z c0347z = this.mState;
        c0347z.f1355h = c0347z.f1357j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        c0347z.f1354g = c0347z.f1358k;
        c0347z.f1352e = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f1357j) {
            int m3198e = this.mChildHelper.m3198e();
            for (int i = 0; i < m3198e; i++) {
                AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3199d(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.m3213c(childViewHolderInt, this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt, AbstractC0323l.buildAdapterChangeFlagsForAnimations(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f1355h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.f71573b.m2600k(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f1358k) {
            saveOldPositions();
            C0347z c0347z2 = this.mState;
            boolean z = c0347z2.f1353f;
            c0347z2.f1353f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, c0347z2);
            this.mState.f1353f = z;
            for (int i2 = 0; i2 < this.mChildHelper.m3198e(); i2++) {
                AbstractC0313c0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.m3199d(i2));
                if (!childViewHolderInt2.shouldIgnore()) {
                    C25571b0.C25572a orDefault = this.mViewInfoStore.f71572a.getOrDefault(childViewHolderInt2, null);
                    if (!((orDefault == null || (orDefault.f71575a & 4) == 0) ? false : true)) {
                        int buildAdapterChangeFlagsForAnimations = AbstractC0323l.buildAdapterChangeFlagsForAnimations(childViewHolderInt2);
                        boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                        int i3 = buildAdapterChangeFlagsForAnimations;
                        if (!hasAnyOfTheFlags) {
                            i3 = buildAdapterChangeFlagsForAnimations | 4096;
                        }
                        AbstractC0323l.C0326c recordPreLayoutInformation = this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt2, i3, childViewHolderInt2.getUnmodifiedPayloads());
                        if (hasAnyOfTheFlags) {
                            recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, recordPreLayoutInformation);
                        } else {
                            C25571b0 c25571b02 = this.mViewInfoStore;
                            C25571b0.C25572a orDefault2 = c25571b02.f71572a.getOrDefault(childViewHolderInt2, null);
                            C25571b0.C25572a c25572a = orDefault2;
                            if (orDefault2 == null) {
                                c25572a = C25571b0.C25572a.m3208a();
                                c25571b02.f71572a.put(childViewHolderInt2, c25572a);
                            }
                            c25572a.f71575a |= 2;
                            c25572a.f71576b = recordPreLayoutInformation;
                        }
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f1351d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.m42711a(6);
        this.mAdapterHelper.m3235c();
        this.mState.f1352e = this.mAdapter.getItemCount();
        this.mState.f1350c = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f1288c;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        C0347z c0347z = this.mState;
        c0347z.f1354g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, c0347z);
        C0347z c0347z2 = this.mState;
        c0347z2.f1353f = false;
        c0347z2.f1357j = c0347z2.f1357j && this.mItemAnimator != null;
        c0347z2.f1351d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.m42711a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        C0347z c0347z = this.mState;
        c0347z.f1351d = 1;
        if (c0347z.f1357j) {
            for (int m3198e = this.mChildHelper.m3198e() - 1; m3198e >= 0; m3198e--) {
                AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3199d(m3198e));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    AbstractC0323l.C0326c recordPostLayoutInformation = this.mItemAnimator.recordPostLayoutInformation(this.mState, childViewHolderInt);
                    AbstractC0313c0 m2603h = this.mViewInfoStore.f71573b.m2603h(changedHolderKey, null);
                    if (m2603h == null || m2603h.shouldIgnore()) {
                        this.mViewInfoStore.m3214b(childViewHolderInt, recordPostLayoutInformation);
                    } else {
                        boolean m3212d = this.mViewInfoStore.m3212d(m2603h);
                        boolean m3212d2 = this.mViewInfoStore.m3212d(childViewHolderInt);
                        if (!m3212d || m2603h != childViewHolderInt) {
                            AbstractC0323l.C0326c m3211e = this.mViewInfoStore.m3211e(m2603h, 4);
                            this.mViewInfoStore.m3214b(childViewHolderInt, recordPostLayoutInformation);
                            AbstractC0323l.C0326c m3211e2 = this.mViewInfoStore.m3211e(childViewHolderInt, 8);
                            if (m3211e == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, m2603h);
                            } else {
                                animateChange(m2603h, childViewHolderInt, m3211e, m3211e2, m3212d, m3212d2);
                            }
                        } else {
                            this.mViewInfoStore.m3214b(childViewHolderInt, recordPostLayoutInformation);
                        }
                    }
                }
            }
            C25571b0 c25571b0 = this.mViewInfoStore;
            C25571b0.AbstractC25573b abstractC25573b = this.mViewInfoProcessCallback;
            int i = c25571b0.f71572a.f73025c;
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                AbstractC0313c0 m2576l = c25571b0.f71572a.m2576l(i);
                C25571b0.C25572a m2574n = c25571b0.f71572a.m2574n(i);
                int i2 = m2574n.f71575a;
                if ((i2 & 3) == 3) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.mLayout.removeAndRecycleView(m2576l.itemView, recyclerView.mRecycler);
                } else if ((i2 & 1) != 0) {
                    AbstractC0323l.C0326c c0326c = m2574n.f71576b;
                    if (c0326c == null) {
                        RecyclerView recyclerView2 = RecyclerView.this;
                        recyclerView2.mLayout.removeAndRecycleView(m2576l.itemView, recyclerView2.mRecycler);
                    } else {
                        AbstractC0323l.C0326c c0326c2 = m2574n.f71577c;
                        C0314d c0314d = (C0314d) abstractC25573b;
                        RecyclerView.this.mRecycler.m42718m(m2576l);
                        RecyclerView.this.animateDisappearance(m2576l, c0326c, c0326c2);
                    }
                } else if ((i2 & 14) == 14) {
                    RecyclerView.this.animateAppearance(m2576l, m2574n.f71576b, m2574n.f71577c);
                } else if ((i2 & 12) == 12) {
                    AbstractC0323l.C0326c c0326c3 = m2574n.f71576b;
                    AbstractC0323l.C0326c c0326c4 = m2574n.f71577c;
                    C0314d c0314d2 = (C0314d) abstractC25573b;
                    Objects.requireNonNull(c0314d2);
                    m2576l.setIsRecyclable(false);
                    RecyclerView recyclerView3 = RecyclerView.this;
                    if (recyclerView3.mDataSetHasChangedAfterLayout) {
                        if (recyclerView3.mItemAnimator.animateChange(m2576l, m2576l, c0326c3, c0326c4)) {
                            RecyclerView.this.postAnimationRunner();
                        }
                    } else if (recyclerView3.mItemAnimator.animatePersistence(m2576l, c0326c3, c0326c4)) {
                        RecyclerView.this.postAnimationRunner();
                    }
                } else if ((i2 & 4) != 0) {
                    AbstractC0323l.C0326c c0326c5 = m2574n.f71576b;
                    C0314d c0314d3 = (C0314d) abstractC25573b;
                    RecyclerView.this.mRecycler.m42718m(m2576l);
                    RecyclerView.this.animateDisappearance(m2576l, c0326c5, null);
                } else if ((i2 & 8) != 0) {
                    RecyclerView.this.animateAppearance(m2576l, m2574n.f71576b, m2574n.f71577c);
                }
                C25571b0.C25572a.m3207b(m2574n);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        C0347z c0347z2 = this.mState;
        c0347z2.f1349b = c0347z2.f1352e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        c0347z2.f1357j = false;
        c0347z2.f1358k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList<AbstractC0313c0> arrayList = this.mRecycler.f1325b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o.mPrefetchMaxObservedInInitialPrefetch) {
            abstractC0329o.mPrefetchMaxCountObserved = 0;
            abstractC0329o.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.m42717n();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        C25571b0 c25571b02 = this.mViewInfoStore;
        c25571b02.f71572a.clear();
        c25571b02.f71573b.m2608b();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        AbstractC0337s abstractC0337s = this.mInterceptingOnItemTouchListener;
        if (abstractC0337s == null) {
            if (motionEvent.getAction() != 0) {
                return findInterceptingOnItemTouchListener(motionEvent);
            }
            return false;
        }
        abstractC0337s.mo3155a(this, motionEvent);
        int action = motionEvent.getAction();
        if (action != 3 && action != 1) {
            return true;
        }
        this.mInterceptingOnItemTouchListener = null;
        return true;
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            AbstractC0337s abstractC0337s = this.mOnItemTouchListeners.get(i);
            if (abstractC0337s.mo3154b(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = abstractC0337s;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int i;
        int m3198e = this.mChildHelper.m3198e();
        if (m3198e == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        while (i4 < m3198e) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3199d(i4));
            if (childViewHolderInt.shouldIgnore()) {
                i = i3;
            } else {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                int i5 = i2;
                if (layoutPosition < i2) {
                    i5 = layoutPosition;
                }
                i2 = i5;
                i = i3;
                if (layoutPosition > i3) {
                    i = layoutPosition;
                    i2 = i5;
                }
            }
            i4++;
            i3 = i;
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        AbstractC0313c0 findViewHolderForAdapterPosition;
        AbstractC0313c0 findViewHolderForAdapterPosition2;
        C0347z c0347z = this.mState;
        int i = c0347z.f1359l;
        if (i == -1) {
            i = 0;
        }
        int m42710b = c0347z.m42710b();
        for (int i2 = i; i2 < m42710b && (findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i2)) != null; i2++) {
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        for (int min = Math.min(m42710b, i) - 1; min >= 0 && (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) != null; min--) {
            if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
        return null;
    }

    public static AbstractC0313c0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((C0334p) view.getLayoutParams()).f1314a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        C0334p c0334p = (C0334p) view.getLayoutParams();
        Rect rect2 = c0334p.f1315b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0334p).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0334p).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0334p).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0334p).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            View focusedChild = ((ViewGroup) view).getFocusedChild();
            view = focusedChild;
            if (focusedChild.getId() != -1) {
                id = focusedChild.getId();
                view = focusedChild;
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(StringConstant.DOT)) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    private C26605j getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new C26605j(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, AbstractC0313c0 abstractC0313c0, AbstractC0313c0 abstractC0313c02) {
        int m3198e = this.mChildHelper.m3198e();
        for (int i = 0; i < m3198e; i++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3199d(i));
            if (childViewHolderInt != abstractC0313c0 && getChangedHolderKey(childViewHolderInt) == j) {
                AbstractC0317g abstractC0317g = this.mAdapter;
                if (abstractC0317g == null || !abstractC0317g.hasStableIds()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(childViewHolderInt);
                    sb.append(" \n View Holder 2:");
                    sb.append(abstractC0313c0);
                    throw new IllegalStateException(C22128a.m8656W1(this, sb));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(childViewHolderInt);
                sb2.append(" \n View Holder 2:");
                sb2.append(abstractC0313c0);
                throw new IllegalStateException(C22128a.m8656W1(this, sb2));
            }
        }
        String str = "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0313c02 + " cannot be found but it is necessary for " + abstractC0313c0 + exceptionLabel();
    }

    private boolean hasUpdatedView() {
        int m3198e = this.mChildHelper.m3198e();
        for (int i = 0; i < m3198e; i++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3199d(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    private void initAutofill() {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int i = Build.VERSION.SDK_INT;
        if ((i >= 26 ? getImportantForAutofill() : 0) != 0 || i < 26) {
            return;
        }
        setImportantForAutofill(8);
    }

    private void initChildrenHelper() {
        this.mChildHelper = new C25583f(new C0315e());
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01e6, code lost:
        if ((r17 * r19) > 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0206, code lost:
        if ((r17 * r19) < 0) goto L100;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPreferredNextFocus(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.isPreferredNextFocus(android.view.View, android.view.View, int):boolean");
    }

    private void nestedScrollByInternal(int i, int i2, MotionEvent motionEvent, int i3) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null && !this.mLayoutSuppressed) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean canScrollHorizontally = abstractC0329o.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            int i4 = canScrollHorizontally ? 1 : 0;
            int i5 = i4;
            if (canScrollVertically) {
                i5 = i4 | 2;
            }
            startNestedScroll(i5, i3);
            int i6 = i;
            int i7 = i2;
            if (dispatchNestedPreScroll(canScrollHorizontally ? i : 0, canScrollVertically ? i2 : 0, this.mReusableIntPair, this.mScrollOffset, i3)) {
                int[] iArr2 = this.mReusableIntPair;
                i6 = i - iArr2[0];
                i7 = i2 - iArr2[1];
            }
            int i8 = canScrollHorizontally ? i6 : 0;
            int i9 = 0;
            if (canScrollVertically) {
                i9 = i7;
            }
            scrollByInternal(i8, i9, motionEvent, i3);
            GapWorker gapWorker = this.mGapWorker;
            if (gapWorker != null && (i6 != 0 || i7 != 0)) {
                gapWorker.m42769a(this, i6, i7);
            }
            stopNestedScroll(i3);
        }
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z;
        if (this.mDataSetHasChangedAfterLayout) {
            C25564a c25564a = this.mAdapterHelper;
            c25564a.m3226l(c25564a.f71555b);
            c25564a.m3226l(c25564a.f71556c);
            c25564a.f71559f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.m3228j();
        } else {
            this.mAdapterHelper.m3235c();
        }
        boolean z2 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f1357j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z = this.mDataSetHasChangedAfterLayout) || z2 || this.mLayout.mRequestedSimpleAnimations) && (!z || this.mAdapter.hasStableIds());
        C0347z c0347z = this.mState;
        boolean z3 = false;
        if (c0347z.f1357j) {
            z3 = false;
            if (z2) {
                z3 = false;
                if (!this.mDataSetHasChangedAfterLayout) {
                    z3 = false;
                    if (predictiveItemAnimationsEnabled()) {
                        z3 = true;
                    }
                }
            }
        }
        c0347z.f1358k = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    private void recoverFocusFromState() {
        View view;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mChildHelper.m3192k(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.m3198e() == 0) {
                requestFocus();
                return;
            }
        }
        AbstractC0313c0 findViewHolderForItemId = (this.mState.f1360m == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f1360m);
        if (findViewHolderForItemId == null || this.mChildHelper.m3192k(findViewHolderForItemId.itemView) || !findViewHolderForItemId.itemView.hasFocusable()) {
            view = null;
            if (this.mChildHelper.m3198e() > 0) {
                view = findNextViewToFocus();
            }
        } else {
            view = findViewHolderForItemId.itemView;
        }
        if (view == null) {
            return;
        }
        int i = this.mState.f1361n;
        View view2 = view;
        if (i != -1) {
            View findViewById = view.findViewById(i);
            view2 = view;
            if (findViewById != null) {
                view2 = view;
                if (findViewById.isFocusable()) {
                    view2 = findViewById;
                }
            }
        }
        view2.requestFocus();
    }

    private void releaseGlows() {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.mLeftGlow.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.mBottomGlow.isFinished();
        }
        if (z4) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0334p) {
            C0334p c0334p = (C0334p) layoutParams;
            if (!c0334p.f1316c) {
                Rect rect = c0334p.f1315b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        C0347z c0347z = this.mState;
        c0347z.f1360m = -1L;
        c0347z.f1359l = -1;
        c0347z.f1361n = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    private void saveFocusInfo() {
        View focusedChild = (!this.mPreserveFocusAfterLayout || !hasFocus() || this.mAdapter == null) ? null : getFocusedChild();
        AbstractC0313c0 findContainingViewHolder = focusedChild == null ? null : findContainingViewHolder(focusedChild);
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f1360m = this.mAdapter.hasStableIds() ? findContainingViewHolder.getItemId() : (char) 65535;
        this.mState.f1359l = this.mDataSetHasChangedAfterLayout ? -1 : findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAbsoluteAdapterPosition();
        this.mState.f1361n = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(AbstractC0317g abstractC0317g, boolean z, boolean z2) {
        AbstractC0317g abstractC0317g2 = this.mAdapter;
        if (abstractC0317g2 != null) {
            abstractC0317g2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        C25564a c25564a = this.mAdapterHelper;
        c25564a.m3226l(c25564a.f71555b);
        c25564a.m3226l(c25564a.f71556c);
        c25564a.f71559f = 0;
        AbstractC0317g abstractC0317g3 = this.mAdapter;
        this.mAdapter = abstractC0317g;
        if (abstractC0317g != null) {
            abstractC0317g.registerAdapterDataObserver(this.mObserver);
            abstractC0317g.onAttachedToRecyclerView(this);
        }
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.onAdapterChanged(abstractC0317g3, this.mAdapter);
        }
        C0341v c0341v = this.mRecycler;
        AbstractC0317g abstractC0317g4 = this.mAdapter;
        c0341v.m42729b();
        C0339u m42727d = c0341v.m42727d();
        Objects.requireNonNull(m42727d);
        if (abstractC0317g3 != null) {
            m42727d.f1319b--;
        }
        if (!z && m42727d.f1319b == 0) {
            for (int i = 0; i < m42727d.f1318a.size(); i++) {
                m42727d.f1318a.valueAt(i).f1320a.clear();
            }
        }
        if (abstractC0317g4 != null) {
            m42727d.f1319b++;
        }
        this.mState.f1353f = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.m42753c();
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.stopSmoothScroller();
        }
    }

    public void absorbGlows(int i, int i2) {
        if (i < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i);
            }
        } else if (i > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o == null || !abstractC0329o.onAddFocusables(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(AbstractC0328n abstractC0328n) {
        addItemDecoration(abstractC0328n, -1);
    }

    public void addItemDecoration(AbstractC0328n abstractC0328n, int i) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(abstractC0328n);
        } else {
            this.mItemDecorations.add(i, abstractC0328n);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(AbstractC0335q abstractC0335q) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(abstractC0335q);
    }

    public void addOnItemTouchListener(AbstractC0337s abstractC0337s) {
        this.mOnItemTouchListeners.add(abstractC0337s);
    }

    public void addOnScrollListener(AbstractC0338t abstractC0338t) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(abstractC0338t);
    }

    public void addRecyclerListener(AbstractC0342w abstractC0342w) {
        MediaSessionCompat.m43214o(abstractC0342w != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(abstractC0342w);
    }

    public void animateAppearance(AbstractC0313c0 abstractC0313c0, AbstractC0323l.C0326c c0326c, AbstractC0323l.C0326c c0326c2) {
        abstractC0313c0.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(abstractC0313c0, c0326c, c0326c2)) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(AbstractC0313c0 abstractC0313c0, AbstractC0323l.C0326c c0326c, AbstractC0323l.C0326c c0326c2) {
        addAnimatingView(abstractC0313c0);
        abstractC0313c0.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(abstractC0313c0, c0326c, c0326c2)) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C(str)));
            }
            throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        } else if (this.mDispatchScrollCounter <= 0) {
        } else {
            new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("")));
        }
    }

    public boolean canReuseUpdatedViewHolder(AbstractC0313c0 abstractC0313c0) {
        AbstractC0323l abstractC0323l = this.mItemAnimator;
        return abstractC0323l == null || abstractC0323l.canReuseUpdatedViewHolder(abstractC0313c0, abstractC0313c0.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0334p) && this.mLayout.checkLayoutParams((C0334p) layoutParams);
    }

    public void clearOldPositions() {
        int m3195h = this.mChildHelper.m3195h();
        for (int i = 0; i < m3195h; i++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        for (int i2 = 0; i2 < size; i2++) {
            c0341v.f1326c.get(i2).clearOldPosition();
        }
        int size2 = c0341v.f1324a.size();
        for (int i3 = 0; i3 < size2; i3++) {
            c0341v.f1324a.get(i3).clearOldPosition();
        }
        ArrayList<AbstractC0313c0> arrayList = c0341v.f1325b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i4 = 0; i4 < size3; i4++) {
                c0341v.f1325b.get(i4).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<AbstractC0335q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<AbstractC0338t> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0329o abstractC0329o = this.mLayout;
        int i = 0;
        if (abstractC0329o == null) {
            return 0;
        }
        if (abstractC0329o.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return i;
    }

    public void considerReleasingGlowsOnScroll(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.mLeftGlow.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.mRightGlow.onRelease();
                    z2 = z | this.mRightGlow.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.mTopGlow.onRelease();
                    z3 = z2 | this.mTopGlow.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.mBottomGlow.onRelease();
                    z4 = z3 | this.mBottomGlow.isFinished();
                }
            }
        }
        if (z4) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Method method = C26516h.f74306b;
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
        } else if (!this.mAdapterHelper.m3231g()) {
        } else {
            C25564a c25564a = this.mAdapterHelper;
            int i = c25564a.f71559f;
            if ((i & 4) != 0) {
                boolean z = false;
                if ((i & 11) != 0) {
                    z = true;
                }
                if (!z) {
                    Method method2 = C26516h.f74306b;
                    Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.m3228j();
                    if (!this.mLayoutWasDefered) {
                        if (hasUpdatedView()) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.m3236b();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll();
                    Trace.endSection();
                    return;
                }
            }
            if (!c25564a.m3231g()) {
                return;
            }
            Method method3 = C26516h.f74306b;
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
        }
    }

    public void defaultOnMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        AtomicInteger atomicInteger = C26614s.f74505a;
        setMeasuredDimension(AbstractC0329o.chooseSize(i, paddingRight + paddingLeft, getMinimumWidth()), AbstractC0329o.chooseSize(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void dispatchChildAttached(View view) {
        AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        AbstractC0317g abstractC0317g = this.mAdapter;
        if (abstractC0317g != null && childViewHolderInt != null) {
            abstractC0317g.onViewAttachedToWindow(childViewHolderInt);
        }
        List<AbstractC0335q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        AbstractC0317g abstractC0317g = this.mAdapter;
        if (abstractC0317g != null && childViewHolderInt != null) {
            abstractC0317g.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<AbstractC0335q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    public void dispatchLayout() {
        if (this.mAdapter == null || this.mLayout == null) {
            return;
        }
        this.mState.f1356i = false;
        boolean z = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f1351d == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else {
            C25564a c25564a = this.mAdapterHelper;
            boolean z2 = false;
            if (!c25564a.f71556c.isEmpty()) {
                z2 = false;
                if (!c25564a.f71555b.isEmpty()) {
                    z2 = true;
                }
            }
            if (z2 || z || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
            }
        }
        dispatchLayoutStep3();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m1599a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m1598b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m1597c(i, i2, iArr, iArr2, 0);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m1597c(i, i2, iArr, iArr2, i3);
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m1595e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m1596d(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().m1595e(i, i2, i3, i4, iArr, i5, null);
    }

    public void dispatchOnScrollStateChanged(int i) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.onScrollStateChanged(i);
        }
        onScrollStateChanged(i);
        AbstractC0338t abstractC0338t = this.mScrollListener;
        if (abstractC0338t != null) {
            abstractC0338t.onScrollStateChanged(this, i);
        }
        List<AbstractC0338t> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i);
            }
        }
    }

    public void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        AbstractC0338t abstractC0338t = this.mScrollListener;
        if (abstractC0338t != null) {
            abstractC0338t.onScrolled(this, i, i2);
        }
        List<AbstractC0338t> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            AbstractC0313c0 abstractC0313c0 = this.mPendingAccessibilityImportanceChange.get(size);
            if (abstractC0313c0.itemView.getParent() == this && !abstractC0313c0.shouldIgnore() && (i = abstractC0313c0.mPendingAccessibilityState) != -1) {
                View view = abstractC0313c0.itemView;
                AtomicInteger atomicInteger = C26614s.f74505a;
                view.setImportantForAccessibility(i);
                abstractC0313c0.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        boolean z2 = z;
        if (edgeEffect3 != null) {
            z2 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.mClipToPadding) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.mTopGlow;
                z2 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        boolean z3 = z2;
        if (edgeEffect5 != null) {
            z3 = z2;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(paddingTop, -width);
                EdgeEffect edgeEffect6 = this.mRightGlow;
                z3 = z2 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        boolean z4 = z3;
        if (edgeEffect7 != null) {
            z4 = z3;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.mClipToPadding) {
                    canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.mBottomGlow;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z4 = z3 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (!z4 && this.mItemAnimator != null && this.mItemDecorations.size() > 0 && this.mItemAnimator.isRunning()) {
            z4 = true;
        }
        if (z4) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect m42738a = this.mEdgeEffectFactory.m42738a(this);
        this.mBottomGlow = m42738a;
        if (this.mClipToPadding) {
            m42738a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m42738a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect m42738a = this.mEdgeEffectFactory.m42738a(this);
        this.mLeftGlow = m42738a;
        if (this.mClipToPadding) {
            m42738a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m42738a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect m42738a = this.mEdgeEffectFactory.m42738a(this);
        this.mRightGlow = m42738a;
        if (this.mClipToPadding) {
            m42738a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m42738a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect m42738a = this.mEdgeEffectFactory.m42738a(this);
        this.mTopGlow = m42738a;
        if (this.mClipToPadding) {
            m42738a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m42738a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        StringBuilder m8728C = C22128a.m8728C(StringConstant.SPACE);
        m8728C.append(super.toString());
        m8728C.append(", adapter:");
        m8728C.append(this.mAdapter);
        m8728C.append(", layout:");
        m8728C.append(this.mLayout);
        m8728C.append(", context:");
        m8728C.append(getContext());
        return m8728C.toString();
    }

    public final void fillRemainingScrollValues(C0347z c0347z) {
        if (getScrollState() != 2) {
            Objects.requireNonNull(c0347z);
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f1293c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        Objects.requireNonNull(c0347z);
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public View findChildViewUnder(float f, float f2) {
        for (int m3198e = this.mChildHelper.m3198e() - 1; m3198e >= 0; m3198e--) {
            View m3199d = this.mChildHelper.m3199d(m3198e);
            float translationX = m3199d.getTranslationX();
            float translationY = m3199d.getTranslationY();
            if (f >= m3199d.getLeft() + translationX && f <= m3199d.getRight() + translationX && f2 >= m3199d.getTop() + translationY && f2 <= m3199d.getBottom() + translationY) {
                return m3199d;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent viewParent;
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || viewParent == this || !(viewParent instanceof View)) {
                break;
            }
            view = (View) viewParent;
            parent = view.getParent();
        }
        if (viewParent != this) {
            view = null;
        }
        return view;
    }

    public AbstractC0313c0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        return findContainingItemView == null ? null : getChildViewHolder(findContainingItemView);
    }

    public AbstractC0313c0 findViewHolderForAdapterPosition(int i) {
        AbstractC0313c0 abstractC0313c0 = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int m3195h = this.mChildHelper.m3195h();
        int i2 = 0;
        while (i2 < m3195h) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i2));
            AbstractC0313c0 abstractC0313c02 = abstractC0313c0;
            if (childViewHolderInt != null) {
                abstractC0313c02 = abstractC0313c0;
                if (!childViewHolderInt.isRemoved()) {
                    abstractC0313c02 = abstractC0313c0;
                    if (getAdapterPositionInRecyclerView(childViewHolderInt) != i) {
                        continue;
                    } else if (!this.mChildHelper.m3192k(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    } else {
                        abstractC0313c02 = childViewHolderInt;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC0313c0 = abstractC0313c02;
        }
        return abstractC0313c0;
    }

    public AbstractC0313c0 findViewHolderForItemId(long j) {
        AbstractC0317g abstractC0317g = this.mAdapter;
        AbstractC0313c0 abstractC0313c0 = null;
        AbstractC0313c0 abstractC0313c02 = null;
        if (abstractC0317g != null) {
            if (abstractC0317g.hasStableIds()) {
                int m3195h = this.mChildHelper.m3195h();
                int i = 0;
                while (true) {
                    abstractC0313c02 = abstractC0313c0;
                    if (i >= m3195h) {
                        break;
                    }
                    AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i));
                    AbstractC0313c0 abstractC0313c03 = abstractC0313c0;
                    if (childViewHolderInt != null) {
                        abstractC0313c03 = abstractC0313c0;
                        if (!childViewHolderInt.isRemoved()) {
                            abstractC0313c03 = abstractC0313c0;
                            if (childViewHolderInt.getItemId() != j) {
                                continue;
                            } else if (!this.mChildHelper.m3192k(childViewHolderInt.itemView)) {
                                return childViewHolderInt;
                            } else {
                                abstractC0313c03 = childViewHolderInt;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                    abstractC0313c0 = abstractC0313c03;
                }
            } else {
                abstractC0313c02 = null;
            }
        }
        return abstractC0313c02;
    }

    public AbstractC0313c0 findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public AbstractC0313c0 findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 findViewHolderForPosition(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            n3.b0.a.f r0 = r0.mChildHelper
            int r0 = r0.m3195h()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        Le:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L7e
            r0 = r3
            n3.b0.a.f r0 = r0.mChildHelper
            r1 = r8
            android.view.View r0 = r0.m3196g(r1)
            androidx.recyclerview.widget.RecyclerView$c0 r0 = getChildViewHolderInt(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L74
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.isRemoved()
            if (r0 != 0) goto L74
            r0 = r5
            if (r0 == 0) goto L4b
            r0 = r9
            int r0 = r0.mPosition
            r1 = r4
            if (r0 == r1) goto L5b
            r0 = r7
            r10 = r0
            goto L74
        L4b:
            r0 = r9
            int r0 = r0.getLayoutPosition()
            r1 = r4
            if (r0 == r1) goto L5b
            r0 = r7
            r10 = r0
            goto L74
        L5b:
            r0 = r3
            n3.b0.a.f r0 = r0.mChildHelper
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.m3192k(r1)
            if (r0 == 0) goto L71
            r0 = r9
            r10 = r0
            goto L74
        L71:
            r0 = r9
            return r0
        L74:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto Le
        L7e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$c0");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0129 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z2 = this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutSuppressed;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (!z2 || !(i == 2 || i == 1)) {
            view2 = focusFinder.findNextFocus(this, view, i);
            if (view2 == null && z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
        } else {
            if (this.mLayout.canScrollVertically()) {
                int i2 = i == 2 ? 130 : 33;
                boolean z3 = focusFinder.findNextFocus(this, view, i2) == null;
                z = z3;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i = i2;
                    z = z3;
                }
            } else {
                z = false;
            }
            boolean z4 = z;
            int i3 = i;
            if (!z) {
                z4 = z;
                i3 = i;
                if (this.mLayout.canScrollHorizontally()) {
                    int i4 = (this.mLayout.getLayoutDirection() == 1) ^ (i == 2) ? 66 : 17;
                    boolean z5 = focusFinder.findNextFocus(this, view, i4) == null;
                    if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                        i = i4;
                    }
                    z4 = z5;
                    i3 = i;
                }
            }
            if (z4) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i3, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i3);
            i = i3;
        }
        if (view2 == null || view2.hasFocusable()) {
            if (!isPreferredNextFocus(view, view2, i)) {
                view2 = super.focusSearch(view, i);
            }
            return view2;
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        } else {
            requestChildOnScreen(view2, null);
            return view;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            return abstractC0329o.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            return abstractC0329o.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            return abstractC0329o.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(C22128a.m8656W1(this, C22128a.m8728C("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0317g getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(AbstractC0313c0 abstractC0313c0) {
        int i;
        int i2 = -1;
        if (!abstractC0313c0.hasAnyOfTheFlags(524)) {
            if (abstractC0313c0.isBound()) {
                C25564a c25564a = this.mAdapterHelper;
                int i3 = abstractC0313c0.mPosition;
                int size = c25564a.f71555b.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        i2 = i3;
                        break;
                    }
                    C25564a.C25566b c25566b = c25564a.f71555b.get(i4);
                    int i5 = c25566b.f71560a;
                    if (i5 == 1) {
                        i = i3;
                        if (c25566b.f71561b <= i3) {
                            i = i3 + c25566b.f71563d;
                        }
                    } else if (i5 == 2) {
                        int i6 = c25566b.f71561b;
                        i = i3;
                        if (i6 <= i3) {
                            int i7 = c25566b.f71563d;
                            if (i6 + i7 > i3) {
                                i2 = -1;
                                break;
                            }
                            i = i3 - i7;
                        } else {
                            continue;
                        }
                    } else if (i5 != 8) {
                        i = i3;
                    } else {
                        int i8 = c25566b.f71561b;
                        if (i8 == i3) {
                            i = c25566b.f71563d;
                        } else {
                            int i9 = i3;
                            if (i8 < i3) {
                                i9 = i3 - 1;
                            }
                            i = i9;
                            if (c25566b.f71563d <= i9) {
                                i = i9 + 1;
                            }
                        }
                    }
                    i4++;
                    i3 = i;
                }
            } else {
                i2 = -1;
            }
        }
        return i2;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0329o abstractC0329o = this.mLayout;
        return abstractC0329o != null ? abstractC0329o.getBaseline() : super.getBaseline();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public long getChangedHolderKey(AbstractC0313c0 abstractC0313c0) {
        return this.mAdapter.hasStableIds() ? abstractC0313c0.getItemId() : abstractC0313c0.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        AbstractC0321j abstractC0321j = this.mChildDrawingOrderCallback;
        return abstractC0321j == null ? super.getChildDrawingOrder(i, i2) : abstractC0321j.m42739a(i, i2);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public long getChildItemId(View view) {
        AbstractC0317g abstractC0317g = this.mAdapter;
        char c = 65535;
        if (abstractC0317g != null) {
            if (!abstractC0317g.hasStableIds()) {
                c = 65535;
            } else {
                AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
                c = 65535;
                if (childViewHolderInt != null) {
                    c = childViewHolderInt.getItemId();
                }
            }
        }
        return c;
    }

    public int getChildLayoutPosition(View view) {
        AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getLayoutPosition() : -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public AbstractC0313c0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public C25623w getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public C0322k getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public AbstractC0323l getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        C0334p c0334p = (C0334p) view.getLayoutParams();
        if (!c0334p.f1316c) {
            return c0334p.f1315b;
        }
        if (this.mState.f1354g && (c0334p.m42735b() || c0334p.f1314a.isInvalid())) {
            return c0334p.f1315b;
        }
        Rect rect = c0334p.f1315b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i2 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0334p.f1316c = false;
        return rect;
    }

    public AbstractC0328n getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i < 0 || i >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
        }
        return this.mItemDecorations.get(i);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public AbstractC0329o getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0336r getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public C0339u getRecycledViewPool() {
        return this.mRecycler.m42727d();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m1593g(0);
    }

    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().m1594f(i) != null;
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.m3231g();
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new C25564a(new C0316f());
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(C22128a.m8656W1(this, C22128a.m8728C("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new C25596j(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C0297R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(C0297R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(C0297R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        AbstractC0323l abstractC0323l = this.mItemAnimator;
        return abstractC0323l != null && abstractC0323l.isRunning();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f74497d;
    }

    public void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i);
        awakenScrollBars();
    }

    public void markItemDecorInsetsDirty() {
        int m3195h = this.mChildHelper.m3195h();
        for (int i = 0; i < m3195h; i++) {
            ((C0334p) this.mChildHelper.m3196g(i).getLayoutParams()).f1316c = true;
        }
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0334p c0334p = (C0334p) c0341v.f1326c.get(i2).itemView.getLayoutParams();
            if (c0334p != null) {
                c0334p.f1316c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int m3195h = this.mChildHelper.m3195h();
        for (int i = 0; i < m3195h; i++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0313c0 abstractC0313c0 = c0341v.f1326c.get(i2);
            if (abstractC0313c0 != null) {
                abstractC0313c0.addFlags(6);
                abstractC0313c0.addChangePayload(null);
            }
        }
        AbstractC0317g abstractC0317g = RecyclerView.this.mAdapter;
        if (abstractC0317g == null || !abstractC0317g.hasStableIds()) {
            c0341v.m42724g();
        }
    }

    public void nestedScrollBy(int i, int i2) {
        nestedScrollByInternal(i, i2, null, 1);
    }

    public void offsetChildrenHorizontal(int i) {
        int m3198e = this.mChildHelper.m3198e();
        for (int i2 = 0; i2 < m3198e; i2++) {
            this.mChildHelper.m3199d(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int m3198e = this.mChildHelper.m3198e();
        for (int i2 = 0; i2 < m3198e; i2++) {
            this.mChildHelper.m3199d(i2).offsetTopAndBottom(i);
        }
    }

    public void offsetPositionRecordsForInsert(int i, int i2) {
        int m3195h = this.mChildHelper.m3195h();
        for (int i3 = 0; i3 < m3195h; i3++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                childViewHolderInt.offsetPosition(i2, false);
                this.mState.f1353f = true;
            }
        }
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        for (int i4 = 0; i4 < size; i4++) {
            AbstractC0313c0 abstractC0313c0 = c0341v.f1326c.get(i4);
            if (abstractC0313c0 != null && abstractC0313c0.mPosition >= i) {
                abstractC0313c0.offsetPosition(i2, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int m3195h = this.mChildHelper.m3195h();
        if (i < i2) {
            i5 = i;
            i4 = i2;
            i3 = -1;
        } else {
            i4 = i;
            i5 = i2;
            i3 = 1;
        }
        for (int i11 = 0; i11 < m3195h; i11++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i11));
            if (childViewHolderInt != null && (i10 = childViewHolderInt.mPosition) >= i5 && i10 <= i4) {
                if (i10 == i) {
                    childViewHolderInt.offsetPosition(i2 - i, false);
                } else {
                    childViewHolderInt.offsetPosition(i3, false);
                }
                this.mState.f1353f = true;
            }
        }
        C0341v c0341v = this.mRecycler;
        if (i < i2) {
            i7 = i;
            i6 = i2;
            i8 = -1;
        } else {
            i6 = i;
            i8 = 1;
            i7 = i2;
        }
        int size = c0341v.f1326c.size();
        for (int i12 = 0; i12 < size; i12++) {
            AbstractC0313c0 abstractC0313c0 = c0341v.f1326c.get(i12);
            if (abstractC0313c0 != null && (i9 = abstractC0313c0.mPosition) >= i7 && i9 <= i6) {
                if (i9 == i) {
                    abstractC0313c0.offsetPosition(i2 - i, false);
                } else {
                    abstractC0313c0.offsetPosition(i8, false);
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m3195h = this.mChildHelper.m3195h();
        for (int i4 = 0; i4 < m3195h; i4++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i5 = childViewHolderInt.mPosition;
                if (i5 >= i3) {
                    childViewHolderInt.offsetPosition(-i2, z);
                    this.mState.f1353f = true;
                } else if (i5 >= i) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.mState.f1353f = true;
                }
            }
        }
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        while (true) {
            int i6 = size - 1;
            if (i6 < 0) {
                requestLayout();
                return;
            }
            AbstractC0313c0 abstractC0313c0 = c0341v.f1326c.get(i6);
            size = i6;
            if (abstractC0313c0 != null) {
                int i7 = abstractC0313c0.mPosition;
                if (i7 >= i3) {
                    abstractC0313c0.offsetPosition(-i2, z);
                    size = i6;
                } else {
                    size = i6;
                    if (i7 >= i) {
                        abstractC0313c0.addFlags(8);
                        c0341v.m42723h(i6);
                        size = i6;
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        boolean z = true;
        this.mIsAttached = true;
        if (!this.mFirstLayoutComplete || isLayoutRequested()) {
            z = false;
        }
        this.mFirstLayoutComplete = z;
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<GapWorker> threadLocal = GapWorker.f1247e;
            GapWorker gapWorker = threadLocal.get();
            this.mGapWorker = gapWorker;
            if (gapWorker == null) {
                this.mGapWorker = new GapWorker();
                AtomicInteger atomicInteger = C26614s.f74505a;
                Display display = getDisplay();
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (display != null) {
                        float refreshRate = display.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                GapWorker gapWorker2 = this.mGapWorker;
                gapWorker2.f1251c = 1.0E9f / f;
                threadLocal.set(gapWorker2);
            }
            this.mGapWorker.f1249a.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        AbstractC0323l abstractC0323l = this.mItemAnimator;
        if (abstractC0323l != null) {
            abstractC0323l.endAnimations();
        }
        stopScroll();
        this.mIsAttached = false;
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        Objects.requireNonNull(this.mViewInfoStore);
        do {
        } while (C25571b0.C25572a.f71574d.mo1689a() != null);
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        gapWorker.f1249a.remove(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    public void onExitLayoutOrScroll(boolean z) {
        int i = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i;
        if (i < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (!z) {
                return;
            }
            dispatchContentChangedIfNecessary();
            dispatchPendingImportantForAccessibilityChanges();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0097  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 179
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o == null) {
            return false;
        }
        boolean canScrollHorizontally = abstractC0329o.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            boolean z3 = canScrollHorizontally;
            if (canScrollVertically) {
                z3 = canScrollHorizontally | 2;
            }
            startNestedScroll(z3, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i = this.mInitialTouchX;
                int i2 = this.mInitialTouchY;
                if (!canScrollHorizontally || Math.abs(x2 - i) <= this.mTouchSlop) {
                    z = false;
                } else {
                    this.mLastTouchX = x2;
                    z = true;
                }
                boolean z4 = z;
                if (canScrollVertically) {
                    z4 = z;
                    if (Math.abs(y2 - i2) > this.mTouchSlop) {
                        this.mLastTouchY = y2;
                        z4 = true;
                    }
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x3;
            this.mInitialTouchX = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y3;
            this.mInitialTouchY = y3;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        if (this.mScrollState == 1) {
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Method method = C26516h.f74306b;
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o == null) {
            defaultOnMeasure(i, i2);
        } else if (abstractC0329o.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            this.mLastAutoMeasureSkippedDueToExact = z;
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.f1351d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i, i2);
            this.mState.f1356i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f1356i = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
        } else if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                C0347z c0347z = this.mState;
                if (c0347z.f1358k) {
                    c0347z.f1354g = true;
                } else {
                    this.mAdapterHelper.m3235c();
                    this.mState.f1354g = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.f1358k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC0317g abstractC0317g = this.mAdapter;
            if (abstractC0317g != null) {
                this.mState.f1352e = abstractC0317g.getItemCount();
            } else {
                this.mState.f1352e = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
            stopInterceptRequestLayout(false);
            this.mState.f1354g = false;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.f713a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.f1288c = savedState2.f1288c;
        } else {
            AbstractC0329o abstractC0329o = this.mLayout;
            if (abstractC0329o != null) {
                savedState.f1288c = abstractC0329o.onSaveInstanceState();
            } else {
                savedState.f1288c = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(int i, int i2) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x02fc, code lost:
        if (r14 != 0) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        AtomicInteger atomicInteger = C26614s.f74505a;
        postOnAnimation(runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(AbstractC0313c0 abstractC0313c0, AbstractC0323l.C0326c c0326c) {
        abstractC0313c0.setFlags(0, 8192);
        if (this.mState.f1355h && abstractC0313c0.isUpdated() && !abstractC0313c0.isRemoved() && !abstractC0313c0.shouldIgnore()) {
            this.mViewInfoStore.f71573b.m2600k(getChangedHolderKey(abstractC0313c0), abstractC0313c0);
        }
        this.mViewInfoStore.m3213c(abstractC0313c0, c0326c);
    }

    public void removeAndRecycleViews() {
        AbstractC0323l abstractC0323l = this.mItemAnimator;
        if (abstractC0323l != null) {
            abstractC0323l.endAnimations();
        }
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.m42729b();
    }

    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        C25583f c25583f = this.mChildHelper;
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        boolean z = true;
        if (indexOfChild == -1) {
            c25583f.m3190m(view);
        } else if (c25583f.f71607b.m3186d(indexOfChild)) {
            c25583f.f71607b.m3184f(indexOfChild);
            c25583f.m3190m(view);
            ((C0315e) c25583f.f71606a).m42750c(indexOfChild);
        } else {
            z = false;
        }
        if (z) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.m42718m(childViewHolderInt);
            this.mRecycler.m42721j(childViewHolderInt);
        }
        stopInterceptRequestLayout(!z);
        return z;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(C22128a.m8656W1(this, sb));
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(AbstractC0328n abstractC0328n) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null) {
            abstractC0329o.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(abstractC0328n);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i));
            return;
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(AbstractC0335q abstractC0335q) {
        List<AbstractC0335q> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(abstractC0335q);
    }

    public void removeOnItemTouchListener(AbstractC0337s abstractC0337s) {
        this.mOnItemTouchListeners.remove(abstractC0337s);
        if (this.mInterceptingOnItemTouchListener == abstractC0337s) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(AbstractC0338t abstractC0338t) {
        List<AbstractC0338t> list = this.mScrollListeners;
        if (list != null) {
            list.remove(abstractC0338t);
        }
    }

    public void removeRecyclerListener(AbstractC0342w abstractC0342w) {
        this.mRecyclerListeners.remove(abstractC0342w);
    }

    public void repositionShadowingViews() {
        AbstractC0313c0 abstractC0313c0;
        int m3198e = this.mChildHelper.m3198e();
        for (int i = 0; i < m3198e; i++) {
            View m3199d = this.mChildHelper.m3199d(i);
            AbstractC0313c0 childViewHolder = getChildViewHolder(m3199d);
            if (childViewHolder != null && (abstractC0313c0 = childViewHolder.mShadowingHolder) != null) {
                View view = abstractC0313c0.itemView;
                int left = m3199d.getLeft();
                int top = m3199d.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            this.mOnItemTouchListeners.get(i).mo3153c(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int m3195h = this.mChildHelper.m3195h();
        for (int i = 0; i < m3195h; i++) {
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m3196g(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null && !this.mLayoutSuppressed) {
            boolean canScrollHorizontally = abstractC0329o.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (!canScrollHorizontally && !canScrollVertically) {
                return;
            }
            if (!canScrollHorizontally) {
                i = 0;
            }
            if (!canScrollVertically) {
                i2 = 0;
            }
            scrollByInternal(i, i2, null, 0);
        }
    }

    public boolean scrollByInternal(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i, i2, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i5 = i9;
            i4 = i8;
            i7 = i - i8;
            i6 = i2 - i9;
        } else {
            i5 = 0;
            i4 = 0;
            i7 = 0;
            i6 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i4, i5, i7, i6, this.mScrollOffset, i3, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i10 = iArr4[0];
        int i11 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        this.mLastTouchX = i12 - iArr5[0];
        this.mLastTouchY -= iArr5[1];
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                if (!((motionEvent.getSource() & 8194) == 8194)) {
                    pullGlows(motionEvent.getX(), i7 - i10, motionEvent.getY(), i6 - i11);
                }
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (i4 != 0 || i5 != 0) {
            dispatchOnScrolled(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        boolean z2 = true;
        if (!z) {
            z2 = true;
            if (i4 == 0) {
                z2 = i5 != 0;
            }
        }
        return z2;
    }

    public void scrollStep(int i, int i2, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Method method = C26516h.f74306b;
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int scrollHorizontallyBy = i != 0 ? this.mLayout.scrollHorizontallyBy(i, this.mRecycler, this.mState) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.mLayout.scrollVerticallyBy(i2, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void scrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o == null) {
            return;
        }
        abstractC0329o.scrollToPosition(i);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C25623w c25623w) {
        this.mAccessibilityDelegate = c25623w;
        C26614s.m1564q(this, c25623w);
    }

    public void setAdapter(AbstractC0317g abstractC0317g) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0317g, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0321j abstractC0321j) {
        if (abstractC0321j == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = abstractC0321j;
        setChildrenDrawingOrderEnabled(abstractC0321j != null);
    }

    public boolean setChildImportantForAccessibilityInternal(AbstractC0313c0 abstractC0313c0, int i) {
        if (isComputingLayout()) {
            abstractC0313c0.mPendingAccessibilityState = i;
            this.mPendingAccessibilityImportanceChange.add(abstractC0313c0);
            return false;
        }
        View view = abstractC0313c0.itemView;
        AtomicInteger atomicInteger = C26614s.f74505a;
        view.setImportantForAccessibility(i);
        return true;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0322k c0322k) {
        Objects.requireNonNull(c0322k);
        this.mEdgeEffectFactory = c0322k;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(AbstractC0323l abstractC0323l) {
        AbstractC0323l abstractC0323l2 = this.mItemAnimator;
        if (abstractC0323l2 != null) {
            abstractC0323l2.endAnimations();
            this.mItemAnimator.setListener(null);
        }
        this.mItemAnimator = abstractC0323l;
        if (abstractC0323l != null) {
            abstractC0323l.setListener(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i) {
        C0341v c0341v = this.mRecycler;
        c0341v.f1328e = i;
        c0341v.m42717n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0329o abstractC0329o) {
        if (abstractC0329o == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            AbstractC0323l abstractC0323l = this.mItemAnimator;
            if (abstractC0323l != null) {
                abstractC0323l.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.m42729b();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.m42729b();
        }
        C25583f c25583f = this.mChildHelper;
        C25583f.C25584a c25584a = c25583f.f71607b;
        c25584a.f71609a = 0L;
        C25583f.C25584a c25584a2 = c25584a.f71610b;
        if (c25584a2 != null) {
            c25584a2.m3183g();
        }
        int size = c25583f.f71608c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C25583f.AbstractC25585b abstractC25585b = c25583f.f71606a;
            View view = c25583f.f71608c.get(size);
            C0315e c0315e = (C0315e) abstractC25585b;
            Objects.requireNonNull(c0315e);
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
            c25583f.f71608c.remove(size);
        }
        C0315e c0315e2 = (C0315e) c25583f.f71606a;
        int m42751b = c0315e2.m42751b();
        for (int i = 0; i < m42751b; i++) {
            View m42752a = c0315e2.m42752a(i);
            RecyclerView.this.dispatchChildDetached(m42752a);
            m42752a.clearAnimation();
        }
        RecyclerView.this.removeAllViews();
        this.mLayout = abstractC0329o;
        if (abstractC0329o != null) {
            if (abstractC0329o.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("LayoutManager ");
                sb.append(abstractC0329o);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(C22128a.m8656W1(abstractC0329o.mRecyclerView, sb));
            }
            abstractC0329o.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.m42717n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C26605j scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f74497d) {
            View view = scrollingChildHelper.f74496c;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.stopNestedScroll();
        }
        scrollingChildHelper.f74497d = z;
    }

    public void setOnFlingListener(AbstractC0336r abstractC0336r) {
        this.mOnFlingListener = abstractC0336r;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0338t abstractC0338t) {
        this.mScrollListener = abstractC0338t;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(C0339u c0339u) {
        C0341v c0341v = this.mRecycler;
        C0339u c0339u2 = c0341v.f1330g;
        if (c0339u2 != null) {
            c0339u2.f1319b--;
        }
        c0341v.f1330g = c0339u;
        if (c0339u == null || RecyclerView.this.getAdapter() == null) {
            return;
        }
        c0341v.f1330g.f1319b++;
    }

    @Deprecated
    public void setRecyclerListener(AbstractC0342w abstractC0342w) {
        this.mRecyclerListener = abstractC0342w;
    }

    public void setScrollState(int i) {
        if (i == this.mScrollState) {
            return;
        }
        this.mScrollState = i;
        if (i != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 1) {
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    public void setViewCacheExtension(AbstractC0309a0 abstractC0309a0) {
        Objects.requireNonNull(this.mRecycler);
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (isComputingLayout()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            if (contentChangeTypes == 0) {
                contentChangeTypes = 0;
            }
            this.mEatenAccessibilityChangeFlags |= contentChangeTypes;
            return true;
        }
        return false;
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, Integer.MIN_VALUE);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3) {
        smoothScrollBy(i, i2, interpolator, i3, false);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0329o abstractC0329o = this.mLayout;
        if (abstractC0329o != null && !this.mLayoutSuppressed) {
            int i4 = i;
            if (!abstractC0329o.canScrollHorizontally()) {
                i4 = 0;
            }
            if (!this.mLayout.canScrollVertically()) {
                i2 = 0;
            }
            if (i4 == 0 && i2 == 0) {
                return;
            }
            if (!(i3 == Integer.MIN_VALUE || i3 > 0)) {
                scrollBy(i4, i2);
                return;
            }
            if (z) {
                int i5 = 0;
                if (i4 != 0) {
                    i5 = 1;
                }
                int i6 = i5;
                if (i2 != 0) {
                    i6 = i5 | 2;
                }
                startNestedScroll(i6, 1);
            }
            this.mViewFlinger.m42754b(i4, i2, i3, interpolator);
        }
    }

    public void smoothScrollToPosition(int i) {
        AbstractC0329o abstractC0329o;
        if (!this.mLayoutSuppressed && (abstractC0329o = this.mLayout) != null) {
            abstractC0329o.smoothScrollToPosition(this, this.mState, i);
        }
    }

    public void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m1592h(i, 0);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().m1592h(i, i2);
    }

    public void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().m1591i(0);
    }

    public void stopNestedScroll(int i) {
        getScrollingChildHelper().m1591i(i);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(AbstractC0317g abstractC0317g, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0317g, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i, int i2, Object obj) {
        int i3;
        int m3195h = this.mChildHelper.m3195h();
        int i4 = i2 + i;
        for (int i5 = 0; i5 < m3195h; i5++) {
            View m3196g = this.mChildHelper.m3196g(i5);
            AbstractC0313c0 childViewHolderInt = getChildViewHolderInt(m3196g);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i3 = childViewHolderInt.mPosition) >= i && i3 < i4) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((C0334p) m3196g.getLayoutParams()).f1316c = true;
            }
        }
        C0341v c0341v = this.mRecycler;
        int size = c0341v.f1326c.size();
        while (true) {
            int i6 = size - 1;
            if (i6 >= 0) {
                AbstractC0313c0 abstractC0313c0 = c0341v.f1326c.get(i6);
                if (abstractC0313c0 == null) {
                    size = i6;
                } else {
                    int i7 = abstractC0313c0.mPosition;
                    size = i6;
                    if (i7 >= i) {
                        size = i6;
                        if (i7 < i4) {
                            abstractC0313c0.addFlags(2);
                            c0341v.m42723h(i6);
                            size = i6;
                        }
                    }
                }
            } else {
                return;
            }
        }
    }
}
