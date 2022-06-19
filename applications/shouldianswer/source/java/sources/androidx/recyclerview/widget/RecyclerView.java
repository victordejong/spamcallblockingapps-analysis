package androidx.recyclerview.widget;

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
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
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
import androidx.core.p022f.C0502e;
import androidx.core.p023g.AbstractC0541j;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0539h;
import androidx.core.p023g.C0543l;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0561v;
import androidx.core.p023g.p024a.C0506b;
import androidx.core.p023g.p024a.C0510d;
import androidx.core.p025os.C0590b;
import androidx.customview.p026a.AbstractC0610a;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C0928a;
import androidx.recyclerview.widget.C0984a;
import androidx.recyclerview.widget.C0987b;
import androidx.recyclerview.widget.C1021m;
import androidx.recyclerview.widget.C1024n;
import androidx.recyclerview.widget.RunnableC1006e;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.api.Api;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC0541j {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final boolean DEBUG = false;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    C1017j mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private AbstractC0964m mActiveOnItemTouchListener;
    AbstractC0945a mAdapter;
    C0984a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private AbstractC0948d mChildDrawingOrderCallback;
    C0987b mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private C0949e mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    RunnableC1006e mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    boolean mIsAttached;
    AbstractC0950f mItemAnimator;
    private AbstractC0950f.AbstractC0952b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<AbstractC0955h> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    AbstractC0956i mLayout;
    boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final C0970r mObserver;
    private List<AbstractC0962k> mOnChildAttachStateListeners;
    private AbstractC0963l mOnFlingListener;
    private final ArrayList<AbstractC0964m> mOnItemTouchListeners;
    final List<AbstractC0977w> mPendingAccessibilityImportanceChange;
    private SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    RunnableC1006e.C1008a mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final C0968p mRecycler;
    AbstractC0969q mRecyclerListener;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    final int[] mScrollConsumed;
    private AbstractC0965n mScrollListener;
    private List<AbstractC0965n> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    final int[] mScrollStepConsumed;
    private C0543l mScrollingChildHelper;
    final C0974t mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final RunnableC0976v mViewFlinger;
    private final C1024n.AbstractC1026b mViewInfoProcessCallback;
    final C1024n mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    private static final int[] CLIP_TO_PADDING_ATTR = {16842987};

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        Parcelable f2939a;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2939a = parcel.readParcelable(classLoader == null ? AbstractC0956i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        void m4952a(SavedState savedState) {
            this.f2939a = savedState.f2939a;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f2939a, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public static abstract class AbstractC0945a<VH extends AbstractC0977w> {
        private final C0946b mObservable = new C0946b();
        private boolean mHasStableIds = false;

        public final void bindViewHolder(VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            C0590b.m6068a(RecyclerView.TRACE_BIND_VIEW_TAG);
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof C0961j) {
                ((C0961j) layoutParams).mInsetsDirty = true;
            }
            C0590b.m6069a();
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                C0590b.m6068a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.mItemViewType = i;
                C0590b.m6069a();
                return onCreateViewHolder;
            } catch (Throwable th) {
                C0590b.m6069a();
                throw th;
            }
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.m4948a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.m4945b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.m4947a(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.m4946a(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.m4944b(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.m4942d(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.m4947a(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.m4946a(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.m4944b(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.m4943c(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.m4943c(i, 1);
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

        public void registerAdapterDataObserver(AbstractC0947c abstractC0947c) {
            this.mObservable.registerObserver(abstractC0947c);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.mHasStableIds = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void unregisterAdapterDataObserver(AbstractC0947c abstractC0947c) {
            this.mObservable.unregisterObserver(abstractC0947c);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public static class C0946b extends Observable<AbstractC0947c> {
        C0946b() {
        }

        /* renamed from: a */
        public void m4947a(int i, int i2) {
            m4946a(i, i2, null);
        }

        /* renamed from: a */
        public void m4946a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0947c) this.mObservers.get(size)).mo4257a(i, i2, obj);
            }
        }

        /* renamed from: a */
        public boolean m4948a() {
            return !this.mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m4945b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0947c) this.mObservers.get(size)).mo4260a();
            }
        }

        /* renamed from: b */
        public void m4944b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0947c) this.mObservers.get(size)).mo4256b(i, i2);
            }
        }

        /* renamed from: c */
        public void m4943c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0947c) this.mObservers.get(size)).mo4255c(i, i2);
            }
        }

        /* renamed from: d */
        public void m4942d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0947c) this.mObservers.get(size)).mo4258a(i, i2, 1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static abstract class AbstractC0947c {
        /* renamed from: a */
        public void mo4260a() {
        }

        /* renamed from: a */
        public void mo4259a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo4258a(int i, int i2, int i3) {
        }

        /* renamed from: a */
        public void mo4257a(int i, int i2, Object obj) {
            mo4259a(i, i2);
        }

        /* renamed from: b */
        public void mo4256b(int i, int i2) {
        }

        /* renamed from: c */
        public void mo4255c(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public interface AbstractC0948d {
        /* renamed from: a */
        int m4941a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static class C0949e {
        /* renamed from: a */
        protected EdgeEffect m4940a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static abstract class AbstractC0950f {

        /* renamed from: a */
        private AbstractC0952b f2940a = null;

        /* renamed from: b */
        private ArrayList<AbstractC0951a> f2941b = new ArrayList<>();

        /* renamed from: c */
        private long f2942c = 120;

        /* renamed from: d */
        private long f2943d = 120;

        /* renamed from: e */
        private long f2944e = 250;

        /* renamed from: f */
        private long f2945f = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$a.class */
        public interface AbstractC0951a {
            /* renamed from: a */
            void m4927a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$b.class */
        public interface AbstractC0952b {
            /* renamed from: a */
            void mo4924a(AbstractC0977w abstractC0977w);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$c.class */
        public static class C0953c {

            /* renamed from: a */
            public int f2946a;

            /* renamed from: b */
            public int f2947b;

            /* renamed from: c */
            public int f2948c;

            /* renamed from: d */
            public int f2949d;

            /* renamed from: a */
            public C0953c m4926a(AbstractC0977w abstractC0977w) {
                return m4925a(abstractC0977w, 0);
            }

            /* renamed from: a */
            public C0953c m4925a(AbstractC0977w abstractC0977w, int i) {
                View view = abstractC0977w.itemView;
                this.f2946a = view.getLeft();
                this.f2947b = view.getTop();
                this.f2948c = view.getRight();
                this.f2949d = view.getBottom();
                return this;
            }
        }

        /* renamed from: e */
        static int m4935e(AbstractC0977w abstractC0977w) {
            int i = abstractC0977w.mFlags & 14;
            if (abstractC0977w.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = abstractC0977w.getOldPosition();
                int adapterPosition = abstractC0977w.getAdapterPosition();
                i2 = i;
                if (oldPosition != -1) {
                    i2 = i;
                    if (adapterPosition != -1) {
                        i2 = i;
                        if (oldPosition != adapterPosition) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public C0953c m4938a(C0974t c0974t, AbstractC0977w abstractC0977w) {
            return m4928j().m4926a(abstractC0977w);
        }

        /* renamed from: a */
        public C0953c m4937a(C0974t c0974t, AbstractC0977w abstractC0977w, int i, List<Object> list) {
            return m4928j().m4926a(abstractC0977w);
        }

        /* renamed from: a */
        public abstract void mo4179a();

        /* renamed from: a */
        void m4939a(AbstractC0952b abstractC0952b) {
            this.f2940a = abstractC0952b;
        }

        /* renamed from: a */
        public abstract boolean mo4554a(AbstractC0977w abstractC0977w, C0953c c0953c, C0953c c0953c2);

        /* renamed from: a */
        public abstract boolean mo4553a(AbstractC0977w abstractC0977w, AbstractC0977w abstractC0977w2, C0953c c0953c, C0953c c0953c2);

        /* renamed from: a */
        public boolean mo4161a(AbstractC0977w abstractC0977w, List<Object> list) {
            return mo4547h(abstractC0977w);
        }

        /* renamed from: b */
        public abstract boolean mo4171b();

        /* renamed from: b */
        public abstract boolean mo4550b(AbstractC0977w abstractC0977w, C0953c c0953c, C0953c c0953c2);

        /* renamed from: c */
        public abstract boolean mo4548c(AbstractC0977w abstractC0977w, C0953c c0953c, C0953c c0953c2);

        /* renamed from: d */
        public abstract void mo4168d();

        /* renamed from: d */
        public abstract void mo4167d(AbstractC0977w abstractC0977w);

        /* renamed from: e */
        public long m4936e() {
            return this.f2944e;
        }

        /* renamed from: f */
        public long m4934f() {
            return this.f2942c;
        }

        /* renamed from: f */
        public final void m4933f(AbstractC0977w abstractC0977w) {
            m4931g(abstractC0977w);
            AbstractC0952b abstractC0952b = this.f2940a;
            if (abstractC0952b != null) {
                abstractC0952b.mo4924a(abstractC0977w);
            }
        }

        /* renamed from: g */
        public long m4932g() {
            return this.f2943d;
        }

        /* renamed from: g */
        public void m4931g(AbstractC0977w abstractC0977w) {
        }

        /* renamed from: h */
        public long m4930h() {
            return this.f2945f;
        }

        /* renamed from: h */
        public boolean mo4547h(AbstractC0977w abstractC0977w) {
            return true;
        }

        /* renamed from: i */
        public final void m4929i() {
            int size = this.f2941b.size();
            for (int i = 0; i < size; i++) {
                this.f2941b.get(i).m4927a();
            }
            this.f2941b.clear();
        }

        /* renamed from: j */
        public C0953c m4928j() {
            return new C0953c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public class C0954g implements AbstractC0950f.AbstractC0952b {
        C0954g() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f.AbstractC0952b
        /* renamed from: a */
        public void mo4924a(AbstractC0977w abstractC0977w) {
            abstractC0977w.setIsRecyclable(true);
            if (abstractC0977w.mShadowedHolder != null && abstractC0977w.mShadowingHolder == null) {
                abstractC0977w.mShadowedHolder = null;
            }
            abstractC0977w.mShadowingHolder = null;
            if (abstractC0977w.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(abstractC0977w.itemView) || !abstractC0977w.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(abstractC0977w.itemView, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static abstract class AbstractC0955h {
        @Deprecated
        public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, C0974t c0974t) {
            getItemOffsets(rect, ((C0961j) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, C0974t c0974t) {
            onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, C0974t c0974t) {
            onDrawOver(canvas, recyclerView);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC0956i {
        C0987b mChildHelper;
        private int mHeight;
        private int mHeightMode;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        AbstractC0971s mSmoothScroller;
        private int mWidth;
        private int mWidthMode;
        private final C1021m.AbstractC1023b mHorizontalBoundCheckCallback = new C1021m.AbstractC1023b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public int mo4533a() {
                return AbstractC0956i.this.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public int mo4531a(View view) {
                return AbstractC0956i.this.getDecoratedLeft(view) - ((C0961j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public View mo4532a(int i) {
                return AbstractC0956i.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: b */
            public int mo4530b() {
                return AbstractC0956i.this.getWidth() - AbstractC0956i.this.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: b */
            public int mo4529b(View view) {
                return AbstractC0956i.this.getDecoratedRight(view) + ((C0961j) view.getLayoutParams()).rightMargin;
            }
        };
        private final C1021m.AbstractC1023b mVerticalBoundCheckCallback = new C1021m.AbstractC1023b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public int mo4533a() {
                return AbstractC0956i.this.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public int mo4531a(View view) {
                return AbstractC0956i.this.getDecoratedTop(view) - ((C0961j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: a */
            public View mo4532a(int i) {
                return AbstractC0956i.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: b */
            public int mo4530b() {
                return AbstractC0956i.this.getHeight() - AbstractC0956i.this.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.C1021m.AbstractC1023b
            /* renamed from: b */
            public int mo4529b(View view) {
                return AbstractC0956i.this.getDecoratedBottom(view) + ((C0961j) view.getLayoutParams()).bottomMargin;
            }
        };
        C1021m mHorizontalBoundCheck = new C1021m(this.mHorizontalBoundCheckCallback);
        C1021m mVerticalBoundCheck = new C1021m(this.mVerticalBoundCheckCallback);
        boolean mRequestedSimpleAnimations = false;
        boolean mIsAttachedToWindow = false;
        boolean mAutoMeasure = false;
        private boolean mMeasurementCacheEnabled = true;
        private boolean mItemPrefetchEnabled = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$a.class */
        public interface AbstractC0959a {
            /* renamed from: b */
            void mo4602b(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$b.class */
        public static class C0960b {

            /* renamed from: a */
            public int f2953a;

            /* renamed from: b */
            public int f2954b;

            /* renamed from: c */
            public boolean f2955c;

            /* renamed from: d */
            public boolean f2956d;
        }

        private void addViewInt(View view, int i, boolean z) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.m4515e(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.m4514f(childViewHolderInt);
            }
            C0961j c0961j = (C0961j) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.m4683a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int m4678b = this.mChildHelper.m4678b(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.mChildHelper.m4680b();
                }
                if (m4678b == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
                } else if (m4678b != i2) {
                    this.mRecyclerView.mLayout.moveView(m4678b, i2);
                }
            } else {
                this.mChildHelper.m4682a(view, i, false);
                c0961j.mInsetsDirty = true;
                AbstractC0971s abstractC0971s = this.mSmoothScroller;
                if (abstractC0971s != null && abstractC0971s.m4857h()) {
                    this.mSmoothScroller.m4863b(view);
                }
            }
            if (c0961j.mPendingInvalidate) {
                childViewHolderInt.itemView.invalidate();
                c0961j.mPendingInvalidate = false;
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
            this.mChildHelper.m4672e(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
            if (r5 == 1073741824) goto L29;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r9 = r0
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r10 = r0
                r0 = r8
                if (r0 == 0) goto L3e
                r0 = r7
                if (r0 < 0) goto L18
                goto L42
            L18:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L78
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L34
                r0 = r5
                if (r0 == 0) goto L2d
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L34
            L2d:
                r0 = 0
                r5 = r0
                r0 = r5
                r4 = r0
                goto L37
            L34:
                r0 = r10
                r4 = r0
            L37:
                r0 = r4
                r6 = r0
                r0 = r5
                r4 = r0
                goto L7d
            L3e:
                r0 = r7
                if (r0 < 0) goto L4a
            L42:
                r0 = r7
                r6 = r0
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L7d
            L4a:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L57
                r0 = r5
                r4 = r0
                r0 = r10
                r6 = r0
                goto L7d
            L57:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L78
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L6f
                r0 = r10
                r6 = r0
                r0 = r9
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L7d
            L6f:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                r0 = r10
                r6 = r0
                goto L7d
            L78:
                r0 = 0
                r6 = r0
                r0 = r9
                r4 = r0
            L7d:
                r0 = r6
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0956i.getChildMeasureSpec(int, int, int, int, boolean):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
            if (r6 >= 0) goto L9;
         */
        @java.lang.Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, boolean r7) {
            /*
                r0 = 0
                r8 = r0
                r0 = 0
                r1 = r4
                r2 = r5
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r4 = r0
                r0 = r7
                if (r0 == 0) goto L1e
                r0 = r6
                if (r0 < 0) goto L16
                goto L22
            L16:
                r0 = 0
                r4 = r0
                r0 = r8
                r5 = r0
                goto L3b
            L1e:
                r0 = r6
                if (r0 < 0) goto L2a
            L22:
                r0 = r6
                r4 = r0
            L24:
                r0 = 1073741824(0x40000000, float:2.0)
                r5 = r0
                goto L3b
            L2a:
                r0 = r6
                r1 = -1
                if (r0 != r1) goto L32
                goto L24
            L32:
                r0 = r6
                r1 = -2
                if (r0 != r1) goto L16
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r5 = r0
            L3b:
                r0 = r4
                r1 = r5
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0956i.getChildMeasureSpec(int, int, int, boolean):int");
        }

        private int[] getChildRectangleOnScreenScrollAmount(RecyclerView recyclerView, View view, Rect rect, boolean z) {
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

        public static C0960b getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
            C0960b c0960b = new C0960b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0928a.C0930b.RecyclerView, i, i2);
            c0960b.f2953a = obtainStyledAttributes.getInt(C0928a.C0930b.RecyclerView_android_orientation, 1);
            c0960b.f2954b = obtainStyledAttributes.getInt(C0928a.C0930b.RecyclerView_spanCount, 1);
            c0960b.f2955c = obtainStyledAttributes.getBoolean(C0928a.C0930b.RecyclerView_reverseLayout, false);
            c0960b.f2956d = obtainStyledAttributes.getBoolean(C0928a.C0930b.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return c0960b;
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

        private void scrapOrRecycleView(C0968p c0968p, int i, View view) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                removeViewAt(i);
                c0968p.m4888b(childViewHolderInt);
                return;
            }
            detachViewAt(i);
            c0968p.m4884c(view);
            this.mRecyclerView.mViewInfoStore.m4512h(childViewHolderInt);
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
            attachView(view, i, (C0961j) view.getLayoutParams());
        }

        public void attachView(View view, int i, C0961j c0961j) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.m4515e(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.m4514f(childViewHolderInt);
            }
            this.mChildHelper.m4683a(view, i, c0961j, childViewHolderInt.isRemoved());
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

        public boolean checkLayoutParams(C0961j c0961j) {
            return c0961j != null;
        }

        public void collectAdjacentPrefetchPositions(int i, int i2, C0974t c0974t, AbstractC0959a abstractC0959a) {
        }

        public void collectInitialPrefetchPositions(int i, AbstractC0959a abstractC0959a) {
        }

        public int computeHorizontalScrollExtent(C0974t c0974t) {
            return 0;
        }

        public int computeHorizontalScrollOffset(C0974t c0974t) {
            return 0;
        }

        public int computeHorizontalScrollRange(C0974t c0974t) {
            return 0;
        }

        public int computeVerticalScrollExtent(C0974t c0974t) {
            return 0;
        }

        public int computeVerticalScrollOffset(C0974t c0974t) {
            return 0;
        }

        public int computeVerticalScrollRange(C0974t c0974t) {
            return 0;
        }

        public void detachAndScrapAttachedViews(C0968p c0968p) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(c0968p, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, C0968p c0968p) {
            scrapOrRecycleView(c0968p, this.mChildHelper.m4678b(view), view);
        }

        public void detachAndScrapViewAt(int i, C0968p c0968p) {
            scrapOrRecycleView(c0968p, i, getChildAt(i));
        }

        public void detachView(View view) {
            int m4678b = this.mChildHelper.m4678b(view);
            if (m4678b >= 0) {
                detachViewInternal(m4678b, view);
            }
        }

        public void detachViewAt(int i) {
            detachViewInternal(i, getChildAt(i));
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, C0968p c0968p) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, c0968p);
        }

        public void endAnimation(View view) {
            if (this.mRecyclerView.mItemAnimator != null) {
                this.mRecyclerView.mItemAnimator.mo4167d(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public View findContainingItemView(View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.m4675c(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.m4849a() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract C0961j generateDefaultLayoutParams();

        public C0961j generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new C0961j(context, attributeSet);
        }

        public C0961j generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0961j ? new C0961j((C0961j) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0961j((ViewGroup.MarginLayoutParams) layoutParams) : new C0961j(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((C0961j) view.getLayoutParams()).mDecorInsets.bottom;
        }

        public View getChildAt(int i) {
            C0987b c0987b = this.mChildHelper;
            return c0987b != null ? c0987b.m4679b(i) : null;
        }

        public int getChildCount() {
            C0987b c0987b = this.mChildHelper;
            return c0987b != null ? c0987b.m4680b() : 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(C0968p c0968p, C0974t c0974t) {
            RecyclerView recyclerView = this.mRecyclerView;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (canScrollHorizontally()) {
                        i = this.mRecyclerView.mAdapter.getItemCount();
                    }
                }
            }
            return i;
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((C0961j) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((C0961j) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.m4675c(focusedChild)) {
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
            AbstractC0945a adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            return adapter != null ? adapter.getItemCount() : 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return C0552u.m6245f(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((C0961j) view.getLayoutParams()).mDecorInsets.left;
        }

        public int getMinimumHeight() {
            return C0552u.m6234m(this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return C0552u.m6235l(this.mRecyclerView);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? C0552u.m6236k(recyclerView) : 0;
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
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? C0552u.m6237j(recyclerView) : 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        public int getPosition(View view) {
            return ((C0961j) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(View view) {
            return ((C0961j) view.getLayoutParams()).mDecorInsets.right;
        }

        public int getRowCountForAccessibility(C0968p c0968p, C0974t c0974t) {
            RecyclerView recyclerView = this.mRecyclerView;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (canScrollVertically()) {
                        i = this.mRecyclerView.mAdapter.getItemCount();
                    }
                }
            }
            return i;
        }

        public int getSelectionModeForAccessibility(C0968p c0968p, C0974t c0974t) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((C0961j) view.getLayoutParams()).mDecorInsets.top;
        }

        public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0961j) view.getLayoutParams()).mDecorInsets;
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
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
            }
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.m4513g(childViewHolderInt);
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

        public boolean isLayoutHierarchical(C0968p c0968p, C0974t c0974t) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            AbstractC0971s abstractC0971s = this.mSmoothScroller;
            return abstractC0971s != null && abstractC0971s.m4857h();
        }

        public boolean isViewPartiallyVisible(View view, boolean z, boolean z2) {
            boolean z3 = this.mHorizontalBoundCheck.m4539a(view, 24579) && this.mVerticalBoundCheck.m4539a(view, 24579);
            return z ? z3 : !z3;
        }

        public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
            Rect rect = ((C0961j) view.getLayoutParams()).mDecorInsets;
            view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
            C0961j c0961j = (C0961j) view.getLayoutParams();
            Rect rect = c0961j.mDecorInsets;
            view.layout(i + rect.left + c0961j.leftMargin, i2 + rect.top + c0961j.topMargin, (i3 - rect.right) - c0961j.rightMargin, (i4 - rect.bottom) - c0961j.bottomMargin);
        }

        public void measureChild(View view, int i, int i2) {
            C0961j c0961j = (C0961j) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i + i3 + i4, c0961j.width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i2 + i5 + i6, c0961j.height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, c0961j)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(View view, int i, int i2) {
            C0961j c0961j = (C0961j) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + c0961j.leftMargin + c0961j.rightMargin + i + i3 + i4, c0961j.width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + c0961j.topMargin + c0961j.bottomMargin + i2 + i5 + i6, c0961j.height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, c0961j)) {
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

        public void onAdapterChanged(AbstractC0945a abstractC0945a, AbstractC0945a abstractC0945a2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, C0968p c0968p) {
            onDetachedFromWindow(recyclerView);
        }

        public View onFocusSearchFailed(View view, int i, C0968p c0968p, C0974t c0974t) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityEvent);
        }

        public void onInitializeAccessibilityEvent(C0968p c0968p, C0974t c0974t, AccessibilityEvent accessibilityEvent) {
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
            if (this.mRecyclerView.mAdapter == null) {
                return;
            }
            accessibilityEvent.setItemCount(this.mRecyclerView.mAdapter.getItemCount());
        }

        public void onInitializeAccessibilityNodeInfo(C0510d c0510d) {
            onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, c0510d);
        }

        public void onInitializeAccessibilityNodeInfo(C0968p c0968p, C0974t c0974t, C0510d c0510d) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                c0510d.m6455a(8192);
                c0510d.m6399k(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                c0510d.m6455a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                c0510d.m6399k(true);
            }
            c0510d.m6442a(C0510d.C0512b.m6377a(getRowCountForAccessibility(c0968p, c0974t), getColumnCountForAccessibility(c0968p, c0974t), isLayoutHierarchical(c0968p, c0974t), getSelectionModeForAccessibility(c0968p, c0974t)));
        }

        public void onInitializeAccessibilityNodeInfoForItem(View view, C0510d c0510d) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.m4675c(childViewHolderInt.itemView)) {
                return;
            }
            onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, c0510d);
        }

        public void onInitializeAccessibilityNodeInfoForItem(C0968p c0968p, C0974t c0974t, View view, C0510d c0510d) {
            int i = 0;
            int position = canScrollVertically() ? getPosition(view) : 0;
            if (canScrollHorizontally()) {
                i = getPosition(view);
            }
            c0510d.m6432b(C0510d.C0513c.m6376a(position, 1, i, 1, false, false));
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

        public void onLayoutChildren(C0968p c0968p, C0974t c0974t) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void onLayoutCompleted(C0974t c0974t) {
        }

        public void onMeasure(C0968p c0968p, C0974t c0974t, int i, int i2) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, C0974t c0974t, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i) {
        }

        void onSmoothScrollerStopped(AbstractC0971s abstractC0971s) {
            if (this.mSmoothScroller == abstractC0971s) {
                this.mSmoothScroller = null;
            }
        }

        public boolean performAccessibilityAction(int i, Bundle bundle) {
            return performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, i, bundle);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean performAccessibilityAction(androidx.recyclerview.widget.RecyclerView.C0968p r5, androidx.recyclerview.widget.RecyclerView.C0974t r6, int r7, android.os.Bundle r8) {
            /*
                Method dump skipped, instructions count: 186
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0956i.performAccessibilityAction(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t, int, android.os.Bundle):boolean");
        }

        public boolean performAccessibilityActionForItem(View view, int i, Bundle bundle) {
            return performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, i, bundle);
        }

        public boolean performAccessibilityActionForItem(C0968p c0968p, C0974t c0974t, View view, int i, Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                C0552u.m6265a(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.m4685a(childCount);
            }
        }

        public void removeAndRecycleAllViews(C0968p c0968p) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, c0968p);
                }
            }
        }

        void removeAndRecycleScrapInt(C0968p c0968p) {
            int m4879e = c0968p.m4879e();
            for (int i = m4879e - 1; i >= 0; i--) {
                View m4878e = c0968p.m4878e(i);
                AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(m4878e);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(m4878e, false);
                    }
                    if (this.mRecyclerView.mItemAnimator != null) {
                        this.mRecyclerView.mItemAnimator.mo4167d(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    c0968p.m4889b(m4878e);
                }
            }
            c0968p.m4876f();
            if (m4879e > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, C0968p c0968p) {
            removeView(view);
            c0968p.m4901a(view);
        }

        public void removeAndRecycleViewAt(int i, C0968p c0968p) {
            View childAt = getChildAt(i);
            removeViewAt(i);
            c0968p.m4901a(childAt);
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
            this.mChildHelper.m4684a(view);
        }

        public void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                this.mChildHelper.m4685a(i);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(recyclerView, view, rect, z);
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

        public int scrollHorizontallyBy(int i, C0968p c0968p, C0974t c0974t) {
            return 0;
        }

        public void scrollToPosition(int i) {
        }

        public int scrollVerticallyBy(int i, C0968p c0968p, C0974t c0974t) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z) {
            this.mAutoMeasure = z;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
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
                recyclerView.mRecycler.m4893b();
            }
        }

        void setMeasureSpecs(int i, int i2) {
            this.mWidth = View.MeasureSpec.getSize(i);
            this.mWidthMode = View.MeasureSpec.getMode(i);
            if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i2);
            this.mHeightMode = View.MeasureSpec.getMode(i2);
            if (this.mHeightMode != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
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
            setMeasuredDimension(chooseSize(i, width + paddingLeft + paddingRight, getMinimumWidth()), chooseSize(i2, height + paddingTop + getPaddingBottom(), getMinimumHeight()));
        }

        void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MAX_VALUE;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i8 = i4;
                if (rect.left < i4) {
                    i8 = rect.left;
                }
                int i9 = i5;
                if (rect.right > i5) {
                    i9 = rect.right;
                }
                int i10 = i7;
                if (rect.top < i7) {
                    i10 = rect.top;
                }
                int i11 = i6;
                if (rect.bottom > i6) {
                    i11 = rect.bottom;
                }
                i3++;
                i7 = i10;
                i4 = i8;
                i5 = i9;
                i6 = i11;
            }
            this.mRecyclerView.mTempRect.set(i4, i7, i5, i6);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.mMeasurementCacheEnabled = z;
        }

        void setRecyclerView(RecyclerView recyclerView) {
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

        public boolean shouldMeasureChild(View view, int i, int i2, C0961j c0961j) {
            return view.isLayoutRequested() || !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getWidth(), i, c0961j.width) || !isMeasurementUpToDate(view.getHeight(), i2, c0961j.height);
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        public boolean shouldReMeasureChild(View view, int i, int i2, C0961j c0961j) {
            return !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getMeasuredWidth(), i, c0961j.width) || !isMeasurementUpToDate(view.getMeasuredHeight(), i2, c0961j.height);
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, C0974t c0974t, int i) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void startSmoothScroll(AbstractC0971s abstractC0971s) {
            AbstractC0971s abstractC0971s2 = this.mSmoothScroller;
            if (abstractC0971s2 != null && abstractC0971s != abstractC0971s2 && abstractC0971s2.m4857h()) {
                this.mSmoothScroller.m4859f();
            }
            this.mSmoothScroller = abstractC0971s;
            this.mSmoothScroller.m4864a(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View view) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        void stopSmoothScroller() {
            AbstractC0971s abstractC0971s = this.mSmoothScroller;
            if (abstractC0971s != null) {
                abstractC0971s.m4859f();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public static class C0961j extends ViewGroup.MarginLayoutParams {
        final Rect mDecorInsets = new Rect();
        boolean mInsetsDirty = true;
        boolean mPendingInvalidate = false;
        AbstractC0977w mViewHolder;

        public C0961j(int i, int i2) {
            super(i, i2);
        }

        public C0961j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0961j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0961j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0961j(C0961j c0961j) {
            super((ViewGroup.LayoutParams) c0961j);
        }

        public int getViewAdapterPosition() {
            return this.mViewHolder.getAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.needsUpdate();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public interface AbstractC0962k {
        /* renamed from: a */
        void m4923a(View view);

        /* renamed from: b */
        void m4922b(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0963l {
        /* renamed from: a */
        public abstract boolean m4921a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public interface AbstractC0964m {
        /* renamed from: a */
        void mo3991a(boolean z);

        /* renamed from: a */
        boolean mo3992a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: b */
        void mo3990b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static abstract class AbstractC0965n {
        /* renamed from: a */
        public void mo3989a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: a */
        public void mo572a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static class C0966o {

        /* renamed from: a */
        SparseArray<C0967a> f2957a = new SparseArray<>();

        /* renamed from: b */
        private int f2958b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$a.class */
        public static class C0967a {

            /* renamed from: a */
            final ArrayList<AbstractC0977w> f2959a = new ArrayList<>();

            /* renamed from: b */
            int f2960b = 5;

            /* renamed from: c */
            long f2961c = 0;

            /* renamed from: d */
            long f2962d = 0;

            C0967a() {
            }
        }

        /* renamed from: b */
        private C0967a m4912b(int i) {
            C0967a c0967a = this.f2957a.get(i);
            C0967a c0967a2 = c0967a;
            if (c0967a == null) {
                c0967a2 = new C0967a();
                this.f2957a.put(i, c0967a2);
            }
            return c0967a2;
        }

        /* renamed from: a */
        long m4916a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: a */
        public AbstractC0977w m4919a(int i) {
            C0967a c0967a = this.f2957a.get(i);
            if (c0967a == null || c0967a.f2959a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC0977w> arrayList = c0967a.f2959a;
            return arrayList.remove(arrayList.size() - 1);
        }

        /* renamed from: a */
        public void m4920a() {
            for (int i = 0; i < this.f2957a.size(); i++) {
                this.f2957a.valueAt(i).f2959a.clear();
            }
        }

        /* renamed from: a */
        void m4918a(int i, long j) {
            C0967a m4912b = m4912b(i);
            m4912b.f2961c = m4916a(m4912b.f2961c, j);
        }

        /* renamed from: a */
        void m4915a(AbstractC0945a abstractC0945a, AbstractC0945a abstractC0945a2, boolean z) {
            if (abstractC0945a != null) {
                m4909c();
            }
            if (!z && this.f2958b == 0) {
                m4920a();
            }
            if (abstractC0945a2 != null) {
                m4913b();
            }
        }

        /* renamed from: a */
        public void m4914a(AbstractC0977w abstractC0977w) {
            int itemViewType = abstractC0977w.getItemViewType();
            ArrayList<AbstractC0977w> arrayList = m4912b(itemViewType).f2959a;
            if (this.f2957a.get(itemViewType).f2960b <= arrayList.size()) {
                return;
            }
            abstractC0977w.resetInternal();
            arrayList.add(abstractC0977w);
        }

        /* renamed from: a */
        boolean m4917a(int i, long j, long j2) {
            long j3 = m4912b(i).f2961c;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: b */
        void m4913b() {
            this.f2958b++;
        }

        /* renamed from: b */
        void m4911b(int i, long j) {
            C0967a m4912b = m4912b(i);
            m4912b.f2962d = m4916a(m4912b.f2962d, j);
        }

        /* renamed from: b */
        boolean m4910b(int i, long j, long j2) {
            long j3 = m4912b(i).f2962d;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: c */
        void m4909c() {
            this.f2958b--;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public final class C0968p {

        /* renamed from: e */
        C0966o f2967e;

        /* renamed from: i */
        private AbstractC0975u f2971i;

        /* renamed from: a */
        final ArrayList<AbstractC0977w> f2963a = new ArrayList<>();

        /* renamed from: b */
        ArrayList<AbstractC0977w> f2964b = null;

        /* renamed from: c */
        final ArrayList<AbstractC0977w> f2965c = new ArrayList<>();

        /* renamed from: g */
        private final List<AbstractC0977w> f2969g = Collections.unmodifiableList(this.f2963a);

        /* renamed from: h */
        private int f2970h = 2;

        /* renamed from: d */
        int f2966d = 2;

        public C0968p() {
            RecyclerView.this = r5;
        }

        /* renamed from: a */
        private void m4900a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m4900a((ViewGroup) childAt, true);
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

        /* renamed from: a */
        private boolean m4895a(AbstractC0977w abstractC0977w, int i, int i2, long j) {
            abstractC0977w.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = abstractC0977w.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j == RecyclerView.FOREVER_NS || this.f2967e.m4910b(itemViewType, nanoTime, j)) {
                RecyclerView.this.mAdapter.bindViewHolder(abstractC0977w, i);
                this.f2967e.m4911b(abstractC0977w.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
                m4877e(abstractC0977w);
                if (!RecyclerView.this.mState.m4849a()) {
                    return true;
                }
                abstractC0977w.mPreLayoutPosition = i2;
                return true;
            }
            return false;
        }

        /* renamed from: e */
        private void m4877e(AbstractC0977w abstractC0977w) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = abstractC0977w.itemView;
                if (C0552u.m6247e(view) == 0) {
                    C0552u.m6258b(view, 1);
                }
                if (C0552u.m6260b(view)) {
                    return;
                }
                abstractC0977w.addFlags(16384);
                C0552u.m6269a(view, RecyclerView.this.mAccessibilityDelegate.m4558b());
            }
        }

        /* renamed from: f */
        private void m4874f(AbstractC0977w abstractC0977w) {
            if (abstractC0977w.itemView instanceof ViewGroup) {
                m4900a((ViewGroup) abstractC0977w.itemView, false);
            }
        }

        /* renamed from: a */
        View m4904a(int i, boolean z) {
            return m4903a(i, z, RecyclerView.FOREVER_NS).itemView;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x03ba  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x03d3  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x040d  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x02f9  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0327  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0366  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x037f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0977w m4903a(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1150
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0968p.m4903a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$w");
        }

        /* renamed from: a */
        AbstractC0977w m4902a(long j, int i, boolean z) {
            for (int size = this.f2963a.size() - 1; size >= 0; size--) {
                AbstractC0977w abstractC0977w = this.f2963a.get(size);
                if (abstractC0977w.getItemId() == j && !abstractC0977w.wasReturnedFromScrap()) {
                    if (i == abstractC0977w.getItemViewType()) {
                        abstractC0977w.addFlags(32);
                        if (abstractC0977w.isRemoved() && !RecyclerView.this.mState.m4849a()) {
                            abstractC0977w.setFlags(2, 14);
                        }
                        return abstractC0977w;
                    } else if (!z) {
                        this.f2963a.remove(size);
                        RecyclerView.this.removeDetachedView(abstractC0977w.itemView, false);
                        m4889b(abstractC0977w.itemView);
                    }
                }
            }
            for (int size2 = this.f2965c.size() - 1; size2 >= 0; size2--) {
                AbstractC0977w abstractC0977w2 = this.f2965c.get(size2);
                if (abstractC0977w2.getItemId() == j) {
                    if (i == abstractC0977w2.getItemViewType()) {
                        if (!z) {
                            this.f2965c.remove(size2);
                        }
                        return abstractC0977w2;
                    } else if (!z) {
                        m4881d(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m4908a() {
            this.f2963a.clear();
            m4882d();
        }

        /* renamed from: a */
        public void m4907a(int i) {
            this.f2970h = i;
            m4893b();
        }

        /* renamed from: a */
        void m4906a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i5 = i2;
                i4 = -1;
                i3 = i;
            } else {
                i5 = i;
                i4 = 1;
                i3 = i2;
            }
            int size = this.f2965c.size();
            for (int i6 = 0; i6 < size; i6++) {
                AbstractC0977w abstractC0977w = this.f2965c.get(i6);
                if (abstractC0977w != null && abstractC0977w.mPosition >= i3 && abstractC0977w.mPosition <= i5) {
                    if (abstractC0977w.mPosition == i) {
                        abstractC0977w.offsetPosition(i2 - i, false);
                    } else {
                        abstractC0977w.offsetPosition(i4, false);
                    }
                }
            }
        }

        /* renamed from: a */
        void m4905a(int i, int i2, boolean z) {
            for (int size = this.f2965c.size() - 1; size >= 0; size--) {
                AbstractC0977w abstractC0977w = this.f2965c.get(size);
                if (abstractC0977w != null) {
                    if (abstractC0977w.mPosition >= i + i2) {
                        abstractC0977w.offsetPosition(-i2, z);
                    } else if (abstractC0977w.mPosition >= i) {
                        abstractC0977w.addFlags(8);
                        m4881d(size);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m4901a(View view) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            m4888b(childViewHolderInt);
        }

        /* renamed from: a */
        void m4899a(AbstractC0945a abstractC0945a, AbstractC0945a abstractC0945a2, boolean z) {
            m4908a();
            m4873g().m4915a(abstractC0945a, abstractC0945a2, z);
        }

        /* renamed from: a */
        void m4898a(C0966o c0966o) {
            C0966o c0966o2 = this.f2967e;
            if (c0966o2 != null) {
                c0966o2.m4909c();
            }
            this.f2967e = c0966o;
            if (this.f2967e == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f2967e.m4913b();
        }

        /* renamed from: a */
        void m4897a(AbstractC0975u abstractC0975u) {
            this.f2971i = abstractC0975u;
        }

        /* renamed from: a */
        public void m4894a(AbstractC0977w abstractC0977w, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(abstractC0977w);
            if (abstractC0977w.hasAnyOfTheFlags(16384)) {
                abstractC0977w.setFlags(0, 16384);
                C0552u.m6269a(abstractC0977w.itemView, (C0503a) null);
            }
            if (z) {
                m4880d(abstractC0977w);
            }
            abstractC0977w.mOwnerRecyclerView = null;
            m4873g().m4914a(abstractC0977w);
        }

        /* renamed from: a */
        boolean m4896a(AbstractC0977w abstractC0977w) {
            if (abstractC0977w.isRemoved()) {
                return RecyclerView.this.mState.m4849a();
            }
            if (abstractC0977w.mPosition < 0 || abstractC0977w.mPosition >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0977w + RecyclerView.this.exceptionLabel());
            }
            boolean z = false;
            if (!RecyclerView.this.mState.m4849a() && RecyclerView.this.mAdapter.getItemViewType(abstractC0977w.mPosition) != abstractC0977w.getItemViewType()) {
                return false;
            }
            if (!RecyclerView.this.mAdapter.hasStableIds()) {
                return true;
            }
            if (abstractC0977w.getItemId() == RecyclerView.this.mAdapter.getItemId(abstractC0977w.mPosition)) {
                z = true;
            }
            return z;
        }

        /* renamed from: b */
        public int m4892b(int i) {
            if (i >= 0 && i < RecyclerView.this.mState.m4843e()) {
                return !RecyclerView.this.mState.m4849a() ? i : RecyclerView.this.mAdapterHelper.m4711b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.mState.m4843e() + RecyclerView.this.exceptionLabel());
        }

        /* renamed from: b */
        AbstractC0977w m4890b(int i, boolean z) {
            View m4676c;
            int size = this.f2963a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0977w abstractC0977w = this.f2963a.get(i2);
                if (!abstractC0977w.wasReturnedFromScrap() && abstractC0977w.getLayoutPosition() == i && !abstractC0977w.isInvalid() && (RecyclerView.this.mState.f2994g || !abstractC0977w.isRemoved())) {
                    abstractC0977w.addFlags(32);
                    return abstractC0977w;
                }
            }
            if (z || (m4676c = RecyclerView.this.mChildHelper.m4676c(i)) == null) {
                int size2 = this.f2965c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC0977w abstractC0977w2 = this.f2965c.get(i3);
                    if (!abstractC0977w2.isInvalid() && abstractC0977w2.getLayoutPosition() == i) {
                        if (!z) {
                            this.f2965c.remove(i3);
                        }
                        return abstractC0977w2;
                    }
                }
                return null;
            }
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(m4676c);
            RecyclerView.this.mChildHelper.m4671e(m4676c);
            int m4678b = RecyclerView.this.mChildHelper.m4678b(m4676c);
            if (m4678b != -1) {
                RecyclerView.this.mChildHelper.m4672e(m4678b);
                m4884c(m4676c);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
        }

        /* renamed from: b */
        public void m4893b() {
            this.f2966d = this.f2970h + (RecyclerView.this.mLayout != null ? RecyclerView.this.mLayout.mPrefetchMaxCountObserved : 0);
            for (int size = this.f2965c.size() - 1; size >= 0 && this.f2965c.size() > this.f2966d; size--) {
                m4881d(size);
            }
        }

        /* renamed from: b */
        void m4891b(int i, int i2) {
            int size = this.f2965c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0977w abstractC0977w = this.f2965c.get(i3);
                if (abstractC0977w != null && abstractC0977w.mPosition >= i) {
                    abstractC0977w.offsetPosition(i2, true);
                }
            }
        }

        /* renamed from: b */
        void m4889b(View view) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            m4888b(childViewHolderInt);
        }

        /* renamed from: b */
        void m4888b(AbstractC0977w abstractC0977w) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4 = false;
            if (abstractC0977w.isScrap() || abstractC0977w.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(abstractC0977w.isScrap());
                sb.append(" isAttached:");
                if (abstractC0977w.itemView.getParent() != null) {
                    z4 = true;
                }
                sb.append(z4);
                sb.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(sb.toString());
            } else if (abstractC0977w.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + abstractC0977w + RecyclerView.this.exceptionLabel());
            } else if (abstractC0977w.shouldIgnore()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
            } else {
                boolean doesTransientStatePreventRecycling = abstractC0977w.doesTransientStatePreventRecycling();
                if ((RecyclerView.this.mAdapter != null && doesTransientStatePreventRecycling && RecyclerView.this.mAdapter.onFailedToRecycleView(abstractC0977w)) || abstractC0977w.isRecyclable()) {
                    if (this.f2966d <= 0 || abstractC0977w.hasAnyOfTheFlags(526)) {
                        z3 = false;
                    } else {
                        int size = this.f2965c.size();
                        int i = size;
                        if (size >= this.f2966d) {
                            i = size;
                            if (size > 0) {
                                m4881d(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.mPrefetchRegistry.m4605a(abstractC0977w.mPosition)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.mPrefetchRegistry.m4605a(this.f2965c.get(i).mPosition)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f2965c.add(i2, abstractC0977w);
                        z3 = true;
                    }
                    z = false;
                    z2 = z3;
                    if (!z3) {
                        m4894a(abstractC0977w, true);
                        z = true;
                        z2 = z3;
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                RecyclerView.this.mViewInfoStore.m4513g(abstractC0977w);
                if (z2 || z || !doesTransientStatePreventRecycling) {
                    return;
                }
                abstractC0977w.mOwnerRecyclerView = null;
            }
        }

        /* renamed from: c */
        public View m4886c(int i) {
            return m4904a(i, false);
        }

        /* renamed from: c */
        public List<AbstractC0977w> m4887c() {
            return this.f2969g;
        }

        /* renamed from: c */
        void m4885c(int i, int i2) {
            int i3;
            for (int size = this.f2965c.size() - 1; size >= 0; size--) {
                AbstractC0977w abstractC0977w = this.f2965c.get(size);
                if (abstractC0977w != null && (i3 = abstractC0977w.mPosition) >= i && i3 < i2 + i) {
                    abstractC0977w.addFlags(2);
                    m4881d(size);
                }
            }
        }

        /* renamed from: c */
        void m4884c(View view) {
            AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f2964b == null) {
                    this.f2964b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f2964b.add(childViewHolderInt);
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.hasStableIds()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.f2963a.add(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
        }

        /* renamed from: c */
        void m4883c(AbstractC0977w abstractC0977w) {
            if (abstractC0977w.mInChangeScrap) {
                this.f2964b.remove(abstractC0977w);
            } else {
                this.f2963a.remove(abstractC0977w);
            }
            abstractC0977w.mScrapContainer = null;
            abstractC0977w.mInChangeScrap = false;
            abstractC0977w.clearReturnedFromScrapFlag();
        }

        /* renamed from: d */
        void m4882d() {
            for (int size = this.f2965c.size() - 1; size >= 0; size--) {
                m4881d(size);
            }
            this.f2965c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.m4606a();
            }
        }

        /* renamed from: d */
        void m4881d(int i) {
            m4894a(this.f2965c.get(i), true);
            this.f2965c.remove(i);
        }

        /* renamed from: d */
        void m4880d(AbstractC0977w abstractC0977w) {
            if (RecyclerView.this.mRecyclerListener != null) {
                RecyclerView.this.mRecyclerListener.m4869a(abstractC0977w);
            }
            if (RecyclerView.this.mAdapter != null) {
                RecyclerView.this.mAdapter.onViewRecycled(abstractC0977w);
            }
            if (RecyclerView.this.mState != null) {
                RecyclerView.this.mViewInfoStore.m4513g(abstractC0977w);
            }
        }

        /* renamed from: e */
        int m4879e() {
            return this.f2963a.size();
        }

        /* renamed from: e */
        View m4878e(int i) {
            return this.f2963a.get(i).itemView;
        }

        /* renamed from: f */
        AbstractC0977w m4875f(int i) {
            int size;
            int m4711b;
            ArrayList<AbstractC0977w> arrayList = this.f2964b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0977w abstractC0977w = this.f2964b.get(i2);
                if (!abstractC0977w.wasReturnedFromScrap() && abstractC0977w.getLayoutPosition() == i) {
                    abstractC0977w.addFlags(32);
                    return abstractC0977w;
                }
            }
            if (!RecyclerView.this.mAdapter.hasStableIds() || (m4711b = RecyclerView.this.mAdapterHelper.m4711b(i)) <= 0 || m4711b >= RecyclerView.this.mAdapter.getItemCount()) {
                return null;
            }
            long itemId = RecyclerView.this.mAdapter.getItemId(m4711b);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0977w abstractC0977w2 = this.f2964b.get(i3);
                if (!abstractC0977w2.wasReturnedFromScrap() && abstractC0977w2.getItemId() == itemId) {
                    abstractC0977w2.addFlags(32);
                    return abstractC0977w2;
                }
            }
            return null;
        }

        /* renamed from: f */
        void m4876f() {
            this.f2963a.clear();
            ArrayList<AbstractC0977w> arrayList = this.f2964b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* renamed from: g */
        C0966o m4873g() {
            if (this.f2967e == null) {
                this.f2967e = new C0966o();
            }
            return this.f2967e;
        }

        /* renamed from: h */
        void m4872h() {
            int size = this.f2965c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0977w abstractC0977w = this.f2965c.get(i);
                if (abstractC0977w != null) {
                    abstractC0977w.addFlags(6);
                    abstractC0977w.addChangePayload(null);
                }
            }
            if (RecyclerView.this.mAdapter == null || !RecyclerView.this.mAdapter.hasStableIds()) {
                m4882d();
            }
        }

        /* renamed from: i */
        void m4871i() {
            int size = this.f2965c.size();
            for (int i = 0; i < size; i++) {
                this.f2965c.get(i).clearOldPosition();
            }
            int size2 = this.f2963a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f2963a.get(i2).clearOldPosition();
            }
            ArrayList<AbstractC0977w> arrayList = this.f2964b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f2964b.get(i3).clearOldPosition();
                }
            }
        }

        /* renamed from: j */
        void m4870j() {
            int size = this.f2965c.size();
            for (int i = 0; i < size; i++) {
                C0961j c0961j = (C0961j) this.f2965c.get(i).itemView.getLayoutParams();
                if (c0961j != null) {
                    c0961j.mInsetsDirty = true;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public interface AbstractC0969q {
        /* renamed from: a */
        void m4869a(AbstractC0977w abstractC0977w);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public class C0970r extends AbstractC0947c {
        C0970r() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
        /* renamed from: a */
        public void mo4260a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView.this.mState.f2993f = true;
            RecyclerView.this.processDataSetCompletelyChanged(true);
            if (!RecyclerView.this.mAdapterHelper.m4704d()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
        /* renamed from: a */
        public void mo4258a(int i, int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m4716a(i, i2, i3)) {
                m4868b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
        /* renamed from: a */
        public void mo4257a(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m4715a(i, i2, obj)) {
                m4868b();
            }
        }

        /* renamed from: b */
        void m4868b() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
                RecyclerView recyclerView = RecyclerView.this;
                C0552u.m6265a(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
        /* renamed from: b */
        public void mo4256b(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m4710b(i, i2)) {
                m4868b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
        /* renamed from: c */
        public void mo4255c(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m4706c(i, i2)) {
                m4868b();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static abstract class AbstractC0971s {

        /* renamed from: b */
        private RecyclerView f2974b;

        /* renamed from: c */
        private AbstractC0956i f2975c;

        /* renamed from: d */
        private boolean f2976d;

        /* renamed from: e */
        private boolean f2977e;

        /* renamed from: f */
        private View f2978f;

        /* renamed from: h */
        private boolean f2980h;

        /* renamed from: a */
        private int f2973a = -1;

        /* renamed from: g */
        private final C0972a f2979g = new C0972a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$s$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s$a.class */
        public static class C0972a {

            /* renamed from: a */
            private int f2981a;

            /* renamed from: b */
            private int f2982b;

            /* renamed from: c */
            private int f2983c;

            /* renamed from: d */
            private int f2984d;

            /* renamed from: e */
            private Interpolator f2985e;

            /* renamed from: f */
            private boolean f2986f;

            /* renamed from: g */
            private int f2987g;

            public C0972a(int i, int i2) {
                this(i, i2, AbstractC0610a.INVALID_ID, null);
            }

            public C0972a(int i, int i2, int i3, Interpolator interpolator) {
                this.f2984d = -1;
                this.f2986f = false;
                this.f2987g = 0;
                this.f2981a = i;
                this.f2982b = i2;
                this.f2983c = i3;
                this.f2985e = interpolator;
            }

            /* renamed from: b */
            private void m4850b() {
                if (this.f2985e == null || this.f2983c >= 1) {
                    if (this.f2983c < 1) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    return;
                }
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }

            /* renamed from: a */
            public void m4853a(int i) {
                this.f2984d = i;
            }

            /* renamed from: a */
            public void m4852a(int i, int i2, int i3, Interpolator interpolator) {
                this.f2981a = i;
                this.f2982b = i2;
                this.f2983c = i3;
                this.f2985e = interpolator;
                this.f2986f = true;
            }

            /* renamed from: a */
            void m4851a(RecyclerView recyclerView) {
                int i = this.f2984d;
                if (i >= 0) {
                    this.f2984d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f2986f = false;
                } else if (!this.f2986f) {
                    this.f2987g = 0;
                } else {
                    m4850b();
                    if (this.f2985e != null) {
                        recyclerView.mViewFlinger.m4836a(this.f2981a, this.f2982b, this.f2983c, this.f2985e);
                    } else if (this.f2983c == Integer.MIN_VALUE) {
                        recyclerView.mViewFlinger.m4833b(this.f2981a, this.f2982b);
                    } else {
                        recyclerView.mViewFlinger.m4838a(this.f2981a, this.f2982b, this.f2983c);
                    }
                    this.f2987g++;
                    if (this.f2987g > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f2986f = false;
                }
            }

            /* renamed from: a */
            boolean m4854a() {
                return this.f2984d >= 0;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$s$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s$b.class */
        public interface AbstractC0973b {
            PointF computeScrollVectorForPosition(int i);
        }

        /* renamed from: a */
        public int m4865a(View view) {
            return this.f2974b.getChildLayoutPosition(view);
        }

        /* renamed from: a */
        protected abstract void mo4598a();

        /* renamed from: a */
        void m4867a(int i, int i2) {
            PointF mo1576d;
            RecyclerView recyclerView = this.f2974b;
            if (!this.f2977e || this.f2973a == -1 || recyclerView == null) {
                m4859f();
            }
            if (this.f2976d && this.f2978f == null && this.f2975c != null && (mo1576d = mo1576d(this.f2973a)) != null && (mo1576d.x != FlexItem.FLEX_GROW_DEFAULT || mo1576d.y != FlexItem.FLEX_GROW_DEFAULT)) {
                recyclerView.scrollStep((int) Math.signum(mo1576d.x), (int) Math.signum(mo1576d.y), null);
            }
            this.f2976d = false;
            View view = this.f2978f;
            if (view != null) {
                if (m4865a(view) == this.f2973a) {
                    mo4592a(this.f2978f, recyclerView.mState, this.f2979g);
                    this.f2979g.m4851a(recyclerView);
                    m4859f();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.f2978f = null;
                }
            }
            if (this.f2977e) {
                mo4595a(i, i2, recyclerView.mState, this.f2979g);
                boolean m4854a = this.f2979g.m4854a();
                this.f2979g.m4851a(recyclerView);
                if (!m4854a) {
                    return;
                }
                if (!this.f2977e) {
                    m4859f();
                    return;
                }
                this.f2976d = true;
                recyclerView.mViewFlinger.m4841a();
            }
        }

        /* renamed from: a */
        protected abstract void mo4595a(int i, int i2, C0974t c0974t, C0972a c0972a);

        /* renamed from: a */
        public void m4866a(PointF pointF) {
            float sqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* renamed from: a */
        protected abstract void mo4592a(View view, C0974t c0974t, C0972a c0972a);

        /* renamed from: a */
        void m4864a(RecyclerView recyclerView, AbstractC0956i abstractC0956i) {
            if (this.f2980h) {
                Log.w(RecyclerView.TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f2974b = recyclerView;
            this.f2975c = abstractC0956i;
            if (this.f2973a != -1) {
                this.f2974b.mState.f2988a = this.f2973a;
                this.f2977e = true;
                this.f2976d = true;
                this.f2978f = m4860e(m4856i());
                mo4598a();
                this.f2974b.mViewFlinger.m4841a();
                this.f2980h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* renamed from: b */
        protected abstract void mo4590b();

        /* renamed from: b */
        protected void m4863b(View view) {
            if (m4865a(view) == m4856i()) {
                this.f2978f = view;
            }
        }

        /* renamed from: c */
        public void m4862c(int i) {
            this.f2973a = i;
        }

        /* renamed from: d */
        public PointF mo1576d(int i) {
            AbstractC0956i m4861e = m4861e();
            if (m4861e instanceof AbstractC0973b) {
                return ((AbstractC0973b) m4861e).computeScrollVectorForPosition(i);
            }
            Log.w(RecyclerView.TAG, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0973b.class.getCanonicalName());
            return null;
        }

        /* renamed from: e */
        public View m4860e(int i) {
            return this.f2974b.mLayout.findViewByPosition(i);
        }

        /* renamed from: e */
        public AbstractC0956i m4861e() {
            return this.f2975c;
        }

        /* renamed from: f */
        public final void m4859f() {
            if (!this.f2977e) {
                return;
            }
            this.f2977e = false;
            mo4590b();
            this.f2974b.mState.f2988a = -1;
            this.f2978f = null;
            this.f2973a = -1;
            this.f2976d = false;
            this.f2975c.onSmoothScrollerStopped(this);
            this.f2975c = null;
            this.f2974b = null;
        }

        /* renamed from: g */
        public boolean m4858g() {
            return this.f2976d;
        }

        /* renamed from: h */
        public boolean m4857h() {
            return this.f2977e;
        }

        /* renamed from: i */
        public int m4856i() {
            return this.f2973a;
        }

        /* renamed from: j */
        public int m4855j() {
            return this.f2974b.mLayout.getChildCount();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static class C0974t {

        /* renamed from: a */
        int f2988a = -1;

        /* renamed from: b */
        int f2989b = 0;

        /* renamed from: c */
        int f2990c = 0;

        /* renamed from: d */
        int f2991d = 1;

        /* renamed from: e */
        int f2992e = 0;

        /* renamed from: f */
        boolean f2993f = false;

        /* renamed from: g */
        boolean f2994g = false;

        /* renamed from: h */
        boolean f2995h = false;

        /* renamed from: i */
        boolean f2996i = false;

        /* renamed from: j */
        boolean f2997j = false;

        /* renamed from: k */
        boolean f2998k = false;

        /* renamed from: l */
        int f2999l;

        /* renamed from: m */
        long f3000m;

        /* renamed from: n */
        int f3001n;

        /* renamed from: o */
        int f3002o;

        /* renamed from: p */
        int f3003p;

        /* renamed from: q */
        private SparseArray<Object> f3004q;

        /* renamed from: a */
        void m4848a(int i) {
            if ((this.f2991d & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f2991d));
        }

        /* renamed from: a */
        public void m4847a(AbstractC0945a abstractC0945a) {
            this.f2991d = 1;
            this.f2992e = abstractC0945a.getItemCount();
            this.f2994g = false;
            this.f2995h = false;
            this.f2996i = false;
        }

        /* renamed from: a */
        public boolean m4849a() {
            return this.f2994g;
        }

        /* renamed from: b */
        public boolean m4846b() {
            return this.f2998k;
        }

        /* renamed from: c */
        public int m4845c() {
            return this.f2988a;
        }

        /* renamed from: d */
        public boolean m4844d() {
            return this.f2988a != -1;
        }

        /* renamed from: e */
        public int m4843e() {
            return this.f2994g ? this.f2989b - this.f2990c : this.f2992e;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2988a + ", mData=" + this.f3004q + ", mItemCount=" + this.f2992e + ", mIsMeasuring=" + this.f2996i + ", mPreviousLayoutItemCount=" + this.f2989b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2990c + ", mStructureChanged=" + this.f2993f + ", mInPreLayout=" + this.f2994g + ", mRunSimpleAnimations=" + this.f2997j + ", mRunPredictiveAnimations=" + this.f2998k + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public static abstract class AbstractC0975u {
        /* renamed from: a */
        public abstract View m4842a(C0968p c0968p, int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public class RunnableC0976v implements Runnable {

        /* renamed from: a */
        OverScroller f3005a;

        /* renamed from: d */
        private int f3008d;

        /* renamed from: e */
        private int f3009e;

        /* renamed from: b */
        Interpolator f3006b = RecyclerView.sQuinticInterpolator;

        /* renamed from: f */
        private boolean f3010f = false;

        /* renamed from: g */
        private boolean f3011g = false;

        RunnableC0976v() {
            RecyclerView.this = r7;
            this.f3005a = new OverScroller(r7.getContext(), RecyclerView.sQuinticInterpolator);
        }

        /* renamed from: a */
        private float m4840a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: b */
        private int m4832b(int i, int i2, int i3, int i4) {
            int abs;
            int abs2;
            int i5;
            boolean z = Math.abs(i) > Math.abs(i2);
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            float f = sqrt2;
            float f2 = width;
            float f3 = width / 2;
            float m4840a = m4840a(Math.min(1.0f, (f * 1.0f) / f2));
            if (sqrt > 0) {
                i5 = Math.round(Math.abs((f3 + (m4840a * f3)) / sqrt) * 1000.0f) * 4;
            } else {
                i5 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i5, (int) RecyclerView.MAX_SCROLL_DURATION);
        }

        /* renamed from: c */
        private void m4831c() {
            this.f3011g = false;
            this.f3010f = true;
        }

        /* renamed from: d */
        private void m4830d() {
            this.f3010f = false;
            if (this.f3011g) {
                m4841a();
            }
        }

        /* renamed from: a */
        void m4841a() {
            if (this.f3010f) {
                this.f3011g = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            C0552u.m6265a(RecyclerView.this, this);
        }

        /* renamed from: a */
        public void m4839a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f3009e = 0;
            this.f3008d = 0;
            this.f3005a.fling(0, 0, i, i2, AbstractC0610a.INVALID_ID, Api.BaseClientBuilder.API_PRIORITY_OTHER, AbstractC0610a.INVALID_ID, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            m4841a();
        }

        /* renamed from: a */
        public void m4838a(int i, int i2, int i3) {
            m4836a(i, i2, i3, RecyclerView.sQuinticInterpolator);
        }

        /* renamed from: a */
        public void m4837a(int i, int i2, int i3, int i4) {
            m4838a(i, i2, m4832b(i, i2, i3, i4));
        }

        /* renamed from: a */
        public void m4836a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f3006b != interpolator) {
                this.f3006b = interpolator;
                this.f3005a = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f3009e = 0;
            this.f3008d = 0;
            this.f3005a.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.f3005a.computeScrollOffset();
            }
            m4841a();
        }

        /* renamed from: a */
        public void m4835a(int i, int i2, Interpolator interpolator) {
            int m4832b = m4832b(i, i2, 0, 0);
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.sQuinticInterpolator;
            }
            m4836a(i, i2, m4832b, interpolator2);
        }

        /* renamed from: b */
        public void m4834b() {
            RecyclerView.this.removeCallbacks(this);
            this.f3005a.abortAnimation();
        }

        /* renamed from: b */
        public void m4833b(int i, int i2) {
            m4837a(i, i2, 0, 0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x0227, code lost:
            if (r23 > 0) goto L56;
         */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0218  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x023b  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x024b  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 888
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.RunnableC0976v.run():void");
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public static abstract class AbstractC0977w {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_SET_A11Y_ITEM_DELEGATE = 16384;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        AbstractC0977w mShadowedHolder = null;
        AbstractC0977w mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        C0968p mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public AbstractC0977w(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                this.mPayloads = new ArrayList();
                this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
            }
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(FLAG_ADAPTER_FULLUPDATE);
            } else if ((FLAG_ADAPTER_FULLUPDATE & this.mFlags) != 0) {
            } else {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && C0552u.m6253c(this.itemView);
        }

        void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionFor(this);
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

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) == 0) {
                List<Object> list = this.mPayloads;
                return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
            }
            return FULLUPDATE_PAYLOADS;
        }

        boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & FLAG_ADAPTER_POSITION_UNKNOWN) != 0 || isInvalid();
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
            return (this.mFlags & 16) == 0 && !C0552u.m6253c(this.itemView);
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & FLAG_TMP_DETACHED) != 0;
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        void offsetPosition(int i, boolean z) {
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
                ((C0961j) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = C0552u.m6247e(this.itemView);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        void resetInternal() {
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

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (i2 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            this.mIsRecyclableCount = z ? i - 1 : i + 1;
            int i2 = this.mIsRecyclableCount;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (!z || this.mIsRecyclableCount != 0) {
            } else {
                this.mFlags &= -17;
            }
        }

        void setScrapContainer(C0968p c0968p, boolean z) {
            this.mScrapContainer = c0968p;
            this.mInChangeScrap = z;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & FLAG_IGNORE) != 0;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
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
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
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

        void unScrap() {
            this.mScrapContainer.m4883c(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        FORCE_INVALIDATE_DISPLAY_LIST = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = Build.VERSION.SDK_INT >= 16;
        ALLOW_THREAD_GAP_WORK = Build.VERSION.SDK_INT >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = Build.VERSION.SDK_INT <= 15;
        IGNORE_DETACHED_FOCUSED_CHILD = Build.VERSION.SDK_INT <= 15;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        sQuinticInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z;
        this.mObserver = new C0970r();
        this.mRecycler = new C0968p();
        this.mViewInfoStore = new C1024n();
        this.mUpdateChildViewsRunnable = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerView.this.mFirstLayoutComplete || RecyclerView.this.isLayoutRequested()) {
                    return;
                }
                if (!RecyclerView.this.mIsAttached) {
                    RecyclerView.this.requestLayout();
                } else if (RecyclerView.this.mLayoutFrozen) {
                    RecyclerView.this.mLayoutWasDefered = true;
                } else {
                    RecyclerView.this.consumePendingUpdateOperations();
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new C0949e();
        this.mItemAnimator = new C0990c();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new RunnableC0976v();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new RunnableC1006e.C1008a() : null;
        this.mState = new C0974t();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new C0954g();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mScrollStepConsumed = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.mItemAnimator != null) {
                    RecyclerView.this.mItemAnimator.mo4179a();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new C1024n.AbstractC1026b() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.C1024n.AbstractC1026b
            /* renamed from: a */
            public void mo4508a(AbstractC0977w abstractC0977w) {
                RecyclerView.this.mLayout.removeAndRecycleView(abstractC0977w.itemView, RecyclerView.this.mRecycler);
            }

            @Override // androidx.recyclerview.widget.C1024n.AbstractC1026b
            /* renamed from: a */
            public void mo4507a(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2) {
                RecyclerView.this.mRecycler.m4883c(abstractC0977w);
                RecyclerView.this.animateDisappearance(abstractC0977w, c0953c, c0953c2);
            }

            @Override // androidx.recyclerview.widget.C1024n.AbstractC1026b
            /* renamed from: b */
            public void mo4506b(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2) {
                RecyclerView.this.animateAppearance(abstractC0977w, c0953c, c0953c2);
            }

            @Override // androidx.recyclerview.widget.C1024n.AbstractC1026b
            /* renamed from: c */
            public void mo4505c(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2) {
                abstractC0977w.setIsRecyclable(false);
                if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
                    if (!RecyclerView.this.mItemAnimator.mo4553a(abstractC0977w, abstractC0977w, c0953c, c0953c2)) {
                        return;
                    }
                    RecyclerView.this.postAnimationRunner();
                } else if (!RecyclerView.this.mItemAnimator.mo4548c(abstractC0977w, c0953c, c0953c2)) {
                } else {
                    RecyclerView.this.postAnimationRunner();
                }
            }
        };
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, CLIP_TO_PADDING_ATTR, i, 0);
            this.mClipToPadding = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.mClipToPadding = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = C0561v.m6202a(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = C0561v.m6201b(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.m4939a(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (C0552u.m6247e(this) == 0) {
            C0552u.m6258b((View) this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C1017j(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C0928a.C0930b.RecyclerView, i, 0);
            String string = obtainStyledAttributes2.getString(C0928a.C0930b.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(C0928a.C0930b.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            this.mEnableFastScroller = obtainStyledAttributes2.getBoolean(C0928a.C0930b.RecyclerView_fastScrollEnabled, false);
            if (this.mEnableFastScroller) {
                initFastScroller((StateListDrawable) obtainStyledAttributes2.getDrawable(C0928a.C0930b.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes2.getDrawable(C0928a.C0930b.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes2.getDrawable(C0928a.C0930b.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes2.getDrawable(C0928a.C0930b.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            obtainStyledAttributes2.recycle();
            createLayoutManager(context, string, attributeSet, i, 0);
            z = true;
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i, 0);
                z = obtainStyledAttributes3.getBoolean(0, true);
                obtainStyledAttributes3.recycle();
            }
        } else {
            setDescendantFocusability(262144);
            z = true;
        }
        setNestedScrollingEnabled(z);
    }

    private void addAnimatingView(AbstractC0977w abstractC0977w) {
        View view = abstractC0977w.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.m4883c(getChildViewHolder(view));
        if (abstractC0977w.isTmpDetached()) {
            this.mChildHelper.m4683a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.mChildHelper.m4681a(view, true);
        } else {
            this.mChildHelper.m4673d(view);
        }
    }

    private void animateChange(AbstractC0977w abstractC0977w, AbstractC0977w abstractC0977w2, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2, boolean z, boolean z2) {
        abstractC0977w.setIsRecyclable(false);
        if (z) {
            addAnimatingView(abstractC0977w);
        }
        if (abstractC0977w != abstractC0977w2) {
            if (z2) {
                addAnimatingView(abstractC0977w2);
            }
            abstractC0977w.mShadowedHolder = abstractC0977w2;
            addAnimatingView(abstractC0977w);
            this.mRecycler.m4883c(abstractC0977w);
            abstractC0977w2.setIsRecyclable(false);
            abstractC0977w2.mShadowingHolder = abstractC0977w;
        }
        if (this.mItemAnimator.mo4553a(abstractC0977w, abstractC0977w2, c0953c, c0953c2)) {
            postAnimationRunner();
        }
    }

    private void cancelTouch() {
        resetTouch();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(AbstractC0977w abstractC0977w) {
        if (abstractC0977w.mNestedRecyclerView != null) {
            RecyclerView recyclerView = abstractC0977w.mNestedRecyclerView.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC0977w.mNestedRecyclerView = null;
                    return;
                } else if (view == abstractC0977w.itemView) {
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
                Class<? extends U> asSubclass = (isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).loadClass(fullClassName).asSubclass(AbstractC0956i.class);
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
                setLayoutManager((AbstractC0956i) constructor.newInstance(objArr));
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
        C0506b.m6459a(obtain, i);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        boolean z = true;
        this.mState.m4848a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f2996i = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.m4528a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        C0974t c0974t = this.mState;
        if (!c0974t.f2997j || !this.mItemsChanged) {
            z = false;
        }
        c0974t.f2995h = z;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        C0974t c0974t2 = this.mState;
        c0974t2.f2994g = c0974t2.f2998k;
        this.mState.f2992e = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f2997j) {
            int m4680b = this.mChildHelper.m4680b();
            for (int i = 0; i < m4680b; i++) {
                AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4679b(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.m4523a(childViewHolderInt, this.mItemAnimator.m4937a(this.mState, childViewHolderInt, AbstractC0950f.m4935e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f2995h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.m4526a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f2998k) {
            saveOldPositions();
            boolean z2 = this.mState.f2993f;
            C0974t c0974t3 = this.mState;
            c0974t3.f2993f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, c0974t3);
            this.mState.f2993f = z2;
            for (int i2 = 0; i2 < this.mChildHelper.m4680b(); i2++) {
                AbstractC0977w childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.m4679b(i2));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.m4516d(childViewHolderInt2)) {
                    int m4935e = AbstractC0950f.m4935e(childViewHolderInt2);
                    boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    int i3 = m4935e;
                    if (!hasAnyOfTheFlags) {
                        i3 = m4935e | CodedOutputStream.DEFAULT_BUFFER_SIZE;
                    }
                    AbstractC0950f.C0953c m4937a = this.mItemAnimator.m4937a(this.mState, childViewHolderInt2, i3, childViewHolderInt2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, m4937a);
                    } else {
                        this.mViewInfoStore.m4519b(childViewHolderInt2, m4937a);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f2991d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.m4848a(6);
        this.mAdapterHelper.m4700e();
        this.mState.f2992e = this.mAdapter.getItemCount();
        C0974t c0974t = this.mState;
        c0974t.f2990c = 0;
        c0974t.f2994g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, c0974t);
        C0974t c0974t2 = this.mState;
        c0974t2.f2993f = false;
        this.mPendingSavedState = null;
        c0974t2.f2997j = c0974t2.f2997j && this.mItemAnimator != null;
        this.mState.f2991d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.m4848a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        C0974t c0974t = this.mState;
        c0974t.f2991d = 1;
        if (c0974t.f2997j) {
            for (int m4680b = this.mChildHelper.m4680b() - 1; m4680b >= 0; m4680b--) {
                AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4679b(m4680b));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    AbstractC0950f.C0953c m4938a = this.mItemAnimator.m4938a(this.mState, childViewHolderInt);
                    AbstractC0977w m4527a = this.mViewInfoStore.m4527a(changedHolderKey);
                    if (m4527a == null || m4527a.shouldIgnore()) {
                        this.mViewInfoStore.m4517c(childViewHolderInt, m4938a);
                    } else {
                        boolean m4525a = this.mViewInfoStore.m4525a(m4527a);
                        boolean m4525a2 = this.mViewInfoStore.m4525a(childViewHolderInt);
                        if (!m4525a || m4527a != childViewHolderInt) {
                            AbstractC0950f.C0953c m4520b = this.mViewInfoStore.m4520b(m4527a);
                            this.mViewInfoStore.m4517c(childViewHolderInt, m4938a);
                            AbstractC0950f.C0953c m4518c = this.mViewInfoStore.m4518c(childViewHolderInt);
                            if (m4520b == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, m4527a);
                            } else {
                                animateChange(m4527a, childViewHolderInt, m4520b, m4518c, m4525a, m4525a2);
                            }
                        } else {
                            this.mViewInfoStore.m4517c(childViewHolderInt, m4938a);
                        }
                    }
                }
            }
            this.mViewInfoStore.m4522a(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        C0974t c0974t2 = this.mState;
        c0974t2.f2989b = c0974t2.f2992e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        C0974t c0974t3 = this.mState;
        c0974t3.f2997j = false;
        c0974t3.f2998k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        if (this.mRecycler.f2964b != null) {
            this.mRecycler.f2964b.clear();
        }
        if (this.mLayout.mPrefetchMaxObservedInInitialPrefetch) {
            AbstractC0956i abstractC0956i = this.mLayout;
            abstractC0956i.mPrefetchMaxCountObserved = 0;
            abstractC0956i.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.m4893b();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.m4528a();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchOnItemTouch(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        AbstractC0964m abstractC0964m = this.mActiveOnItemTouchListener;
        if (abstractC0964m != null) {
            if (action != 0) {
                abstractC0964m.mo3990b(this, motionEvent);
                if (action != 3 && action != 1) {
                    return true;
                }
                this.mActiveOnItemTouchListener = null;
                return true;
            }
            this.mActiveOnItemTouchListener = null;
        }
        if (action != 0) {
            int size = this.mOnItemTouchListeners.size();
            for (int i = 0; i < size; i++) {
                AbstractC0964m abstractC0964m2 = this.mOnItemTouchListeners.get(i);
                if (abstractC0964m2.mo3992a(this, motionEvent)) {
                    this.mActiveOnItemTouchListener = abstractC0964m2;
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private boolean dispatchOnItemTouchIntercept(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            AbstractC0964m abstractC0964m = this.mOnItemTouchListeners.get(i);
            if (abstractC0964m.mo3992a(this, motionEvent) && action != 3) {
                this.mActiveOnItemTouchListener = abstractC0964m;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int i;
        int m4680b = this.mChildHelper.m4680b();
        if (m4680b == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        while (i4 < m4680b) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4679b(i4));
            if (childViewHolderInt.shouldIgnore()) {
                i = i2;
            } else {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                int i5 = i3;
                if (layoutPosition < i3) {
                    i5 = layoutPosition;
                }
                i3 = i5;
                i = i2;
                if (layoutPosition > i2) {
                    i = layoutPosition;
                    i3 = i5;
                }
            }
            i4++;
            i2 = i;
        }
        iArr[0] = i3;
        iArr[1] = i2;
    }

    static RecyclerView findNestedRecyclerView(View view) {
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
        AbstractC0977w findViewHolderForAdapterPosition;
        AbstractC0977w findViewHolderForAdapterPosition2;
        int i = this.mState.f2999l != -1 ? this.mState.f2999l : 0;
        int m4843e = this.mState.m4843e();
        for (int i2 = i; i2 < m4843e && (findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i2)) != null; i2++) {
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        for (int min = Math.min(m4843e, i) - 1; min >= 0 && (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) != null; min--) {
            if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
        return null;
    }

    public static AbstractC0977w getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((C0961j) view.getLayoutParams()).mViewHolder;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        C0961j c0961j = (C0961j) view.getLayoutParams();
        Rect rect2 = c0961j.mDecorInsets;
        rect.set((view.getLeft() - rect2.left) - c0961j.leftMargin, (view.getTop() - rect2.top) - c0961j.topMargin, view.getRight() + rect2.right + c0961j.rightMargin, view.getBottom() + rect2.bottom + c0961j.bottomMargin);
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
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    private C0543l getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new C0543l(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, AbstractC0977w abstractC0977w, AbstractC0977w abstractC0977w2) {
        int m4680b = this.mChildHelper.m4680b();
        for (int i = 0; i < m4680b; i++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4679b(i));
            if (childViewHolderInt != abstractC0977w && getChangedHolderKey(childViewHolderInt) == j) {
                AbstractC0945a abstractC0945a = this.mAdapter;
                if (abstractC0945a == null || !abstractC0945a.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + abstractC0977w + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + abstractC0977w + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0977w2 + " cannot be found but it is necessary for " + abstractC0977w + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int m4680b = this.mChildHelper.m4680b();
        for (int i = 0; i < m4680b; i++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4679b(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    private void initAutofill() {
        if (C0552u.m6281a(this) == 0) {
            C0552u.m6279a((View) this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new C0987b(new C0987b.AbstractC0989b() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: a */
            public int mo4658a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: a */
            public int mo4656a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: a */
            public void mo4657a(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.dispatchChildDetached(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: a */
            public void mo4655a(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.dispatchChildAttached(view);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: a */
            public void mo4654a(View view, int i, ViewGroup.LayoutParams layoutParams) {
                AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                    childViewHolderInt.clearTmpDetachFlag();
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: b */
            public View mo4652b(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: b */
            public AbstractC0977w mo4651b(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: b */
            public void mo4653b() {
                int mo4658a = mo4658a();
                for (int i = 0; i < mo4658a; i++) {
                    View mo4652b = mo4652b(i);
                    RecyclerView.this.dispatchChildDetached(mo4652b);
                    mo4652b.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: c */
            public void mo4650c(int i) {
                AbstractC0977w childViewHolderInt;
                View mo4652b = mo4652b(i);
                if (mo4652b != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(mo4652b)) != null) {
                    if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                    childViewHolderInt.addFlags(256);
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: c */
            public void mo4649c(View view) {
                AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.C0987b.AbstractC0989b
            /* renamed from: d */
            public void mo4648d(View view) {
                AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onLeftHiddenState(RecyclerView.this);
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0217, code lost:
        if ((r17 * r19) >= 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0237, code lost:
        if ((r17 * r19) <= 0) goto L98;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPreferredNextFocus(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.isPreferredNextFocus(android.view.View, android.view.View, int):boolean");
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
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.m4719a();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.m4712b();
        } else {
            this.mAdapterHelper.m4700e();
        }
        boolean z = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f2997j = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z || this.mLayout.mRequestedSimpleAnimations) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds());
        C0974t c0974t = this.mState;
        boolean z2 = false;
        if (c0974t.f2997j) {
            z2 = false;
            if (z) {
                z2 = false;
                if (!this.mDataSetHasChangedAfterLayout) {
                    z2 = false;
                    if (predictiveItemAnimationsEnabled()) {
                        z2 = true;
                    }
                }
            }
        }
        c0974t.f2998k = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    private void recoverFocusFromState() {
        View view;
        View findViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mChildHelper.m4675c(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.m4680b() == 0) {
                requestFocus();
                return;
            }
        }
        AbstractC0977w findViewHolderForItemId = (this.mState.f3000m == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f3000m);
        if (findViewHolderForItemId == null || this.mChildHelper.m4675c(findViewHolderForItemId.itemView) || !findViewHolderForItemId.itemView.hasFocusable()) {
            view = null;
            if (this.mChildHelper.m4680b() > 0) {
                view = findNextViewToFocus();
            }
        } else {
            view = findViewHolderForItemId.itemView;
        }
        if (view == null) {
            return;
        }
        if (this.mState.f3001n != -1 && (findViewById = view.findViewById(this.mState.f3001n)) != null && findViewById.isFocusable()) {
            view = findViewById;
        }
        view.requestFocus();
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
            C0552u.m6249d(this);
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0961j) {
            C0961j c0961j = (C0961j) layoutParams;
            if (!c0961j.mInsetsDirty) {
                Rect rect = c0961j.mDecorInsets;
                this.mTempRect.left -= rect.left;
                this.mTempRect.right += rect.right;
                this.mTempRect.top -= rect.top;
                this.mTempRect.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        C0974t c0974t = this.mState;
        c0974t.f3000m = -1L;
        c0974t.f2999l = -1;
        c0974t.f3001n = -1;
    }

    private void resetTouch() {
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
        AbstractC0977w findContainingViewHolder = focusedChild == null ? null : findContainingViewHolder(focusedChild);
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f3000m = this.mAdapter.hasStableIds() ? findContainingViewHolder.getItemId() : (char) 65535;
        this.mState.f2999l = this.mDataSetHasChangedAfterLayout ? -1 : findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAdapterPosition();
        this.mState.f3001n = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(AbstractC0945a abstractC0945a, boolean z, boolean z2) {
        AbstractC0945a abstractC0945a2 = this.mAdapter;
        if (abstractC0945a2 != null) {
            abstractC0945a2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.m4719a();
        AbstractC0945a abstractC0945a3 = this.mAdapter;
        this.mAdapter = abstractC0945a;
        if (abstractC0945a != null) {
            abstractC0945a.registerAdapterDataObserver(this.mObserver);
            abstractC0945a.onAttachedToRecyclerView(this);
        }
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.onAdapterChanged(abstractC0945a3, this.mAdapter);
        }
        this.mRecycler.m4899a(abstractC0945a3, this.mAdapter, z);
        this.mState.f2993f = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.m4834b();
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.stopSmoothScroller();
        }
    }

    void absorbGlows(int i, int i2) {
        if (i < 0) {
            ensureLeftGlow();
            this.mLeftGlow.onAbsorb(-i);
        } else if (i > 0) {
            ensureRightGlow();
            this.mRightGlow.onAbsorb(i);
        }
        if (i2 < 0) {
            ensureTopGlow();
            this.mTopGlow.onAbsorb(-i2);
        } else if (i2 > 0) {
            ensureBottomGlow();
            this.mBottomGlow.onAbsorb(i2);
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        C0552u.m6249d(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null || !abstractC0956i.onAddFocusables(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(AbstractC0955h abstractC0955h) {
        addItemDecoration(abstractC0955h, -1);
    }

    public void addItemDecoration(AbstractC0955h abstractC0955h, int i) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(abstractC0955h);
        } else {
            this.mItemDecorations.add(i, abstractC0955h);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(AbstractC0962k abstractC0962k) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(abstractC0962k);
    }

    public void addOnItemTouchListener(AbstractC0964m abstractC0964m) {
        this.mOnItemTouchListeners.add(abstractC0964m);
    }

    public void addOnScrollListener(AbstractC0965n abstractC0965n) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(abstractC0965n);
    }

    void animateAppearance(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2) {
        abstractC0977w.setIsRecyclable(false);
        if (this.mItemAnimator.mo4550b(abstractC0977w, c0953c, c0953c2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c, AbstractC0950f.C0953c c0953c2) {
        addAnimatingView(abstractC0977w);
        abstractC0977w.setIsRecyclable(false);
        if (this.mItemAnimator.mo4554a(abstractC0977w, c0953c, c0953c2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
            }
            throw new IllegalStateException(str + exceptionLabel());
        }
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
        } else if (this.mDispatchScrollCounter <= 0) {
        } else {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + exceptionLabel()));
        }
    }

    boolean canReuseUpdatedViewHolder(AbstractC0977w abstractC0977w) {
        AbstractC0950f abstractC0950f = this.mItemAnimator;
        return abstractC0950f == null || abstractC0950f.mo4161a(abstractC0977w, abstractC0977w.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0961j) && this.mLayout.checkLayoutParams((C0961j) layoutParams);
    }

    void clearOldPositions() {
        int m4677c = this.mChildHelper.m4677c();
        for (int i = 0; i < m4677c; i++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.m4871i();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<AbstractC0962k> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<AbstractC0965n> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollHorizontally()) {
            i = this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0956i abstractC0956i = this.mLayout;
        int i = 0;
        if (abstractC0956i == null) {
            return 0;
        }
        if (abstractC0956i.canScrollVertically()) {
            i = this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return i;
    }

    void considerReleasingGlowsOnScroll(int i, int i2) {
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
            C0552u.m6249d(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            C0590b.m6068a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            C0590b.m6069a();
        } else if (!this.mAdapterHelper.m4704d()) {
        } else {
            if (!this.mAdapterHelper.m4718a(4) || this.mAdapterHelper.m4718a(11)) {
                if (!this.mAdapterHelper.m4704d()) {
                    return;
                }
                C0590b.m6068a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                C0590b.m6069a();
                return;
            }
            C0590b.m6068a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.m4712b();
            if (!this.mLayoutWasDefered) {
                if (hasUpdatedView()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.m4708c();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            C0590b.m6069a();
        }
    }

    void defaultOnMeasure(int i, int i2) {
        setMeasuredDimension(AbstractC0956i.chooseSize(i, getPaddingLeft() + getPaddingRight(), C0552u.m6235l(this)), AbstractC0956i.chooseSize(i2, getPaddingTop() + getPaddingBottom(), C0552u.m6234m(this)));
    }

    void dispatchChildAttached(View view) {
        AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        AbstractC0945a abstractC0945a = this.mAdapter;
        if (abstractC0945a != null && childViewHolderInt != null) {
            abstractC0945a.onViewAttachedToWindow(childViewHolderInt);
        }
        List<AbstractC0962k> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).m4923a(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        AbstractC0945a abstractC0945a = this.mAdapter;
        if (abstractC0945a != null && childViewHolderInt != null) {
            abstractC0945a.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<AbstractC0962k> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).m4922b(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            C0974t c0974t = this.mState;
            c0974t.f2996i = false;
            if (c0974t.f2991d == 1) {
                dispatchLayoutStep1();
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else if (!this.mAdapterHelper.m4698f() && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            }
            dispatchLayoutStep3();
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m6320a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m6321a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m6314a(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m6313a(i, i2, iArr, iArr2, i3);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m6317a(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().m6316a(i, i2, i3, i4, iArr, i5);
    }

    void dispatchOnScrollStateChanged(int i) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.onScrollStateChanged(i);
        }
        onScrollStateChanged(i);
        AbstractC0965n abstractC0965n = this.mScrollListener;
        if (abstractC0965n != null) {
            abstractC0965n.mo3989a(this, i);
        }
        List<AbstractC0965n> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo3989a(this, i);
            }
        }
    }

    void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        onScrolled(i, i2);
        AbstractC0965n abstractC0965n = this.mScrollListener;
        if (abstractC0965n != null) {
            abstractC0965n.mo572a(this, i, i2);
        }
        List<AbstractC0965n> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo572a(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            AbstractC0977w abstractC0977w = this.mPendingAccessibilityImportanceChange.get(size);
            if (abstractC0977w.itemView.getParent() == this && !abstractC0977w.shouldIgnore() && (i = abstractC0977w.mPendingAccessibilityState) != -1) {
                C0552u.m6258b(abstractC0977w.itemView, i);
                abstractC0977w.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        boolean z2;
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
            canvas.translate((-getHeight()) + paddingBottom, FlexItem.FLEX_GROW_DEFAULT);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        boolean z3 = z;
        if (edgeEffect3 != null) {
            z3 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.mClipToPadding) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.mTopGlow;
                z3 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        boolean z4 = z3;
        if (edgeEffect5 != null) {
            z4 = z3;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(-paddingTop, -width);
                EdgeEffect edgeEffect6 = this.mRightGlow;
                z4 = z3 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z2 = z4;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
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
            z2 = z5 | z4;
            canvas.restoreToCount(save4);
        }
        boolean z6 = z2;
        if (!z2) {
            z6 = z2;
            if (this.mItemAnimator != null) {
                z6 = z2;
                if (this.mItemDecorations.size() > 0) {
                    z6 = z2;
                    if (this.mItemAnimator.mo4171b()) {
                        z6 = true;
                    }
                }
            }
        }
        if (z6) {
            C0552u.m6249d(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        this.mBottomGlow = this.mEdgeEffectFactory.m4940a(this, 3);
        if (this.mClipToPadding) {
            this.mBottomGlow.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.mBottomGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        this.mLeftGlow = this.mEdgeEffectFactory.m4940a(this, 0);
        if (this.mClipToPadding) {
            this.mLeftGlow.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.mLeftGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        this.mRightGlow = this.mEdgeEffectFactory.m4940a(this, 2);
        if (this.mClipToPadding) {
            this.mRightGlow.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.mRightGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        this.mTopGlow = this.mEdgeEffectFactory.m4940a(this, 1);
        if (this.mClipToPadding) {
            this.mTopGlow.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(C0974t c0974t) {
        if (getScrollState() != 2) {
            c0974t.f3002o = 0;
            c0974t.f3003p = 0;
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f3005a;
        c0974t.f3002o = overScroller.getFinalX() - overScroller.getCurrX();
        c0974t.f3003p = overScroller.getFinalY() - overScroller.getCurrY();
    }

    public View findChildViewUnder(float f, float f2) {
        for (int m4680b = this.mChildHelper.m4680b() - 1; m4680b >= 0; m4680b--) {
            View m4679b = this.mChildHelper.m4679b(m4680b);
            float translationX = m4679b.getTranslationX();
            float translationY = m4679b.getTranslationY();
            if (f >= m4679b.getLeft() + translationX && f <= m4679b.getRight() + translationX && f2 >= m4679b.getTop() + translationY && f2 <= m4679b.getBottom() + translationY) {
                return m4679b;
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

    public AbstractC0977w findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        return findContainingItemView == null ? null : getChildViewHolder(findContainingItemView);
    }

    public AbstractC0977w findViewHolderForAdapterPosition(int i) {
        AbstractC0977w abstractC0977w = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int m4677c = this.mChildHelper.m4677c();
        int i2 = 0;
        while (i2 < m4677c) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i2));
            AbstractC0977w abstractC0977w2 = abstractC0977w;
            if (childViewHolderInt != null) {
                abstractC0977w2 = abstractC0977w;
                if (!childViewHolderInt.isRemoved()) {
                    abstractC0977w2 = abstractC0977w;
                    if (getAdapterPositionFor(childViewHolderInt) != i) {
                        continue;
                    } else if (!this.mChildHelper.m4675c(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    } else {
                        abstractC0977w2 = childViewHolderInt;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC0977w = abstractC0977w2;
        }
        return abstractC0977w;
    }

    public AbstractC0977w findViewHolderForItemId(long j) {
        AbstractC0945a abstractC0945a = this.mAdapter;
        AbstractC0977w abstractC0977w = null;
        AbstractC0977w abstractC0977w2 = null;
        if (abstractC0945a != null) {
            if (abstractC0945a.hasStableIds()) {
                int m4677c = this.mChildHelper.m4677c();
                int i = 0;
                while (true) {
                    abstractC0977w2 = abstractC0977w;
                    if (i >= m4677c) {
                        break;
                    }
                    AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i));
                    AbstractC0977w abstractC0977w3 = abstractC0977w;
                    if (childViewHolderInt != null) {
                        abstractC0977w3 = abstractC0977w;
                        if (!childViewHolderInt.isRemoved()) {
                            abstractC0977w3 = abstractC0977w;
                            if (childViewHolderInt.getItemId() != j) {
                                continue;
                            } else if (!this.mChildHelper.m4675c(childViewHolderInt.itemView)) {
                                return childViewHolderInt;
                            } else {
                                abstractC0977w3 = childViewHolderInt;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                    abstractC0977w = abstractC0977w3;
                }
            } else {
                abstractC0977w2 = null;
            }
        }
        return abstractC0977w2;
    }

    public AbstractC0977w findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public AbstractC0977w findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.AbstractC0977w findViewHolderForPosition(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            int r0 = r0.m4677c()
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
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            r1 = r8
            android.view.View r0 = r0.m4674d(r1)
            androidx.recyclerview.widget.RecyclerView$w r0 = getChildViewHolderInt(r0)
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
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.m4675c(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$w");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        if (java.lang.Math.abs(r6) < r5.mMinFlingVelocity) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (java.lang.Math.abs(r7) < r5.mMinFlingVelocity) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 259
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
        boolean z2 = this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutFrozen;
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
                    z4 = z5;
                    i3 = i;
                    if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                        i3 = i4;
                        z4 = z5;
                    }
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
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            return abstractC0956i.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            return abstractC0956i.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            return abstractC0956i.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    public AbstractC0945a getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(AbstractC0977w abstractC0977w) {
        if (abstractC0977w.hasAnyOfTheFlags(524) || !abstractC0977w.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.m4707c(abstractC0977w.mPosition);
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0956i abstractC0956i = this.mLayout;
        return abstractC0956i != null ? abstractC0956i.getBaseline() : super.getBaseline();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    long getChangedHolderKey(AbstractC0977w abstractC0977w) {
        return this.mAdapter.hasStableIds() ? abstractC0977w.getItemId() : abstractC0977w.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getAdapterPosition() : -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        AbstractC0948d abstractC0948d = this.mChildDrawingOrderCallback;
        return abstractC0948d == null ? super.getChildDrawingOrder(i, i2) : abstractC0948d.m4941a(i, i2);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public long getChildItemId(View view) {
        AbstractC0945a abstractC0945a = this.mAdapter;
        char c = 65535;
        if (abstractC0945a != null) {
            if (!abstractC0945a.hasStableIds()) {
                c = 65535;
            } else {
                AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
                c = 65535;
                if (childViewHolderInt != null) {
                    c = childViewHolderInt.getItemId();
                }
            }
        }
        return c;
    }

    public int getChildLayoutPosition(View view) {
        AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getLayoutPosition() : -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public AbstractC0977w getChildViewHolder(View view) {
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

    public C1017j getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public C0949e getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public AbstractC0950f getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        C0961j c0961j = (C0961j) view.getLayoutParams();
        if (!c0961j.mInsetsDirty) {
            return c0961j.mDecorInsets;
        }
        if (this.mState.m4849a() && (c0961j.isItemChanged() || c0961j.isViewInvalid())) {
            return c0961j.mDecorInsets;
        }
        Rect rect = c0961j.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i).getItemOffsets(this.mTempRect, view, this, this.mState);
            rect.left += this.mTempRect.left;
            rect.top += this.mTempRect.top;
            rect.right += this.mTempRect.right;
            rect.bottom += this.mTempRect.bottom;
        }
        c0961j.mInsetsDirty = false;
        return rect;
    }

    public AbstractC0955h getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i < 0 || i >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
        }
        return this.mItemDecorations.get(i);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public AbstractC0956i getLayoutManager() {
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

    public AbstractC0963l getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public C0966o getRecycledViewPool() {
        return this.mRecycler.m4873g();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m6310b();
    }

    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().m6319a(i);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.m4704d();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new C0984a(new C0984a.AbstractC0985a() { // from class: androidx.recyclerview.widget.RecyclerView.6
            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: a */
            public AbstractC0977w mo4695a(int i) {
                AbstractC0977w findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
                if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.m4675c(findViewHolderForPosition.itemView)) {
                    return findViewHolderForPosition;
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: a */
            public void mo4694a(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.f2990c += i2;
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: a */
            public void mo4693a(int i, int i2, Object obj) {
                RecyclerView.this.viewRangeUpdate(i, i2, obj);
                RecyclerView.this.mItemsChanged = true;
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: a */
            public void mo4692a(C0984a.C0986b c0986b) {
                m4953c(c0986b);
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: b */
            public void mo4691b(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: b */
            public void mo4690b(C0984a.C0986b c0986b) {
                m4953c(c0986b);
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: c */
            public void mo4689c(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForInsert(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            /* renamed from: c */
            void m4953c(C0984a.C0986b c0986b) {
                int i = c0986b.f3076a;
                if (i == 1) {
                    RecyclerView.this.mLayout.onItemsAdded(RecyclerView.this, c0986b.f3077b, c0986b.f3079d);
                } else if (i == 2) {
                    RecyclerView.this.mLayout.onItemsRemoved(RecyclerView.this, c0986b.f3077b, c0986b.f3079d);
                } else if (i == 4) {
                    RecyclerView.this.mLayout.onItemsUpdated(RecyclerView.this, c0986b.f3077b, c0986b.f3079d, c0986b.f3078c);
                } else if (i != 8) {
                } else {
                    RecyclerView.this.mLayout.onItemsMoved(RecyclerView.this, c0986b.f3077b, c0986b.f3079d, 1);
                }
            }

            @Override // androidx.recyclerview.widget.C0984a.AbstractC0985a
            /* renamed from: d */
            public void mo4688d(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForMove(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }
        });
    }

    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new C1001d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C0928a.C0929a.fastscroll_default_thickness), resources.getDimensionPixelSize(C0928a.C0929a.fastscroll_minimum_range), resources.getDimensionPixelOffset(C0928a.C0929a.fastscroll_margin));
            return;
        }
        throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        AbstractC0950f abstractC0950f = this.mItemAnimator;
        return abstractC0950f != null && abstractC0950f.mo4171b();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    @Override // android.view.View, androidx.core.p023g.AbstractC0540i
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m6322a();
    }

    void jumpToPositionForSmoothScroller(int i) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            return;
        }
        abstractC0956i.scrollToPosition(i);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int m4677c = this.mChildHelper.m4677c();
        for (int i = 0; i < m4677c; i++) {
            ((C0961j) this.mChildHelper.m4674d(i).getLayoutParams()).mInsetsDirty = true;
        }
        this.mRecycler.m4870j();
    }

    void markKnownViewsInvalid() {
        int m4677c = this.mChildHelper.m4677c();
        for (int i = 0; i < m4677c; i++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.m4872h();
    }

    public void offsetChildrenHorizontal(int i) {
        int m4680b = this.mChildHelper.m4680b();
        for (int i2 = 0; i2 < m4680b; i2++) {
            this.mChildHelper.m4679b(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int m4680b = this.mChildHelper.m4680b();
        for (int i2 = 0; i2 < m4680b; i2++) {
            this.mChildHelper.m4679b(i2).offsetTopAndBottom(i);
        }
    }

    void offsetPositionRecordsForInsert(int i, int i2) {
        int m4677c = this.mChildHelper.m4677c();
        for (int i3 = 0; i3 < m4677c; i3++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                childViewHolderInt.offsetPosition(i2, false);
                this.mState.f2993f = true;
            }
        }
        this.mRecycler.m4891b(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int m4677c = this.mChildHelper.m4677c();
        if (i < i2) {
            i5 = i2;
            i4 = -1;
            i3 = i;
        } else {
            i5 = i;
            i3 = i2;
            i4 = 1;
        }
        for (int i6 = 0; i6 < m4677c; i6++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i6));
            if (childViewHolderInt != null && childViewHolderInt.mPosition >= i3 && childViewHolderInt.mPosition <= i5) {
                if (childViewHolderInt.mPosition == i) {
                    childViewHolderInt.offsetPosition(i2 - i, false);
                } else {
                    childViewHolderInt.offsetPosition(i4, false);
                }
                this.mState.f2993f = true;
            }
        }
        this.mRecycler.m4906a(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int m4677c = this.mChildHelper.m4677c();
        for (int i3 = 0; i3 < m4677c; i3++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                if (childViewHolderInt.mPosition >= i + i2) {
                    childViewHolderInt.offsetPosition(-i2, z);
                    this.mState.f2993f = true;
                } else if (childViewHolderInt.mPosition >= i) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.mState.f2993f = true;
                }
            }
        }
        this.mRecycler.m4905a(i, i2, z);
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
        if (r7 >= 30.0f) goto L21;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            r0 = r4
            super.onAttachedToWindow()
            r0 = r4
            r1 = 0
            r0.mLayoutOrScrollCounter = r1
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = 1
            r0.mIsAttached = r1
            r0 = r4
            boolean r0 = r0.mFirstLayoutComplete
            if (r0 == 0) goto L21
            r0 = r4
            boolean r0 = r0.isLayoutRequested()
            if (r0 != 0) goto L21
            goto L23
        L21:
            r0 = 0
            r5 = r0
        L23:
            r0 = r4
            r1 = r5
            r0.mFirstLayoutComplete = r1
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L36
            r0 = r6
            r1 = r4
            r0.dispatchAttachedToWindow(r1)
        L36:
            r0 = r4
            r1 = 0
            r0.mPostedAnimatorRunner = r1
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto La3
            r0 = r4
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> r1 = androidx.recyclerview.widget.RunnableC1006e.f3172a
            java.lang.Object r1 = r1.get()
            androidx.recyclerview.widget.e r1 = (androidx.recyclerview.widget.RunnableC1006e) r1
            r0.mGapWorker = r1
            r0 = r4
            androidx.recyclerview.widget.e r0 = r0.mGapWorker
            if (r0 != 0) goto L9b
            r0 = r4
            androidx.recyclerview.widget.e r1 = new androidx.recyclerview.widget.e
            r2 = r1
            r2.<init>()
            r0.mGapWorker = r1
            r0 = r4
            android.view.Display r0 = androidx.core.p023g.C0552u.m6290F(r0)
            r6 = r0
            r0 = r4
            boolean r0 = r0.isInEditMode()
            if (r0 != 0) goto L80
            r0 = r6
            if (r0 == 0) goto L80
            r0 = r6
            float r0 = r0.getRefreshRate()
            r7 = r0
            r0 = r7
            r1 = 1106247680(0x41f00000, float:30.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L80
            goto L84
        L80:
            r0 = 1114636288(0x42700000, float:60.0)
            r7 = r0
        L84:
            r0 = r4
            androidx.recyclerview.widget.e r0 = r0.mGapWorker
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            r2 = r7
            float r1 = r1 / r2
            long r1 = (long) r1
            r0.f3176d = r1
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> r0 = androidx.recyclerview.widget.RunnableC1006e.f3172a
            r1 = r4
            androidx.recyclerview.widget.e r1 = r1.mGapWorker
            r0.set(r1)
        L9b:
            r0 = r4
            androidx.recyclerview.widget.e r0 = r0.mGapWorker
            r1 = r4
            r0.m4615a(r1)
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        RunnableC1006e runnableC1006e;
        super.onDetachedFromWindow();
        AbstractC0950f abstractC0950f = this.mItemAnimator;
        if (abstractC0950f != null) {
            abstractC0950f.mo4168d();
        }
        stopScroll();
        this.mIsAttached = false;
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.m4521b();
        if (!ALLOW_THREAD_GAP_WORK || (runnableC1006e = this.mGapWorker) == null) {
            return;
        }
        runnableC1006e.m4608b(this);
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

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    public void onExitLayoutOrScroll(boolean z) {
        this.mLayoutOrScrollCounter--;
        if (this.mLayoutOrScrollCounter < 1) {
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
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            if (r0 != 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r5
            boolean r0 = r0.mLayoutFrozen
            if (r0 == 0) goto L12
            r0 = 0
            return r0
        L12:
            r0 = r6
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto Lb1
            r0 = r6
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L5c
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L39
            r0 = r6
            r1 = 9
            float r0 = r0.getAxisValue(r1)
            float r0 = -r0
            r7 = r0
            goto L3b
        L39:
            r0 = 0
            r7 = r0
        L3b:
            r0 = r7
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            boolean r0 = r0.canScrollHorizontally()
            if (r0 == 0) goto L51
            r0 = r6
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r8 = r0
            goto L91
        L51:
            r0 = 0
            r9 = r0
            r0 = r8
            r7 = r0
            r0 = r9
            r8 = r0
            goto L91
        L5c:
            r0 = r6
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L8d
            r0 = r6
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L7e
            r0 = r8
            float r0 = -r0
            r8 = r0
            goto L51
        L7e:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            boolean r0 = r0.canScrollHorizontally()
            if (r0 == 0) goto L8d
            r0 = 0
            r7 = r0
            goto L91
        L8d:
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
        L91:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L9d
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Lb1
        L9d:
            r0 = r5
            r1 = r8
            r2 = r5
            float r2 = r2.mScaledHorizontalScrollFactor
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r7
            r3 = r5
            float r3 = r3.mScaledVerticalScrollFactor
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r6
            boolean r0 = r0.scrollByInternal(r1, r2, r3)
        Lb1:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (dispatchOnItemTouchIntercept(motionEvent)) {
            cancelTouch();
            return true;
        }
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            return false;
        }
        boolean canScrollHorizontally = abstractC0956i.canScrollHorizontally();
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
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = canScrollHorizontally ? 1 : 0;
            int i2 = i;
            if (canScrollVertically) {
                i2 = i | 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i3 = this.mInitialTouchX;
                int i4 = this.mInitialTouchY;
                if (!canScrollHorizontally || Math.abs(x2 - i3) <= this.mTouchSlop) {
                    z = false;
                } else {
                    this.mLastTouchX = x2;
                    z = true;
                }
                boolean z3 = z;
                if (canScrollVertically) {
                    z3 = z;
                    if (Math.abs(y2 - i4) > this.mTouchSlop) {
                        this.mLastTouchY = y2;
                        z3 = true;
                    }
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelTouch();
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
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0590b.m6068a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        C0590b.m6069a();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            defaultOnMeasure(i, i2);
        } else if (abstractC0956i.isAutoMeasureEnabled()) {
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
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.f2991d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i, i2);
            this.mState.f2996i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            if (!this.mLayout.shouldMeasureTwice()) {
                return;
            }
            this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            this.mState.f2996i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
        } else if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                if (this.mState.f2998k) {
                    this.mState.f2994g = true;
                } else {
                    this.mAdapterHelper.m4700e();
                    this.mState.f2994g = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.f2998k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC0945a abstractC0945a = this.mAdapter;
            if (abstractC0945a != null) {
                this.mState.f2992e = abstractC0945a.getItemCount();
            } else {
                this.mState.f2992e = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
            stopInterceptRequestLayout(false);
            this.mState.f2994g = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.mPendingSavedState = (SavedState) parcelable;
        super.onRestoreInstanceState(this.mPendingSavedState.getSuperState());
        if (this.mLayout == null || this.mPendingSavedState.f2939a == null) {
            return;
        }
        this.mLayout.onRestoreInstanceState(this.mPendingSavedState.f2939a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.m4952a(savedState2);
        } else {
            AbstractC0956i abstractC0956i = this.mLayout;
            if (abstractC0956i != null) {
                savedState.f2939a = abstractC0956i.onSaveInstanceState();
            } else {
                savedState.f2939a = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(int i, int i2) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x02e9, code lost:
        if (r19 != 0) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0270  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 998
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        C0552u.m6265a(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(AbstractC0977w abstractC0977w, AbstractC0950f.C0953c c0953c) {
        abstractC0977w.setFlags(0, 8192);
        if (this.mState.f2995h && abstractC0977w.isUpdated() && !abstractC0977w.isRemoved() && !abstractC0977w.shouldIgnore()) {
            this.mViewInfoStore.m4526a(getChangedHolderKey(abstractC0977w), abstractC0977w);
        }
        this.mViewInfoStore.m4523a(abstractC0977w, c0953c);
    }

    public void removeAndRecycleViews() {
        AbstractC0950f abstractC0950f = this.mItemAnimator;
        if (abstractC0950f != null) {
            abstractC0950f.mo4168d();
        }
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.m4908a();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean m4669f = this.mChildHelper.m4669f(view);
        if (m4669f) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.m4883c(childViewHolderInt);
            this.mRecycler.m4888b(childViewHolderInt);
        }
        stopInterceptRequestLayout(!m4669f);
        return m4669f;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC0977w childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(AbstractC0955h abstractC0955h) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i != null) {
            abstractC0956i.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(abstractC0955h);
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

    public void removeOnChildAttachStateChangeListener(AbstractC0962k abstractC0962k) {
        List<AbstractC0962k> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(abstractC0962k);
    }

    public void removeOnItemTouchListener(AbstractC0964m abstractC0964m) {
        this.mOnItemTouchListeners.remove(abstractC0964m);
        if (this.mActiveOnItemTouchListener == abstractC0964m) {
            this.mActiveOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(AbstractC0965n abstractC0965n) {
        List<AbstractC0965n> list = this.mScrollListeners;
        if (list != null) {
            list.remove(abstractC0965n);
        }
    }

    void repositionShadowingViews() {
        int m4680b = this.mChildHelper.m4680b();
        for (int i = 0; i < m4680b; i++) {
            View m4679b = this.mChildHelper.m4679b(i);
            AbstractC0977w childViewHolder = getChildViewHolder(m4679b);
            if (childViewHolder != null && childViewHolder.mShadowingHolder != null) {
                View view = childViewHolder.mShadowingHolder.itemView;
                int left = m4679b.getLeft();
                int top = m4679b.getTop();
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
            this.mOnItemTouchListeners.get(i).mo3991a(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutFrozen) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    void saveOldPositions() {
        int m4677c = this.mChildHelper.m4677c();
        for (int i = 0; i < m4677c; i++) {
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m4674d(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutFrozen) {
        } else {
            boolean canScrollHorizontally = abstractC0956i.canScrollHorizontally();
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
            scrollByInternal(i, i2, null);
        }
    }

    boolean scrollByInternal(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        consumePendingUpdateOperations();
        boolean z = false;
        if (this.mAdapter != null) {
            scrollStep(i, i2, this.mScrollStepConsumed);
            int[] iArr = this.mScrollStepConsumed;
            int i7 = iArr[0];
            int i8 = iArr[1];
            i4 = i8;
            i3 = i7;
            i6 = i - i7;
            i5 = i2 - i8;
        } else {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        if (dispatchNestedScroll(i3, i4, i6, i5, this.mScrollOffset, 0)) {
            int i9 = this.mLastTouchX;
            int[] iArr2 = this.mScrollOffset;
            this.mLastTouchX = i9 - iArr2[0];
            this.mLastTouchY -= iArr2[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(iArr2[0], iArr2[1]);
            }
            int[] iArr3 = this.mNestedOffsets;
            int i10 = iArr3[0];
            int[] iArr4 = this.mScrollOffset;
            iArr3[0] = i10 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0539h.m6323a(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i6, motionEvent.getY(), i5);
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (i3 != 0 || i4 != 0) {
            dispatchOnScrolled(i3, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        if (i3 != 0 || i4 != 0) {
            z = true;
        }
        return z;
    }

    void scrollStep(int i, int i2, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        C0590b.m6068a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int scrollHorizontallyBy = i != 0 ? this.mLayout.scrollHorizontallyBy(i, this.mRecycler, this.mState) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.mLayout.scrollVerticallyBy(i2, this.mRecycler, this.mState) : 0;
        C0590b.m6069a();
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
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (this.mLayoutFrozen) {
            return;
        }
        stopScroll();
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        abstractC0956i.scrollToPosition(i);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C1017j c1017j) {
        this.mAccessibilityDelegate = c1017j;
        C0552u.m6269a(this, this.mAccessibilityDelegate);
    }

    public void setAdapter(AbstractC0945a abstractC0945a) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0945a, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0948d abstractC0948d) {
        if (abstractC0948d == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = abstractC0948d;
        setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
    }

    boolean setChildImportantForAccessibilityInternal(AbstractC0977w abstractC0977w, int i) {
        if (!isComputingLayout()) {
            C0552u.m6258b(abstractC0977w.itemView, i);
            return true;
        }
        abstractC0977w.mPendingAccessibilityState = i;
        this.mPendingAccessibilityImportanceChange.add(abstractC0977w);
        return false;
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

    public void setEdgeEffectFactory(C0949e c0949e) {
        C0502e.m6462a(c0949e);
        this.mEdgeEffectFactory = c0949e;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(AbstractC0950f abstractC0950f) {
        AbstractC0950f abstractC0950f2 = this.mItemAnimator;
        if (abstractC0950f2 != null) {
            abstractC0950f2.mo4168d();
            this.mItemAnimator.m4939a(null);
        }
        this.mItemAnimator = abstractC0950f;
        AbstractC0950f abstractC0950f3 = this.mItemAnimator;
        if (abstractC0950f3 != null) {
            abstractC0950f3.m4939a(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.mRecycler.m4907a(i);
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.mLayoutFrozen) {
            assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0));
                this.mLayoutFrozen = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutFrozen = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void setLayoutManager(AbstractC0956i abstractC0956i) {
        if (abstractC0956i == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            AbstractC0950f abstractC0950f = this.mItemAnimator;
            if (abstractC0950f != null) {
                abstractC0950f.mo4168d();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.m4908a();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.m4908a();
        }
        this.mChildHelper.m4686a();
        this.mLayout = abstractC0956i;
        if (abstractC0956i != null) {
            if (abstractC0956i.mRecyclerView != null) {
                throw new IllegalArgumentException("LayoutManager " + abstractC0956i + " is already attached to a RecyclerView:" + abstractC0956i.mRecyclerView.exceptionLabel());
            }
            this.mLayout.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.m4893b();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().m6311a(z);
    }

    public void setOnFlingListener(AbstractC0963l abstractC0963l) {
        this.mOnFlingListener = abstractC0963l;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0965n abstractC0965n) {
        this.mScrollListener = abstractC0965n;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(C0966o c0966o) {
        this.mRecycler.m4898a(c0966o);
    }

    public void setRecyclerListener(AbstractC0969q abstractC0969q) {
        this.mRecyclerListener = abstractC0969q;
    }

    void setScrollState(int i) {
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
        if (i != 0) {
            if (i == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0975u abstractC0975u) {
        this.mRecycler.m4897a(abstractC0975u);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (isComputingLayout()) {
            int m6460a = accessibilityEvent != null ? C0506b.m6460a(accessibilityEvent) : 0;
            int i = m6460a;
            if (m6460a == 0) {
                i = 0;
            }
            this.mEatenAccessibilityChangeFlags = i | this.mEatenAccessibilityChangeFlags;
            return true;
        }
        return false;
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutFrozen) {
        } else {
            if (!abstractC0956i.canScrollHorizontally()) {
                i = 0;
            }
            if (!this.mLayout.canScrollVertically()) {
                i2 = 0;
            }
            if (i == 0 && i2 == 0) {
                return;
            }
            this.mViewFlinger.m4835a(i, i2, interpolator);
        }
    }

    public void smoothScrollToPosition(int i) {
        if (this.mLayoutFrozen) {
            return;
        }
        AbstractC0956i abstractC0956i = this.mLayout;
        if (abstractC0956i == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0956i.smoothScrollToPosition(this, this.mState, i);
        }
    }

    void startInterceptRequestLayout() {
        this.mInterceptRequestLayoutDepth++;
        if (this.mInterceptRequestLayoutDepth != 1 || this.mLayoutFrozen) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m6309b(i);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().m6318a(i, i2);
    }

    void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutFrozen) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View, androidx.core.p023g.AbstractC0540i
    public void stopNestedScroll() {
        getScrollingChildHelper().m6307c();
    }

    @Override // androidx.core.p023g.AbstractC0541j
    public void stopNestedScroll(int i) {
        getScrollingChildHelper().m6306c(i);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    public void swapAdapter(AbstractC0945a abstractC0945a, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0945a, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i, int i2, Object obj) {
        int m4677c = this.mChildHelper.m4677c();
        for (int i3 = 0; i3 < m4677c; i3++) {
            View m4674d = this.mChildHelper.m4674d(i3);
            AbstractC0977w childViewHolderInt = getChildViewHolderInt(m4674d);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i && childViewHolderInt.mPosition < i + i2) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((C0961j) m4674d.getLayoutParams()).mInsetsDirty = true;
            }
        }
        this.mRecycler.m4885c(i, i2);
    }
}
