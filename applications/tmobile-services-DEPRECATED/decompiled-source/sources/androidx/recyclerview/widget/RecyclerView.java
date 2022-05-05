package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.p004os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C0445R;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.ChildHelper;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.ViewInfoStore;
import com.google.android.gms.common.api.Api;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    static final boolean POST_UPDATES_ON_ANIMATION;
    static final Interpolator sQuinticInterpolator;
    RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    Adapter mAdapter;
    AdapterHelper mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private ChildDrawingOrderCallback mChildDrawingOrderCallback;
    ChildHelper mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    @NonNull
    private EdgeEffectFactory mEdgeEffectFactory;
    boolean mEnableFastScroller;
    @VisibleForTesting
    boolean mFirstLayoutComplete;
    GapWorker mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private OnItemTouchListener mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    ItemAnimator mItemAnimator;
    private ItemAnimator.ItemAnimatorListener mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<ItemDecoration> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    @VisibleForTesting
    LayoutManager mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final RecyclerViewDataObserver mObserver;
    private List<OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
    private OnFlingListener mOnFlingListener;
    private final ArrayList<OnItemTouchListener> mOnItemTouchListeners;
    @VisibleForTesting
    final List<ViewHolder> mPendingAccessibilityImportanceChange;
    private SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    GapWorker.LayoutPrefetchRegistryImpl mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final Recycler mRecycler;
    RecyclerListener mRecyclerListener;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private OnScrollListener mScrollListener;
    private List<OnScrollListener> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final State mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final ViewFlinger mViewFlinger;
    private final ViewInfoStore.ProcessCallback mViewInfoProcessCallback;
    final ViewInfoStore mViewInfoStore;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Adapter.class */
    public static abstract class Adapter<VH extends ViewHolder> {
        private final AdapterDataObservable mObservable = new AdapterDataObservable();
        private boolean mHasStableIds = false;

        public final void bindViewHolder(@NonNull VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            TraceCompat.m19438a("RV OnBindView");
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).f4779c = true;
            }
            TraceCompat.m19437b();
        }

        @NonNull
        public final VH createViewHolder(@NonNull ViewGroup viewGroup, int i) {
            try {
                TraceCompat.m19438a("RV CreateView");
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() == null) {
                    onCreateViewHolder.mItemViewType = i;
                    TraceCompat.m19437b();
                    return onCreateViewHolder;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } catch (Throwable th) {
                TraceCompat.m19437b();
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
            return this.mObservable.m17499a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.m17498b();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.m17496d(i, 1);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.m17494f(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.m17497c(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.m17496d(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, @Nullable Object obj) {
            this.mObservable.m17495e(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.m17494f(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.m17493g(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.m17493g(i, 1);
        }

        public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(@NonNull VH vh, int i);

        public void onBindViewHolder(@NonNull VH vh, int i, @NonNull List<Object> list) {
            onBindViewHolder(vh, i);
        }

        @NonNull
        public abstract VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(@NonNull VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(@NonNull VH vh) {
        }

        public void onViewDetachedFromWindow(@NonNull VH vh) {
        }

        public void onViewRecycled(@NonNull VH vh) {
        }

        public void registerAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.mHasStableIds = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void unregisterAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$AdapterDataObservable.class */
    public static class AdapterDataObservable extends Observable<AdapterDataObserver> {
        AdapterDataObservable() {
        }

        /* renamed from: a */
        public boolean m17499a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m17498b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).mo7065a();
            }
        }

        /* renamed from: c */
        public void m17497c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).mo8898e(i, i2, 1);
            }
        }

        /* renamed from: d */
        public void m17496d(int i, int i2) {
            m17495e(i, i2, null);
        }

        /* renamed from: e */
        public void m17495e(int i, int i2, @Nullable Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).mo8900c(i, i2, obj);
            }
        }

        /* renamed from: f */
        public void m17494f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).mo8899d(i, i2);
            }
        }

        /* renamed from: g */
        public void m17493g(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).mo8897f(i, i2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$AdapterDataObserver.class */
    public static abstract class AdapterDataObserver {
        /* renamed from: a */
        public void mo7065a() {
        }

        /* renamed from: b */
        public void mo8901b(int i, int i2) {
        }

        /* renamed from: c */
        public void mo8900c(int i, int i2, @Nullable Object obj) {
            mo8901b(i, i2);
        }

        /* renamed from: d */
        public void mo8899d(int i, int i2) {
        }

        /* renamed from: e */
        public void mo8898e(int i, int i2, int i3) {
        }

        /* renamed from: f */
        public void mo8897f(int i, int i2) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback.class */
    public interface ChildDrawingOrderCallback {
        /* renamed from: a */
        int mo17492a(int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory.class */
    public static class EdgeEffectFactory {

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory$EdgeDirection.class */
        public @interface EdgeDirection {
        }

        @NonNull
        /* renamed from: a */
        protected EdgeEffect m17491a(@NonNull RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimator.class */
    public static abstract class ItemAnimator {

        /* renamed from: a */
        private ItemAnimatorListener f4744a = null;

        /* renamed from: b */
        private ArrayList<ItemAnimatorFinishedListener> f4745b = new ArrayList<>();

        /* renamed from: c */
        private long f4746c = 120;

        /* renamed from: d */
        private long f4747d = 120;

        /* renamed from: e */
        private long f4748e = 250;

        /* renamed from: f */
        private long f4749f = 250;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimator$AdapterChanges.class */
        public @interface AdapterChanges {
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener.class */
        public interface ItemAnimatorFinishedListener {
            /* renamed from: a */
            void m17472a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener.class */
        public interface ItemAnimatorListener {
            /* renamed from: a */
            void mo17469a(@NonNull ViewHolder viewHolder);
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo.class */
        public static class ItemHolderInfo {

            /* renamed from: a */
            public int f4750a;

            /* renamed from: b */
            public int f4751b;

            @NonNull
            /* renamed from: a */
            public ItemHolderInfo m17471a(@NonNull ViewHolder viewHolder) {
                m17470b(viewHolder, 0);
                return this;
            }

            @NonNull
            /* renamed from: b */
            public ItemHolderInfo m17470b(@NonNull ViewHolder viewHolder, int i) {
                View view = viewHolder.itemView;
                this.f4750a = view.getLeft();
                this.f4751b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        /* renamed from: e */
        static int m17490e(ViewHolder viewHolder) {
            int i = viewHolder.mFlags & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = viewHolder.getOldPosition();
                int adapterPosition = viewHolder.getAdapterPosition();
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
        public abstract boolean mo17237a(@NonNull ViewHolder viewHolder, @Nullable ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        /* renamed from: b */
        public abstract boolean mo17236b(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        /* renamed from: c */
        public abstract boolean mo17235c(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2);

        /* renamed from: d */
        public abstract boolean mo17234d(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        /* renamed from: f */
        public boolean mo17233f(@NonNull ViewHolder viewHolder) {
            return true;
        }

        /* renamed from: g */
        public boolean mo17489g(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
            return mo17233f(viewHolder);
        }

        /* renamed from: h */
        public final void m17488h(@NonNull ViewHolder viewHolder) {
            m17477s(viewHolder);
            ItemAnimatorListener itemAnimatorListener = this.f4744a;
            if (itemAnimatorListener != null) {
                itemAnimatorListener.mo17469a(viewHolder);
            }
        }

        /* renamed from: i */
        public final void m17487i() {
            int size = this.f4745b.size();
            for (int i = 0; i < size; i++) {
                this.f4745b.get(i).m17472a();
            }
            this.f4745b.clear();
        }

        /* renamed from: j */
        public abstract void mo17486j(@NonNull ViewHolder viewHolder);

        /* renamed from: k */
        public abstract void mo17485k();

        /* renamed from: l */
        public long m17484l() {
            return this.f4746c;
        }

        /* renamed from: m */
        public long m17483m() {
            return this.f4749f;
        }

        /* renamed from: n */
        public long m17482n() {
            return this.f4748e;
        }

        /* renamed from: o */
        public long m17481o() {
            return this.f4747d;
        }

        /* renamed from: p */
        public abstract boolean mo17480p();

        /* renamed from: q */
        public final boolean m17479q(@Nullable ItemAnimatorFinishedListener itemAnimatorFinishedListener) {
            boolean p = mo17480p();
            if (itemAnimatorFinishedListener != null) {
                if (!p) {
                    itemAnimatorFinishedListener.m17472a();
                } else {
                    this.f4745b.add(itemAnimatorFinishedListener);
                }
            }
            return p;
        }

        @NonNull
        /* renamed from: r */
        public ItemHolderInfo m17478r() {
            return new ItemHolderInfo();
        }

        /* renamed from: s */
        public void m17477s(@NonNull ViewHolder viewHolder) {
        }

        @NonNull
        /* renamed from: t */
        public ItemHolderInfo m17476t(@NonNull State state, @NonNull ViewHolder viewHolder) {
            ItemHolderInfo r = m17478r();
            r.m17471a(viewHolder);
            return r;
        }

        @NonNull
        /* renamed from: u */
        public ItemHolderInfo m17475u(@NonNull State state, @NonNull ViewHolder viewHolder, int i, @NonNull List<Object> list) {
            ItemHolderInfo r = m17478r();
            r.m17471a(viewHolder);
            return r;
        }

        /* renamed from: v */
        public abstract void mo17474v();

        /* renamed from: w */
        void m17473w(ItemAnimatorListener itemAnimatorListener) {
            this.f4744a = itemAnimatorListener;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener.class */
    private class ItemAnimatorRestoreListener implements ItemAnimator.ItemAnimatorListener {
        ItemAnimatorRestoreListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorListener
        /* renamed from: a */
        public void mo17469a(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (!viewHolder.shouldBeKeptAsChild() && !RecyclerView.this.removeAnimatingView(viewHolder.itemView) && viewHolder.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ItemDecoration.class */
    public static abstract class ItemDecoration {
        @Deprecated
        /* renamed from: f */
        public void m17468f(@NonNull Rect rect, int i, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: g */
        public void mo17467g(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull State state) {
            m17468f(rect, ((LayoutParams) view.getLayoutParams()).m17363a(), recyclerView);
        }

        @Deprecated
        /* renamed from: h */
        public void m17466h(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        /* renamed from: i */
        public void mo9946i(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            m17466h(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: j */
        public void m17465j(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        /* renamed from: k */
        public void mo17464k(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            m17465j(canvas, recyclerView);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutManager.class */
    public static abstract class LayoutManager {

        /* renamed from: a */
        ChildHelper f4753a;

        /* renamed from: b */
        RecyclerView f4754b;
        @Nullable

        /* renamed from: g */
        SmoothScroller f4759g;

        /* renamed from: m */
        int f4765m;

        /* renamed from: n */
        boolean f4766n;

        /* renamed from: o */
        private int f4767o;

        /* renamed from: p */
        private int f4768p;

        /* renamed from: q */
        private int f4769q;

        /* renamed from: r */
        private int f4770r;

        /* renamed from: c */
        private final ViewBoundsCheck.Callback f4755c = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: a */
            public View mo17046a(int i) {
                return LayoutManager.this.m17442J(i);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: b */
            public int mo17045b(View view) {
                return LayoutManager.this.m17430R(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: c */
            public int mo17044c() {
                return LayoutManager.this.m17407f0();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: d */
            public int mo17043d() {
                return LayoutManager.this.m17385p0() - LayoutManager.this.m17405g0();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: e */
            public int mo17042e(View view) {
                return LayoutManager.this.m17426U(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }
        };

        /* renamed from: d */
        private final ViewBoundsCheck.Callback f4756d = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: a */
            public View mo17046a(int i) {
                return LayoutManager.this.m17442J(i);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: b */
            public int mo17045b(View view) {
                return LayoutManager.this.m17425V(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: c */
            public int mo17044c() {
                return LayoutManager.this.m17403h0();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: d */
            public int mo17043d() {
                return LayoutManager.this.m17422X() - LayoutManager.this.m17409e0();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
            /* renamed from: e */
            public int mo17042e(View view) {
                return LayoutManager.this.m17433P(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        };

        /* renamed from: e */
        ViewBoundsCheck f4757e = new ViewBoundsCheck(this.f4755c);

        /* renamed from: f */
        ViewBoundsCheck f4758f = new ViewBoundsCheck(this.f4756d);

        /* renamed from: h */
        boolean f4760h = false;

        /* renamed from: i */
        boolean f4761i = false;

        /* renamed from: j */
        boolean f4762j = false;

        /* renamed from: k */
        private boolean f4763k = true;

        /* renamed from: l */
        private boolean f4764l = true;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry.class */
        public interface LayoutPrefetchRegistry {
            /* renamed from: a */
            void mo17364a(int i, int i2);
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties.class */
        public static class Properties {

            /* renamed from: a */
            public int f4773a;

            /* renamed from: b */
            public int f4774b;

            /* renamed from: c */
            public boolean f4775c;

            /* renamed from: d */
            public boolean f4776d;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
            if (r5 != 1073741824) goto L_0x0066;
         */
        /* renamed from: L */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m17439L(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0030
                r0 = r7
                if (r0 < 0) goto L_0x0014
                goto L_0x0034
            L_0x0014:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0066
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0041
                r0 = r5
                if (r0 == 0) goto L_0x0066
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L_0x0041
                goto L_0x0066
            L_0x0030:
                r0 = r7
                if (r0 < 0) goto L_0x003a
            L_0x0034:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L_0x006a
            L_0x003a:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0046
                r0 = r5
                r4 = r0
            L_0x0041:
                r0 = r6
                r7 = r0
                goto L_0x006a
            L_0x0046:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L_0x0066
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0060
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L_0x005b
                goto L_0x0060
            L_0x005b:
                r0 = 0
                r4 = r0
                goto L_0x0041
            L_0x0060:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L_0x0041
            L_0x0066:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L_0x006a:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.m17439L(int, int, int, int, boolean):int");
        }

        /* renamed from: M */
        private int[] m17437M(View view, Rect rect) {
            int f0 = m17407f0();
            int h0 = m17403h0();
            int p0 = m17385p0();
            int g0 = m17405g0();
            int X = m17422X();
            int e0 = m17409e0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width();
            int height = rect.height();
            int i = left - f0;
            int min = Math.min(0, i);
            int i2 = top - h0;
            int min2 = Math.min(0, i2);
            int i3 = (width + left) - (p0 - g0);
            int max = Math.max(0, i3);
            int max2 = Math.max(0, (height + top) - (X - e0));
            if (m17419a0() == 1) {
                min = max != 0 ? max : Math.max(min, i3);
            } else if (min == 0) {
                min = Math.min(i, max);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            return new int[]{min, min2};
        }

        /* renamed from: g */
        private void m17406g(View view, int i, boolean z) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.f4754b.mViewInfoStore.m17040b(childViewHolderInt);
            } else {
                this.f4754b.mViewInfoStore.m17026p(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.f4753a.m17841c(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f4754b) {
                int m = this.f4753a.m17831m(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f4753a.m17837g();
                }
                if (m == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f4754b.indexOfChild(view) + this.f4754b.exceptionLabel());
                } else if (m != i2) {
                    this.f4754b.mLayout.m17456C0(m, i2);
                }
            } else {
                this.f4753a.m17843a(view, i, false);
                layoutParams.f4779c = true;
                SmoothScroller smoothScroller = this.f4759g;
                if (smoothScroller != null && smoothScroller.m17291h()) {
                    this.f4759g.m17288k(view);
                }
            }
            if (layoutParams.f4780d) {
                childViewHolderInt.itemView.invalidate();
                layoutParams.f4780d = false;
            }
        }

        /* renamed from: j0 */
        public static Properties m17398j0(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
            Properties properties = new Properties();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0445R.styleable.RecyclerView, i, i2);
            properties.f4773a = obtainStyledAttributes.getInt(C0445R.styleable.RecyclerView_android_orientation, 1);
            properties.f4774b = obtainStyledAttributes.getInt(C0445R.styleable.RecyclerView_spanCount, 1);
            properties.f4775c = obtainStyledAttributes.getBoolean(C0445R.styleable.RecyclerView_reverseLayout, false);
            properties.f4776d = obtainStyledAttributes.getBoolean(C0445R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return properties;
        }

        /* renamed from: o */
        public static int m17388o(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                return Math.min(size, Math.max(i2, i3));
            }
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }

        /* renamed from: u0 */
        private boolean m17376u0(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int f0 = m17407f0();
            int h0 = m17403h0();
            int p0 = m17385p0();
            int g0 = m17405g0();
            int X = m17422X();
            int e0 = m17409e0();
            Rect rect = this.f4754b.mTempRect;
            m17431Q(focusedChild, rect);
            return rect.left - i < p0 - g0 && rect.right - i > f0 && rect.top - i2 < X - e0 && rect.bottom - i2 > h0;
        }

        /* renamed from: w1 */
        private void m17371w1(Recycler recycler, int i, View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.f4754b.mAdapter.hasStableIds()) {
                    m17368y(i);
                    recycler.m17343D(view);
                    this.f4754b.mViewInfoStore.m17031k(childViewHolderInt);
                    return;
                }
                m17379r1(i);
                recycler.m17344C(childViewHolderInt);
            }
        }

        /* renamed from: x0 */
        private static boolean m17369x0(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            boolean z = false;
            boolean z2 = false;
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                if (size >= i) {
                    z = true;
                }
                return z;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z2 = true;
                }
                return z2;
            }
        }

        /* renamed from: z */
        private void m17366z(int i, @NonNull View view) {
            this.f4753a.m17840d(i);
        }

        /* renamed from: A */
        void m17463A(RecyclerView recyclerView) {
            this.f4761i = true;
            m17447H0(recyclerView);
        }

        /* renamed from: A0 */
        public void m17462A0(@NonNull View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f4778b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        /* renamed from: A1 */
        void m17461A1(RecyclerView recyclerView) {
            m17458B1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: B */
        void m17460B(RecyclerView recyclerView, Recycler recycler) {
            this.f4761i = false;
            mo17197J0(recyclerView, recycler);
        }

        /* renamed from: B0 */
        public void m17459B0(@NonNull View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.f4754b.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int L = m17439L(m17385p0(), m17382q0(), m17407f0() + m17405g0() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) layoutParams).width, mo17145l());
            int L2 = m17439L(m17422X(), m17421Y(), m17403h0() + m17409e0() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) layoutParams).height, mo17142m());
            if (m17449G1(view, L, L2, layoutParams)) {
                view.measure(L, L2);
            }
        }

        /* renamed from: B1 */
        void m17458B1(int i, int i2) {
            this.f4769q = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f4767o = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.f4769q = 0;
            }
            this.f4770r = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f4768p = mode2;
            if (mode2 == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.f4770r = 0;
            }
        }

        @Nullable
        /* renamed from: C */
        public View m17457C(@NonNull View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f4753a.m17830n(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        /* renamed from: C0 */
        public void m17456C0(int i, int i2) {
            View J = m17442J(i);
            if (J != null) {
                m17368y(i);
                m17401i(J, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f4754b.toString());
        }

        /* renamed from: C1 */
        public void m17455C1(int i, int i2) {
            this.f4754b.setMeasuredDimension(i, i2);
        }

        @Nullable
        /* renamed from: D */
        public View mo17454D(int i) {
            int K = m17441K();
            for (int i2 = 0; i2 < K; i2++) {
                View J = m17442J(i2);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(J);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.f4754b.mState.m17272e() || !childViewHolderInt.isRemoved())) {
                    return J;
                }
            }
            return null;
        }

        /* renamed from: D0 */
        public void mo17209D0(@AbstractC0040Px int i) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i);
            }
        }

        /* renamed from: D1 */
        public void mo17208D1(Rect rect, int i, int i2) {
            int width = rect.width();
            int f0 = m17407f0();
            int g0 = m17405g0();
            int height = rect.height();
            int h0 = m17403h0();
            m17455C1(m17388o(i, width + f0 + g0, m17411d0()), m17388o(i2, height + h0 + m17409e0(), m17414c0()));
        }

        /* renamed from: E */
        public abstract LayoutParams mo17206E();

        /* renamed from: E0 */
        public void mo17205E0(@AbstractC0040Px int i) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i);
            }
        }

        /* renamed from: E1 */
        void m17453E1(int i, int i2) {
            int K = m17441K();
            if (K == 0) {
                this.f4754b.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i6 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            for (int i7 = 0; i7 < K; i7++) {
                View J = m17442J(i7);
                Rect rect = this.f4754b.mTempRect;
                m17431Q(J, rect);
                int i8 = rect.left;
                i5 = i5;
                if (i8 < i5) {
                    i5 = i8;
                }
                int i9 = rect.right;
                i3 = i3;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                i6 = i6;
                if (i10 < i6) {
                    i6 = i10;
                }
                int i11 = rect.bottom;
                i4 = i4;
                if (i11 > i4) {
                    i4 = i11;
                }
            }
            this.f4754b.mTempRect.set(i5, i6, i3, i4);
            mo17208D1(this.f4754b.mTempRect, i, i2);
        }

        /* renamed from: F */
        public LayoutParams mo17203F(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* renamed from: F0 */
        public void m17452F0(@Nullable Adapter adapter, @Nullable Adapter adapter2) {
        }

        /* renamed from: F1 */
        void m17451F1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f4754b = null;
                this.f4753a = null;
                this.f4769q = 0;
                this.f4770r = 0;
            } else {
                this.f4754b = recyclerView;
                this.f4753a = recyclerView.mChildHelper;
                this.f4769q = recyclerView.getWidth();
                this.f4770r = recyclerView.getHeight();
            }
            this.f4767o = 1073741824;
            this.f4768p = 1073741824;
        }

        /* renamed from: G */
        public LayoutParams mo17201G(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* renamed from: G0 */
        public boolean m17450G0(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: G1 */
        public boolean m17449G1(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f4763k || !m17369x0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m17369x0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        /* renamed from: H */
        public int m17448H() {
            return -1;
        }

        @CallSuper
        /* renamed from: H0 */
        public void m17447H0(RecyclerView recyclerView) {
        }

        /* renamed from: H1 */
        boolean mo17446H1() {
            return false;
        }

        /* renamed from: I */
        public int m17445I(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f4778b.bottom;
        }

        @Deprecated
        /* renamed from: I0 */
        public void m17444I0(RecyclerView recyclerView) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: I1 */
        public boolean m17443I1(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f4763k || !m17369x0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !m17369x0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        @Nullable
        /* renamed from: J */
        public View m17442J(int i) {
            ChildHelper childHelper = this.f4753a;
            return childHelper != null ? childHelper.m17838f(i) : null;
        }

        @CallSuper
        /* renamed from: J0 */
        public void mo17197J0(RecyclerView recyclerView, Recycler recycler) {
            m17444I0(recyclerView);
        }

        /* renamed from: J1 */
        public void mo9858J1(RecyclerView recyclerView, State state, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        /* renamed from: K */
        public int m17441K() {
            ChildHelper childHelper = this.f4753a;
            return childHelper != null ? childHelper.m17837g() : 0;
        }

        @Nullable
        /* renamed from: K0 */
        public View mo17195K0(@NonNull View view, int i, @NonNull Recycler recycler, @NonNull State state) {
            return null;
        }

        /* renamed from: K1 */
        public void m17440K1(SmoothScroller smoothScroller) {
            SmoothScroller smoothScroller2 = this.f4759g;
            if (!(smoothScroller2 == null || smoothScroller == smoothScroller2 || !smoothScroller2.m17291h())) {
                this.f4759g.m17282r();
            }
            this.f4759g = smoothScroller;
            smoothScroller.m17283q(this.f4754b, this);
        }

        /* renamed from: L0 */
        public void mo17193L0(@NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f4754b;
            m17436M0(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        /* renamed from: L1 */
        void m17438L1() {
            SmoothScroller smoothScroller = this.f4759g;
            if (smoothScroller != null) {
                smoothScroller.m17282r();
            }
        }

        /* renamed from: M0 */
        public void m17436M0(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1)) {
                    z = true;
                    if (!this.f4754b.canScrollVertically(-1)) {
                        z = true;
                        if (!this.f4754b.canScrollHorizontally(-1)) {
                            z = this.f4754b.canScrollHorizontally(1);
                        }
                    }
                }
                accessibilityEvent.setScrollable(z);
                Adapter adapter = this.f4754b.mAdapter;
                if (adapter != null) {
                    accessibilityEvent.setItemCount(adapter.getItemCount());
                }
            }
        }

        /* renamed from: M1 */
        public boolean mo17191M1() {
            return false;
        }

        /* renamed from: N */
        public boolean m17435N() {
            RecyclerView recyclerView = this.f4754b;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: N0 */
        public void m17434N0(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            RecyclerView recyclerView = this.f4754b;
            mo16403O0(recyclerView.mRecycler, recyclerView.mState, accessibilityNodeInfoCompat);
        }

        /* renamed from: O */
        public int mo17187O(@NonNull Recycler recycler, @NonNull State state) {
            RecyclerView recyclerView = this.f4754b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo17145l()) {
                        i = this.f4754b.mAdapter.getItemCount();
                    }
                }
            }
            return i;
        }

        /* renamed from: O0 */
        public void mo16403O0(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.f4754b.canScrollVertically(-1) || this.f4754b.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.m19031a(8192);
                accessibilityNodeInfoCompat.m18982y0(true);
            }
            if (this.f4754b.canScrollVertically(1) || this.f4754b.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.m19031a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                accessibilityNodeInfoCompat.m18982y0(true);
            }
            accessibilityNodeInfoCompat.m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(mo17144l0(recycler, state), mo17187O(recycler, state), m17372w0(recycler, state), m17392m0(recycler, state)));
        }

        /* renamed from: P */
        public int m17433P(@NonNull View view) {
            return view.getBottom() + m17445I(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: P0 */
        public void m17432P0(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && !this.f4753a.m17830n(childViewHolderInt.itemView)) {
                RecyclerView recyclerView = this.f4754b;
                mo17182Q0(recyclerView.mRecycler, recyclerView.mState, view, accessibilityNodeInfoCompat);
            }
        }

        /* renamed from: Q */
        public void m17431Q(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        /* renamed from: Q0 */
        public void mo17182Q0(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(mo17142m() ? m17400i0(view) : 0, 1, mo17145l() ? m17400i0(view) : 0, 1, false, false));
        }

        /* renamed from: R */
        public int m17430R(@NonNull View view) {
            return view.getLeft() - m17417b0(view);
        }

        @Nullable
        /* renamed from: R0 */
        public View m17429R0(@NonNull View view, int i) {
            return null;
        }

        /* renamed from: S */
        public int m17428S(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4778b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: S0 */
        public void mo17177S0(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: T */
        public int m17427T(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f4778b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: T0 */
        public void mo17174T0(@NonNull RecyclerView recyclerView) {
        }

        /* renamed from: U */
        public int m17426U(@NonNull View view) {
            return view.getRight() + m17395k0(view);
        }

        /* renamed from: U0 */
        public void mo17172U0(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: V */
        public int m17425V(@NonNull View view) {
            return view.getTop() - m17390n0(view);
        }

        /* renamed from: V0 */
        public void mo17170V0(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        @Nullable
        /* renamed from: W */
        public View m17424W() {
            View focusedChild;
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f4753a.m17830n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: W0 */
        public void m17423W0(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        @AbstractC0040Px
        /* renamed from: X */
        public int m17422X() {
            return this.f4770r;
        }

        /* renamed from: X0 */
        public void mo17167X0(@NonNull RecyclerView recyclerView, int i, int i2, @Nullable Object obj) {
            m17423W0(recyclerView, i, i2);
        }

        /* renamed from: Y */
        public int m17421Y() {
            return this.f4768p;
        }

        /* renamed from: Y0 */
        public void mo17165Y0(Recycler recycler, State state) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: Z */
        public int m17420Z() {
            RecyclerView recyclerView = this.f4754b;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            return adapter != null ? adapter.getItemCount() : 0;
        }

        /* renamed from: Z0 */
        public void mo17163Z0(State state) {
        }

        /* renamed from: a0 */
        public int m17419a0() {
            return ViewCompat.m19244A(this.f4754b);
        }

        /* renamed from: a1 */
        public void m17418a1(@NonNull Recycler recycler, @NonNull State state, int i, int i2) {
            this.f4754b.defaultOnMeasure(i, i2);
        }

        /* renamed from: b0 */
        public int m17417b0(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f4778b.left;
        }

        @Deprecated
        /* renamed from: b1 */
        public boolean m17416b1(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return m17367y0() || recyclerView.isComputingLayout();
        }

        /* renamed from: c */
        public void m17415c(View view) {
            m17412d(view, -1);
        }

        @AbstractC0040Px
        /* renamed from: c0 */
        public int m17414c0() {
            return ViewCompat.m19242B(this.f4754b);
        }

        /* renamed from: c1 */
        public boolean m17413c1(@NonNull RecyclerView recyclerView, @NonNull State state, @NonNull View view, @Nullable View view2) {
            return m17416b1(recyclerView, view, view2);
        }

        /* renamed from: d */
        public void m17412d(View view, int i) {
            m17406g(view, i, true);
        }

        @AbstractC0040Px
        /* renamed from: d0 */
        public int m17411d0() {
            return ViewCompat.m19240C(this.f4754b);
        }

        /* renamed from: d1 */
        public void mo17157d1(Parcelable parcelable) {
        }

        /* renamed from: e */
        public void m17410e(View view) {
            m17408f(view, -1);
        }

        @AbstractC0040Px
        /* renamed from: e0 */
        public int m17409e0() {
            RecyclerView recyclerView = this.f4754b;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        @Nullable
        /* renamed from: e1 */
        public Parcelable mo17155e1() {
            return null;
        }

        /* renamed from: f */
        public void m17408f(View view, int i) {
            m17406g(view, i, false);
        }

        @AbstractC0040Px
        /* renamed from: f0 */
        public int m17407f0() {
            RecyclerView recyclerView = this.f4754b;
            return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
        }

        /* renamed from: f1 */
        public void mo17153f1(int i) {
        }

        @AbstractC0040Px
        /* renamed from: g0 */
        public int m17405g0() {
            RecyclerView recyclerView = this.f4754b;
            return recyclerView != null ? recyclerView.getPaddingRight() : 0;
        }

        /* renamed from: g1 */
        void m17404g1(SmoothScroller smoothScroller) {
            if (this.f4759g == smoothScroller) {
                this.f4759g = null;
            }
        }

        /* renamed from: h */
        public void mo17150h(String str) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        @AbstractC0040Px
        /* renamed from: h0 */
        public int m17403h0() {
            RecyclerView recyclerView = this.f4754b;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: h1 */
        public boolean m17402h1(int i, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f4754b;
            return mo16402i1(recyclerView.mRecycler, recyclerView.mState, i, bundle);
        }

        /* renamed from: i */
        public void m17401i(@NonNull View view, int i) {
            m17399j(view, i, (LayoutParams) view.getLayoutParams());
        }

        /* renamed from: i0 */
        public int m17400i0(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).m17363a();
        }

        /* renamed from: i1 */
        public boolean mo16402i1(@NonNull Recycler recycler, @NonNull State state, int i, @Nullable Bundle bundle) {
            int i2;
            int i3;
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i2 = recyclerView.canScrollVertically(1) ? (m17422X() - m17403h0()) - m17409e0() : 0;
                i2 = i2;
                if (this.f4754b.canScrollHorizontally(1)) {
                    i3 = (m17385p0() - m17407f0()) - m17405g0();
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i2 = recyclerView.canScrollVertically(-1) ? -((m17422X() - m17403h0()) - m17409e0()) : 0;
                i2 = i2;
                if (this.f4754b.canScrollHorizontally(-1)) {
                    i3 = -((m17385p0() - m17407f0()) - m17405g0());
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f4754b.smoothScrollBy(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        /* renamed from: j */
        public void m17399j(@NonNull View view, int i, LayoutParams layoutParams) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.f4754b.mViewInfoStore.m17040b(childViewHolderInt);
            } else {
                this.f4754b.mViewInfoStore.m17026p(childViewHolderInt);
            }
            this.f4753a.m17841c(view, i, layoutParams, childViewHolderInt.isRemoved());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: j1 */
        public boolean m17397j1(@NonNull View view, int i, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f4754b;
            return m17394k1(recyclerView.mRecycler, recyclerView.mState, view, i, bundle);
        }

        /* renamed from: k */
        public void m17396k(@NonNull View view, @NonNull Rect rect) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        /* renamed from: k0 */
        public int m17395k0(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f4778b.right;
        }

        /* renamed from: k1 */
        public boolean m17394k1(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, int i, @Nullable Bundle bundle) {
            return false;
        }

        /* renamed from: l */
        public boolean mo17145l() {
            return false;
        }

        /* renamed from: l0 */
        public int mo17144l0(@NonNull Recycler recycler, @NonNull State state) {
            RecyclerView recyclerView = this.f4754b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo17142m()) {
                        i = this.f4754b.mAdapter.getItemCount();
                    }
                }
            }
            return i;
        }

        /* renamed from: l1 */
        public void m17393l1(@NonNull Recycler recycler) {
            for (int K = m17441K() - 1; K >= 0; K--) {
                if (!RecyclerView.getChildViewHolderInt(m17442J(K)).shouldIgnore()) {
                    m17386o1(K, recycler);
                }
            }
        }

        /* renamed from: m */
        public boolean mo17142m() {
            return false;
        }

        /* renamed from: m0 */
        public int m17392m0(@NonNull Recycler recycler, @NonNull State state) {
            return 0;
        }

        /* renamed from: m1 */
        void m17391m1(Recycler recycler) {
            int j = recycler.m17324j();
            for (int i = j - 1; i >= 0; i--) {
                View n = recycler.m17320n(i);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(n);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.f4754b.removeDetachedView(n, false);
                    }
                    ItemAnimator itemAnimator = this.f4754b.mItemAnimator;
                    if (itemAnimator != null) {
                        itemAnimator.mo17486j(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    recycler.m17309y(n);
                }
            }
            recycler.m17329e();
            if (j > 0) {
                this.f4754b.invalidate();
            }
        }

        /* renamed from: n */
        public boolean mo17140n(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* renamed from: n0 */
        public int m17390n0(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f4778b.top;
        }

        /* renamed from: n1 */
        public void m17389n1(@NonNull View view, @NonNull Recycler recycler) {
            m17381q1(view);
            recycler.m17345B(view);
        }

        /* renamed from: o0 */
        public void m17387o0(@NonNull View view, boolean z, @NonNull Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).f4778b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (!(this.f4754b == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
                RectF rectF = this.f4754b.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: o1 */
        public void m17386o1(int i, @NonNull Recycler recycler) {
            View J = m17442J(i);
            m17379r1(i);
            recycler.m17345B(J);
        }

        /* renamed from: p */
        public void mo17137p(int i, int i2, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        @AbstractC0040Px
        /* renamed from: p0 */
        public int m17385p0() {
            return this.f4769q;
        }

        /* renamed from: p1 */
        public boolean m17384p1(Runnable runnable) {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* renamed from: q */
        public void mo17383q(int i, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        /* renamed from: q0 */
        public int m17382q0() {
            return this.f4767o;
        }

        /* renamed from: q1 */
        public void m17381q1(View view) {
            this.f4753a.m17828p(view);
        }

        /* renamed from: r */
        public int mo17134r(@NonNull State state) {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: r0 */
        public boolean m17380r0() {
            int K = m17441K();
            for (int i = 0; i < K; i++) {
                ViewGroup.LayoutParams layoutParams = m17442J(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: r1 */
        public void m17379r1(int i) {
            if (m17442J(i) != null) {
                this.f4753a.m17827q(i);
            }
        }

        /* renamed from: s */
        public int mo17132s(@NonNull State state) {
            return 0;
        }

        /* renamed from: s0 */
        public boolean m17378s0() {
            return this.f4761i;
        }

        /* renamed from: s1 */
        public boolean m17377s1(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z) {
            return mo16401t1(recyclerView, view, rect, z, false);
        }

        /* renamed from: t */
        public int mo17130t(@NonNull State state) {
            return 0;
        }

        /* renamed from: t0 */
        public boolean mo17129t0() {
            return this.f4762j;
        }

        /* renamed from: t1 */
        public boolean mo16401t1(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            int[] M = m17437M(view, rect);
            int i = M[0];
            int i2 = M[1];
            if (z2 && !m17376u0(recyclerView, i, i2)) {
                return false;
            }
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

        /* renamed from: u */
        public int mo17127u(@NonNull State state) {
            return 0;
        }

        /* renamed from: u1 */
        public void m17375u1() {
            RecyclerView recyclerView = this.f4754b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: v */
        public int mo17125v(@NonNull State state) {
            return 0;
        }

        /* renamed from: v0 */
        public final boolean m17374v0() {
            return this.f4764l;
        }

        /* renamed from: v1 */
        public void m17373v1() {
            this.f4760h = true;
        }

        /* renamed from: w */
        public int mo17123w(@NonNull State state) {
            return 0;
        }

        /* renamed from: w0 */
        public boolean m17372w0(@NonNull Recycler recycler, @NonNull State state) {
            return false;
        }

        /* renamed from: x */
        public void m17370x(@NonNull Recycler recycler) {
            for (int K = m17441K() - 1; K >= 0; K--) {
                m17371w1(recycler, K, m17442J(K));
            }
        }

        /* renamed from: x1 */
        public int mo17121x1(int i, Recycler recycler, State state) {
            return 0;
        }

        /* renamed from: y */
        public void m17368y(int i) {
            m17366z(i, m17442J(i));
        }

        /* renamed from: y0 */
        public boolean m17367y0() {
            SmoothScroller smoothScroller = this.f4759g;
            return smoothScroller != null && smoothScroller.m17291h();
        }

        /* renamed from: y1 */
        public void mo17119y1(int i) {
        }

        /* renamed from: z0 */
        public boolean m17365z0(@NonNull View view, boolean z, boolean z2) {
            boolean z3 = this.f4757e.m17052b(view, 24579) && this.f4758f.m17052b(view, 24579);
            return z ? z3 : !z3;
        }

        /* renamed from: z1 */
        public int mo17117z1(int i, Recycler recycler, State state) {
            return 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        ViewHolder f4777a;

        /* renamed from: b */
        final Rect f4778b = new Rect();

        /* renamed from: c */
        boolean f4779c = true;

        /* renamed from: d */
        boolean f4780d = false;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
        }

        /* renamed from: a */
        public int m17363a() {
            return this.f4777a.getLayoutPosition();
        }

        /* renamed from: b */
        public boolean m17362b() {
            return this.f4777a.isUpdated();
        }

        /* renamed from: c */
        public boolean m17361c() {
            return this.f4777a.isRemoved();
        }

        /* renamed from: d */
        public boolean m17360d() {
            return this.f4777a.isInvalid();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener.class */
    public interface OnChildAttachStateChangeListener {
        /* renamed from: b */
        void mo16410b(@NonNull View view);

        /* renamed from: d */
        void mo16409d(@NonNull View view);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$OnFlingListener.class */
    public static abstract class OnFlingListener {
        /* renamed from: a */
        public abstract boolean mo17229a(int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$OnItemTouchListener.class */
    public interface OnItemTouchListener {
        /* renamed from: a */
        void mo17301a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        /* renamed from: c */
        boolean mo17300c(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        /* renamed from: e */
        void mo17299e(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$OnScrollListener.class */
    public static abstract class OnScrollListener {
        /* renamed from: a */
        public void mo5963a(@NonNull RecyclerView recyclerView, int i) {
        }

        /* renamed from: b */
        public void mo7064b(@NonNull RecyclerView recyclerView, int i, int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Orientation.class */
    public @interface Orientation {
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$RecycledViewPool.class */
    public static class RecycledViewPool {

        /* renamed from: a */
        SparseArray<ScrapData> f4781a = new SparseArray<>();

        /* renamed from: b */
        private int f4782b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData.class */
        public static class ScrapData {

            /* renamed from: a */
            final ArrayList<ViewHolder> f4783a = new ArrayList<>();

            /* renamed from: b */
            int f4784b = 5;

            /* renamed from: c */
            long f4785c = 0;

            /* renamed from: d */
            long f4786d = 0;

            ScrapData() {
            }
        }

        /* renamed from: g */
        private ScrapData m17353g(int i) {
            ScrapData scrapData = this.f4781a.get(i);
            ScrapData scrapData2 = scrapData;
            if (scrapData == null) {
                scrapData2 = new ScrapData();
                this.f4781a.put(i, scrapData2);
            }
            return scrapData2;
        }

        /* renamed from: a */
        void m17359a() {
            this.f4782b++;
        }

        /* renamed from: b */
        public void m17358b() {
            for (int i = 0; i < this.f4781a.size(); i++) {
                this.f4781a.valueAt(i).f4783a.clear();
            }
        }

        /* renamed from: c */
        void m17357c() {
            this.f4782b--;
        }

        /* renamed from: d */
        void m17356d(int i, long j) {
            ScrapData g = m17353g(i);
            g.f4786d = m17350j(g.f4786d, j);
        }

        /* renamed from: e */
        void m17355e(int i, long j) {
            ScrapData g = m17353g(i);
            g.f4785c = m17350j(g.f4785c, j);
        }

        @Nullable
        /* renamed from: f */
        public ViewHolder m17354f(int i) {
            ScrapData scrapData = this.f4781a.get(i);
            if (scrapData == null || scrapData.f4783a.isEmpty()) {
                return null;
            }
            ArrayList<ViewHolder> arrayList = scrapData.f4783a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        /* renamed from: h */
        void m17352h(Adapter adapter, Adapter adapter2, boolean z) {
            if (adapter != null) {
                m17357c();
            }
            if (!z && this.f4782b == 0) {
                m17358b();
            }
            if (adapter2 != null) {
                m17359a();
            }
        }

        /* renamed from: i */
        public void m17351i(ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            ArrayList<ViewHolder> arrayList = m17353g(itemViewType).f4783a;
            if (this.f4781a.get(itemViewType).f4784b > arrayList.size()) {
                viewHolder.resetInternal();
                arrayList.add(viewHolder);
            }
        }

        /* renamed from: j */
        long m17350j(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: k */
        public void m17349k(int i, int i2) {
            ScrapData g = m17353g(i);
            g.f4784b = i2;
            ArrayList<ViewHolder> arrayList = g.f4783a;
            while (arrayList.size() > i2) {
                arrayList.remove(arrayList.size() - 1);
            }
        }

        /* renamed from: l */
        boolean m17348l(int i, long j, long j2) {
            long j3 = m17353g(i).f4786d;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: m */
        boolean m17347m(int i, long j, long j2) {
            long j3 = m17353g(i).f4785c;
            return j3 == 0 || j + j3 < j2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Recycler.class */
    public final class Recycler {

        /* renamed from: a */
        final ArrayList<ViewHolder> f4787a = new ArrayList<>();

        /* renamed from: b */
        ArrayList<ViewHolder> f4788b = null;

        /* renamed from: c */
        final ArrayList<ViewHolder> f4789c = new ArrayList<>();

        /* renamed from: d */
        private final List<ViewHolder> f4790d = Collections.unmodifiableList(this.f4787a);

        /* renamed from: e */
        private int f4791e = 2;

        /* renamed from: f */
        int f4792f = 2;

        /* renamed from: g */
        RecycledViewPool f4793g;

        /* renamed from: h */
        private ViewCacheExtension f4794h;

        public Recycler() {
        }

        /* renamed from: H */
        private boolean m17339H(@NonNull ViewHolder viewHolder, int i, int i2, long j) {
            viewHolder.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = viewHolder.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f4793g.m17348l(itemViewType, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.mAdapter.bindViewHolder(viewHolder, i);
            this.f4793g.m17356d(viewHolder.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            m17332b(viewHolder);
            if (!RecyclerView.this.mState.m17272e()) {
                return true;
            }
            viewHolder.mPreLayoutPosition = i2;
            return true;
        }

        /* renamed from: b */
        private void m17332b(ViewHolder viewHolder) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = viewHolder.itemView;
                if (ViewCompat.m19162y(view) == 0) {
                    ViewCompat.m19163x0(view, 1);
                }
                RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.mAccessibilityDelegate;
                if (recyclerViewAccessibilityDelegate != null) {
                    AccessibilityDelegateCompat a = recyclerViewAccessibilityDelegate.m17261a();
                    if (a instanceof RecyclerViewAccessibilityDelegate.ItemDelegate) {
                        ((RecyclerViewAccessibilityDelegate.ItemDelegate) a).m17258b(view);
                    }
                    ViewCompat.m19183n0(view, a);
                }
            }
        }

        /* renamed from: q */
        private void m17317q(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m17317q((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        /* renamed from: r */
        private void m17316r(ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ViewGroup) {
                m17317q((ViewGroup) view, false);
            }
        }

        /* renamed from: A */
        void m17346A(int i) {
            m17333a(this.f4789c.get(i), true);
            this.f4789c.remove(i);
        }

        /* renamed from: B */
        public void m17345B(@NonNull View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            m17344C(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator != null && !childViewHolderInt.isRecyclable()) {
                RecyclerView.this.mItemAnimator.mo17486j(childViewHolderInt);
            }
        }

        /* renamed from: C */
        void m17344C(ViewHolder viewHolder) {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = true;
            if (viewHolder.isScrap() || viewHolder.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(viewHolder.isScrap());
                sb.append(" isAttached:");
                if (viewHolder.itemView.getParent() != null) {
                    z = true;
                }
                sb.append(z);
                sb.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(sb.toString());
            } else if (viewHolder.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + viewHolder + RecyclerView.this.exceptionLabel());
            } else if (!viewHolder.shouldIgnore()) {
                boolean doesTransientStatePreventRecycling = viewHolder.doesTransientStatePreventRecycling();
                Adapter adapter = RecyclerView.this.mAdapter;
                if ((adapter != null && doesTransientStatePreventRecycling && adapter.onFailedToRecycleView(viewHolder)) || viewHolder.isRecyclable()) {
                    if (this.f4792f <= 0 || viewHolder.hasAnyOfTheFlags(526)) {
                        z2 = false;
                    } else {
                        int size = this.f4789c.size();
                        int i = size;
                        if (size >= this.f4792f) {
                            i = size;
                            if (size > 0) {
                                m17346A(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.mPrefetchRegistry.m17749d(viewHolder.mPosition)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.mPrefetchRegistry.m17749d(this.f4789c.get(i).mPosition)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f4789c.add(i2, viewHolder);
                        z2 = true;
                    }
                    if (!z2) {
                        m17333a(viewHolder, true);
                        RecyclerView.this.mViewInfoStore.m17025q(viewHolder);
                        if (!z2 && !z3 && doesTransientStatePreventRecycling) {
                            viewHolder.mOwnerRecyclerView = null;
                            return;
                        }
                        return;
                    }
                }
                z3 = false;
                RecyclerView.this.mViewInfoStore.m17025q(viewHolder);
                if (!z2) {
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
            }
        }

        /* renamed from: D */
        void m17343D(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f4788b == null) {
                    this.f4788b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f4788b.add(childViewHolderInt);
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.hasStableIds()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.f4787a.add(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
        }

        /* renamed from: E */
        void m17342E(RecycledViewPool recycledViewPool) {
            RecycledViewPool recycledViewPool2 = this.f4793g;
            if (recycledViewPool2 != null) {
                recycledViewPool2.m17357c();
            }
            this.f4793g = recycledViewPool;
            if (recycledViewPool != null && RecyclerView.this.getAdapter() != null) {
                this.f4793g.m17359a();
            }
        }

        /* renamed from: F */
        void m17341F(ViewCacheExtension viewCacheExtension) {
            this.f4794h = viewCacheExtension;
        }

        /* renamed from: G */
        public void m17340G(int i) {
            this.f4791e = i;
            m17336K();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:102:0x03af  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x03c8  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0402  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x02ec  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x031a  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x035b  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0374  */
        @androidx.annotation.Nullable
        /* renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.ViewHolder m17338I(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1139
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.m17338I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        /* renamed from: J */
        void m17337J(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.f4788b.remove(viewHolder);
            } else {
                this.f4787a.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: K */
        public void m17336K() {
            LayoutManager layoutManager = RecyclerView.this.mLayout;
            this.f4792f = this.f4791e + (layoutManager != null ? layoutManager.f4765m : 0);
            for (int size = this.f4789c.size() - 1; size >= 0 && this.f4789c.size() > this.f4792f; size--) {
                m17346A(size);
            }
        }

        /* renamed from: L */
        boolean m17335L(ViewHolder viewHolder) {
            if (viewHolder.isRemoved()) {
                return RecyclerView.this.mState.m17272e();
            }
            int i = viewHolder.mPosition;
            if (i < 0 || i >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder + RecyclerView.this.exceptionLabel());
            }
            boolean z = false;
            if (!RecyclerView.this.mState.m17272e() && RecyclerView.this.mAdapter.getItemViewType(viewHolder.mPosition) != viewHolder.getItemViewType()) {
                return false;
            }
            if (!RecyclerView.this.mAdapter.hasStableIds()) {
                return true;
            }
            if (viewHolder.getItemId() == RecyclerView.this.mAdapter.getItemId(viewHolder.mPosition)) {
                z = true;
            }
            return z;
        }

        /* renamed from: M */
        void m17334M(int i, int i2) {
            int i3;
            for (int size = this.f4789c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f4789c.get(size);
                if (viewHolder != null && (i3 = viewHolder.mPosition) >= i && i3 < i2 + i) {
                    viewHolder.addFlags(2);
                    m17346A(size);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void m17333a(@NonNull ViewHolder viewHolder, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
            View view = viewHolder.itemView;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.mAccessibilityDelegate;
            if (recyclerViewAccessibilityDelegate != null) {
                AccessibilityDelegateCompat a = recyclerViewAccessibilityDelegate.m17261a();
                ViewCompat.m19183n0(view, a instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? ((RecyclerViewAccessibilityDelegate.ItemDelegate) a).m17259a(view) : null);
            }
            if (z) {
                m17327g(viewHolder);
            }
            viewHolder.mOwnerRecyclerView = null;
            m17325i().m17351i(viewHolder);
        }

        /* renamed from: c */
        public void m17331c() {
            this.f4787a.clear();
            m17308z();
        }

        /* renamed from: d */
        void m17330d() {
            int size = this.f4789c.size();
            for (int i = 0; i < size; i++) {
                this.f4789c.get(i).clearOldPosition();
            }
            int size2 = this.f4787a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f4787a.get(i2).clearOldPosition();
            }
            ArrayList<ViewHolder> arrayList = this.f4788b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f4788b.get(i3).clearOldPosition();
                }
            }
        }

        /* renamed from: e */
        void m17329e() {
            this.f4787a.clear();
            ArrayList<ViewHolder> arrayList = this.f4788b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* renamed from: f */
        public int m17328f(int i) {
            if (i >= 0 && i < RecyclerView.this.mState.m17275b()) {
                return !RecyclerView.this.mState.m17272e() ? i : RecyclerView.this.mAdapterHelper.m17881m(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.mState.m17275b() + RecyclerView.this.exceptionLabel());
        }

        /* renamed from: g */
        void m17327g(@NonNull ViewHolder viewHolder) {
            RecyclerListener recyclerListener = RecyclerView.this.mRecyclerListener;
            if (recyclerListener != null) {
                recyclerListener.m17307a(viewHolder);
            }
            Adapter adapter = RecyclerView.this.mAdapter;
            if (adapter != null) {
                adapter.onViewRecycled(viewHolder);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.m17025q(viewHolder);
            }
        }

        /* renamed from: h */
        ViewHolder m17326h(int i) {
            int size;
            int m;
            ArrayList<ViewHolder> arrayList = this.f4788b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                ViewHolder viewHolder = this.f4788b.get(i2);
                if (!viewHolder.wasReturnedFromScrap() && viewHolder.getLayoutPosition() == i) {
                    viewHolder.addFlags(32);
                    return viewHolder;
                }
            }
            if (!RecyclerView.this.mAdapter.hasStableIds() || (m = RecyclerView.this.mAdapterHelper.m17881m(i)) <= 0 || m >= RecyclerView.this.mAdapter.getItemCount()) {
                return null;
            }
            long itemId = RecyclerView.this.mAdapter.getItemId(m);
            for (int i3 = 0; i3 < size; i3++) {
                ViewHolder viewHolder2 = this.f4788b.get(i3);
                if (!viewHolder2.wasReturnedFromScrap() && viewHolder2.getItemId() == itemId) {
                    viewHolder2.addFlags(32);
                    return viewHolder2;
                }
            }
            return null;
        }

        /* renamed from: i */
        RecycledViewPool m17325i() {
            if (this.f4793g == null) {
                this.f4793g = new RecycledViewPool();
            }
            return this.f4793g;
        }

        /* renamed from: j */
        int m17324j() {
            return this.f4787a.size();
        }

        @NonNull
        /* renamed from: k */
        public List<ViewHolder> m17323k() {
            return this.f4790d;
        }

        /* renamed from: l */
        ViewHolder m17322l(long j, int i, boolean z) {
            for (int size = this.f4787a.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f4787a.get(size);
                if (viewHolder.getItemId() == j && !viewHolder.wasReturnedFromScrap()) {
                    if (i == viewHolder.getItemViewType()) {
                        viewHolder.addFlags(32);
                        if (viewHolder.isRemoved() && !RecyclerView.this.mState.m17272e()) {
                            viewHolder.setFlags(2, 14);
                        }
                        return viewHolder;
                    } else if (!z) {
                        this.f4787a.remove(size);
                        RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
                        m17309y(viewHolder.itemView);
                    }
                }
            }
            for (int size2 = this.f4789c.size() - 1; size2 >= 0; size2--) {
                ViewHolder viewHolder2 = this.f4789c.get(size2);
                if (viewHolder2.getItemId() == j && !viewHolder2.isAttachedToTransitionOverlay()) {
                    if (i == viewHolder2.getItemViewType()) {
                        if (!z) {
                            this.f4789c.remove(size2);
                        }
                        return viewHolder2;
                    } else if (!z) {
                        m17346A(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: m */
        ViewHolder m17321m(int i, boolean z) {
            View e;
            int size = this.f4787a.size();
            for (int i2 = 0; i2 < size; i2++) {
                ViewHolder viewHolder = this.f4787a.get(i2);
                if (!viewHolder.wasReturnedFromScrap() && viewHolder.getLayoutPosition() == i && !viewHolder.isInvalid() && (RecyclerView.this.mState.f4820h || !viewHolder.isRemoved())) {
                    viewHolder.addFlags(32);
                    return viewHolder;
                }
            }
            if (z || (e = RecyclerView.this.mChildHelper.m17839e(i)) == null) {
                int size2 = this.f4789c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ViewHolder viewHolder2 = this.f4789c.get(i3);
                    if (!viewHolder2.isInvalid() && viewHolder2.getLayoutPosition() == i && !viewHolder2.isAttachedToTransitionOverlay()) {
                        if (!z) {
                            this.f4789c.remove(i3);
                        }
                        return viewHolder2;
                    }
                }
                return null;
            }
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(e);
            RecyclerView.this.mChildHelper.m17825s(e);
            int m = RecyclerView.this.mChildHelper.m17831m(e);
            if (m != -1) {
                RecyclerView.this.mChildHelper.m17840d(m);
                m17343D(e);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
        }

        /* renamed from: n */
        View m17320n(int i) {
            return this.f4787a.get(i).itemView;
        }

        @NonNull
        /* renamed from: o */
        public View m17319o(int i) {
            return m17318p(i, false);
        }

        /* renamed from: p */
        View m17318p(int i, boolean z) {
            return m17338I(i, z, Long.MAX_VALUE).itemView;
        }

        /* renamed from: s */
        void m17315s() {
            int size = this.f4789c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f4789c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f4779c = true;
                }
            }
        }

        /* renamed from: t */
        void m17314t() {
            int size = this.f4789c.size();
            for (int i = 0; i < size; i++) {
                ViewHolder viewHolder = this.f4789c.get(i);
                if (viewHolder != null) {
                    viewHolder.addFlags(6);
                    viewHolder.addChangePayload(null);
                }
            }
            Adapter adapter = RecyclerView.this.mAdapter;
            if (adapter == null || !adapter.hasStableIds()) {
                m17308z();
            }
        }

        /* renamed from: u */
        void m17313u(int i, int i2) {
            int size = this.f4789c.size();
            for (int i3 = 0; i3 < size; i3++) {
                ViewHolder viewHolder = this.f4789c.get(i3);
                if (viewHolder != null && viewHolder.mPosition >= i) {
                    viewHolder.offsetPosition(i2, true);
                }
            }
        }

        /* renamed from: v */
        void m17312v(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i5 = -1;
                i4 = i;
                i3 = i2;
            } else {
                i5 = 1;
                i3 = i;
                i4 = i2;
            }
            int size = this.f4789c.size();
            for (int i7 = 0; i7 < size; i7++) {
                ViewHolder viewHolder = this.f4789c.get(i7);
                if (viewHolder != null && (i6 = viewHolder.mPosition) >= i4 && i6 <= i3) {
                    if (i6 == i) {
                        viewHolder.offsetPosition(i2 - i, false);
                    } else {
                        viewHolder.offsetPosition(i5, false);
                    }
                }
            }
        }

        /* renamed from: w */
        void m17311w(int i, int i2, boolean z) {
            for (int size = this.f4789c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f4789c.get(size);
                if (viewHolder != null) {
                    int i3 = viewHolder.mPosition;
                    if (i3 >= i + i2) {
                        viewHolder.offsetPosition(-i2, z);
                    } else if (i3 >= i) {
                        viewHolder.addFlags(8);
                        m17346A(size);
                    }
                }
            }
        }

        /* renamed from: x */
        void m17310x(Adapter adapter, Adapter adapter2, boolean z) {
            m17331c();
            m17325i().m17352h(adapter, adapter2, z);
        }

        /* renamed from: y */
        void m17309y(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            m17344C(childViewHolderInt);
        }

        /* renamed from: z */
        void m17308z() {
            for (int size = this.f4789c.size() - 1; size >= 0; size--) {
                m17346A(size);
            }
            this.f4789c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.m17751b();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$RecyclerListener.class */
    public interface RecyclerListener {
        /* renamed from: a */
        void m17307a(@NonNull ViewHolder viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver.class */
    public class RecyclerViewDataObserver extends AdapterDataObserver {
        RecyclerViewDataObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: a */
        public void mo7065a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f4819g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (!RecyclerView.this.mAdapterHelper.m17878p()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: c */
        public void mo8900c(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m17876r(i, i2, obj)) {
                m17306g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: d */
        public void mo8899d(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m17875s(i, i2)) {
                m17306g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: e */
        public void mo8898e(int i, int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m17874t(i, i2, i3)) {
                m17306g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: f */
        public void mo8897f(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m17873u(i, i2)) {
                m17306g();
            }
        }

        /* renamed from: g */
        void m17306g() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    ViewCompat.m19199f0(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        Parcelable f4797h;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4797h = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        void m17305b(SavedState savedState) {
            this.f4797h = savedState.f4797h;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f4797h, 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener.class */
    public static class SimpleOnItemTouchListener implements OnItemTouchListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: a */
        public void mo17301a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: c */
        public boolean mo17300c(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        /* renamed from: e */
        public void mo17299e(boolean z) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SmoothScroller.class */
    public static abstract class SmoothScroller {

        /* renamed from: b */
        private RecyclerView f4799b;

        /* renamed from: c */
        private LayoutManager f4800c;

        /* renamed from: d */
        private boolean f4801d;

        /* renamed from: e */
        private boolean f4802e;

        /* renamed from: f */
        private View f4803f;

        /* renamed from: h */
        private boolean f4805h;

        /* renamed from: a */
        private int f4798a = -1;

        /* renamed from: g */
        private final Action f4804g = new Action(0, 0);

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action.class */
        public static class Action {

            /* renamed from: a */
            private int f4806a;

            /* renamed from: b */
            private int f4807b;

            /* renamed from: c */
            private int f4808c;

            /* renamed from: d */
            private int f4809d;

            /* renamed from: e */
            private Interpolator f4810e;

            /* renamed from: f */
            private boolean f4811f;

            /* renamed from: g */
            private int f4812g;

            public Action(@AbstractC0040Px int i, @AbstractC0040Px int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public Action(@AbstractC0040Px int i, @AbstractC0040Px int i2, int i3, @Nullable Interpolator interpolator) {
                this.f4809d = -1;
                this.f4811f = false;
                this.f4812g = 0;
                this.f4806a = i;
                this.f4807b = i2;
                this.f4808c = i3;
                this.f4810e = interpolator;
            }

            /* renamed from: e */
            private void m17277e() {
                if (this.f4810e != null && this.f4808c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (this.f4808c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            /* renamed from: a */
            boolean m17281a() {
                return this.f4809d >= 0;
            }

            /* renamed from: b */
            public void m17280b(int i) {
                this.f4809d = i;
            }

            /* renamed from: c */
            void m17279c(RecyclerView recyclerView) {
                int i = this.f4809d;
                if (i >= 0) {
                    this.f4809d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f4811f = false;
                } else if (this.f4811f) {
                    m17277e();
                    recyclerView.mViewFlinger.m17263f(this.f4806a, this.f4807b, this.f4808c, this.f4810e);
                    int i2 = this.f4812g + 1;
                    this.f4812g = i2;
                    if (i2 > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f4811f = false;
                } else {
                    this.f4812g = 0;
                }
            }

            /* renamed from: d */
            public void m17278d(@AbstractC0040Px int i, @AbstractC0040Px int i2, int i3, @Nullable Interpolator interpolator) {
                this.f4806a = i;
                this.f4807b = i2;
                this.f4808c = i3;
                this.f4810e = interpolator;
                this.f4811f = true;
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider.class */
        public interface ScrollVectorProvider {
            @Nullable
            /* renamed from: a */
            PointF mo17161a(int i);
        }

        @Nullable
        /* renamed from: a */
        public PointF m17298a(int i) {
            LayoutManager e = m17294e();
            if (e instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) e).mo17161a(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + ScrollVectorProvider.class.getCanonicalName());
            return null;
        }

        /* renamed from: b */
        public View m17297b(int i) {
            return this.f4799b.mLayout.mo17454D(i);
        }

        /* renamed from: c */
        public int m17296c() {
            return this.f4799b.mLayout.m17441K();
        }

        /* renamed from: d */
        public int m17295d(View view) {
            return this.f4799b.getChildLayoutPosition(view);
        }

        @Nullable
        /* renamed from: e */
        public LayoutManager m17294e() {
            return this.f4800c;
        }

        /* renamed from: f */
        public int m17293f() {
            return this.f4798a;
        }

        /* renamed from: g */
        public boolean m17292g() {
            return this.f4801d;
        }

        /* renamed from: h */
        public boolean m17291h() {
            return this.f4802e;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: i */
        public void m17290i(@NonNull PointF pointF) {
            float f = pointF.x;
            float f2 = pointF.y;
            float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* renamed from: j */
        void m17289j(int i, int i2) {
            PointF a;
            RecyclerView recyclerView = this.f4799b;
            if (this.f4798a == -1 || recyclerView == null) {
                m17282r();
            }
            if (!(!this.f4801d || this.f4803f != null || this.f4800c == null || (a = m17298a(this.f4798a)) == null || (a.x == 0.0f && a.y == 0.0f))) {
                recyclerView.scrollStep((int) Math.signum(a.x), (int) Math.signum(a.y), null);
            }
            this.f4801d = false;
            View view = this.f4803f;
            if (view != null) {
                if (m17295d(view) == this.f4798a) {
                    mo17218o(this.f4803f, recyclerView.mState, this.f4804g);
                    this.f4804g.m17279c(recyclerView);
                    m17282r();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f4803f = null;
                }
            }
            if (this.f4802e) {
                mo17287l(i, i2, recyclerView.mState, this.f4804g);
                boolean a2 = this.f4804g.m17281a();
                this.f4804g.m17279c(recyclerView);
                if (a2 && this.f4802e) {
                    this.f4801d = true;
                    recyclerView.mViewFlinger.m17264e();
                }
            }
        }

        /* renamed from: k */
        protected void m17288k(View view) {
            if (m17295d(view) == m17293f()) {
                this.f4803f = view;
            }
        }

        /* renamed from: l */
        protected abstract void mo17287l(@AbstractC0040Px int i, @AbstractC0040Px int i2, @NonNull State state, @NonNull Action action);

        /* renamed from: m */
        protected abstract void mo17286m();

        /* renamed from: n */
        protected abstract void mo17285n();

        /* renamed from: o */
        protected abstract void mo17218o(@NonNull View view, @NonNull State state, @NonNull Action action);

        /* renamed from: p */
        public void m17284p(int i) {
            this.f4798a = i;
        }

        /* renamed from: q */
        void m17283q(RecyclerView recyclerView, LayoutManager layoutManager) {
            recyclerView.mViewFlinger.m17262g();
            if (this.f4805h) {
                Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f4799b = recyclerView;
            this.f4800c = layoutManager;
            int i = this.f4798a;
            if (i != -1) {
                recyclerView.mState.f4813a = i;
                this.f4802e = true;
                this.f4801d = true;
                this.f4803f = m17297b(m17293f());
                mo17286m();
                this.f4799b.mViewFlinger.m17264e();
                this.f4805h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: r */
        public final void m17282r() {
            if (this.f4802e) {
                this.f4802e = false;
                mo17285n();
                this.f4799b.mState.f4813a = -1;
                this.f4803f = null;
                this.f4798a = -1;
                this.f4801d = false;
                this.f4800c.m17404g1(this);
                this.f4800c = null;
                this.f4799b = null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$State.class */
    public static class State {

        /* renamed from: b */
        private SparseArray<Object> f4814b;

        /* renamed from: m */
        int f4825m;

        /* renamed from: n */
        long f4826n;

        /* renamed from: o */
        int f4827o;

        /* renamed from: p */
        int f4828p;

        /* renamed from: q */
        int f4829q;

        /* renamed from: a */
        int f4813a = -1;

        /* renamed from: c */
        int f4815c = 0;

        /* renamed from: d */
        int f4816d = 0;

        /* renamed from: e */
        int f4817e = 1;

        /* renamed from: f */
        int f4818f = 0;

        /* renamed from: g */
        boolean f4819g = false;

        /* renamed from: h */
        boolean f4820h = false;

        /* renamed from: i */
        boolean f4821i = false;

        /* renamed from: j */
        boolean f4822j = false;

        /* renamed from: k */
        boolean f4823k = false;

        /* renamed from: l */
        boolean f4824l = false;

        /* renamed from: a */
        void m17276a(int i) {
            if ((this.f4817e & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f4817e));
            }
        }

        /* renamed from: b */
        public int m17275b() {
            return this.f4820h ? this.f4815c - this.f4816d : this.f4818f;
        }

        /* renamed from: c */
        public int m17274c() {
            return this.f4813a;
        }

        /* renamed from: d */
        public boolean m17273d() {
            return this.f4813a != -1;
        }

        /* renamed from: e */
        public boolean m17272e() {
            return this.f4820h;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: f */
        public void m17271f(Adapter adapter) {
            this.f4817e = 1;
            this.f4818f = adapter.getItemCount();
            this.f4820h = false;
            this.f4821i = false;
            this.f4822j = false;
        }

        /* renamed from: g */
        public boolean m17270g() {
            return this.f4824l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f4813a + ", mData=" + this.f4814b + ", mItemCount=" + this.f4818f + ", mIsMeasuring=" + this.f4822j + ", mPreviousLayoutItemCount=" + this.f4815c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f4816d + ", mStructureChanged=" + this.f4819g + ", mInPreLayout=" + this.f4820h + ", mRunSimpleAnimations=" + this.f4823k + ", mRunPredictiveAnimations=" + this.f4824l + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ViewCacheExtension.class */
    public static abstract class ViewCacheExtension {
        @Nullable
        /* renamed from: a */
        public abstract View m17269a(@NonNull Recycler recycler, int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ViewFlinger.class */
    public class ViewFlinger implements Runnable {

        /* renamed from: f */
        private int f4830f;

        /* renamed from: g */
        private int f4831g;

        /* renamed from: h */
        OverScroller f4832h;

        /* renamed from: i */
        Interpolator f4833i = RecyclerView.sQuinticInterpolator;

        /* renamed from: j */
        private boolean f4834j = false;

        /* renamed from: k */
        private boolean f4835k = false;

        ViewFlinger() {
            this.f4832h = new OverScroller(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        /* renamed from: a */
        private int m17268a(int i, int i2, int i3, int i4) {
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
            float b = m17267b(Math.min(1.0f, (f * 1.0f) / f2));
            if (sqrt > 0) {
                i5 = Math.round(Math.abs((f3 + (b * f3)) / sqrt) * 1000.0f) * 4;
            } else {
                i5 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i5, 2000);
        }

        /* renamed from: b */
        private float m17267b(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: d */
        private void m17265d() {
            RecyclerView.this.removeCallbacks(this);
            ViewCompat.m19199f0(RecyclerView.this, this);
        }

        /* renamed from: c */
        public void m17266c(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f4831g = 0;
            this.f4830f = 0;
            Interpolator interpolator = this.f4833i;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.f4833i = interpolator2;
                this.f4832h = new OverScroller(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
            }
            this.f4832h.fling(0, 0, i, i2, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            m17264e();
        }

        /* renamed from: e */
        void m17264e() {
            if (this.f4834j) {
                this.f4835k = true;
            } else {
                m17265d();
            }
        }

        /* renamed from: f */
        public void m17263f(int i, int i2, int i3, @Nullable Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = m17268a(i, i2, 0, 0);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.sQuinticInterpolator;
            }
            if (this.f4833i != interpolator2) {
                this.f4833i = interpolator2;
                this.f4832h = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f4831g = 0;
            this.f4830f = 0;
            RecyclerView.this.setScrollState(2);
            this.f4832h.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f4832h.computeScrollOffset();
            }
            m17264e();
        }

        /* renamed from: g */
        public void m17262g() {
            RecyclerView.this.removeCallbacks(this);
            this.f4832h.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                m17262g();
                return;
            }
            this.f4835k = false;
            this.f4834j = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.f4832h;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f4830f;
                int i5 = currY - this.f4831g;
                this.f4830f = currX;
                this.f4831g = currY;
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
                    SmoothScroller smoothScroller = recyclerView4.mLayout.f4759g;
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (smoothScroller != null) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (!smoothScroller.m17292g()) {
                            i6 = i10;
                            i = i9;
                            i3 = i8;
                            i2 = i11;
                            if (smoothScroller.m17291h()) {
                                int b = RecyclerView.this.mState.m17275b();
                                if (b == 0) {
                                    smoothScroller.m17282r();
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else if (smoothScroller.m17293f() >= b) {
                                    smoothScroller.m17284p(b - 1);
                                    smoothScroller.m17289j(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else {
                                    smoothScroller.m17289j(i8, i9);
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
                    i3 = 0;
                    i2 = i7;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i3, i, i6, i2, null, 1, iArr5);
                int[] iArr6 = RecyclerView.this.mReusableIntPair;
                int i12 = i6 - iArr6[0];
                int i13 = i2 - iArr6[1];
                if (!(i3 == 0 && i == 0)) {
                    RecyclerView.this.dispatchOnScrolled(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
                SmoothScroller smoothScroller2 = RecyclerView.this.mLayout.f4759g;
                if ((smoothScroller2 != null && smoothScroller2.m17292g()) || !z) {
                    m17264e();
                    RecyclerView recyclerView6 = RecyclerView.this;
                    GapWorker gapWorker = recyclerView6.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.m17757f(recyclerView6, i3, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
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
                        RecyclerView.this.mPrefetchRegistry.m17751b();
                    }
                }
            }
            SmoothScroller smoothScroller3 = RecyclerView.this.mLayout.f4759g;
            if (smoothScroller3 != null && smoothScroller3.m17292g()) {
                smoothScroller3.m17289j(0, 0);
            }
            this.f4834j = false;
            if (this.f4835k) {
                m17265d();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.stopNestedScroll(1);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$ViewHolder.class */
    public static abstract class ViewHolder {
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        @NonNull
        public final View itemView;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        Recycler mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        @VisibleForTesting
        int mPendingAccessibilityState = -1;

        public ViewHolder(@NonNull View view) {
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

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
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
            return (this.mFlags & 16) == 0 && ViewCompat.m19221P(this.itemView);
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

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isBound() {
            boolean z = true;
            if ((this.mFlags & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !ViewCompat.m19221P(this.itemView);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & Indexable.MAX_URL_LENGTH) != 0;
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
                ((LayoutParams) this.itemView.getLayoutParams()).f4779c = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.m19162y(this.itemView);
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
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (z && this.mIsRecyclableCount == 0) {
                this.mFlags &= -17;
            }
        }

        void setScrapContainer(Recycler recycler, boolean z) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
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
            this.mScrapContainer.m17337J(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i == 18 || i == 19 || i == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = Build.VERSION.SDK_INT >= 16;
        ALLOW_THREAD_GAP_WORK = Build.VERSION.SDK_INT >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = Build.VERSION.SDK_INT <= 15;
        IGNORE_DETACHED_FOCUSED_CHILD = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0445R.attr.recyclerViewStyle);
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mObserver = new RecyclerViewDataObserver();
        this.mRecycler = new Recycler();
        this.mViewInfoStore = new ViewInfoStore();
        this.mUpdateChildViewsRunnable = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
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
        this.mEdgeEffectFactory = new EdgeEffectFactory();
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        boolean z = true;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new GapWorker.LayoutPrefetchRegistryImpl() : null;
        this.mState = new State();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new ItemAnimatorRestoreListener();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                ItemAnimator itemAnimator = RecyclerView.this.mItemAnimator;
                if (itemAnimator != null) {
                    itemAnimator.mo17474v();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new ViewInfoStore.ProcessCallback() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            /* renamed from: a */
            public void mo17021a(ViewHolder viewHolder) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.m17389n1(viewHolder.itemView, recyclerView.mRecycler);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            /* renamed from: b */
            public void mo17020b(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            /* renamed from: c */
            public void mo17019c(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.mRecycler.m17337J(viewHolder);
                RecyclerView.this.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            /* renamed from: d */
            public void mo17018d(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                viewHolder.setIsRecyclable(false);
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mDataSetHasChangedAfterLayout) {
                    if (recyclerView.mItemAnimator.mo17236b(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) {
                        RecyclerView.this.postAnimationRunner();
                    }
                } else if (recyclerView.mItemAnimator.mo17234d(viewHolder, itemHolderInfo, itemHolderInfo2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            }
        };
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = ViewConfigurationCompat.m19128b(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = ViewConfigurationCompat.m19126d(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.m17473w(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (ViewCompat.m19162y(this) == 0) {
            ViewCompat.m19163x0(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0445R.styleable.RecyclerView, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0445R.styleable.RecyclerView, attributeSet, obtainStyledAttributes, i, 0);
        }
        String string = obtainStyledAttributes.getString(C0445R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C0445R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(C0445R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z2 = obtainStyledAttributes.getBoolean(C0445R.styleable.RecyclerView_fastScrollEnabled, false);
        this.mEnableFastScroller = z2;
        if (z2) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(C0445R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C0445R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C0445R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C0445R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, NESTED_SCROLLING_ATTRS, attributeSet, obtainStyledAttributes2, i, 0);
            }
            z = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z);
    }

    private void addAnimatingView(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.m17337J(getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.mChildHelper.m17841c(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.mChildHelper.m17842b(view, true);
        } else {
            this.mChildHelper.m17833k(view);
        }
    }

    private void animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2, boolean z, boolean z2) {
        viewHolder.setIsRecyclable(false);
        if (z) {
            addAnimatingView(viewHolder);
        }
        if (viewHolder != viewHolder2) {
            if (z2) {
                addAnimatingView(viewHolder2);
            }
            viewHolder.mShadowedHolder = viewHolder2;
            addAnimatingView(viewHolder);
            this.mRecycler.m17337J(viewHolder);
            viewHolder2.setIsRecyclable(false);
            viewHolder2.mShadowingHolder = viewHolder;
        }
        if (this.mItemAnimator.mo17236b(viewHolder, viewHolder2, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(@NonNull ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView != viewHolder.itemView) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            viewHolder.mNestedRecyclerView = null;
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String fullClassName = getFullClassName(context, trim);
                try {
                    Class<? extends U> asSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(LayoutManager.class);
                    Object[] objArr = null;
                    try {
                        constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((LayoutManager) constructor.newInstance(objArr));
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
    }

    private boolean didChildRangeChange(int i, int i2) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        boolean z = false;
        if (!(iArr[0] == i && iArr[1] == i2)) {
            z = true;
        }
        return z;
    }

    private void dispatchContentChangedIfNecessary() {
        int i = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i != 0 && isAccessibilityEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            AccessibilityEventCompat.m19065c(obtain, i);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private void dispatchLayoutStep1() {
        boolean z = true;
        this.mState.m17276a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f4822j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.m17036f();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        State state = this.mState;
        if (!state.f4823k || !this.mItemsChanged) {
            z = false;
        }
        state.f4821i = z;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        State state2 = this.mState;
        state2.f4820h = state2.f4824l;
        state2.f4818f = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f4823k) {
            int g = this.mChildHelper.m17837g();
            for (int i = 0; i < g; i++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17838f(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.m17037e(childViewHolderInt, this.mItemAnimator.m17475u(this.mState, childViewHolderInt, ItemAnimator.m17490e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f4821i && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.m17039c(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f4824l) {
            saveOldPositions();
            State state3 = this.mState;
            boolean z2 = state3.f4819g;
            state3.f4819g = false;
            this.mLayout.mo17165Y0(this.mRecycler, state3);
            this.mState.f4819g = z2;
            for (int i2 = 0; i2 < this.mChildHelper.m17837g(); i2++) {
                ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.m17838f(i2));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.m17033i(childViewHolderInt2)) {
                    int e = ItemAnimator.m17490e(childViewHolderInt2);
                    boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    int i3 = e;
                    if (!hasAnyOfTheFlags) {
                        i3 = e | CodedOutputStream.DEFAULT_BUFFER_SIZE;
                    }
                    ItemAnimator.ItemHolderInfo u = this.mItemAnimator.m17475u(this.mState, childViewHolderInt2, i3, childViewHolderInt2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, u);
                    } else {
                        this.mViewInfoStore.m17041a(childViewHolderInt2, u);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f4817e = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.m17276a(6);
        this.mAdapterHelper.m17884j();
        this.mState.f4818f = this.mAdapter.getItemCount();
        State state = this.mState;
        state.f4816d = 0;
        state.f4820h = false;
        this.mLayout.mo17165Y0(this.mRecycler, state);
        State state2 = this.mState;
        state2.f4819g = false;
        this.mPendingSavedState = null;
        state2.f4823k = state2.f4823k && this.mItemAnimator != null;
        this.mState.f4817e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.m17276a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        State state = this.mState;
        state.f4817e = 1;
        if (state.f4823k) {
            for (int g = this.mChildHelper.m17837g() - 1; g >= 0; g--) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17838f(g));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    ItemAnimator.ItemHolderInfo t = this.mItemAnimator.m17476t(this.mState, childViewHolderInt);
                    ViewHolder g2 = this.mViewInfoStore.m17035g(changedHolderKey);
                    if (g2 == null || g2.shouldIgnore()) {
                        this.mViewInfoStore.m17038d(childViewHolderInt, t);
                    } else {
                        boolean h = this.mViewInfoStore.m17034h(g2);
                        boolean h2 = this.mViewInfoStore.m17034h(childViewHolderInt);
                        if (!h || g2 != childViewHolderInt) {
                            ItemAnimator.ItemHolderInfo n = this.mViewInfoStore.m17028n(g2);
                            this.mViewInfoStore.m17038d(childViewHolderInt, t);
                            ItemAnimator.ItemHolderInfo m = this.mViewInfoStore.m17029m(childViewHolderInt);
                            if (n == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, g2);
                            } else {
                                animateChange(g2, childViewHolderInt, n, m, h, h2);
                            }
                        } else {
                            this.mViewInfoStore.m17038d(childViewHolderInt, t);
                        }
                    }
                }
            }
            this.mViewInfoStore.m17027o(this.mViewInfoProcessCallback);
        }
        this.mLayout.m17391m1(this.mRecycler);
        State state2 = this.mState;
        state2.f4815c = state2.f4818f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        state2.f4823k = false;
        state2.f4824l = false;
        this.mLayout.f4760h = false;
        ArrayList<ViewHolder> arrayList = this.mRecycler.f4788b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager.f4766n) {
            layoutManager.f4765m = 0;
            layoutManager.f4766n = false;
            this.mRecycler.m17336K();
        }
        this.mLayout.mo17163Z0(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.m17036f();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        OnItemTouchListener onItemTouchListener = this.mInterceptingOnItemTouchListener;
        if (onItemTouchListener != null) {
            onItemTouchListener.mo17301a(this, motionEvent);
            int action = motionEvent.getAction();
            if (action != 3 && action != 1) {
                return true;
            }
            this.mInterceptingOnItemTouchListener = null;
            return true;
        } else if (motionEvent.getAction() == 0) {
            return false;
        } else {
            return findInterceptingOnItemTouchListener(motionEvent);
        }
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            OnItemTouchListener onItemTouchListener = this.mOnItemTouchListeners.get(i);
            if (onItemTouchListener.mo17300c(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int g = this.mChildHelper.m17837g();
        if (g == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < g; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17838f(i3));
            if (childViewHolderInt.shouldIgnore()) {
                i2 = i2;
            } else {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                int i4 = i;
                if (layoutPosition < i) {
                    i4 = layoutPosition;
                }
                i = i4;
                i2 = i2;
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                    i = i4;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    @Nullable
    static RecyclerView findNestedRecyclerView(@NonNull View view) {
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

    @Nullable
    private View findNextViewToFocus() {
        ViewHolder findViewHolderForAdapterPosition;
        ViewHolder findViewHolderForAdapterPosition2;
        int i = this.mState.f4825m;
        if (i == -1) {
            i = 0;
        }
        int b = this.mState.m17275b();
        for (int i2 = i; i2 < b && (findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i2)) != null; i2++) {
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        for (int min = Math.min(b, i) - 1; min >= 0 && (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) != null; min--) {
            if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f4777a;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f4778b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
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

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, ViewHolder viewHolder, ViewHolder viewHolder2) {
        int g = this.mChildHelper.m17837g();
        for (int i = 0; i < g; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17838f(i));
            if (childViewHolderInt != viewHolder && getChangedHolderKey(childViewHolderInt) == j) {
                Adapter adapter = this.mAdapter;
                if (adapter == null || !adapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + viewHolder + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + viewHolder + exceptionLabel());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + viewHolder2 + " cannot be found but it is necessary for " + viewHolder + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int g = this.mChildHelper.m17837g();
        for (int i = 0; i < g; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17838f(i));
            if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore() || !childViewHolderInt.isUpdated())) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (ViewCompat.m19160z(this) == 0) {
            ViewCompat.m19161y0(this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new ChildHelper(new ChildHelper.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: a */
            public View mo17519a(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: b */
            public void mo17518b(View view) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: c */
            public int mo17517c() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: d */
            public void mo17516d() {
                int c = mo17517c();
                for (int i = 0; i < c; i++) {
                    View a = mo17519a(i);
                    RecyclerView.this.dispatchChildDetached(a);
                    a.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: e */
            public int mo17515e(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: f */
            public ViewHolder mo17514f(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: g */
            public void mo17513g(int i) {
                ViewHolder childViewHolderInt;
                View a = mo17519a(i);
                if (!(a == null || (childViewHolderInt = RecyclerView.getChildViewHolderInt(a)) == null)) {
                    if (!childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                        childViewHolderInt.addFlags(Indexable.MAX_URL_LENGTH);
                    } else {
                        throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: h */
            public void mo17512h(View view) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onLeftHiddenState(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: i */
            public void mo17511i(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.dispatchChildAttached(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: j */
            public void mo17510j(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.dispatchChildDetached(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            /* renamed from: k */
            public void mo17509k(View view, int i, ViewGroup.LayoutParams layoutParams) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    if (childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                        childViewHolderInt.clearTmpDetachFlag();
                    } else {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x021f, code lost:
        if ((r17 * r19) >= 0) goto L_0x0222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x023f, code lost:
        if ((r17 * r19) <= 0) goto L_0x0242;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPreferredNextFocus(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 584
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
        return this.mItemAnimator != null && this.mLayout.mo17191M1();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.m17869y();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.mo17174T0(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.m17871w();
        } else {
            this.mAdapterHelper.m17884j();
        }
        boolean z = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f4823k = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z || this.mLayout.f4760h) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds());
        State state = this.mState;
        boolean z2 = false;
        if (state.f4823k) {
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
        state.f4824l = z2;
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
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                        if (!this.mChildHelper.m17830n(focusedChild)) {
                            return;
                        }
                    } else if (this.mChildHelper.m17837g() == 0) {
                        requestFocus();
                        return;
                    }
                }
                View view = null;
                ViewHolder findViewHolderForItemId = (this.mState.f4826n == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f4826n);
                if (findViewHolderForItemId != null && !this.mChildHelper.m17830n(findViewHolderForItemId.itemView) && findViewHolderForItemId.itemView.hasFocusable()) {
                    view = findViewHolderForItemId.itemView;
                } else if (this.mChildHelper.m17837g() > 0) {
                    view = findNextViewToFocus();
                }
                if (view != null) {
                    int i = this.mState.f4827o;
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
            }
        }
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
            ViewCompat.m19203d0(this);
        }
    }

    private void requestChildOnScreen(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f4779c) {
                Rect rect = layoutParams2.f4778b;
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
        this.mLayout.mo16401t1(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        State state = this.mState;
        state.f4826n = -1L;
        state.f4825m = -1;
        state.f4827o = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        ViewHolder viewHolder = null;
        View focusedChild = (!this.mPreserveFocusAfterLayout || !hasFocus() || this.mAdapter == null) ? null : getFocusedChild();
        if (focusedChild != null) {
            viewHolder = findContainingViewHolder(focusedChild);
        }
        if (viewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f4826n = this.mAdapter.hasStableIds() ? viewHolder.getItemId() : -1L;
        this.mState.f4825m = this.mDataSetHasChangedAfterLayout ? -1 : viewHolder.isRemoved() ? viewHolder.mOldPosition : viewHolder.getAdapterPosition();
        this.mState.f4827o = getDeepestFocusedViewWithId(viewHolder.itemView);
    }

    private void setAdapterInternal(@Nullable Adapter adapter, boolean z, boolean z2) {
        Adapter adapter2 = this.mAdapter;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.m17869y();
        Adapter adapter3 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.m17452F0(adapter3, this.mAdapter);
        }
        this.mRecycler.m17310x(adapter3, this.mAdapter, z);
        this.mState.f4819g = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.m17262g();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.m17438L1();
        }
    }

    void absorbGlows(int i, int i2) {
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
        if (i != 0 || i2 != 0) {
            ViewCompat.m19203d0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || !layoutManager.m17450G0(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration) {
        addItemDecoration(itemDecoration, -1);
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration, int i) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.mo17150h("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(itemDecoration);
        } else {
            this.mItemDecorations.add(i, itemDecoration);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.add(onItemTouchListener);
    }

    public void addOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(onScrollListener);
    }

    void animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.mo17237a(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        addAnimatingView(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.mo17235c(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
            }
            throw new IllegalStateException(str);
        } else if (this.mDispatchScrollCounter > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + exceptionLabel()));
        }
    }

    boolean canReuseUpdatedViewHolder(ViewHolder viewHolder) {
        ItemAnimator itemAnimator = this.mItemAnimator;
        return itemAnimator == null || itemAnimator.mo17489g(viewHolder, viewHolder.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.mo17140n((LayoutParams) layoutParams);
    }

    void clearOldPositions() {
        int j = this.mChildHelper.m17834j();
        for (int i = 0; i < j; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.m17330d();
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17145l()) {
            i = this.mLayout.mo17134r(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17145l()) {
            i = this.mLayout.mo17132s(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17145l()) {
            i = this.mLayout.mo17130t(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17142m()) {
            i = this.mLayout.mo17127u(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17142m()) {
            i = this.mLayout.mo17125v(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        int i = 0;
        if (layoutManager == null) {
            return 0;
        }
        if (layoutManager.mo17142m()) {
            i = this.mLayout.mo17123w(this.mState);
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
            ViewCompat.m19203d0(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            TraceCompat.m19438a("RV FullInvalidate");
            dispatchLayout();
            TraceCompat.m19437b();
        } else if (this.mAdapterHelper.m17878p()) {
            if (this.mAdapterHelper.m17879o(4) && !this.mAdapterHelper.m17879o(11)) {
                TraceCompat.m19438a("RV PartialInvalidate");
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                this.mAdapterHelper.m17871w();
                if (!this.mLayoutWasDefered) {
                    if (hasUpdatedView()) {
                        dispatchLayout();
                    } else {
                        this.mAdapterHelper.m17885i();
                    }
                }
                stopInterceptRequestLayout(true);
                onExitLayoutOrScroll();
                TraceCompat.m19437b();
            } else if (this.mAdapterHelper.m17878p()) {
                TraceCompat.m19438a("RV FullInvalidate");
                dispatchLayout();
                TraceCompat.m19437b();
            }
        }
    }

    void defaultOnMeasure(int i, int i2) {
        setMeasuredDimension(LayoutManager.m17388o(i, getPaddingLeft() + getPaddingRight(), ViewCompat.m19240C(this)), LayoutManager.m17388o(i2, getPaddingTop() + getPaddingBottom(), ViewCompat.m19242B(this)));
    }

    void dispatchChildAttached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        Adapter adapter = this.mAdapter;
        if (!(adapter == null || childViewHolderInt == null)) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).mo16409d(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        Adapter adapter = this.mAdapter;
        if (!(adapter == null || childViewHolderInt == null)) {
            adapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).mo16410b(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            State state = this.mState;
            state.f4822j = false;
            if (state.f4817e == 1) {
                dispatchLayoutStep1();
                this.mLayout.m17461A1(this);
                dispatchLayoutStep2();
            } else if (!this.mAdapterHelper.m17877q() && this.mLayout.m17385p0() == getWidth() && this.mLayout.m17422X() == getHeight()) {
                this.mLayout.m17461A1(this);
            } else {
                this.mLayout.m17461A1(this);
                dispatchLayoutStep2();
            }
            dispatchLayoutStep3();
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m19272a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m19271b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m19270c(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m19269d(i, i2, iArr, iArr2, i3);
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, @NonNull int[] iArr2) {
        getScrollingChildHelper().m19268e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m19267f(i, i2, i3, i4, iArr);
    }

    void dispatchOnScrollStateChanged(int i) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.mo17153f1(i);
        }
        onScrollStateChanged(i);
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.mo5963a(this, i);
        }
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo5963a(this, i);
            }
        }
    }

    void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.mo7064b(this, i, i2);
        }
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo7064b(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = this.mPendingAccessibilityImportanceChange.get(size);
            if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i = viewHolder.mPendingAccessibilityState) != -1) {
                ViewCompat.m19163x0(viewHolder.itemView, i);
                viewHolder.mPendingAccessibilityState = -1;
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
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).mo17464k(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        boolean z2 = true;
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
        z2 = z4;
        if (edgeEffect7 != null) {
            z2 = z4;
            if (!edgeEffect7.isFinished()) {
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
                z2 = z4 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (z2 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || this.mItemAnimator.mo17480p()) {
        }
        if (z2) {
            ViewCompat.m19203d0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow == null) {
            EdgeEffect a = this.mEdgeEffectFactory.m17491a(this, 3);
            this.mBottomGlow = a;
            if (this.mClipToPadding) {
                a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow == null) {
            EdgeEffect a = this.mEdgeEffectFactory.m17491a(this, 0);
            this.mLeftGlow = a;
            if (this.mClipToPadding) {
                a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    void ensureRightGlow() {
        if (this.mRightGlow == null) {
            EdgeEffect a = this.mEdgeEffectFactory.m17491a(this, 2);
            this.mRightGlow = a;
            if (this.mClipToPadding) {
                a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    void ensureTopGlow() {
        if (this.mTopGlow == null) {
            EdgeEffect a = this.mEdgeEffectFactory.m17491a(this, 1);
            this.mTopGlow = a;
            if (this.mClipToPadding) {
                a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(State state) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.mViewFlinger.f4832h;
            state.f4828p = overScroller.getFinalX() - overScroller.getCurrX();
            state.f4829q = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        state.f4828p = 0;
        state.f4829q = 0;
    }

    @Nullable
    public View findChildViewUnder(float f, float f2) {
        for (int g = this.mChildHelper.m17837g() - 1; g >= 0; g--) {
            View f3 = this.mChildHelper.m17838f(g);
            float translationX = f3.getTranslationX();
            float translationY = f3.getTranslationY();
            if (f >= f3.getLeft() + translationX && f <= f3.getRight() + translationX && f2 >= f3.getTop() + translationY && f2 <= f3.getBottom() + translationY) {
                return f3;
            }
        }
        return null;
    }

    @Nullable
    public View findContainingItemView(@NonNull View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent != this) {
            view = null;
        }
        return view;
    }

    @Nullable
    public ViewHolder findContainingViewHolder(@NonNull View view) {
        View findContainingItemView = findContainingItemView(view);
        return findContainingItemView == null ? null : getChildViewHolder(findContainingItemView);
    }

    @Nullable
    public ViewHolder findViewHolderForAdapterPosition(int i) {
        ViewHolder viewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int j = this.mChildHelper.m17834j();
        for (int i2 = 0; i2 < j; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i2));
            viewHolder = viewHolder;
            if (childViewHolderInt != null) {
                viewHolder = viewHolder;
                if (!childViewHolderInt.isRemoved()) {
                    viewHolder = viewHolder;
                    if (getAdapterPositionFor(childViewHolderInt) != i) {
                        continue;
                    } else if (!this.mChildHelper.m17830n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    } else {
                        viewHolder = childViewHolderInt;
                    }
                } else {
                    continue;
                }
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j) {
        Adapter adapter = this.mAdapter;
        ViewHolder viewHolder = null;
        ViewHolder viewHolder2 = null;
        if (adapter != null) {
            if (adapter.hasStableIds()) {
                int j2 = this.mChildHelper.m17834j();
                int i = 0;
                while (true) {
                    viewHolder2 = viewHolder;
                    if (i >= j2) {
                        break;
                    }
                    ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i));
                    viewHolder = viewHolder;
                    if (childViewHolderInt != null) {
                        viewHolder = viewHolder;
                        if (!childViewHolderInt.isRemoved()) {
                            viewHolder = viewHolder;
                            if (childViewHolderInt.getItemId() != j) {
                                continue;
                            } else if (!this.mChildHelper.m17830n(childViewHolderInt.itemView)) {
                                return childViewHolderInt;
                            } else {
                                viewHolder = childViewHolderInt;
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
            } else {
                viewHolder2 = null;
            }
        }
        return viewHolder2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.ViewHolder findViewHolderForPosition(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.ChildHelper r0 = r0.mChildHelper
            int r0 = r0.m17834j()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000e:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x007e
            r0 = r3
            androidx.recyclerview.widget.ChildHelper r0 = r0.mChildHelper
            r1 = r8
            android.view.View r0 = r0.m17835i(r1)
            androidx.recyclerview.widget.RecyclerView$ViewHolder r0 = getChildViewHolderInt(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0074
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.isRemoved()
            if (r0 != 0) goto L_0x0074
            r0 = r5
            if (r0 == 0) goto L_0x004b
            r0 = r9
            int r0 = r0.mPosition
            r1 = r4
            if (r0 == r1) goto L_0x005b
            r0 = r7
            r10 = r0
            goto L_0x0074
        L_0x004b:
            r0 = r9
            int r0 = r0.getLayoutPosition()
            r1 = r4
            if (r0 == r1) goto L_0x005b
            r0 = r7
            r10 = r0
            goto L_0x0074
        L_0x005b:
            r0 = r3
            androidx.recyclerview.widget.ChildHelper r0 = r0.mChildHelper
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.m17830n(r1)
            if (r0 == 0) goto L_0x0071
            r0 = r9
            r10 = r0
            goto L_0x0074
        L_0x0071:
            r0 = r9
            return r0
        L_0x0074:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto L_0x000e
        L_0x007e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$ViewHolder");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (java.lang.Math.abs(r6) < r5.mMinFlingVelocity) goto L_0x0043;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (java.lang.Math.abs(r7) < r5.mMinFlingVelocity) goto L_0x0059;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View R0 = this.mLayout.m17429R0(view, i);
        if (R0 != null) {
            return R0;
        }
        boolean z2 = true;
        boolean z3 = this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutSuppressed;
        FocusFinder instance = FocusFinder.getInstance();
        if (!z3 || !(i == 2 || i == 1)) {
            view2 = instance.findNextFocus(this, view, i);
            if (view2 == null && z3) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.mo17195K0(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
        } else {
            if (this.mLayout.mo17142m()) {
                int i2 = i == 2 ? 130 : 33;
                boolean z4 = instance.findNextFocus(this, view, i2) == null;
                z = z4;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i = i2;
                    z = z4;
                }
            } else {
                z = false;
            }
            z2 = z;
            i = i;
            if (!z) {
                z2 = z;
                i = i;
                if (this.mLayout.mo17145l()) {
                    int i3 = (this.mLayout.m17419a0() == 1) ^ (i == 2) ? 66 : 17;
                    if (instance.findNextFocus(this, view, i3) != null) {
                        z2 = false;
                    }
                    if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                        i = i3;
                    }
                }
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.mo17195K0(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = instance.findNextFocus(this, view, i);
            i = i;
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
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.mo17206E();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.mo17203F(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.mo17201G(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Nullable
    public Adapter getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.m17889e(viewHolder.mPosition);
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.mLayout;
        return layoutManager != null ? layoutManager.m17448H() : super.getBaseline();
    }

    long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.hasStableIds() ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        ChildDrawingOrderCallback childDrawingOrderCallback = this.mChildDrawingOrderCallback;
        return childDrawingOrderCallback == null ? super.getChildDrawingOrder(i, i2) : childDrawingOrderCallback.mo17492a(i, i2);
    }

    public int getChildLayoutPosition(@NonNull View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getLayoutPosition() : -1;
    }

    public ViewHolder getChildViewHolder(@NonNull View view) {
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

    @Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    @NonNull
    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    @Nullable
    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f4779c) {
            return layoutParams.f4778b;
        }
        if (this.mState.m17272e() && (layoutParams.m17362b() || layoutParams.m17360d())) {
            return layoutParams.f4778b;
        }
        Rect rect = layoutParams.f4778b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i).mo17467g(this.mTempRect, view, this, this.mState);
            int i2 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f4779c = false;
        return rect;
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    @Nullable
    public LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    @NonNull
    public RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.m17325i();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m19263j();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.m17878p();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new AdapterHelper(new AdapterHelper.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.6
            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: a */
            public void mo17508a(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForMove(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: b */
            public void mo17507b(AdapterHelper.UpdateOp updateOp) {
                m17500i(updateOp);
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: c */
            public void mo17506c(int i, int i2, Object obj) {
                RecyclerView.this.viewRangeUpdate(i, i2, obj);
                RecyclerView.this.mItemsChanged = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: d */
            public void mo17505d(AdapterHelper.UpdateOp updateOp) {
                m17500i(updateOp);
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: e */
            public ViewHolder mo17504e(int i) {
                ViewHolder findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
                if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.m17830n(findViewHolderForPosition.itemView)) {
                    return findViewHolderForPosition;
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: f */
            public void mo17503f(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: g */
            public void mo17502g(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForInsert(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            /* renamed from: h */
            public void mo17501h(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.f4816d += i2;
            }

            /* renamed from: i */
            void m17500i(AdapterHelper.UpdateOp updateOp) {
                int i = updateOp.f4394a;
                if (i == 1) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.mLayout.mo17177S0(recyclerView, updateOp.f4395b, updateOp.f4397d);
                } else if (i == 2) {
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.mLayout.mo17170V0(recyclerView2, updateOp.f4395b, updateOp.f4397d);
                } else if (i == 4) {
                    RecyclerView recyclerView3 = RecyclerView.this;
                    recyclerView3.mLayout.mo17167X0(recyclerView3, updateOp.f4395b, updateOp.f4397d, updateOp.f4396c);
                } else if (i == 8) {
                    RecyclerView recyclerView4 = RecyclerView.this;
                    recyclerView4.mLayout.mo17172U0(recyclerView4, updateOp.f4395b, updateOp.f4397d, 1);
                }
            }
        });
    }

    @VisibleForTesting
    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
        Resources resources = getContext().getResources();
        new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C0445R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(C0445R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(C0445R.dimen.fastscroll_margin));
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m19261l();
    }

    void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout != null) {
            setScrollState(2);
            this.mLayout.mo17119y1(i);
            awakenScrollBars();
        }
    }

    void markItemDecorInsetsDirty() {
        int j = this.mChildHelper.m17834j();
        for (int i = 0; i < j; i++) {
            ((LayoutParams) this.mChildHelper.m17835i(i).getLayoutParams()).f4779c = true;
        }
        this.mRecycler.m17315s();
    }

    void markKnownViewsInvalid() {
        int j = this.mChildHelper.m17834j();
        for (int i = 0; i < j; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.m17314t();
    }

    public void offsetChildrenHorizontal(@AbstractC0040Px int i) {
        int g = this.mChildHelper.m17837g();
        for (int i2 = 0; i2 < g; i2++) {
            this.mChildHelper.m17838f(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(@AbstractC0040Px int i) {
        int g = this.mChildHelper.m17837g();
        for (int i2 = 0; i2 < g; i2++) {
            this.mChildHelper.m17838f(i2).offsetTopAndBottom(i);
        }
    }

    void offsetPositionRecordsForInsert(int i, int i2) {
        int j = this.mChildHelper.m17834j();
        for (int i3 = 0; i3 < j; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                childViewHolderInt.offsetPosition(i2, false);
                this.mState.f4819g = true;
            }
        }
        this.mRecycler.m17313u(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int j = this.mChildHelper.m17834j();
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i7 = 0; i7 < j; i7++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i7));
            if (childViewHolderInt != null && (i6 = childViewHolderInt.mPosition) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    childViewHolderInt.offsetPosition(i2 - i, false);
                } else {
                    childViewHolderInt.offsetPosition(i5, false);
                }
                this.mState.f4819g = true;
            }
        }
        this.mRecycler.m17312v(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int j = this.mChildHelper.m17834j();
        for (int i3 = 0; i3 < j; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i4 = childViewHolderInt.mPosition;
                if (i4 >= i + i2) {
                    childViewHolderInt.offsetPosition(-i2, z);
                    this.mState.f4819g = true;
                } else if (i4 >= i) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.mState.f4819g = true;
                }
            }
        }
        this.mRecycler.m17311w(i, i2, z);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        boolean z = true;
        this.mIsAttached = true;
        if (!this.mFirstLayoutComplete || isLayoutRequested()) {
            z = false;
        }
        this.mFirstLayoutComplete = z;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.m17463A(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            GapWorker gapWorker = GapWorker.f4559j.get();
            this.mGapWorker = gapWorker;
            if (gapWorker == null) {
                this.mGapWorker = new GapWorker();
                Display u = ViewCompat.m19170u(this);
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (u != null) {
                        float refreshRate = u.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                GapWorker gapWorker2 = this.mGapWorker;
                gapWorker2.f4563h = 1.0E9f / f;
                GapWorker.f4559j.set(gapWorker2);
            }
            this.mGapWorker.m17762a(this);
        }
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.mo17485k();
        }
        stopScroll();
        this.mIsAttached = false;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.m17460B(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.m17032j();
        if (ALLOW_THREAD_GAP_WORK && (gapWorker = this.mGapWorker) != null) {
            gapWorker.m17753j(this);
            this.mGapWorker = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).mo9946i(canvas, this, this.mState);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onExitLayoutOrScroll(boolean z) {
        int i = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i;
        if (i < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.mLayout
            if (r0 != 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r5
            boolean r0 = r0.mLayoutSuppressed
            if (r0 == 0) goto L_0x0012
            r0 = 0
            return r0
        L_0x0012:
            r0 = r6
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto L_0x00ac
            r0 = r6
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0057
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.mLayout
            boolean r0 = r0.mo17142m()
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r1 = 9
            float r0 = r0.getAxisValue(r1)
            float r0 = -r0
            r7 = r0
            goto L_0x003b
        L_0x0039:
            r0 = 0
            r7 = r0
        L_0x003b:
            r0 = r7
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.mLayout
            boolean r0 = r0.mo17145l()
            if (r0 == 0) goto L_0x008a
            r0 = r6
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r9 = r0
            r0 = r7
            r8 = r0
            r0 = r9
            r7 = r0
            goto L_0x008c
        L_0x0057:
            r0 = r6
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0088
            r0 = r6
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r7 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.mLayout
            boolean r0 = r0.mo17142m()
            if (r0 == 0) goto L_0x0079
            r0 = r7
            float r0 = -r0
            r8 = r0
            goto L_0x008a
        L_0x0079:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.mLayout
            boolean r0 = r0.mo17145l()
            if (r0 == 0) goto L_0x0088
            r0 = 0
            r8 = r0
            goto L_0x008c
        L_0x0088:
            r0 = 0
            r8 = r0
        L_0x008a:
            r0 = 0
            r7 = r0
        L_0x008c:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0098
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00ac
        L_0x0098:
            r0 = r5
            r1 = r7
            r2 = r5
            float r2 = r2.mScaledHorizontalScrollFactor
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r8
            r3 = r5
            float r3 = r3.mScaledVerticalScrollFactor
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r6
            boolean r0 = r0.scrollByInternal(r1, r2, r3)
        L_0x00ac:
            r0 = 0
            return r0
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
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return false;
        }
        boolean l = layoutManager.mo17145l();
        boolean m = this.mLayout.mo17142m();
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
            int i = l ? 1 : 0;
            int i2 = i;
            if (m) {
                i2 = i | 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i3 = this.mInitialTouchX;
                int i4 = this.mInitialTouchY;
                if (!l || Math.abs(x2 - i3) <= this.mTouchSlop) {
                    z = false;
                } else {
                    this.mLastTouchX = x2;
                    z = true;
                }
                boolean z3 = z;
                if (m) {
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
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TraceCompat.m19438a("RV OnLayout");
        dispatchLayout();
        TraceCompat.m19437b();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            defaultOnMeasure(i, i2);
        } else if (layoutManager.mo17129t0()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.m17418a1(this.mRecycler, this.mState, i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            if (!z && this.mAdapter != null) {
                if (this.mState.f4817e == 1) {
                    dispatchLayoutStep1();
                }
                this.mLayout.m17458B1(i, i2);
                this.mState.f4822j = true;
                dispatchLayoutStep2();
                this.mLayout.m17453E1(i, i2);
                if (this.mLayout.mo17446H1()) {
                    this.mLayout.m17458B1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.mState.f4822j = true;
                    dispatchLayoutStep2();
                    this.mLayout.m17453E1(i, i2);
                }
            }
        } else if (this.mHasFixedSize) {
            this.mLayout.m17418a1(this.mRecycler, this.mState, i, i2);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                State state = this.mState;
                if (state.f4824l) {
                    state.f4820h = true;
                } else {
                    this.mAdapterHelper.m17884j();
                    this.mState.f4820h = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.f4824l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            Adapter adapter = this.mAdapter;
            if (adapter != null) {
                this.mState.f4818f = adapter.getItemCount();
            } else {
                this.mState.f4818f = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.m17418a1(this.mRecycler, this.mState, i, i2);
            stopInterceptRequestLayout(false);
            this.mState.f4820h = false;
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
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.m18793a());
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && (parcelable2 = this.mPendingSavedState.f4797h) != null) {
            layoutManager.mo17157d1(parcelable2);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.m17305b(savedState2);
        } else {
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                savedState.f4797h = layoutManager.mo17155e1();
            } else {
                savedState.f4797h = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(@AbstractC0040Px int i, @AbstractC0040Px int i2) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            invalidateGlows();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0327, code lost:
        if (r14 != 0) goto L_0x032a;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0213  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1060
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            ViewCompat.m19199f0(this, this.mItemAnimatorRunner);
            this.mPostedAnimatorRunner = true;
        }
    }

    void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        if (this.mState.f4821i && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            this.mViewInfoStore.m17039c(getChangedHolderKey(viewHolder), viewHolder);
        }
        this.mViewInfoStore.m17037e(viewHolder, itemHolderInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAndRecycleViews() {
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.mo17485k();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.m17393l1(this.mRecycler);
            this.mLayout.m17391m1(this.mRecycler);
        }
        this.mRecycler.m17331c();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean r = this.mChildHelper.m17826r(view);
        if (r) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.m17337J(childViewHolderInt);
            this.mRecycler.m17344C(childViewHolderInt);
        }
        stopInterceptRequestLayout(!r);
        return r;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
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

    public void removeItemDecoration(@NonNull ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.mo17150h("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(itemDecoration);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.remove(onItemTouchListener);
        if (this.mInterceptingOnItemTouchListener == onItemTouchListener) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            list.remove(onScrollListener);
        }
    }

    void repositionShadowingViews() {
        ViewHolder viewHolder;
        int g = this.mChildHelper.m17837g();
        for (int i = 0; i < g; i++) {
            View f = this.mChildHelper.m17838f(i);
            ViewHolder childViewHolder = getChildViewHolder(f);
            if (!(childViewHolder == null || (viewHolder = childViewHolder.mShadowingHolder) == null)) {
                View view = viewHolder.itemView;
                int left = f.getLeft();
                int top = f.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.m17413c1(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.m17377s1(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            this.mOnItemTouchListeners.get(i).mo17299e(z);
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

    void saveOldPositions() {
        int j = this.mChildHelper.m17834j();
        for (int i = 0; i < j; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m17835i(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutSuppressed) {
            boolean l = layoutManager.mo17145l();
            boolean m = this.mLayout.mo17142m();
            if (l || m) {
                if (!l) {
                    i = 0;
                }
                if (!m) {
                    i2 = 0;
                }
                scrollByInternal(i, i2, null);
            }
        }
    }

    boolean scrollByInternal(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i, i2, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i7 = iArr2[0];
            int i8 = iArr2[1];
            i4 = i8;
            i3 = i7;
            i6 = i - i7;
            i5 = i2 - i8;
        } else {
            i4 = 0;
            i3 = 0;
            i6 = 0;
            i5 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i3, i4, i6, i5, this.mScrollOffset, 0, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i9 = iArr4[0];
        int i10 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i11 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        this.mLastTouchX = i11 - iArr5[0];
        this.mLastTouchY -= iArr5[1];
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.m19273i(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i6 - i9, motionEvent.getY(), i5 - i10);
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (!(i3 == 0 && i4 == 0)) {
            dispatchOnScrolled(i3, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        boolean z2 = true;
        if (!z) {
            z2 = true;
            if (i3 == 0) {
                z2 = i4 != 0;
            }
        }
        return z2;
    }

    void scrollStep(int i, int i2, @Nullable int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        TraceCompat.m19438a("RV Scroll");
        fillRemainingScrollValues(this.mState);
        int x1 = i != 0 ? this.mLayout.mo17121x1(i, this.mRecycler, this.mState) : 0;
        int z1 = i2 != 0 ? this.mLayout.mo17117z1(i2, this.mRecycler, this.mState) : 0;
        TraceCompat.m19437b();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = x1;
            iArr[1] = z1;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (!this.mLayoutSuppressed) {
            stopScroll();
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager == null) {
                Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            layoutManager.mo17119y1(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!shouldDeferAccessibilityEvent(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.m19183n0(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(@Nullable Adapter adapter) {
        setLayoutFrozen(false);
        setAdapterInternal(adapter, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback != this.mChildDrawingOrderCallback) {
            this.mChildDrawingOrderCallback = childDrawingOrderCallback;
            setChildrenDrawingOrderEnabled(childDrawingOrderCallback != null);
        }
    }

    @VisibleForTesting
    boolean setChildImportantForAccessibilityInternal(ViewHolder viewHolder, int i) {
        if (isComputingLayout()) {
            viewHolder.mPendingAccessibilityState = i;
            this.mPendingAccessibilityImportanceChange.add(viewHolder);
            return false;
        }
        ViewCompat.m19163x0(viewHolder.itemView, i);
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

    public void setEdgeEffectFactory(@NonNull EdgeEffectFactory edgeEffectFactory) {
        Preconditions.m19337d(edgeEffectFactory);
        this.mEdgeEffectFactory = edgeEffectFactory;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(@Nullable ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.mItemAnimator;
        if (itemAnimator2 != null) {
            itemAnimator2.mo17485k();
            this.mItemAnimator.m17473w(null);
        }
        this.mItemAnimator = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.m17473w(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.mRecycler.m17340G(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(@Nullable LayoutManager layoutManager) {
        if (layoutManager != this.mLayout) {
            stopScroll();
            if (this.mLayout != null) {
                ItemAnimator itemAnimator = this.mItemAnimator;
                if (itemAnimator != null) {
                    itemAnimator.mo17485k();
                }
                this.mLayout.m17393l1(this.mRecycler);
                this.mLayout.m17391m1(this.mRecycler);
                this.mRecycler.m17331c();
                if (this.mIsAttached) {
                    this.mLayout.m17460B(this, this.mRecycler);
                }
                this.mLayout.m17451F1(null);
                this.mLayout = null;
            } else {
                this.mRecycler.m17331c();
            }
            this.mChildHelper.m17829o();
            this.mLayout = layoutManager;
            if (layoutManager != null) {
                if (layoutManager.f4754b == null) {
                    layoutManager.m17451F1(this);
                    if (this.mIsAttached) {
                        this.mLayout.m17463A(this);
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView:" + layoutManager.f4754b.exceptionLabel());
                }
            }
            this.mRecycler.m17336K();
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().m19260m(z);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.mOnFlingListener = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable OnScrollListener onScrollListener) {
        this.mScrollListener = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(@Nullable RecycledViewPool recycledViewPool) {
        this.mRecycler.m17342E(recycledViewPool);
    }

    public void setRecyclerListener(@Nullable RecyclerListener recyclerListener) {
        this.mRecyclerListener = recyclerListener;
    }

    void setScrollState(int i) {
        if (i != this.mScrollState) {
            this.mScrollState = i;
            if (i != 2) {
                stopScrollersInternal();
            }
            dispatchOnScrollStateChanged(i);
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable ViewCacheExtension viewCacheExtension) {
        this.mRecycler.m17341F(viewCacheExtension);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int b = 0;
        if (!isComputingLayout()) {
            return false;
        }
        b = accessibilityEvent != null ? AccessibilityEventCompat.m19066b(accessibilityEvent) : 0;
        if (b == 0) {
        }
        this.mEatenAccessibilityChangeFlags |= b;
        return true;
    }

    public void smoothScrollBy(@AbstractC0040Px int i, @AbstractC0040Px int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollBy(@AbstractC0040Px int i, @AbstractC0040Px int i2, @Nullable Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, Integer.MIN_VALUE);
    }

    public void smoothScrollBy(@AbstractC0040Px int i, @AbstractC0040Px int i2, @Nullable Interpolator interpolator, int i3) {
        smoothScrollBy(i, i2, interpolator, i3, false);
    }

    void smoothScrollBy(@AbstractC0040Px int i, @AbstractC0040Px int i2, @Nullable Interpolator interpolator, int i3, boolean z) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutSuppressed) {
            int i4 = 0;
            int i5 = i;
            if (!layoutManager.mo17145l()) {
                i5 = 0;
            }
            if (!this.mLayout.mo17142m()) {
                i2 = 0;
            }
            if (i5 != 0 || i2 != 0) {
                if (i3 == Integer.MIN_VALUE || i3 > 0) {
                    if (z) {
                        if (i5 != 0) {
                            i4 = 1;
                        }
                        int i6 = i4;
                        if (i2 != 0) {
                            i6 = i4 | 2;
                        }
                        startNestedScroll(i6, 1);
                    }
                    this.mViewFlinger.m17263f(i5, i2, i3, interpolator);
                    return;
                }
                scrollBy(i5, i2);
            }
        }
    }

    public void smoothScrollToPosition(int i) {
        if (!this.mLayoutSuppressed) {
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager == null) {
                Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                layoutManager.mo9858J1(this, this.mState, i);
            }
        }
    }

    void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i == 1 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m19258o(i);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().m19257p(i, i2);
    }

    void stopInterceptRequestLayout(boolean z) {
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

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().m19256q();
    }

    public void stopNestedScroll(int i) {
        getScrollingChildHelper().m19255r(i);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.mLayoutSuppressed = false;
                if (!(!this.mLayoutWasDefered || this.mLayout == null || this.mAdapter == null)) {
                    requestLayout();
                }
                this.mLayoutWasDefered = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.mLayoutSuppressed = true;
            this.mIgnoreMotionEventTillDown = true;
            stopScroll();
        }
    }

    void viewRangeUpdate(int i, int i2, Object obj) {
        int i3;
        int j = this.mChildHelper.m17834j();
        for (int i4 = 0; i4 < j; i4++) {
            View i5 = this.mChildHelper.m17835i(i4);
            ViewHolder childViewHolderInt = getChildViewHolderInt(i5);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i3 = childViewHolderInt.mPosition) >= i && i3 < i + i2) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) i5.getLayoutParams()).f4779c = true;
            }
        }
        this.mRecycler.m17334M(i, i2);
    }
}
