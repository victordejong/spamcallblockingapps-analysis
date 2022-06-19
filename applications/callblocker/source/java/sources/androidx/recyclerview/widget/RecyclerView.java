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
import androidx.core.p025g.C0527f;
import androidx.core.p026h.AbstractC0584j;
import androidx.core.p026h.AbstractC0585k;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0582h;
import androidx.core.p026h.C0586l;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0604v;
import androidx.core.p026h.p027a.C0552b;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.p028os.C0612a;
import androidx.core.widget.C0623d;
import androidx.p029d.p030a.AbstractC0633a;
import androidx.recyclerview.C0896a;
import androidx.recyclerview.widget.C0958a;
import androidx.recyclerview.widget.C0961b;
import androidx.recyclerview.widget.C0995m;
import androidx.recyclerview.widget.C1002q;
import androidx.recyclerview.widget.C1005r;
import androidx.recyclerview.widget.RunnableC0981f;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC0584j, AbstractC0585k {
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
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
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
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    C0995m mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    AbstractC0914a mAdapter;
    C0958a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private AbstractC0917d mChildDrawingOrderCallback;
    C0961b mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private C0918e mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    RunnableC0981f mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private AbstractC0933m mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    AbstractC0919f mItemAnimator;
    private AbstractC0919f.AbstractC0921b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<AbstractC0924h> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    AbstractC0925i mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final C0939r mObserver;
    private List<AbstractC0931k> mOnChildAttachStateListeners;
    private AbstractC0932l mOnFlingListener;
    private final ArrayList<AbstractC0933m> mOnItemTouchListeners;
    final List<AbstractC0948x> mPendingAccessibilityImportanceChange;
    private C0940s mPendingSavedState;
    boolean mPostedAnimatorRunner;
    RunnableC0981f.C0983a mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final C0937p mRecycler;
    AbstractC0938q mRecyclerListener;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private AbstractC0934n mScrollListener;
    private List<AbstractC0934n> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private C0586l mScrollingChildHelper;
    final C0945u mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final RunnableC0947w mViewFlinger;
    private final C1005r.AbstractC1007b mViewInfoProcessCallback;
    final C1005r mViewInfoStore;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public static abstract class AbstractC0914a<VH extends AbstractC0948x> {

        /* renamed from: a */
        private final C0915b f3085a = new C0915b();

        /* renamed from: b */
        private boolean f3086b = false;

        /* renamed from: a */
        public abstract int mo959a();

        /* renamed from: a */
        public int mo958a(int i) {
            return 0;
        }

        /* renamed from: a */
        public abstract VH mo957a(ViewGroup viewGroup, int i);

        /* renamed from: a */
        public void m19055a(AbstractC0916c abstractC0916c) {
            this.f3085a.registerObserver(abstractC0916c);
        }

        /* renamed from: a */
        public void m19054a(VH vh) {
        }

        /* renamed from: a */
        public abstract void mo956a(VH vh, int i);

        /* renamed from: a */
        public void m19053a(VH vh, int i, List<Object> list) {
            mo956a((AbstractC0914a<VH>) vh, i);
        }

        /* renamed from: a */
        public void m19052a(RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void m19051a(boolean z) {
            if (m19044c()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f3086b = z;
        }

        /* renamed from: b */
        public long mo3121b(int i) {
            return -1L;
        }

        /* renamed from: b */
        public final VH m19049b(ViewGroup viewGroup, int i) {
            try {
                C0612a.m20241a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH mo957a = mo957a(viewGroup, i);
                if (mo957a.f3183a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                mo957a.f3188f = i;
                C0612a.m20242a();
                return mo957a;
            } catch (Throwable th) {
                C0612a.m20242a();
                throw th;
            }
        }

        /* renamed from: b */
        public void m19048b(AbstractC0916c abstractC0916c) {
            this.f3085a.unregisterObserver(abstractC0916c);
        }

        /* renamed from: b */
        public final void m19046b(VH vh, int i) {
            vh.f3185c = i;
            if (m19050b()) {
                vh.f3187e = mo3121b(i);
            }
            vh.m18805a(1, 519);
            C0612a.m20241a(RecyclerView.TRACE_BIND_VIEW_TAG);
            m19053a(vh, i, vh.m18776v());
            vh.m18777u();
            ViewGroup.LayoutParams layoutParams = vh.f3183a.getLayoutParams();
            if (layoutParams instanceof C0930j) {
                ((C0930j) layoutParams).f3124e = true;
            }
            C0612a.m20242a();
        }

        /* renamed from: b */
        public void m19045b(RecyclerView recyclerView) {
        }

        /* renamed from: b */
        public final boolean m19050b() {
            return this.f3086b;
        }

        /* renamed from: b */
        public boolean m19047b(VH vh) {
            return false;
        }

        /* renamed from: c */
        public final void m19043c(int i) {
            this.f3085a.m19037a(i, 1);
        }

        /* renamed from: c */
        public void m19042c(VH vh) {
        }

        /* renamed from: c */
        public final boolean m19044c() {
            return this.f3085a.m19038a();
        }

        /* renamed from: d */
        public final void m19041d() {
            this.f3085a.m19035b();
        }

        /* renamed from: d */
        public final void m19040d(int i) {
            this.f3085a.m19034b(i, 1);
        }

        /* renamed from: d */
        public void m19039d(VH vh) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public static class C0915b extends Observable<AbstractC0916c> {
        C0915b() {
        }

        /* renamed from: a */
        public void m19037a(int i, int i2) {
            m19036a(i, i2, null);
        }

        /* renamed from: a */
        public void m19036a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0916c) this.mObservers.get(size)).mo18849a(i, i2, obj);
            }
        }

        /* renamed from: a */
        public boolean m19038a() {
            return !this.mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m19035b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0916c) this.mObservers.get(size)).mo18850a();
            }
        }

        /* renamed from: b */
        public void m19034b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0916c) this.mObservers.get(size)).mo998b(i, i2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static abstract class AbstractC0916c {
        /* renamed from: a */
        public void mo18850a() {
        }

        /* renamed from: a */
        public void m19033a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo18849a(int i, int i2, Object obj) {
            m19033a(i, i2);
        }

        /* renamed from: b */
        public void mo998b(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public interface AbstractC0917d {
        /* renamed from: a */
        int m19032a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static class C0918e {
        /* renamed from: a */
        protected EdgeEffect m19031a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static abstract class AbstractC0919f {

        /* renamed from: a */
        private AbstractC0921b f3087a = null;

        /* renamed from: b */
        private ArrayList<AbstractC0920a> f3088b = new ArrayList<>();

        /* renamed from: c */
        private long f3089c = 120;

        /* renamed from: d */
        private long f3090d = 120;

        /* renamed from: e */
        private long f3091e = 250;

        /* renamed from: f */
        private long f3092f = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$a.class */
        public interface AbstractC0920a {
            /* renamed from: a */
            void m19018a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$b.class */
        public interface AbstractC0921b {
            /* renamed from: a */
            void mo19015a(AbstractC0948x abstractC0948x);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$c.class */
        public static class C0922c {

            /* renamed from: a */
            public int f3093a;

            /* renamed from: b */
            public int f3094b;

            /* renamed from: c */
            public int f3095c;

            /* renamed from: d */
            public int f3096d;

            /* renamed from: a */
            public C0922c m19017a(AbstractC0948x abstractC0948x) {
                return m19016a(abstractC0948x, 0);
            }

            /* renamed from: a */
            public C0922c m19016a(AbstractC0948x abstractC0948x, int i) {
                View view = abstractC0948x.f3183a;
                this.f3093a = view.getLeft();
                this.f3094b = view.getTop();
                this.f3095c = view.getRight();
                this.f3096d = view.getBottom();
                return this;
            }
        }

        /* renamed from: e */
        static int m19026e(AbstractC0948x abstractC0948x) {
            int i;
            int i2 = abstractC0948x.f3192j & 14;
            if (abstractC0948x.m18784n()) {
                i = 4;
            } else {
                i = i2;
                if ((i2 & 4) == 0) {
                    int m18792f = abstractC0948x.m18792f();
                    int m18793e = abstractC0948x.m18793e();
                    i = i2;
                    if (m18792f != -1) {
                        i = i2;
                        if (m18793e != -1) {
                            i = i2;
                            if (m18792f != m18793e) {
                                i = i2 | 2048;
                            }
                        }
                    }
                }
            }
            return i;
        }

        /* renamed from: a */
        public C0922c m19029a(C0945u c0945u, AbstractC0948x abstractC0948x) {
            return m19019j().m19017a(abstractC0948x);
        }

        /* renamed from: a */
        public C0922c m19028a(C0945u c0945u, AbstractC0948x abstractC0948x, int i, List<Object> list) {
            return m19019j().m19017a(abstractC0948x);
        }

        /* renamed from: a */
        public abstract void mo18554a();

        /* renamed from: a */
        void m19030a(AbstractC0921b abstractC0921b) {
            this.f3087a = abstractC0921b;
        }

        /* renamed from: a */
        public abstract boolean mo18427a(AbstractC0948x abstractC0948x, C0922c c0922c, C0922c c0922c2);

        /* renamed from: a */
        public abstract boolean mo18425a(AbstractC0948x abstractC0948x, AbstractC0948x abstractC0948x2, C0922c c0922c, C0922c c0922c2);

        /* renamed from: a */
        public boolean mo18553a(AbstractC0948x abstractC0948x, List<Object> list) {
            return mo18417h(abstractC0948x);
        }

        /* renamed from: b */
        public abstract boolean mo18548b();

        /* renamed from: b */
        public abstract boolean mo18422b(AbstractC0948x abstractC0948x, C0922c c0922c, C0922c c0922c2);

        /* renamed from: c */
        public abstract boolean mo18420c(AbstractC0948x abstractC0948x, C0922c c0922c, C0922c c0922c2);

        /* renamed from: d */
        public abstract void mo18543d();

        /* renamed from: d */
        public abstract void mo18542d(AbstractC0948x abstractC0948x);

        /* renamed from: e */
        public long m19027e() {
            return this.f3091e;
        }

        /* renamed from: f */
        public long m19025f() {
            return this.f3089c;
        }

        /* renamed from: f */
        public final void m19024f(AbstractC0948x abstractC0948x) {
            m19022g(abstractC0948x);
            if (this.f3087a != null) {
                this.f3087a.mo19015a(abstractC0948x);
            }
        }

        /* renamed from: g */
        public long m19023g() {
            return this.f3090d;
        }

        /* renamed from: g */
        public void m19022g(AbstractC0948x abstractC0948x) {
        }

        /* renamed from: h */
        public long m19021h() {
            return this.f3092f;
        }

        /* renamed from: h */
        public boolean mo18417h(AbstractC0948x abstractC0948x) {
            return true;
        }

        /* renamed from: i */
        public final void m19020i() {
            int size = this.f3088b.size();
            for (int i = 0; i < size; i++) {
                this.f3088b.get(i).m19018a();
            }
            this.f3088b.clear();
        }

        /* renamed from: j */
        public C0922c m19019j() {
            return new C0922c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public class C0923g implements AbstractC0919f.AbstractC0921b {
        C0923g() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0919f.AbstractC0921b
        /* renamed from: a */
        public void mo19015a(AbstractC0948x abstractC0948x) {
            abstractC0948x.m18799a(true);
            if (abstractC0948x.f3190h != null && abstractC0948x.f3191i == null) {
                abstractC0948x.f3190h = null;
            }
            abstractC0948x.f3191i = null;
            if (abstractC0948x.m18773y() || RecyclerView.this.removeAnimatingView(abstractC0948x.f3183a) || !abstractC0948x.m18780r()) {
                return;
            }
            RecyclerView.this.removeDetachedView(abstractC0948x.f3183a, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static abstract class AbstractC0924h {
        @Deprecated
        /* renamed from: a */
        public void m19014a(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void mo3176a(Canvas canvas, RecyclerView recyclerView, C0945u c0945u) {
            m19014a(canvas, recyclerView);
        }

        @Deprecated
        /* renamed from: a */
        public void m19013a(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: a */
        public void mo1302a(Rect rect, View view, RecyclerView recyclerView, C0945u c0945u) {
            m19013a(rect, ((C0930j) view.getLayoutParams()).m18905f(), recyclerView);
        }

        @Deprecated
        /* renamed from: b */
        public void m19012b(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: b */
        public void mo1299b(Canvas canvas, RecyclerView recyclerView, C0945u c0945u) {
            m19012b(canvas, recyclerView);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC0925i {

        /* renamed from: e */
        private int f3102e;

        /* renamed from: f */
        private int f3103f;

        /* renamed from: g */
        private int f3104g;

        /* renamed from: h */
        private int f3105h;

        /* renamed from: p */
        C0961b f3106p;

        /* renamed from: q */
        RecyclerView f3107q;

        /* renamed from: t */
        AbstractC0942t f3110t;

        /* renamed from: x */
        int f3114x;

        /* renamed from: y */
        boolean f3115y;

        /* renamed from: a */
        private final C1002q.AbstractC1004b f3098a = new C1002q.AbstractC1004b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public int mo18384a() {
                return AbstractC0925i.this.m19008D();
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public int mo18382a(View view) {
                return AbstractC0925i.this.m18928h(view) - ((C0930j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public View mo18383a(int i) {
                return AbstractC0925i.this.m18927i(i);
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: b */
            public int mo18381b() {
                return AbstractC0925i.this.m19010B() - AbstractC0925i.this.m19006F();
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: b */
            public int mo18380b(View view) {
                C0930j c0930j = (C0930j) view.getLayoutParams();
                return c0930j.rightMargin + AbstractC0925i.this.m18925j(view);
            }
        };

        /* renamed from: b */
        private final C1002q.AbstractC1004b f3099b = new C1002q.AbstractC1004b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public int mo18384a() {
                return AbstractC0925i.this.m19007E();
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public int mo18382a(View view) {
                return AbstractC0925i.this.m18926i(view) - ((C0930j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: a */
            public View mo18383a(int i) {
                return AbstractC0925i.this.m18927i(i);
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: b */
            public int mo18381b() {
                return AbstractC0925i.this.m19009C() - AbstractC0925i.this.m19005G();
            }

            @Override // androidx.recyclerview.widget.C1002q.AbstractC1004b
            /* renamed from: b */
            public int mo18380b(View view) {
                C0930j c0930j = (C0930j) view.getLayoutParams();
                return c0930j.bottomMargin + AbstractC0925i.this.m18924k(view);
            }
        };

        /* renamed from: r */
        C1002q f3108r = new C1002q(this.f3098a);

        /* renamed from: s */
        C1002q f3109s = new C1002q(this.f3099b);

        /* renamed from: u */
        boolean f3111u = false;

        /* renamed from: v */
        boolean f3112v = false;

        /* renamed from: w */
        boolean f3113w = false;

        /* renamed from: c */
        private boolean f3100c = true;

        /* renamed from: d */
        private boolean f3101d = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$a.class */
        public interface AbstractC0928a {
            /* renamed from: b */
            void mo18498b(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$b.class */
        public static class C0929b {

            /* renamed from: a */
            public int f3118a;

            /* renamed from: b */
            public int f3119b;

            /* renamed from: c */
            public boolean f3120c;

            /* renamed from: d */
            public boolean f3121d;
        }

        /* renamed from: a */
        public static int m18997a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int i4 = size;
            switch (mode) {
                case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                    i4 = Math.min(size, Math.max(i2, i3));
                    break;
                case 1073741824:
                    break;
                default:
                    i4 = Math.max(i2, i3);
                    break;
            }
            return i4;
        }

        /* renamed from: a */
        public static int m18996a(int i, int i2, int i3, int i4, boolean z) {
            int i5;
            int i6;
            int max = Math.max(0, i - i3);
            if (z) {
                if (i4 >= 0) {
                    i6 = 1073741824;
                    i5 = i4;
                } else if (i4 == -1) {
                    i5 = max;
                    i6 = i2;
                    switch (i2) {
                        case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                        case 1073741824:
                            break;
                        case 0:
                            i6 = 0;
                            i5 = 0;
                            break;
                        default:
                            i6 = 0;
                            i5 = 0;
                            break;
                    }
                } else {
                    if (i4 == -2) {
                        i6 = 0;
                        i5 = 0;
                    }
                    i6 = 0;
                    i5 = 0;
                }
            } else if (i4 >= 0) {
                i6 = 1073741824;
                i5 = i4;
            } else {
                i5 = max;
                i6 = i2;
                if (i4 != -1) {
                    if (i4 == -2) {
                        if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                            i6 = Integer.MIN_VALUE;
                            i5 = max;
                        } else {
                            i6 = 0;
                            i5 = max;
                        }
                    }
                    i6 = 0;
                    i5 = 0;
                }
            }
            return View.MeasureSpec.makeMeasureSpec(i5, i6);
        }

        /* renamed from: a */
        public static C0929b m18991a(Context context, AttributeSet attributeSet, int i, int i2) {
            C0929b c0929b = new C0929b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0896a.C0899c.RecyclerView, i, i2);
            c0929b.f3118a = obtainStyledAttributes.getInt(C0896a.C0899c.RecyclerView_android_orientation, 1);
            c0929b.f3119b = obtainStyledAttributes.getInt(C0896a.C0899c.RecyclerView_spanCount, 1);
            c0929b.f3120c = obtainStyledAttributes.getBoolean(C0896a.C0899c.RecyclerView_reverseLayout, false);
            c0929b.f3121d = obtainStyledAttributes.getBoolean(C0896a.C0899c.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return c0929b;
        }

        /* renamed from: a */
        private void m18994a(int i, View view) {
            this.f3106p.m18579e(i);
        }

        /* renamed from: a */
        private void m18983a(View view, int i, boolean z) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.m18781q()) {
                this.f3107q.mViewInfoStore.m18366e(childViewHolderInt);
            } else {
                this.f3107q.mViewInfoStore.m18365f(childViewHolderInt);
            }
            C0930j c0930j = (C0930j) view.getLayoutParams();
            if (childViewHolderInt.m18787k() || childViewHolderInt.m18789i()) {
                if (childViewHolderInt.m18789i()) {
                    childViewHolderInt.m18788j();
                } else {
                    childViewHolderInt.m18786l();
                }
                this.f3106p.m18590a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f3107q) {
                int m18585b = this.f3106p.m18585b(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f3106p.m18587b();
                }
                if (m18585b == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f3107q.indexOfChild(view) + this.f3107q.exceptionLabel());
                }
                if (m18585b != i2) {
                    this.f3107q.mLayout.m18938e(m18585b, i2);
                }
            } else {
                this.f3106p.m18589a(view, i, false);
                c0930j.f3124e = true;
                if (this.f3110t != null && this.f3110t.m18832h()) {
                    this.f3110t.m18839b(view);
                }
            }
            if (c0930j.f3125f) {
                childViewHolderInt.f3183a.invalidate();
                c0930j.f3125f = false;
            }
        }

        /* renamed from: a */
        private void m18974a(C0937p c0937p, int i, View view) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.m18795c()) {
                return;
            }
            if (childViewHolderInt.m18784n() && !childViewHolderInt.m18781q() && !this.f3107q.mAdapter.m19050b()) {
                m18931g(i);
                c0937p.m18870b(childViewHolderInt);
                return;
            }
            m18929h(i);
            c0937p.m18866c(view);
            this.f3107q.mViewInfoStore.m18363h(childViewHolderInt);
        }

        /* renamed from: b */
        private static boolean m18961b(int i, int i2, int i3) {
            boolean z;
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 <= 0 || i == i3) {
                z = true;
                switch (mode) {
                    case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                        z = true;
                        if (size < i) {
                            z = false;
                            break;
                        }
                        break;
                    case 0:
                        break;
                    case 1073741824:
                        z = true;
                        if (size != i) {
                            z = false;
                            break;
                        }
                        break;
                    default:
                        z = false;
                        break;
                }
            } else {
                z = false;
            }
            return z;
        }

        /* renamed from: c */
        private int[] m18948c(View view, Rect rect) {
            int m19008D = m19008D();
            int m19007E = m19007E();
            int m19010B = m19010B() - m19006F();
            int m19009C = m19009C();
            int m19005G = m19005G();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = left + rect.width();
            int height = rect.height();
            int min = Math.min(0, left - m19008D);
            int min2 = Math.min(0, top - m19007E);
            int max = Math.max(0, width - m19010B);
            int max2 = Math.max(0, (top + height) - (m19009C - m19005G));
            if (m18913v() != 1) {
                max = min != 0 ? min : Math.min(left - m19008D, max);
            } else if (max == 0) {
                max = Math.max(min, width - m19010B);
            }
            if (min2 == 0) {
                min2 = Math.min(top - m19007E, max2);
            }
            return new int[]{max, min2};
        }

        /* renamed from: d */
        private boolean m18939d(RecyclerView recyclerView, int i, int i2) {
            boolean z;
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                z = false;
            } else {
                int m19008D = m19008D();
                int m19007E = m19007E();
                int m19010B = m19010B();
                int m19006F = m19006F();
                int m19009C = m19009C();
                int m19005G = m19005G();
                Rect rect = this.f3107q.mTempRect;
                m18982a(focusedChild, rect);
                z = false;
                if (rect.left - i < m19010B - m19006F) {
                    z = false;
                    if (rect.right - i > m19008D) {
                        z = false;
                        if (rect.top - i2 < m19009C - m19005G) {
                            z = false;
                            if (rect.bottom - i2 > m19007E) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }

        /* renamed from: A */
        public int m19011A() {
            return this.f3103f;
        }

        /* renamed from: B */
        public int m19010B() {
            return this.f3104g;
        }

        /* renamed from: C */
        public int m19009C() {
            return this.f3105h;
        }

        /* renamed from: D */
        public int m19008D() {
            return this.f3107q != null ? this.f3107q.getPaddingLeft() : 0;
        }

        /* renamed from: E */
        public int m19007E() {
            return this.f3107q != null ? this.f3107q.getPaddingTop() : 0;
        }

        /* renamed from: F */
        public int m19006F() {
            return this.f3107q != null ? this.f3107q.getPaddingRight() : 0;
        }

        /* renamed from: G */
        public int m19005G() {
            return this.f3107q != null ? this.f3107q.getPaddingBottom() : 0;
        }

        /* renamed from: H */
        public View m19004H() {
            View view;
            if (this.f3107q == null) {
                view = null;
            } else {
                View focusedChild = this.f3107q.getFocusedChild();
                view = null;
                if (focusedChild != null) {
                    view = null;
                    if (!this.f3106p.m18582c(focusedChild)) {
                        view = focusedChild;
                    }
                }
            }
            return view;
        }

        /* renamed from: I */
        public int m19003I() {
            AbstractC0914a adapter = this.f3107q != null ? this.f3107q.getAdapter() : null;
            return adapter != null ? adapter.mo959a() : 0;
        }

        /* renamed from: J */
        public int m19002J() {
            return C0595u.m20313k(this.f3107q);
        }

        /* renamed from: K */
        public int m19001K() {
            return C0595u.m20312l(this.f3107q);
        }

        /* renamed from: L */
        void m19000L() {
            if (this.f3110t != null) {
                this.f3110t.m18834f();
            }
        }

        /* renamed from: M */
        public void m18999M() {
            this.f3111u = true;
        }

        /* renamed from: N */
        public boolean m18998N() {
            boolean z;
            int m18910y = m18910y();
            int i = 0;
            while (true) {
                z = false;
                if (i >= m18910y) {
                    break;
                }
                ViewGroup.LayoutParams layoutParams = m18927i(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    z = true;
                    break;
                }
                i++;
            }
            return z;
        }

        /* renamed from: a */
        public int mo18764a(int i, C0937p c0937p, C0945u c0945u) {
            return 0;
        }

        /* renamed from: a */
        public int mo18751a(C0937p c0937p, C0945u c0945u) {
            int i = 1;
            if (this.f3107q != null) {
                if (this.f3107q.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo18704g()) {
                        i = this.f3107q.mAdapter.mo959a();
                    }
                }
            }
            return i;
        }

        /* renamed from: a */
        public View mo18758a(View view, int i, C0937p c0937p, C0945u c0945u) {
            return null;
        }

        /* renamed from: a */
        public abstract C0930j mo18768a();

        /* renamed from: a */
        public C0930j mo18762a(Context context, AttributeSet attributeSet) {
            return new C0930j(context, attributeSet);
        }

        /* renamed from: a */
        public C0930j mo18755a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0930j ? new C0930j((C0930j) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0930j((ViewGroup.MarginLayoutParams) layoutParams) : new C0930j(layoutParams);
        }

        /* renamed from: a */
        public void mo18765a(int i, int i2, C0945u c0945u, AbstractC0928a abstractC0928a) {
        }

        /* renamed from: a */
        public void mo18993a(int i, AbstractC0928a abstractC0928a) {
        }

        /* renamed from: a */
        public void m18992a(int i, C0937p c0937p) {
            View m18927i = m18927i(i);
            m18931g(i);
            c0937p.m18883a(m18927i);
        }

        /* renamed from: a */
        public void mo18761a(Rect rect, int i, int i2) {
            int width = rect.width();
            int m19008D = m19008D();
            int m19006F = m19006F();
            int height = rect.height();
            int m19007E = m19007E();
            m18934f(m18997a(i, width + m19008D + m19006F, m19002J()), m18997a(i2, height + m19007E + m19005G(), m19001K()));
        }

        /* renamed from: a */
        public void mo18760a(Parcelable parcelable) {
        }

        /* renamed from: a */
        public void m18990a(View view) {
            m18989a(view, -1);
        }

        /* renamed from: a */
        public void m18989a(View view, int i) {
            m18983a(view, i, true);
        }

        /* renamed from: a */
        public void m18988a(View view, int i, int i2) {
            C0930j c0930j = (C0930j) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.f3107q.getItemDecorInsetsForChild(view);
            int i3 = itemDecorInsetsForChild.left;
            int i4 = itemDecorInsetsForChild.right;
            int i5 = itemDecorInsetsForChild.top;
            int i6 = itemDecorInsetsForChild.bottom;
            int m18996a = m18996a(m19010B(), m18909z(), i3 + i4 + i + m19008D() + m19006F() + c0930j.leftMargin + c0930j.rightMargin, c0930j.width, mo18707f());
            int m18996a2 = m18996a(m19009C(), m19011A(), i6 + i5 + i2 + m19007E() + m19005G() + c0930j.topMargin + c0930j.bottomMargin, c0930j.height, mo18704g());
            if (m18958b(view, m18996a, m18996a2, c0930j)) {
                view.measure(m18996a, m18996a2);
            }
        }

        /* renamed from: a */
        public void m18987a(View view, int i, int i2, int i3, int i4) {
            C0930j c0930j = (C0930j) view.getLayoutParams();
            Rect rect = c0930j.f3123d;
            view.layout(rect.left + i + c0930j.leftMargin, rect.top + i2 + c0930j.topMargin, (i3 - rect.right) - c0930j.rightMargin, (i4 - rect.bottom) - c0930j.bottomMargin);
        }

        /* renamed from: a */
        public void m18984a(View view, int i, C0930j c0930j) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.m18781q()) {
                this.f3107q.mViewInfoStore.m18366e(childViewHolderInt);
            } else {
                this.f3107q.mViewInfoStore.m18365f(childViewHolderInt);
            }
            this.f3106p.m18590a(view, i, c0930j, childViewHolderInt.m18781q());
        }

        /* renamed from: a */
        public void m18982a(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        /* renamed from: a */
        public void m18981a(View view, C0553c c0553c) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.m18781q() || this.f3106p.m18582c(childViewHolderInt.f3183a)) {
                return;
            }
            mo18750a(this.f3107q.mRecycler, this.f3107q.mState, view, c0553c);
        }

        /* renamed from: a */
        public void m18980a(View view, C0937p c0937p) {
            m18950c(view);
            c0937p.m18883a(view);
        }

        /* renamed from: a */
        public void m18979a(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0930j) view.getLayoutParams()).f3123d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, rect2.bottom + view.getHeight());
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f3107q != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f3107q.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: a */
        public void mo18754a(AccessibilityEvent accessibilityEvent) {
            m18970a(this.f3107q.mRecycler, this.f3107q.mState, accessibilityEvent);
        }

        /* renamed from: a */
        public void m18977a(C0553c c0553c) {
            m18969a(this.f3107q.mRecycler, this.f3107q.mState, c0553c);
        }

        /* renamed from: a */
        public void m18976a(AbstractC0914a abstractC0914a, AbstractC0914a abstractC0914a2) {
        }

        /* renamed from: a */
        public void m18975a(C0937p c0937p) {
            for (int m18910y = m18910y() - 1; m18910y >= 0; m18910y--) {
                m18974a(c0937p, m18910y, m18927i(m18910y));
            }
        }

        /* renamed from: a */
        public void m18973a(C0937p c0937p, C0945u c0945u, int i, int i2) {
            this.f3107q.defaultOnMeasure(i, i2);
        }

        /* renamed from: a */
        public void mo18750a(C0937p c0937p, C0945u c0945u, View view, C0553c c0553c) {
            c0553c.m20503b(C0553c.C0556c.m20450a(mo18704g() ? m18943d(view) : 0, 1, mo18707f() ? m18943d(view) : 0, 1, false, false));
        }

        /* renamed from: a */
        public void m18970a(C0937p c0937p, C0945u c0945u, AccessibilityEvent accessibilityEvent) {
            if (this.f3107q == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!this.f3107q.canScrollVertically(1)) {
                z = true;
                if (!this.f3107q.canScrollVertically(-1)) {
                    z = true;
                    if (!this.f3107q.canScrollHorizontally(-1)) {
                        z = this.f3107q.canScrollHorizontally(1);
                    }
                }
            }
            accessibilityEvent.setScrollable(z);
            if (this.f3107q.mAdapter == null) {
                return;
            }
            accessibilityEvent.setItemCount(this.f3107q.mAdapter.mo959a());
        }

        /* renamed from: a */
        public void m18969a(C0937p c0937p, C0945u c0945u, C0553c c0553c) {
            if (this.f3107q.canScrollVertically(-1) || this.f3107q.canScrollHorizontally(-1)) {
                c0553c.m20525a(8192);
                c0553c.m20475i(true);
            }
            if (this.f3107q.canScrollVertically(1) || this.f3107q.canScrollHorizontally(1)) {
                c0553c.m20525a(4096);
                c0553c.m20475i(true);
            }
            c0553c.m20512a(C0553c.C0555b.m20451a(mo18751a(c0937p, c0945u), mo18727b(c0937p, c0945u), m18936e(c0937p, c0945u), m18941d(c0937p, c0945u)));
        }

        /* renamed from: a */
        public void m18968a(AbstractC0942t abstractC0942t) {
            if (this.f3110t != null && abstractC0942t != this.f3110t && this.f3110t.m18832h()) {
                this.f3110t.m18834f();
            }
            this.f3110t = abstractC0942t;
            this.f3110t.m18840a(this.f3107q, this);
        }

        /* renamed from: a */
        public void mo18746a(C0945u c0945u) {
        }

        /* renamed from: a */
        public void mo18744a(RecyclerView recyclerView) {
        }

        /* renamed from: a */
        public void mo18743a(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: a */
        public void mo18742a(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: a */
        public void mo18741a(RecyclerView recyclerView, int i, int i2, Object obj) {
            m18945c(recyclerView, i, i2);
        }

        /* renamed from: a */
        public void mo18740a(RecyclerView recyclerView, C0937p c0937p) {
            m18935e(recyclerView);
        }

        /* renamed from: a */
        public void mo3114a(RecyclerView recyclerView, C0945u c0945u, int i) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        /* renamed from: a */
        public void mo18735a(String str) {
            if (this.f3107q != null) {
                this.f3107q.assertNotInLayoutOrScroll(str);
            }
        }

        /* renamed from: a */
        public boolean m18995a(int i, Bundle bundle) {
            return m18972a(this.f3107q.mRecycler, this.f3107q.mState, i, bundle);
        }

        /* renamed from: a */
        public boolean m18986a(View view, int i, int i2, C0930j c0930j) {
            return !this.f3100c || !m18961b(view.getMeasuredWidth(), i, c0930j.width) || !m18961b(view.getMeasuredHeight(), i2, c0930j.height);
        }

        /* renamed from: a */
        public boolean m18985a(View view, int i, Bundle bundle) {
            return m18971a(this.f3107q.mRecycler, this.f3107q.mState, view, i, bundle);
        }

        /* renamed from: a */
        public boolean m18978a(View view, boolean z, boolean z2) {
            boolean z3;
            boolean z4 = this.f3108r.m18390a(view, 24579) && this.f3109s.m18390a(view, 24579);
            if (z) {
                z3 = z4;
            } else {
                z3 = true;
                if (z4) {
                    z3 = false;
                }
            }
            return z3;
        }

        /* renamed from: a */
        public boolean mo18753a(C0930j c0930j) {
            return c0930j != null;
        }

        /* renamed from: a */
        public boolean m18972a(C0937p c0937p, C0945u c0945u, int i, Bundle bundle) {
            int i2;
            int i3;
            boolean z = false;
            if (this.f3107q != null) {
                switch (i) {
                    case 4096:
                        int m19009C = this.f3107q.canScrollVertically(1) ? (m19009C() - m19007E()) - m19005G() : 0;
                        i2 = m19009C;
                        if (this.f3107q.canScrollHorizontally(1)) {
                            i2 = m19009C;
                            i3 = (m19010B() - m19008D()) - m19006F();
                            break;
                        }
                        i3 = 0;
                        break;
                    case 8192:
                        int i4 = this.f3107q.canScrollVertically(-1) ? -((m19009C() - m19007E()) - m19005G()) : 0;
                        i2 = i4;
                        if (this.f3107q.canScrollHorizontally(-1)) {
                            i2 = i4;
                            i3 = -((m19010B() - m19008D()) - m19006F());
                            break;
                        }
                        i3 = 0;
                        break;
                    default:
                        i3 = 0;
                        i2 = 0;
                        break;
                }
                if (i2 != 0 || i3 != 0) {
                    this.f3107q.smoothScrollBy(i3, i2, null, RecyclerView.UNDEFINED_DURATION, true);
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: a */
        public boolean m18971a(C0937p c0937p, C0945u c0945u, View view, int i, Bundle bundle) {
            return false;
        }

        /* renamed from: a */
        public boolean m18967a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return m18966a(recyclerView, view, rect, z, false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
            if (m18939d(r6, r0, r0) != false) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
            if (r0 != 0) goto L10;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m18966a(androidx.recyclerview.widget.RecyclerView r6, android.view.View r7, android.graphics.Rect r8, boolean r9, boolean r10) {
            /*
                r5 = this;
                r0 = 0
                r11 = r0
                r0 = r5
                r1 = r7
                r2 = r8
                int[] r0 = r0.m18948c(r1, r2)
                r7 = r0
                r0 = r7
                r1 = 0
                r0 = r0[r1]
                r12 = r0
                r0 = r7
                r1 = 1
                r0 = r0[r1]
                r13 = r0
                r0 = r10
                if (r0 == 0) goto L29
                r0 = r11
                r10 = r0
                r0 = r5
                r1 = r6
                r2 = r12
                r3 = r13
                boolean r0 = r0.m18939d(r1, r2, r3)
                if (r0 == 0) goto L47
            L29:
                r0 = r12
                if (r0 != 0) goto L37
                r0 = r11
                r10 = r0
                r0 = r13
                if (r0 == 0) goto L47
            L37:
                r0 = r9
                if (r0 == 0) goto L4a
                r0 = r6
                r1 = r12
                r2 = r13
                r0.scrollBy(r1, r2)
            L44:
                r0 = 1
                r10 = r0
            L47:
                r0 = r10
                return r0
            L4a:
                r0 = r6
                r1 = r12
                r2 = r13
                r0.smoothScrollBy(r1, r2)
                goto L44
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0925i.m18966a(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        @Deprecated
        /* renamed from: a */
        public boolean m18965a(RecyclerView recyclerView, View view, View view2) {
            return m18914u() || recyclerView.isComputingLayout();
        }

        /* renamed from: a */
        public boolean m18964a(RecyclerView recyclerView, C0945u c0945u, View view, View view2) {
            return m18965a(recyclerView, view, view2);
        }

        /* renamed from: a */
        public boolean m18963a(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* renamed from: a */
        public boolean m18962a(Runnable runnable) {
            return this.f3107q != null ? this.f3107q.removeCallbacks(runnable) : false;
        }

        /* renamed from: b */
        public int mo18730b(int i, C0937p c0937p, C0945u c0945u) {
            return 0;
        }

        /* renamed from: b */
        public int mo18727b(C0937p c0937p, C0945u c0945u) {
            int i = 1;
            if (this.f3107q != null) {
                if (this.f3107q.mAdapter == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo18707f()) {
                        i = this.f3107q.mAdapter.mo959a();
                    }
                }
            }
            return i;
        }

        /* renamed from: b */
        public int mo18725b(C0945u c0945u) {
            return 0;
        }

        /* renamed from: b */
        public void m18960b(View view) {
            m18959b(view, -1);
        }

        /* renamed from: b */
        public void m18959b(View view, int i) {
            m18983a(view, i, false);
        }

        /* renamed from: b */
        public void m18957b(View view, Rect rect) {
            if (this.f3107q == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.f3107q.getItemDecorInsetsForChild(view));
            }
        }

        /* renamed from: b */
        void m18956b(C0937p c0937p) {
            int m18861e = c0937p.m18861e();
            for (int i = m18861e - 1; i >= 0; i--) {
                View m18860e = c0937p.m18860e(i);
                AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(m18860e);
                if (!childViewHolderInt.m18795c()) {
                    childViewHolderInt.m18799a(false);
                    if (childViewHolderInt.m18780r()) {
                        this.f3107q.removeDetachedView(m18860e, false);
                    }
                    if (this.f3107q.mItemAnimator != null) {
                        this.f3107q.mItemAnimator.mo18542d(childViewHolderInt);
                    }
                    childViewHolderInt.m18799a(true);
                    c0937p.m18871b(m18860e);
                }
            }
            c0937p.m18858f();
            if (m18861e > 0) {
                this.f3107q.invalidate();
            }
        }

        /* renamed from: b */
        void m18955b(AbstractC0942t abstractC0942t) {
            if (this.f3110t == abstractC0942t) {
                this.f3110t = null;
            }
        }

        /* renamed from: b */
        void m18954b(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f3107q = null;
                this.f3106p = null;
                this.f3104g = 0;
                this.f3105h = 0;
            } else {
                this.f3107q = recyclerView;
                this.f3106p = recyclerView.mChildHelper;
                this.f3104g = recyclerView.getWidth();
                this.f3105h = recyclerView.getHeight();
            }
            this.f3102e = 1073741824;
            this.f3103f = 1073741824;
        }

        /* renamed from: b */
        public void mo18723b(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: b */
        void m18953b(RecyclerView recyclerView, C0937p c0937p) {
            this.f3112v = false;
            mo18740a(recyclerView, c0937p);
        }

        /* renamed from: b */
        public boolean m18958b(View view, int i, int i2, C0930j c0930j) {
            return view.isLayoutRequested() || !this.f3100c || !m18961b(view.getWidth(), i, c0930j.width) || !m18961b(view.getHeight(), i2, c0930j.height);
        }

        /* renamed from: c */
        public int mo18716c(C0945u c0945u) {
            return 0;
        }

        /* renamed from: c */
        public View mo18952c(int i) {
            View view;
            int m18910y = m18910y();
            int i2 = 0;
            while (true) {
                if (i2 >= m18910y) {
                    view = null;
                    break;
                }
                View m18927i = m18927i(i2);
                AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(m18927i);
                if (childViewHolderInt != null && childViewHolderInt.m18794d() == i && !childViewHolderInt.m18795c()) {
                    view = m18927i;
                    if (this.f3107q.mState.m18824a()) {
                        break;
                    } else if (!childViewHolderInt.m18781q()) {
                        view = m18927i;
                        break;
                    }
                }
                i2++;
            }
            return view;
        }

        /* renamed from: c */
        void m18951c(int i, int i2) {
            this.f3104g = View.MeasureSpec.getSize(i);
            this.f3102e = View.MeasureSpec.getMode(i);
            if (this.f3102e == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.f3104g = 0;
            }
            this.f3105h = View.MeasureSpec.getSize(i2);
            this.f3103f = View.MeasureSpec.getMode(i2);
            if (this.f3103f != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.f3105h = 0;
        }

        /* renamed from: c */
        public void m18950c(View view) {
            this.f3106p.m18591a(view);
        }

        /* renamed from: c */
        public void m18949c(View view, int i) {
            m18984a(view, i, (C0930j) view.getLayoutParams());
        }

        /* renamed from: c */
        public void m18947c(C0937p c0937p) {
            for (int m18910y = m18910y() - 1; m18910y >= 0; m18910y--) {
                if (!RecyclerView.getChildViewHolderInt(m18927i(m18910y)).m18795c()) {
                    m18992a(m18910y, c0937p);
                }
            }
        }

        /* renamed from: c */
        public void mo18718c(C0937p c0937p, C0945u c0945u) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: c */
        void m18946c(RecyclerView recyclerView) {
            this.f3112v = true;
            m18940d(recyclerView);
        }

        /* renamed from: c */
        public void m18945c(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: c */
        public boolean mo18721c() {
            return false;
        }

        /* renamed from: d */
        public int m18943d(View view) {
            return ((C0930j) view.getLayoutParams()).m18905f();
        }

        /* renamed from: d */
        public int m18941d(C0937p c0937p, C0945u c0945u) {
            return 0;
        }

        /* renamed from: d */
        public int mo18711d(C0945u c0945u) {
            return 0;
        }

        /* renamed from: d */
        public View m18942d(View view, int i) {
            return null;
        }

        /* renamed from: d */
        void m18944d(int i, int i2) {
            int m18910y = m18910y();
            if (m18910y == 0) {
                this.f3107q.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MAX_VALUE;
            while (i3 < m18910y) {
                View m18927i = m18927i(i3);
                Rect rect = this.f3107q.mTempRect;
                m18982a(m18927i, rect);
                int i8 = i7;
                if (rect.left < i7) {
                    i8 = rect.left;
                }
                int i9 = i5;
                if (rect.right > i5) {
                    i9 = rect.right;
                }
                int i10 = i6;
                if (rect.top < i6) {
                    i10 = rect.top;
                }
                int i11 = i4;
                if (rect.bottom > i4) {
                    i11 = rect.bottom;
                }
                i3++;
                i7 = i8;
                i5 = i9;
                i6 = i10;
                i4 = i11;
            }
            this.f3107q.mTempRect.set(i7, i6, i5, i4);
            mo18761a(this.f3107q.mTempRect, i, i2);
        }

        /* renamed from: d */
        public void m18940d(RecyclerView recyclerView) {
        }

        /* renamed from: d */
        public boolean mo18713d() {
            return this.f3113w;
        }

        /* renamed from: e */
        public int mo18708e(C0945u c0945u) {
            return 0;
        }

        /* renamed from: e */
        public Parcelable mo18710e() {
            return null;
        }

        /* renamed from: e */
        public View m18937e(View view) {
            View view2;
            if (this.f3107q == null) {
                view2 = null;
            } else {
                View findContainingItemView = this.f3107q.findContainingItemView(view);
                view2 = null;
                if (findContainingItemView != null) {
                    view2 = null;
                    if (!this.f3106p.m18582c(findContainingItemView)) {
                        view2 = findContainingItemView;
                    }
                }
            }
            return view2;
        }

        /* renamed from: e */
        public void mo18709e(int i) {
        }

        /* renamed from: e */
        public void m18938e(int i, int i2) {
            View m18927i = m18927i(i);
            if (m18927i == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f3107q.toString());
            }
            m18929h(i);
            m18949c(m18927i, i2);
        }

        @Deprecated
        /* renamed from: e */
        public void m18935e(RecyclerView recyclerView) {
        }

        /* renamed from: e */
        public boolean m18936e(C0937p c0937p, C0945u c0945u) {
            return false;
        }

        /* renamed from: f */
        public int m18933f(View view) {
            Rect rect = ((C0930j) view.getLayoutParams()).f3123d;
            return rect.right + view.getMeasuredWidth() + rect.left;
        }

        /* renamed from: f */
        public void m18934f(int i, int i2) {
            this.f3107q.setMeasuredDimension(i, i2);
        }

        /* renamed from: f */
        void m18932f(RecyclerView recyclerView) {
            m18951c(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: f */
        public boolean mo18707f() {
            return false;
        }

        /* renamed from: g */
        public int m18930g(View view) {
            Rect rect = ((C0930j) view.getLayoutParams()).f3123d;
            return rect.bottom + view.getMeasuredHeight() + rect.top;
        }

        /* renamed from: g */
        public int mo18703g(C0945u c0945u) {
            return 0;
        }

        /* renamed from: g */
        public void m18931g(int i) {
            if (m18927i(i) != null) {
                this.f3106p.m18592a(i);
            }
        }

        /* renamed from: g */
        public boolean mo18704g() {
            return false;
        }

        /* renamed from: h */
        public int m18928h(View view) {
            return view.getLeft() - m18920n(view);
        }

        /* renamed from: h */
        public int mo18701h(C0945u c0945u) {
            return 0;
        }

        /* renamed from: h */
        public void m18929h(int i) {
            m18994a(i, m18927i(i));
        }

        /* renamed from: i */
        public int m18926i(View view) {
            return view.getTop() - m18923l(view);
        }

        /* renamed from: i */
        public View m18927i(int i) {
            return this.f3106p != null ? this.f3106p.m18586b(i) : null;
        }

        /* renamed from: j */
        public int m18925j(View view) {
            return view.getRight() + m18919o(view);
        }

        /* renamed from: j */
        public void mo18697j(int i) {
            if (this.f3107q != null) {
                this.f3107q.offsetChildrenHorizontal(i);
            }
        }

        /* renamed from: k */
        public int m18924k(View view) {
            return view.getBottom() + m18922m(view);
        }

        /* renamed from: k */
        public void mo18694k(int i) {
            if (this.f3107q != null) {
                this.f3107q.offsetChildrenVertical(i);
            }
        }

        /* renamed from: l */
        public int m18923l(View view) {
            return ((C0930j) view.getLayoutParams()).f3123d.top;
        }

        /* renamed from: l */
        public void mo18692l(int i) {
        }

        /* renamed from: m */
        public int m18922m(View view) {
            return ((C0930j) view.getLayoutParams()).f3123d.bottom;
        }

        /* renamed from: n */
        public int m18920n(View view) {
            return ((C0930j) view.getLayoutParams()).f3123d.left;
        }

        /* renamed from: n */
        boolean mo18921n() {
            return false;
        }

        /* renamed from: o */
        public int m18919o(View view) {
            return ((C0930j) view.getLayoutParams()).f3123d.right;
        }

        /* renamed from: q */
        public void m18918q() {
            if (this.f3107q != null) {
                this.f3107q.requestLayout();
            }
        }

        /* renamed from: r */
        public final boolean m18917r() {
            return this.f3101d;
        }

        /* renamed from: s */
        public boolean m18916s() {
            return this.f3112v;
        }

        /* renamed from: t */
        public boolean m18915t() {
            return this.f3107q != null && this.f3107q.mClipToPadding;
        }

        /* renamed from: u */
        public boolean m18914u() {
            return this.f3110t != null && this.f3110t.m18832h();
        }

        /* renamed from: v */
        public int m18913v() {
            return C0595u.m20320g(this.f3107q);
        }

        /* renamed from: w */
        public void m18912w() {
            for (int m18910y = m18910y() - 1; m18910y >= 0; m18910y--) {
                this.f3106p.m18592a(m18910y);
            }
        }

        /* renamed from: x */
        public int m18911x() {
            return -1;
        }

        /* renamed from: y */
        public int m18910y() {
            return this.f3106p != null ? this.f3106p.m18587b() : 0;
        }

        /* renamed from: z */
        public int m18909z() {
            return this.f3102e;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public static class C0930j extends ViewGroup.MarginLayoutParams {

        /* renamed from: c */
        AbstractC0948x f3122c;

        /* renamed from: d */
        final Rect f3123d = new Rect();

        /* renamed from: e */
        boolean f3124e = true;

        /* renamed from: f */
        boolean f3125f = false;

        public C0930j(int i, int i2) {
            super(i, i2);
        }

        public C0930j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0930j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0930j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0930j(C0930j c0930j) {
            super((ViewGroup.LayoutParams) c0930j);
        }

        /* renamed from: c */
        public boolean m18908c() {
            return this.f3122c.m18784n();
        }

        /* renamed from: d */
        public boolean m18907d() {
            return this.f3122c.m18781q();
        }

        /* renamed from: e */
        public boolean m18906e() {
            return this.f3122c.m18809A();
        }

        /* renamed from: f */
        public int m18905f() {
            return this.f3122c.m18794d();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public interface AbstractC0931k {
        /* renamed from: a */
        void m18904a(View view);

        /* renamed from: b */
        void m18903b(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0932l {
        /* renamed from: a */
        public abstract boolean mo18403a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public interface AbstractC0933m {
        /* renamed from: a */
        void mo18527a(boolean z);

        /* renamed from: a */
        boolean mo18528a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: b */
        void mo18521b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static abstract class AbstractC0934n {
        /* renamed from: a */
        public void mo3175a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: a */
        public void mo1098a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static class C0935o {

        /* renamed from: a */
        SparseArray<C0936a> f3126a = new SparseArray<>();

        /* renamed from: b */
        private int f3127b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$a.class */
        public static class C0936a {

            /* renamed from: a */
            final ArrayList<AbstractC0948x> f3128a = new ArrayList<>();

            /* renamed from: b */
            int f3129b = 5;

            /* renamed from: c */
            long f3130c = 0;

            /* renamed from: d */
            long f3131d = 0;

            C0936a() {
            }
        }

        /* renamed from: b */
        private C0936a m18894b(int i) {
            C0936a c0936a = this.f3126a.get(i);
            C0936a c0936a2 = c0936a;
            if (c0936a == null) {
                c0936a2 = new C0936a();
                this.f3126a.put(i, c0936a2);
            }
            return c0936a2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* renamed from: a */
        long m18898a(long j, long j2) {
            ?? r10 = j2;
            if (j != 0) {
                r10 = ((j / 4) * 3) + (j2 / 4);
            }
            return r10;
        }

        /* renamed from: a */
        public AbstractC0948x m18901a(int i) {
            AbstractC0948x abstractC0948x;
            C0936a c0936a = this.f3126a.get(i);
            if (c0936a != null && !c0936a.f3128a.isEmpty()) {
                ArrayList<AbstractC0948x> arrayList = c0936a.f3128a;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (!arrayList.get(size).m18779s()) {
                        abstractC0948x = arrayList.remove(size);
                        break;
                    }
                }
            }
            abstractC0948x = null;
            return abstractC0948x;
        }

        /* renamed from: a */
        public void m18902a() {
            for (int i = 0; i < this.f3126a.size(); i++) {
                this.f3126a.valueAt(i).f3128a.clear();
            }
        }

        /* renamed from: a */
        void m18900a(int i, long j) {
            C0936a m18894b = m18894b(i);
            m18894b.f3130c = m18898a(m18894b.f3130c, j);
        }

        /* renamed from: a */
        void m18897a(AbstractC0914a abstractC0914a, AbstractC0914a abstractC0914a2, boolean z) {
            if (abstractC0914a != null) {
                m18891c();
            }
            if (!z && this.f3127b == 0) {
                m18902a();
            }
            if (abstractC0914a2 != null) {
                m18895b();
            }
        }

        /* renamed from: a */
        public void m18896a(AbstractC0948x abstractC0948x) {
            int m18790h = abstractC0948x.m18790h();
            ArrayList<AbstractC0948x> arrayList = m18894b(m18790h).f3128a;
            if (this.f3126a.get(m18790h).f3129b <= arrayList.size()) {
                return;
            }
            abstractC0948x.m18775w();
            arrayList.add(abstractC0948x);
        }

        /* renamed from: a */
        boolean m18899a(int i, long j, long j2) {
            long j3 = m18894b(i).f3130c;
            return j3 == 0 || j3 + j < j2;
        }

        /* renamed from: b */
        void m18895b() {
            this.f3127b++;
        }

        /* renamed from: b */
        void m18893b(int i, long j) {
            C0936a m18894b = m18894b(i);
            m18894b.f3131d = m18898a(m18894b.f3131d, j);
        }

        /* renamed from: b */
        boolean m18892b(int i, long j, long j2) {
            long j3 = m18894b(i).f3131d;
            return j3 == 0 || j3 + j < j2;
        }

        /* renamed from: c */
        void m18891c() {
            this.f3127b--;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public final class C0937p {

        /* renamed from: e */
        C0935o f3136e;

        /* renamed from: i */
        private AbstractC0946v f3140i;

        /* renamed from: a */
        final ArrayList<AbstractC0948x> f3132a = new ArrayList<>();

        /* renamed from: b */
        ArrayList<AbstractC0948x> f3133b = null;

        /* renamed from: c */
        final ArrayList<AbstractC0948x> f3134c = new ArrayList<>();

        /* renamed from: g */
        private final List<AbstractC0948x> f3138g = Collections.unmodifiableList(this.f3132a);

        /* renamed from: h */
        private int f3139h = 2;

        /* renamed from: d */
        int f3135d = 2;

        public C0937p() {
            RecyclerView.this = r5;
        }

        /* renamed from: a */
        private void m18882a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m18882a((ViewGroup) childAt, true);
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
        private boolean m18877a(AbstractC0948x abstractC0948x, int i, int i2, long j) {
            boolean z;
            abstractC0948x.f3198p = RecyclerView.this;
            int m18790h = abstractC0948x.m18790h();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j == RecyclerView.FOREVER_NS || this.f3136e.m18892b(m18790h, nanoTime, j)) {
                RecyclerView.this.mAdapter.m19046b((AbstractC0914a) abstractC0948x, i);
                this.f3136e.m18893b(abstractC0948x.m18790h(), RecyclerView.this.getNanoTime() - nanoTime);
                m18859e(abstractC0948x);
                if (RecyclerView.this.mState.m18824a()) {
                    abstractC0948x.f3189g = i2;
                }
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        /* renamed from: e */
        private void m18859e(AbstractC0948x abstractC0948x) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = abstractC0948x.f3183a;
                if (C0595u.m20322f(view) == 0) {
                    C0595u.m20335b(view, 1);
                }
                if (RecyclerView.this.mAccessibilityDelegate == null) {
                    return;
                }
                C0549a m18440c = RecyclerView.this.mAccessibilityDelegate.m18440c();
                if (m18440c instanceof C0995m.C0996a) {
                    ((C0995m.C0996a) m18440c).m18434c(view);
                }
                C0595u.m20345a(view, m18440c);
            }
        }

        /* renamed from: f */
        private void m18856f(AbstractC0948x abstractC0948x) {
            if (abstractC0948x.f3183a instanceof ViewGroup) {
                m18882a((ViewGroup) abstractC0948x.f3183a, false);
            }
        }

        /* renamed from: a */
        View m18886a(int i, boolean z) {
            return m18885a(i, z, RecyclerView.FOREVER_NS).f3183a;
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x019c  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0226  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x025c  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0948x m18885a(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1045
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0937p.m18885a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$x");
        }

        /* renamed from: a */
        AbstractC0948x m18884a(long j, int i, boolean z) {
            AbstractC0948x abstractC0948x;
            int size = this.f3132a.size() - 1;
            while (true) {
                if (size < 0) {
                    int size2 = this.f3134c.size() - 1;
                    while (true) {
                        if (size2 < 0) {
                            abstractC0948x = null;
                            break;
                        }
                        AbstractC0948x abstractC0948x2 = this.f3134c.get(size2);
                        if (abstractC0948x2.m18791g() == j && !abstractC0948x2.m18779s()) {
                            if (i == abstractC0948x2.m18790h()) {
                                abstractC0948x = abstractC0948x2;
                                if (!z) {
                                    this.f3134c.remove(size2);
                                    abstractC0948x = abstractC0948x2;
                                }
                            } else if (!z) {
                                m18863d(size2);
                                abstractC0948x = null;
                                break;
                            }
                        }
                        size2--;
                    }
                } else {
                    AbstractC0948x abstractC0948x3 = this.f3132a.get(size);
                    if (abstractC0948x3.m18791g() == j && !abstractC0948x3.m18787k()) {
                        if (i == abstractC0948x3.m18790h()) {
                            abstractC0948x3.m18797b(32);
                            abstractC0948x = abstractC0948x3;
                            if (abstractC0948x3.m18781q()) {
                                abstractC0948x = abstractC0948x3;
                                if (!RecyclerView.this.mState.m18824a()) {
                                    abstractC0948x3.m18805a(2, 14);
                                    abstractC0948x = abstractC0948x3;
                                }
                            }
                        } else if (!z) {
                            this.f3132a.remove(size);
                            RecyclerView.this.removeDetachedView(abstractC0948x3.f3183a, false);
                            m18871b(abstractC0948x3.f3183a);
                        }
                    }
                    size--;
                }
            }
            return abstractC0948x;
        }

        /* renamed from: a */
        public void m18890a() {
            this.f3132a.clear();
            m18864d();
        }

        /* renamed from: a */
        public void m18889a(int i) {
            this.f3139h = i;
            m18875b();
        }

        /* renamed from: a */
        void m18888a(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = -1;
                i4 = i2;
                i5 = i;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.f3134c.size();
            for (int i6 = 0; i6 < size; i6++) {
                AbstractC0948x abstractC0948x = this.f3134c.get(i6);
                if (abstractC0948x != null && abstractC0948x.f3185c >= i5 && abstractC0948x.f3185c <= i4) {
                    if (abstractC0948x.f3185c == i) {
                        abstractC0948x.m18803a(i2 - i, false);
                    } else {
                        abstractC0948x.m18803a(i3, false);
                    }
                }
            }
        }

        /* renamed from: a */
        void m18887a(int i, int i2, boolean z) {
            for (int size = this.f3134c.size() - 1; size >= 0; size--) {
                AbstractC0948x abstractC0948x = this.f3134c.get(size);
                if (abstractC0948x != null) {
                    if (abstractC0948x.f3185c >= i + i2) {
                        abstractC0948x.m18803a(-i2, z);
                    } else if (abstractC0948x.f3185c >= i) {
                        abstractC0948x.m18797b(8);
                        m18863d(size);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m18883a(View view) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.m18780r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.m18789i()) {
                childViewHolderInt.m18788j();
            } else if (childViewHolderInt.m18787k()) {
                childViewHolderInt.m18786l();
            }
            m18870b(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator == null || childViewHolderInt.m18774x()) {
                return;
            }
            RecyclerView.this.mItemAnimator.mo18542d(childViewHolderInt);
        }

        /* renamed from: a */
        void m18881a(AbstractC0914a abstractC0914a, AbstractC0914a abstractC0914a2, boolean z) {
            m18890a();
            m18855g().m18897a(abstractC0914a, abstractC0914a2, z);
        }

        /* renamed from: a */
        void m18880a(C0935o c0935o) {
            if (this.f3136e != null) {
                this.f3136e.m18891c();
            }
            this.f3136e = c0935o;
            if (this.f3136e == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f3136e.m18895b();
        }

        /* renamed from: a */
        void m18879a(AbstractC0946v abstractC0946v) {
            this.f3140i = abstractC0946v;
        }

        /* renamed from: a */
        public void m18876a(AbstractC0948x abstractC0948x, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(abstractC0948x);
            View view = abstractC0948x.f3183a;
            if (RecyclerView.this.mAccessibilityDelegate != null) {
                C0549a m18440c = RecyclerView.this.mAccessibilityDelegate.m18440c();
                C0595u.m20345a(view, m18440c instanceof C0995m.C0996a ? ((C0995m.C0996a) m18440c).m18433d(view) : null);
            }
            if (z) {
                m18862d(abstractC0948x);
            }
            abstractC0948x.f3198p = null;
            m18855g().m18896a(abstractC0948x);
        }

        /* renamed from: a */
        boolean m18878a(AbstractC0948x abstractC0948x) {
            boolean z;
            if (abstractC0948x.m18781q()) {
                z = RecyclerView.this.mState.m18824a();
            } else if (abstractC0948x.f3185c < 0 || abstractC0948x.f3185c >= RecyclerView.this.mAdapter.mo959a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0948x + RecyclerView.this.exceptionLabel());
            } else {
                if (RecyclerView.this.mState.m18824a() || RecyclerView.this.mAdapter.mo958a(abstractC0948x.f3185c) == abstractC0948x.m18790h()) {
                    z = true;
                    if (RecyclerView.this.mAdapter.m19050b()) {
                        z = true;
                        if (abstractC0948x.m18791g() != RecyclerView.this.mAdapter.mo3121b(abstractC0948x.f3185c)) {
                            z = false;
                        }
                    }
                } else {
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: b */
        public int m18874b(int i) {
            if (i < 0 || i >= RecyclerView.this.mState.m18818e()) {
                throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.mState.m18818e() + RecyclerView.this.exceptionLabel());
            }
            if (RecyclerView.this.mState.m18824a()) {
                i = RecyclerView.this.mAdapterHelper.m18617b(i);
            }
            return i;
        }

        /* renamed from: b */
        AbstractC0948x m18872b(int i, boolean z) {
            AbstractC0948x abstractC0948x;
            View m18583c;
            int size = this.f3132a.size();
            for (int i2 = 0; i2 < size; i2++) {
                abstractC0948x = this.f3132a.get(i2);
                if (!abstractC0948x.m18787k() && abstractC0948x.m18794d() == i && !abstractC0948x.m18784n() && (RecyclerView.this.mState.f3164g || !abstractC0948x.m18781q())) {
                    abstractC0948x.m18797b(32);
                    break;
                }
            }
            if (z || (m18583c = RecyclerView.this.mChildHelper.m18583c(i)) == null) {
                int size2 = this.f3134c.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        abstractC0948x = null;
                        break;
                    }
                    AbstractC0948x abstractC0948x2 = this.f3134c.get(i3);
                    if (abstractC0948x2.m18784n() || abstractC0948x2.m18794d() != i || abstractC0948x2.m18779s()) {
                        i3++;
                    } else {
                        abstractC0948x = abstractC0948x2;
                        if (!z) {
                            this.f3134c.remove(i3);
                            abstractC0948x = abstractC0948x2;
                        }
                    }
                }
            } else {
                abstractC0948x = RecyclerView.getChildViewHolderInt(m18583c);
                RecyclerView.this.mChildHelper.m18578e(m18583c);
                int m18585b = RecyclerView.this.mChildHelper.m18585b(m18583c);
                if (m18585b == -1) {
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + abstractC0948x + RecyclerView.this.exceptionLabel());
                }
                RecyclerView.this.mChildHelper.m18579e(m18585b);
                m18866c(m18583c);
                abstractC0948x.m18797b(8224);
            }
            return abstractC0948x;
        }

        /* renamed from: b */
        public void m18875b() {
            this.f3135d = (RecyclerView.this.mLayout != null ? RecyclerView.this.mLayout.f3114x : 0) + this.f3139h;
            for (int size = this.f3134c.size() - 1; size >= 0 && this.f3134c.size() > this.f3135d; size--) {
                m18863d(size);
            }
        }

        /* renamed from: b */
        void m18873b(int i, int i2) {
            int size = this.f3134c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0948x abstractC0948x = this.f3134c.get(i3);
                if (abstractC0948x != null && abstractC0948x.f3185c >= i) {
                    abstractC0948x.m18803a(i2, true);
                }
            }
        }

        /* renamed from: b */
        void m18871b(View view) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.f3195m = null;
            childViewHolderInt.f3196n = false;
            childViewHolderInt.m18786l();
            m18870b(childViewHolderInt);
        }

        /* renamed from: b */
        void m18870b(AbstractC0948x abstractC0948x) {
            boolean z;
            boolean z2;
            if (abstractC0948x.m18789i() || abstractC0948x.f3183a.getParent() != null) {
                throw new IllegalArgumentException("Scrapped or attached views may not be recycled. isScrap:" + abstractC0948x.m18789i() + " isAttached:" + (abstractC0948x.f3183a.getParent() != null) + RecyclerView.this.exceptionLabel());
            } else if (abstractC0948x.m18780r()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + abstractC0948x + RecyclerView.this.exceptionLabel());
            } else {
                if (abstractC0948x.m18795c()) {
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
                }
                boolean m18772z = abstractC0948x.m18772z();
                if ((RecyclerView.this.mAdapter != null && m18772z && RecyclerView.this.mAdapter.m19047b((AbstractC0914a) abstractC0948x)) || abstractC0948x.m18774x()) {
                    if (this.f3135d <= 0 || abstractC0948x.m18806a(526)) {
                        z2 = false;
                    } else {
                        int size = this.f3134c.size();
                        int i = size;
                        if (size >= this.f3135d) {
                            i = size;
                            if (size > 0) {
                                m18863d(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.mPrefetchRegistry.m18501a(abstractC0948x.f3185c)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.mPrefetchRegistry.m18501a(this.f3134c.get(i).f3185c)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f3134c.add(i2, abstractC0948x);
                        z2 = true;
                    }
                    if (!z2) {
                        m18876a(abstractC0948x, true);
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                RecyclerView.this.mViewInfoStore.m18364g(abstractC0948x);
                if (z2 || z || !m18772z) {
                    return;
                }
                abstractC0948x.f3198p = null;
            }
        }

        /* renamed from: c */
        public View m18868c(int i) {
            return m18886a(i, false);
        }

        /* renamed from: c */
        public List<AbstractC0948x> m18869c() {
            return this.f3138g;
        }

        /* renamed from: c */
        void m18867c(int i, int i2) {
            int i3;
            for (int size = this.f3134c.size() - 1; size >= 0; size--) {
                AbstractC0948x abstractC0948x = this.f3134c.get(size);
                if (abstractC0948x != null && (i3 = abstractC0948x.f3185c) >= i && i3 < i + i2) {
                    abstractC0948x.m18797b(2);
                    m18863d(size);
                }
            }
        }

        /* renamed from: c */
        void m18866c(View view) {
            AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.m18806a(12) && childViewHolderInt.m18809A() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f3133b == null) {
                    this.f3133b = new ArrayList<>();
                }
                childViewHolderInt.m18802a(this, true);
                this.f3133b.add(childViewHolderInt);
            } else if (childViewHolderInt.m18784n() && !childViewHolderInt.m18781q() && !RecyclerView.this.mAdapter.m19050b()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            } else {
                childViewHolderInt.m18802a(this, false);
                this.f3132a.add(childViewHolderInt);
            }
        }

        /* renamed from: c */
        void m18865c(AbstractC0948x abstractC0948x) {
            if (abstractC0948x.f3196n) {
                this.f3133b.remove(abstractC0948x);
            } else {
                this.f3132a.remove(abstractC0948x);
            }
            abstractC0948x.f3195m = null;
            abstractC0948x.f3196n = false;
            abstractC0948x.m18786l();
        }

        /* renamed from: d */
        void m18864d() {
            for (int size = this.f3134c.size() - 1; size >= 0; size--) {
                m18863d(size);
            }
            this.f3134c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.m18502a();
            }
        }

        /* renamed from: d */
        void m18863d(int i) {
            m18876a(this.f3134c.get(i), true);
            this.f3134c.remove(i);
        }

        /* renamed from: d */
        void m18862d(AbstractC0948x abstractC0948x) {
            if (RecyclerView.this.mRecyclerListener != null) {
                RecyclerView.this.mRecyclerListener.m18851a(abstractC0948x);
            }
            if (RecyclerView.this.mAdapter != null) {
                RecyclerView.this.mAdapter.m19054a((AbstractC0914a) abstractC0948x);
            }
            if (RecyclerView.this.mState != null) {
                RecyclerView.this.mViewInfoStore.m18364g(abstractC0948x);
            }
        }

        /* renamed from: e */
        int m18861e() {
            return this.f3132a.size();
        }

        /* renamed from: e */
        View m18860e(int i) {
            return this.f3132a.get(i).f3183a;
        }

        /* renamed from: f */
        AbstractC0948x m18857f(int i) {
            AbstractC0948x abstractC0948x;
            int size;
            int m18617b;
            if (this.f3133b == null || (size = this.f3133b.size()) == 0) {
                abstractC0948x = null;
            } else {
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        abstractC0948x = this.f3133b.get(i2);
                        if (!abstractC0948x.m18787k() && abstractC0948x.m18794d() == i) {
                            abstractC0948x.m18797b(32);
                            break;
                        }
                        i2++;
                    } else {
                        if (RecyclerView.this.mAdapter.m19050b() && (m18617b = RecyclerView.this.mAdapterHelper.m18617b(i)) > 0 && m18617b < RecyclerView.this.mAdapter.mo959a()) {
                            long mo3121b = RecyclerView.this.mAdapter.mo3121b(m18617b);
                            for (int i3 = 0; i3 < size; i3++) {
                                abstractC0948x = this.f3133b.get(i3);
                                if (!abstractC0948x.m18787k() && abstractC0948x.m18791g() == mo3121b) {
                                    abstractC0948x.m18797b(32);
                                    break;
                                }
                            }
                        }
                        abstractC0948x = null;
                    }
                }
            }
            return abstractC0948x;
        }

        /* renamed from: f */
        void m18858f() {
            this.f3132a.clear();
            if (this.f3133b != null) {
                this.f3133b.clear();
            }
        }

        /* renamed from: g */
        C0935o m18855g() {
            if (this.f3136e == null) {
                this.f3136e = new C0935o();
            }
            return this.f3136e;
        }

        /* renamed from: h */
        void m18854h() {
            int size = this.f3134c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0948x abstractC0948x = this.f3134c.get(i);
                if (abstractC0948x != null) {
                    abstractC0948x.m18797b(6);
                    abstractC0948x.m18800a((Object) null);
                }
            }
            if (RecyclerView.this.mAdapter == null || !RecyclerView.this.mAdapter.m19050b()) {
                m18864d();
            }
        }

        /* renamed from: i */
        void m18853i() {
            int size = this.f3134c.size();
            for (int i = 0; i < size; i++) {
                this.f3134c.get(i).m18807a();
            }
            int size2 = this.f3132a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f3132a.get(i2).m18807a();
            }
            if (this.f3133b != null) {
                int size3 = this.f3133b.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f3133b.get(i3).m18807a();
                }
            }
        }

        /* renamed from: j */
        void m18852j() {
            int size = this.f3134c.size();
            for (int i = 0; i < size; i++) {
                C0930j c0930j = (C0930j) this.f3134c.get(i).f3183a.getLayoutParams();
                if (c0930j != null) {
                    c0930j.f3124e = true;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public interface AbstractC0938q {
        /* renamed from: a */
        void m18851a(AbstractC0948x abstractC0948x);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public class C0939r extends AbstractC0916c {
        C0939r() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0916c
        /* renamed from: a */
        public void mo18850a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView.this.mState.f3163f = true;
            RecyclerView.this.processDataSetCompletelyChanged(true);
            if (!RecyclerView.this.mAdapterHelper.m18610d()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0916c
        /* renamed from: a */
        public void mo18849a(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m18621a(i, i2, obj)) {
                m18848b();
            }
        }

        /* renamed from: b */
        void m18848b() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
                C0595u.m20341a(RecyclerView.this, RecyclerView.this.mUpdateChildViewsRunnable);
                return;
            }
            RecyclerView.this.mAdapterUpdateDuringMeasure = true;
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0916c
        /* renamed from: b */
        public void mo998b(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m18616b(i, i2)) {
                m18848b();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static class C0940s extends AbstractC0633a {
        public static final Parcelable.Creator<C0940s> CREATOR = new Parcelable.ClassLoaderCreator<C0940s>() { // from class: androidx.recyclerview.widget.RecyclerView.s.1
            /* renamed from: a */
            public C0940s createFromParcel(Parcel parcel) {
                return new C0940s(parcel, null);
            }

            /* renamed from: a */
            public C0940s createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0940s(parcel, classLoader);
            }

            /* renamed from: a */
            public C0940s[] newArray(int i) {
                return new C0940s[i];
            }
        };

        /* renamed from: a */
        Parcelable f3142a;

        C0940s(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3142a = parcel.readParcelable(classLoader == null ? AbstractC0925i.class.getClassLoader() : classLoader);
        }

        C0940s(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        void m18847a(C0940s c0940s) {
            this.f3142a = c0940s.f3142a;
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f3142a, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static abstract class AbstractC0942t {

        /* renamed from: b */
        private RecyclerView f3144b;

        /* renamed from: c */
        private AbstractC0925i f3145c;

        /* renamed from: d */
        private boolean f3146d;

        /* renamed from: e */
        private boolean f3147e;

        /* renamed from: f */
        private View f3148f;

        /* renamed from: h */
        private boolean f3150h;

        /* renamed from: a */
        private int f3143a = -1;

        /* renamed from: g */
        private final C0943a f3149g = new C0943a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$t$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t$a.class */
        public static class C0943a {

            /* renamed from: a */
            private int f3151a;

            /* renamed from: b */
            private int f3152b;

            /* renamed from: c */
            private int f3153c;

            /* renamed from: d */
            private int f3154d;

            /* renamed from: e */
            private Interpolator f3155e;

            /* renamed from: f */
            private boolean f3156f;

            /* renamed from: g */
            private int f3157g;

            public C0943a(int i, int i2) {
                this(i, i2, RecyclerView.UNDEFINED_DURATION, null);
            }

            public C0943a(int i, int i2, int i3, Interpolator interpolator) {
                this.f3154d = -1;
                this.f3156f = false;
                this.f3157g = 0;
                this.f3151a = i;
                this.f3152b = i2;
                this.f3153c = i3;
                this.f3155e = interpolator;
            }

            /* renamed from: b */
            private void m18825b() {
                if (this.f3155e == null || this.f3153c >= 1) {
                    if (this.f3153c >= 1) {
                        return;
                    }
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }

            /* renamed from: a */
            public void m18828a(int i) {
                this.f3154d = i;
            }

            /* renamed from: a */
            public void m18827a(int i, int i2, int i3, Interpolator interpolator) {
                this.f3151a = i;
                this.f3152b = i2;
                this.f3153c = i3;
                this.f3155e = interpolator;
                this.f3156f = true;
            }

            /* renamed from: a */
            void m18826a(RecyclerView recyclerView) {
                if (this.f3154d >= 0) {
                    int i = this.f3154d;
                    this.f3154d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f3156f = false;
                } else if (!this.f3156f) {
                    this.f3157g = 0;
                } else {
                    m18825b();
                    recyclerView.mViewFlinger.m18812a(this.f3151a, this.f3152b, this.f3153c, this.f3155e);
                    this.f3157g++;
                    if (this.f3157g > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f3156f = false;
                }
            }

            /* renamed from: a */
            boolean m18829a() {
                return this.f3154d >= 0;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$t$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t$b.class */
        public interface AbstractC0944b {
            /* renamed from: d */
            PointF mo18712d(int i);
        }

        /* renamed from: a */
        public int m18841a(View view) {
            return this.f3144b.getChildLayoutPosition(view);
        }

        /* renamed from: a */
        protected abstract void mo18494a();

        /* renamed from: a */
        void m18843a(int i, int i2) {
            PointF m18837d;
            RecyclerView recyclerView = this.f3144b;
            if (this.f3143a == -1 || recyclerView == null) {
                m18834f();
            }
            if (this.f3146d && this.f3148f == null && this.f3145c != null && (m18837d = m18837d(this.f3143a)) != null && (m18837d.x != 0.0f || m18837d.y != 0.0f)) {
                recyclerView.scrollStep((int) Math.signum(m18837d.x), (int) Math.signum(m18837d.y), null);
            }
            this.f3146d = false;
            if (this.f3148f != null) {
                if (m18841a(this.f3148f) == this.f3143a) {
                    mo18392a(this.f3148f, recyclerView.mState, this.f3149g);
                    this.f3149g.m18826a(recyclerView);
                    m18834f();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.f3148f = null;
                }
            }
            if (this.f3147e) {
                mo18491a(i, i2, recyclerView.mState, this.f3149g);
                boolean m18829a = this.f3149g.m18829a();
                this.f3149g.m18826a(recyclerView);
                if (!m18829a || !this.f3147e) {
                    return;
                }
                this.f3146d = true;
                recyclerView.mViewFlinger.m18816a();
            }
        }

        /* renamed from: a */
        protected abstract void mo18491a(int i, int i2, C0945u c0945u, C0943a c0943a);

        /* renamed from: a */
        public void m18842a(PointF pointF) {
            float sqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        /* renamed from: a */
        protected abstract void mo18392a(View view, C0945u c0945u, C0943a c0943a);

        /* renamed from: a */
        void m18840a(RecyclerView recyclerView, AbstractC0925i abstractC0925i) {
            recyclerView.mViewFlinger.m18811b();
            if (this.f3150h) {
                Log.w(RecyclerView.TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f3144b = recyclerView;
            this.f3145c = abstractC0925i;
            if (this.f3143a == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.f3144b.mState.f3158a = this.f3143a;
            this.f3147e = true;
            this.f3146d = true;
            this.f3148f = m18835e(m18831i());
            mo18494a();
            this.f3144b.mViewFlinger.m18816a();
            this.f3150h = true;
        }

        /* renamed from: b */
        protected abstract void mo18488b();

        /* renamed from: b */
        protected void m18839b(View view) {
            if (m18841a(view) == m18831i()) {
                this.f3148f = view;
            }
        }

        /* renamed from: c */
        public void m18838c(int i) {
            this.f3143a = i;
        }

        /* renamed from: d */
        public PointF m18837d(int i) {
            PointF pointF;
            AbstractC0925i m18836e = m18836e();
            if (m18836e instanceof AbstractC0944b) {
                pointF = ((AbstractC0944b) m18836e).mo18712d(i);
            } else {
                Log.w(RecyclerView.TAG, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0944b.class.getCanonicalName());
                pointF = null;
            }
            return pointF;
        }

        /* renamed from: e */
        public View m18835e(int i) {
            return this.f3144b.mLayout.mo18952c(i);
        }

        /* renamed from: e */
        public AbstractC0925i m18836e() {
            return this.f3145c;
        }

        /* renamed from: f */
        public final void m18834f() {
            if (!this.f3147e) {
                return;
            }
            this.f3147e = false;
            mo18488b();
            this.f3144b.mState.f3158a = -1;
            this.f3148f = null;
            this.f3143a = -1;
            this.f3146d = false;
            this.f3145c.m18955b(this);
            this.f3145c = null;
            this.f3144b = null;
        }

        /* renamed from: g */
        public boolean m18833g() {
            return this.f3146d;
        }

        /* renamed from: h */
        public boolean m18832h() {
            return this.f3147e;
        }

        /* renamed from: i */
        public int m18831i() {
            return this.f3143a;
        }

        /* renamed from: j */
        public int m18830j() {
            return this.f3144b.mLayout.m18910y();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public static class C0945u {

        /* renamed from: a */
        int f3158a = -1;

        /* renamed from: b */
        int f3159b = 0;

        /* renamed from: c */
        int f3160c = 0;

        /* renamed from: d */
        int f3161d = 1;

        /* renamed from: e */
        int f3162e = 0;

        /* renamed from: f */
        boolean f3163f = false;

        /* renamed from: g */
        boolean f3164g = false;

        /* renamed from: h */
        boolean f3165h = false;

        /* renamed from: i */
        boolean f3166i = false;

        /* renamed from: j */
        boolean f3167j = false;

        /* renamed from: k */
        boolean f3168k = false;

        /* renamed from: l */
        int f3169l;

        /* renamed from: m */
        long f3170m;

        /* renamed from: n */
        int f3171n;

        /* renamed from: o */
        int f3172o;

        /* renamed from: p */
        int f3173p;

        /* renamed from: q */
        private SparseArray<Object> f3174q;

        /* renamed from: a */
        void m18823a(int i) {
            if ((this.f3161d & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f3161d));
            }
        }

        /* renamed from: a */
        public void m18822a(AbstractC0914a abstractC0914a) {
            this.f3161d = 1;
            this.f3162e = abstractC0914a.mo959a();
            this.f3164g = false;
            this.f3165h = false;
            this.f3166i = false;
        }

        /* renamed from: a */
        public boolean m18824a() {
            return this.f3164g;
        }

        /* renamed from: b */
        public boolean m18821b() {
            return this.f3168k;
        }

        /* renamed from: c */
        public int m18820c() {
            return this.f3158a;
        }

        /* renamed from: d */
        public boolean m18819d() {
            return this.f3158a != -1;
        }

        /* renamed from: e */
        public int m18818e() {
            return this.f3164g ? this.f3159b - this.f3160c : this.f3162e;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f3158a + ", mData=" + this.f3174q + ", mItemCount=" + this.f3162e + ", mIsMeasuring=" + this.f3166i + ", mPreviousLayoutItemCount=" + this.f3159b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3160c + ", mStructureChanged=" + this.f3163f + ", mInPreLayout=" + this.f3164g + ", mRunSimpleAnimations=" + this.f3167j + ", mRunPredictiveAnimations=" + this.f3168k + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public static abstract class AbstractC0946v {
        /* renamed from: a */
        public abstract View m18817a(C0937p c0937p, int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public class RunnableC0947w implements Runnable {

        /* renamed from: a */
        OverScroller f3175a;

        /* renamed from: d */
        private int f3178d;

        /* renamed from: e */
        private int f3179e;

        /* renamed from: b */
        Interpolator f3176b = RecyclerView.sQuinticInterpolator;

        /* renamed from: f */
        private boolean f3180f = false;

        /* renamed from: g */
        private boolean f3181g = false;

        RunnableC0947w() {
            RecyclerView.this = r7;
            this.f3175a = new OverScroller(r7.getContext(), RecyclerView.sQuinticInterpolator);
        }

        /* renamed from: a */
        private float m18815a(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* renamed from: a */
        private int m18813a(int i, int i2, int i3, int i4) {
            int abs;
            int abs2;
            int i5;
            boolean z = Math.abs(i) > Math.abs(i2);
            int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i6 = width / 2;
            float f = i6;
            float f2 = i6;
            float m18815a = m18815a(Math.min(1.0f, (sqrt2 * 1.0f) / width));
            if (sqrt > 0) {
                i5 = Math.round(1000.0f * Math.abs(((m18815a * f2) + f) / sqrt)) * 4;
            } else {
                i5 = (int) ((((z ? abs : abs2) / width) + 1.0f) * 300.0f);
            }
            return Math.min(i5, (int) RecyclerView.MAX_SCROLL_DURATION);
        }

        /* renamed from: c */
        private void m18810c() {
            RecyclerView.this.removeCallbacks(this);
            C0595u.m20341a(RecyclerView.this, this);
        }

        /* renamed from: a */
        void m18816a() {
            if (this.f3180f) {
                this.f3181g = true;
            } else {
                m18810c();
            }
        }

        /* renamed from: a */
        public void m18814a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f3179e = 0;
            this.f3178d = 0;
            if (this.f3176b != RecyclerView.sQuinticInterpolator) {
                this.f3176b = RecyclerView.sQuinticInterpolator;
                this.f3175a = new OverScroller(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
            }
            this.f3175a.fling(0, 0, i, i2, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
            m18816a();
        }

        /* renamed from: a */
        public void m18812a(int i, int i2, int i3, Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = m18813a(i, i2, 0, 0);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.sQuinticInterpolator;
            }
            if (this.f3176b != interpolator2) {
                this.f3176b = interpolator2;
                this.f3175a = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f3179e = 0;
            this.f3178d = 0;
            RecyclerView.this.setScrollState(2);
            this.f3175a.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.f3175a.computeScrollOffset();
            }
            m18816a();
        }

        /* renamed from: b */
        public void m18811b() {
            RecyclerView.this.removeCallbacks(this);
            this.f3175a.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            if (RecyclerView.this.mLayout == null) {
                m18811b();
                return;
            }
            this.f3181g = false;
            this.f3180f = true;
            RecyclerView.this.consumePendingUpdateOperations();
            OverScroller overScroller = this.f3175a;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f3178d;
                int i5 = currY - this.f3179e;
                this.f3178d = currX;
                this.f3179e = currY;
                RecyclerView.this.mReusableIntPair[0] = 0;
                RecyclerView.this.mReusableIntPair[1] = 0;
                if (RecyclerView.this.dispatchNestedPreScroll(i4, i5, RecyclerView.this.mReusableIntPair, null, 1)) {
                    int i6 = RecyclerView.this.mReusableIntPair[0];
                    i5 -= RecyclerView.this.mReusableIntPair[1];
                    i4 -= i6;
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(i4, i5);
                }
                if (RecyclerView.this.mAdapter != null) {
                    RecyclerView.this.mReusableIntPair[0] = 0;
                    RecyclerView.this.mReusableIntPair[1] = 0;
                    RecyclerView.this.scrollStep(i4, i5, RecyclerView.this.mReusableIntPair);
                    int i7 = RecyclerView.this.mReusableIntPair[0];
                    int i8 = RecyclerView.this.mReusableIntPair[1];
                    int i9 = i4 - i7;
                    int i10 = i5 - i8;
                    AbstractC0942t abstractC0942t = RecyclerView.this.mLayout.f3110t;
                    i3 = i7;
                    i = i8;
                    i4 = i9;
                    i2 = i10;
                    if (abstractC0942t != null) {
                        i3 = i7;
                        i = i8;
                        i4 = i9;
                        i2 = i10;
                        if (!abstractC0942t.m18833g()) {
                            i3 = i7;
                            i = i8;
                            i4 = i9;
                            i2 = i10;
                            if (abstractC0942t.m18832h()) {
                                int m18818e = RecyclerView.this.mState.m18818e();
                                if (m18818e == 0) {
                                    abstractC0942t.m18834f();
                                    i2 = i10;
                                    i4 = i9;
                                    i = i8;
                                    i3 = i7;
                                } else if (abstractC0942t.m18831i() >= m18818e) {
                                    abstractC0942t.m18838c(m18818e - 1);
                                    abstractC0942t.m18843a(i7, i8);
                                    i3 = i7;
                                    i = i8;
                                    i4 = i9;
                                    i2 = i10;
                                } else {
                                    abstractC0942t.m18843a(i7, i8);
                                    i3 = i7;
                                    i = i8;
                                    i4 = i9;
                                    i2 = i10;
                                }
                            }
                        }
                    }
                } else {
                    i = 0;
                    i2 = i5;
                    i3 = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView.this.mReusableIntPair[0] = 0;
                RecyclerView.this.mReusableIntPair[1] = 0;
                RecyclerView.this.dispatchNestedScroll(i3, i, i4, i2, null, 1, RecyclerView.this.mReusableIntPair);
                int i11 = i4 - RecyclerView.this.mReusableIntPair[0];
                int i12 = i2 - RecyclerView.this.mReusableIntPair[1];
                if (i3 != 0 || i != 0) {
                    RecyclerView.this.dispatchOnScrolled(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i11 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i12 != 0));
                AbstractC0942t abstractC0942t2 = RecyclerView.this.mLayout.f3110t;
                if ((abstractC0942t2 != null && abstractC0942t2.m18833g()) || !z) {
                    m18816a();
                    if (RecyclerView.this.mGapWorker != null) {
                        RecyclerView.this.mGapWorker.m18509a(RecyclerView.this, i3, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i13 = i11 < 0 ? -currVelocity : i11 > 0 ? currVelocity : 0;
                        if (i12 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i12 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i13, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        RecyclerView.this.mPrefetchRegistry.m18502a();
                    }
                }
            }
            AbstractC0942t abstractC0942t3 = RecyclerView.this.mLayout.f3110t;
            if (abstractC0942t3 != null && abstractC0942t3.m18833g()) {
                abstractC0942t3.m18843a(0, 0);
            }
            this.f3180f = false;
            if (this.f3181g) {
                m18810c();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.stopNestedScroll(1);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
    public static abstract class AbstractC0948x {

        /* renamed from: q */
        private static final List<Object> f3182q = Collections.emptyList();

        /* renamed from: a */
        public final View f3183a;

        /* renamed from: b */
        WeakReference<RecyclerView> f3184b;

        /* renamed from: j */
        int f3192j;

        /* renamed from: p */
        RecyclerView f3198p;

        /* renamed from: c */
        int f3185c = -1;

        /* renamed from: d */
        int f3186d = -1;

        /* renamed from: e */
        long f3187e = -1;

        /* renamed from: f */
        int f3188f = -1;

        /* renamed from: g */
        int f3189g = -1;

        /* renamed from: h */
        AbstractC0948x f3190h = null;

        /* renamed from: i */
        AbstractC0948x f3191i = null;

        /* renamed from: k */
        List<Object> f3193k = null;

        /* renamed from: l */
        List<Object> f3194l = null;

        /* renamed from: r */
        private int f3199r = 0;

        /* renamed from: m */
        C0937p f3195m = null;

        /* renamed from: n */
        boolean f3196n = false;

        /* renamed from: s */
        private int f3200s = 0;

        /* renamed from: o */
        int f3197o = -1;

        public AbstractC0948x(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f3183a = view;
        }

        /* renamed from: B */
        private void m18808B() {
            if (this.f3193k == null) {
                this.f3193k = new ArrayList();
                this.f3194l = Collections.unmodifiableList(this.f3193k);
            }
        }

        /* renamed from: A */
        boolean m18809A() {
            return (this.f3192j & 2) != 0;
        }

        /* renamed from: a */
        void m18807a() {
            this.f3186d = -1;
            this.f3189g = -1;
        }

        /* renamed from: a */
        void m18805a(int i, int i2) {
            this.f3192j = (this.f3192j & (i2 ^ (-1))) | (i & i2);
        }

        /* renamed from: a */
        void m18804a(int i, int i2, boolean z) {
            m18797b(8);
            m18803a(i2, z);
            this.f3185c = i;
        }

        /* renamed from: a */
        void m18803a(int i, boolean z) {
            if (this.f3186d == -1) {
                this.f3186d = this.f3185c;
            }
            if (this.f3189g == -1) {
                this.f3189g = this.f3185c;
            }
            if (z) {
                this.f3189g += i;
            }
            this.f3185c += i;
            if (this.f3183a.getLayoutParams() != null) {
                ((C0930j) this.f3183a.getLayoutParams()).f3124e = true;
            }
        }

        /* renamed from: a */
        void m18802a(C0937p c0937p, boolean z) {
            this.f3195m = c0937p;
            this.f3196n = z;
        }

        /* renamed from: a */
        void m18801a(RecyclerView recyclerView) {
            if (this.f3197o != -1) {
                this.f3200s = this.f3197o;
            } else {
                this.f3200s = C0595u.m20322f(this.f3183a);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        /* renamed from: a */
        void m18800a(Object obj) {
            if (obj == null) {
                m18797b(1024);
            } else if ((this.f3192j & 1024) != 0) {
            } else {
                m18808B();
                this.f3193k.add(obj);
            }
        }

        /* renamed from: a */
        public final void m18799a(boolean z) {
            this.f3199r = z ? this.f3199r - 1 : this.f3199r + 1;
            if (this.f3199r < 0) {
                this.f3199r = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && this.f3199r == 1) {
                this.f3192j |= 16;
            } else if (!z || this.f3199r != 0) {
            } else {
                this.f3192j &= -17;
            }
        }

        /* renamed from: a */
        boolean m18806a(int i) {
            return (this.f3192j & i) != 0;
        }

        /* renamed from: b */
        void m18798b() {
            if (this.f3186d == -1) {
                this.f3186d = this.f3185c;
            }
        }

        /* renamed from: b */
        void m18797b(int i) {
            this.f3192j |= i;
        }

        /* renamed from: b */
        void m18796b(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.f3200s);
            this.f3200s = 0;
        }

        /* renamed from: c */
        public boolean m18795c() {
            return (this.f3192j & 128) != 0;
        }

        /* renamed from: d */
        public final int m18794d() {
            return this.f3189g == -1 ? this.f3185c : this.f3189g;
        }

        /* renamed from: e */
        public final int m18793e() {
            return this.f3198p == null ? -1 : this.f3198p.getAdapterPositionFor(this);
        }

        /* renamed from: f */
        public final int m18792f() {
            return this.f3186d;
        }

        /* renamed from: g */
        public final long m18791g() {
            return this.f3187e;
        }

        /* renamed from: h */
        public final int m18790h() {
            return this.f3188f;
        }

        /* renamed from: i */
        boolean m18789i() {
            return this.f3195m != null;
        }

        /* renamed from: j */
        void m18788j() {
            this.f3195m.m18865c(this);
        }

        /* renamed from: k */
        boolean m18787k() {
            return (this.f3192j & 32) != 0;
        }

        /* renamed from: l */
        void m18786l() {
            this.f3192j &= -33;
        }

        /* renamed from: m */
        void m18785m() {
            this.f3192j &= -257;
        }

        /* renamed from: n */
        public boolean m18784n() {
            return (this.f3192j & 4) != 0;
        }

        /* renamed from: o */
        boolean m18783o() {
            return (this.f3192j & 2) != 0;
        }

        /* renamed from: p */
        public boolean m18782p() {
            return (this.f3192j & 1) != 0;
        }

        /* renamed from: q */
        public boolean m18781q() {
            return (this.f3192j & 8) != 0;
        }

        /* renamed from: r */
        boolean m18780r() {
            return (this.f3192j & 256) != 0;
        }

        /* renamed from: s */
        boolean m18779s() {
            return (this.f3183a.getParent() == null || this.f3183a.getParent() == this.f3198p) ? false : true;
        }

        /* renamed from: t */
        boolean m18778t() {
            return (this.f3192j & 512) != 0 || m18784n();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f3185c + " id=" + this.f3187e + ", oldPos=" + this.f3186d + ", pLpos:" + this.f3189g);
            if (m18789i()) {
                sb.append(" scrap ").append(this.f3196n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m18784n()) {
                sb.append(" invalid");
            }
            if (!m18782p()) {
                sb.append(" unbound");
            }
            if (m18783o()) {
                sb.append(" update");
            }
            if (m18781q()) {
                sb.append(" removed");
            }
            if (m18795c()) {
                sb.append(" ignored");
            }
            if (m18780r()) {
                sb.append(" tmpDetached");
            }
            if (!m18774x()) {
                sb.append(" not recyclable(" + this.f3199r + ")");
            }
            if (m18778t()) {
                sb.append(" undefined adapter position");
            }
            if (this.f3183a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: u */
        void m18777u() {
            if (this.f3193k != null) {
                this.f3193k.clear();
            }
            this.f3192j &= -1025;
        }

        /* renamed from: v */
        List<Object> m18776v() {
            return (this.f3192j & 1024) == 0 ? (this.f3193k == null || this.f3193k.size() == 0) ? f3182q : this.f3194l : f3182q;
        }

        /* renamed from: w */
        void m18775w() {
            this.f3192j = 0;
            this.f3185c = -1;
            this.f3186d = -1;
            this.f3187e = -1L;
            this.f3189g = -1;
            this.f3199r = 0;
            this.f3190h = null;
            this.f3191i = null;
            m18777u();
            this.f3200s = 0;
            this.f3197o = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        /* renamed from: x */
        public final boolean m18774x() {
            return (this.f3192j & 16) == 0 && !C0595u.m20326d(this.f3183a);
        }

        /* renamed from: y */
        boolean m18773y() {
            return (this.f3192j & 16) != 0;
        }

        /* renamed from: z */
        boolean m18772z() {
            return (this.f3192j & 16) == 0 && C0595u.m20326d(this.f3183a);
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
        this(context, attributeSet, C0896a.C0897a.recyclerViewStyle);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mObserver = new C0939r();
        this.mRecycler = new C0937p();
        this.mViewInfoStore = new C1005r();
        this.mUpdateChildViewsRunnable = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerView.this.mFirstLayoutComplete || RecyclerView.this.isLayoutRequested()) {
                    return;
                }
                if (!RecyclerView.this.mIsAttached) {
                    RecyclerView.this.requestLayout();
                } else if (RecyclerView.this.mLayoutSuppressed) {
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
        this.mEdgeEffectFactory = new C0918e();
        this.mItemAnimator = new C0964c();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new RunnableC0947w();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new RunnableC0981f.C0983a() : null;
        this.mState = new C0945u();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new C0923g();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (RecyclerView.this.mItemAnimator != null) {
                    RecyclerView.this.mItemAnimator.mo18554a();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new C1005r.AbstractC1007b() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.C1005r.AbstractC1007b
            /* renamed from: a */
            public void mo18359a(AbstractC0948x abstractC0948x) {
                RecyclerView.this.mLayout.m18980a(abstractC0948x.f3183a, RecyclerView.this.mRecycler);
            }

            @Override // androidx.recyclerview.widget.C1005r.AbstractC1007b
            /* renamed from: a */
            public void mo18358a(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2) {
                RecyclerView.this.mRecycler.m18865c(abstractC0948x);
                RecyclerView.this.animateDisappearance(abstractC0948x, c0922c, c0922c2);
            }

            @Override // androidx.recyclerview.widget.C1005r.AbstractC1007b
            /* renamed from: b */
            public void mo18357b(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2) {
                RecyclerView.this.animateAppearance(abstractC0948x, c0922c, c0922c2);
            }

            @Override // androidx.recyclerview.widget.C1005r.AbstractC1007b
            /* renamed from: c */
            public void mo18356c(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2) {
                abstractC0948x.m18799a(false);
                if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
                    if (!RecyclerView.this.mItemAnimator.mo18425a(abstractC0948x, abstractC0948x, c0922c, c0922c2)) {
                        return;
                    }
                    RecyclerView.this.postAnimationRunner();
                } else if (!RecyclerView.this.mItemAnimator.mo18420c(abstractC0948x, c0922c, c0922c2)) {
                } else {
                    RecyclerView.this.postAnimationRunner();
                }
            }
        };
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = C0604v.m20269a(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = C0604v.m20268b(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.m19030a(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (C0595u.m20322f(this) == 0) {
            C0595u.m20335b(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0995m(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0896a.C0899c.RecyclerView, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0896a.C0899c.RecyclerView, attributeSet, obtainStyledAttributes, i, 0);
        }
        String string = obtainStyledAttributes.getString(C0896a.C0899c.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C0896a.C0899c.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(C0896a.C0899c.RecyclerView_android_clipToPadding, true);
        this.mEnableFastScroller = obtainStyledAttributes.getBoolean(C0896a.C0899c.RecyclerView_fastScrollEnabled, false);
        if (this.mEnableFastScroller) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(C0896a.C0899c.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C0896a.C0899c.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C0896a.C0899c.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C0896a.C0899c.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i, 0);
        boolean z = true;
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

    private void addAnimatingView(AbstractC0948x abstractC0948x) {
        View view = abstractC0948x.f3183a;
        boolean z = view.getParent() == this;
        this.mRecycler.m18865c(getChildViewHolder(view));
        if (abstractC0948x.m18780r()) {
            this.mChildHelper.m18590a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.mChildHelper.m18588a(view, true);
        } else {
            this.mChildHelper.m18580d(view);
        }
    }

    private void animateChange(AbstractC0948x abstractC0948x, AbstractC0948x abstractC0948x2, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2, boolean z, boolean z2) {
        abstractC0948x.m18799a(false);
        if (z) {
            addAnimatingView(abstractC0948x);
        }
        if (abstractC0948x != abstractC0948x2) {
            if (z2) {
                addAnimatingView(abstractC0948x2);
            }
            abstractC0948x.f3190h = abstractC0948x2;
            addAnimatingView(abstractC0948x);
            this.mRecycler.m18865c(abstractC0948x);
            abstractC0948x2.m18799a(false);
            abstractC0948x2.f3191i = abstractC0948x;
        }
        if (this.mItemAnimator.mo18425a(abstractC0948x, abstractC0948x2, c0922c, c0922c2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(AbstractC0948x abstractC0948x) {
        if (abstractC0948x.f3184b != null) {
            RecyclerView recyclerView = abstractC0948x.f3184b.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC0948x.f3184b = null;
                    return;
                } else if (view == abstractC0948x.f3183a) {
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
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0925i.class);
                try {
                    Constructor constructor2 = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[4];
                    objArr[0] = context;
                    objArr[1] = attributeSet;
                    objArr[2] = Integer.valueOf(i);
                    objArr[3] = Integer.valueOf(i2);
                    constructor = constructor2;
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                        objArr = null;
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0925i) constructor.newInstance(objArr));
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
        boolean z = false;
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mMinMaxLayoutPositions[0] != i || this.mMinMaxLayoutPositions[1] != i2) {
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
        C0552b.m20527a(obtain, i);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        boolean z = true;
        this.mState.m18823a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f3166i = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.m18379a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        C0945u c0945u = this.mState;
        if (!this.mState.f3167j || !this.mItemsChanged) {
            z = false;
        }
        c0945u.f3165h = z;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        this.mState.f3164g = this.mState.f3168k;
        this.mState.f3162e = this.mAdapter.mo959a();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f3167j) {
            int m18587b = this.mChildHelper.m18587b();
            for (int i = 0; i < m18587b; i++) {
                AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18586b(i));
                if (!childViewHolderInt.m18795c() && (!childViewHolderInt.m18784n() || this.mAdapter.m19050b())) {
                    this.mViewInfoStore.m18374a(childViewHolderInt, this.mItemAnimator.m19028a(this.mState, childViewHolderInt, AbstractC0919f.m19026e(childViewHolderInt), childViewHolderInt.m18776v()));
                    if (this.mState.f3165h && childViewHolderInt.m18809A() && !childViewHolderInt.m18781q() && !childViewHolderInt.m18795c() && !childViewHolderInt.m18784n()) {
                        this.mViewInfoStore.m18377a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f3168k) {
            saveOldPositions();
            boolean z2 = this.mState.f3163f;
            this.mState.f3163f = false;
            this.mLayout.mo18718c(this.mRecycler, this.mState);
            this.mState.f3163f = z2;
            for (int i2 = 0; i2 < this.mChildHelper.m18587b(); i2++) {
                AbstractC0948x childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.m18586b(i2));
                if (!childViewHolderInt2.m18795c() && !this.mViewInfoStore.m18367d(childViewHolderInt2)) {
                    int m19026e = AbstractC0919f.m19026e(childViewHolderInt2);
                    boolean m18806a = childViewHolderInt2.m18806a(8192);
                    int i3 = m19026e;
                    if (!m18806a) {
                        i3 = m19026e | 4096;
                    }
                    AbstractC0919f.C0922c m19028a = this.mItemAnimator.m19028a(this.mState, childViewHolderInt2, i3, childViewHolderInt2.m18776v());
                    if (m18806a) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, m19028a);
                    } else {
                        this.mViewInfoStore.m18370b(childViewHolderInt2, m19028a);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f3161d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.m18823a(6);
        this.mAdapterHelper.m18607e();
        this.mState.f3162e = this.mAdapter.mo959a();
        this.mState.f3160c = 0;
        this.mState.f3164g = false;
        this.mLayout.mo18718c(this.mRecycler, this.mState);
        this.mState.f3163f = false;
        this.mPendingSavedState = null;
        this.mState.f3167j = this.mState.f3167j && this.mItemAnimator != null;
        this.mState.f3161d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.m18823a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.f3161d = 1;
        if (this.mState.f3167j) {
            for (int m18587b = this.mChildHelper.m18587b() - 1; m18587b >= 0; m18587b--) {
                AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18586b(m18587b));
                if (!childViewHolderInt.m18795c()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    AbstractC0919f.C0922c m19029a = this.mItemAnimator.m19029a(this.mState, childViewHolderInt);
                    AbstractC0948x m18378a = this.mViewInfoStore.m18378a(changedHolderKey);
                    if (m18378a == null || m18378a.m18795c()) {
                        this.mViewInfoStore.m18368c(childViewHolderInt, m19029a);
                    } else {
                        boolean m18376a = this.mViewInfoStore.m18376a(m18378a);
                        boolean m18376a2 = this.mViewInfoStore.m18376a(childViewHolderInt);
                        if (!m18376a || m18378a != childViewHolderInt) {
                            AbstractC0919f.C0922c m18371b = this.mViewInfoStore.m18371b(m18378a);
                            this.mViewInfoStore.m18368c(childViewHolderInt, m19029a);
                            AbstractC0919f.C0922c m18369c = this.mViewInfoStore.m18369c(childViewHolderInt);
                            if (m18371b == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, m18378a);
                            } else {
                                animateChange(m18378a, childViewHolderInt, m18371b, m18369c, m18376a, m18376a2);
                            }
                        } else {
                            this.mViewInfoStore.m18368c(childViewHolderInt, m19029a);
                        }
                    }
                }
            }
            this.mViewInfoStore.m18373a(this.mViewInfoProcessCallback);
        }
        this.mLayout.m18956b(this.mRecycler);
        this.mState.f3159b = this.mState.f3162e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mState.f3167j = false;
        this.mState.f3168k = false;
        this.mLayout.f3111u = false;
        if (this.mRecycler.f3133b != null) {
            this.mRecycler.f3133b.clear();
        }
        if (this.mLayout.f3115y) {
            this.mLayout.f3114x = 0;
            this.mLayout.f3115y = false;
            this.mRecycler.m18875b();
        }
        this.mLayout.mo18746a(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.m18379a();
        if (didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if (r0 == 1) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean dispatchToOnItemTouchListeners(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.mInterceptingOnItemTouchListener
            if (r0 != 0) goto L1d
            r0 = r5
            int r0 = r0.getAction()
            if (r0 != 0) goto L14
            r0 = 0
            r7 = r0
        L12:
            r0 = r7
            return r0
        L14:
            r0 = r4
            r1 = r5
            boolean r0 = r0.findInterceptingOnItemTouchListener(r1)
            r7 = r0
            goto L12
        L1d:
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.mInterceptingOnItemTouchListener
            r1 = r4
            r2 = r5
            r0.mo18521b(r1, r2)
            r0 = r5
            int r0 = r0.getAction()
            r8 = r0
            r0 = r8
            r1 = 3
            if (r0 == r1) goto L3c
            r0 = r6
            r7 = r0
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L12
        L3c:
            r0 = r4
            r1 = 0
            r0.mInterceptingOnItemTouchListener = r1
            r0 = r6
            r7 = r0
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.dispatchToOnItemTouchListeners(android.view.MotionEvent):boolean");
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            AbstractC0933m abstractC0933m = this.mOnItemTouchListeners.get(i);
            if (abstractC0933m.mo18528a(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = abstractC0933m;
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int i;
        int m18587b = this.mChildHelper.m18587b();
        if (m18587b == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        while (i4 < m18587b) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18586b(i4));
            if (childViewHolderInt.m18795c()) {
                i = i3;
            } else {
                int m18794d = childViewHolderInt.m18794d();
                int i5 = i2;
                if (m18794d < i2) {
                    i5 = m18794d;
                }
                i = i3;
                i2 = i5;
                if (m18794d > i3) {
                    i = m18794d;
                    i2 = i5;
                }
            }
            i4++;
            i3 = i;
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    static RecyclerView findNestedRecyclerView(View view) {
        RecyclerView recyclerView;
        if (view instanceof ViewGroup) {
            if (!(view instanceof RecyclerView)) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        recyclerView = null;
                        break;
                    }
                    recyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
                    if (recyclerView != null) {
                        break;
                    }
                    i++;
                }
            } else {
                recyclerView = (RecyclerView) view;
            }
        } else {
            recyclerView = null;
        }
        return recyclerView;
    }

    private View findNextViewToFocus() {
        View view;
        AbstractC0948x findViewHolderForAdapterPosition;
        int i = this.mState.f3169l != -1 ? this.mState.f3169l : 0;
        int m18818e = this.mState.m18818e();
        for (int i2 = i; i2 < m18818e && (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i2)) != null; i2++) {
            if (findViewHolderForAdapterPosition.f3183a.hasFocusable()) {
                view = findViewHolderForAdapterPosition.f3183a;
                break;
            }
        }
        int min = Math.min(m18818e, i) - 1;
        while (true) {
            if (min < 0) {
                view = null;
                break;
            }
            AbstractC0948x findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(min);
            if (findViewHolderForAdapterPosition2 == null) {
                view = null;
                break;
            } else if (findViewHolderForAdapterPosition2.f3183a.hasFocusable()) {
                view = findViewHolderForAdapterPosition2.f3183a;
                break;
            } else {
                min--;
            }
        }
        return view;
    }

    public static AbstractC0948x getChildViewHolderInt(View view) {
        return view == null ? null : ((C0930j) view.getLayoutParams()).f3122c;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        C0930j c0930j = (C0930j) view.getLayoutParams();
        Rect rect2 = c0930j.f3123d;
        int left = view.getLeft();
        int i = rect2.left;
        int i2 = c0930j.leftMargin;
        int top = view.getTop();
        int i3 = rect2.top;
        int i4 = c0930j.topMargin;
        int right = view.getRight();
        int i5 = rect2.right;
        int i6 = c0930j.rightMargin;
        int bottom = view.getBottom();
        rect.set((left - i) - i2, (top - i3) - i4, right + i5 + i6, c0930j.bottomMargin + rect2.bottom + bottom);
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
        String str2;
        if (str.charAt(0) == '.') {
            str2 = context.getPackageName() + str;
        } else {
            str2 = str;
            if (!str.contains(".")) {
                str2 = RecyclerView.class.getPackage().getName() + '.' + str;
            }
        }
        return str2;
    }

    private C0586l getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new C0586l(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, AbstractC0948x abstractC0948x, AbstractC0948x abstractC0948x2) {
        int m18587b = this.mChildHelper.m18587b();
        for (int i = 0; i < m18587b; i++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18586b(i));
            if (childViewHolderInt != abstractC0948x && getChangedHolderKey(childViewHolderInt) == j) {
                if (this.mAdapter != null && this.mAdapter.m19050b()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + abstractC0948x + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + abstractC0948x + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0948x2 + " cannot be found but it is necessary for " + abstractC0948x + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        boolean z;
        int m18587b = this.mChildHelper.m18587b();
        int i = 0;
        while (true) {
            z = false;
            if (i < m18587b) {
                AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18586b(i));
                if (childViewHolderInt != null && !childViewHolderInt.m18795c() && childViewHolderInt.m18809A()) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return z;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (C0595u.m20359a(this) == 0) {
            C0595u.m20357a((View) this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new C0961b(new C0961b.AbstractC0963b() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: a */
            public int mo18565a() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: a */
            public int mo18563a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: a */
            public void mo18564a(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.dispatchChildDetached(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: a */
            public void mo18562a(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.dispatchChildAttached(view);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: a */
            public void mo18561a(View view, int i, ViewGroup.LayoutParams layoutParams) {
                AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    if (!childViewHolderInt.m18780r() && !childViewHolderInt.m18795c()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                    childViewHolderInt.m18785m();
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: b */
            public View mo18559b(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: b */
            public AbstractC0948x mo18558b(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: b */
            public void mo18560b() {
                int mo18565a = mo18565a();
                for (int i = 0; i < mo18565a; i++) {
                    View mo18559b = mo18559b(i);
                    RecyclerView.this.dispatchChildDetached(mo18559b);
                    mo18559b.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: c */
            public void mo18557c(int i) {
                AbstractC0948x childViewHolderInt;
                View mo18559b = mo18559b(i);
                if (mo18559b != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(mo18559b)) != null) {
                    if (childViewHolderInt.m18780r() && !childViewHolderInt.m18795c()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                    childViewHolderInt.m18797b(256);
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: c */
            public void mo18556c(View view) {
                AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.m18801a(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.C0961b.AbstractC0963b
            /* renamed from: d */
            public void mo18555d(View view) {
                AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.m18796b(RecyclerView.this);
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0216, code lost:
        if ((r15 * r16) >= 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0236, code lost:
        if ((r15 * r16) <= 0) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPreferredNextFocus(android.view.View r7, android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 581
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
        return this.mItemAnimator != null && this.mLayout.mo18721c();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.m18624a();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.mo18744a(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.m18618b();
        } else {
            this.mAdapterHelper.m18607e();
        }
        boolean z = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f3167j = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z || this.mLayout.f3111u) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.m19050b());
        this.mState.f3168k = this.mState.f3167j && z && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled();
    }

    private void pullGlows(float f, float f2, float f3, float f4) {
        boolean z = false;
        if (f2 < 0.0f) {
            ensureLeftGlow();
            C0623d.m20159a(this.mLeftGlow, (-f2) / getWidth(), 1.0f - (f3 / getHeight()));
            z = true;
        } else if (f2 > 0.0f) {
            ensureRightGlow();
            C0623d.m20159a(this.mRightGlow, f2 / getWidth(), f3 / getHeight());
            z = true;
        }
        if (f4 < 0.0f) {
            ensureTopGlow();
            C0623d.m20159a(this.mTopGlow, (-f4) / getHeight(), f / getWidth());
            z = true;
        } else if (f4 > 0.0f) {
            ensureBottomGlow();
            C0623d.m20159a(this.mBottomGlow, f4 / getHeight(), 1.0f - (f / getWidth()));
            z = true;
        }
        if (!z && f2 == 0.0f && f4 == 0.0f) {
            return;
        }
        C0595u.m20324e(this);
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
                if (!this.mChildHelper.m18582c(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.m18587b() == 0) {
                requestFocus();
                return;
            }
        }
        AbstractC0948x findViewHolderForItemId = (this.mState.f3170m == -1 || !this.mAdapter.m19050b()) ? null : findViewHolderForItemId(this.mState.f3170m);
        if (findViewHolderForItemId == null || this.mChildHelper.m18582c(findViewHolderForItemId.f3183a) || !findViewHolderForItemId.f3183a.hasFocusable()) {
            view = null;
            if (this.mChildHelper.m18587b() > 0) {
                view = findNextViewToFocus();
            }
        } else {
            view = findViewHolderForItemId.f3183a;
        }
        if (view == null) {
            return;
        }
        if (this.mState.f3171n != -1 && (findViewById = view.findViewById(this.mState.f3171n)) != null && findViewById.isFocusable()) {
            view = findViewById;
        }
        view.requestFocus();
    }

    private void releaseGlows() {
        boolean z = false;
        if (this.mLeftGlow != null) {
            this.mLeftGlow.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        boolean z2 = z;
        if (this.mTopGlow != null) {
            this.mTopGlow.onRelease();
            z2 = z | this.mTopGlow.isFinished();
        }
        boolean z3 = z2;
        if (this.mRightGlow != null) {
            this.mRightGlow.onRelease();
            z3 = z2 | this.mRightGlow.isFinished();
        }
        boolean z4 = z3;
        if (this.mBottomGlow != null) {
            this.mBottomGlow.onRelease();
            z4 = z3 | this.mBottomGlow.isFinished();
        }
        if (z4) {
            C0595u.m20324e(this);
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        boolean z = true;
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0930j) {
            C0930j c0930j = (C0930j) layoutParams;
            if (!c0930j.f3124e) {
                Rect rect = c0930j.f3123d;
                this.mTempRect.left -= rect.left;
                this.mTempRect.right += rect.right;
                this.mTempRect.top -= rect.top;
                Rect rect2 = this.mTempRect;
                rect2.bottom = rect.bottom + rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        AbstractC0925i abstractC0925i = this.mLayout;
        Rect rect3 = this.mTempRect;
        boolean z2 = !this.mFirstLayoutComplete;
        if (view2 != null) {
            z = false;
        }
        abstractC0925i.m18966a(this, view, rect3, z2, z);
    }

    private void resetFocusInfo() {
        this.mState.f3170m = -1L;
        this.mState.f3169l = -1;
        this.mState.f3171n = -1;
    }

    private void resetScroll() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    private void saveFocusInfo() {
        View focusedChild = (!this.mPreserveFocusAfterLayout || !hasFocus() || this.mAdapter == null) ? null : getFocusedChild();
        AbstractC0948x findContainingViewHolder = focusedChild == null ? null : findContainingViewHolder(focusedChild);
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f3170m = this.mAdapter.m19050b() ? findContainingViewHolder.m18791g() : (char) 65535;
        this.mState.f3169l = this.mDataSetHasChangedAfterLayout ? -1 : findContainingViewHolder.m18781q() ? findContainingViewHolder.f3186d : findContainingViewHolder.m18793e();
        this.mState.f3171n = getDeepestFocusedViewWithId(findContainingViewHolder.f3183a);
    }

    private void setAdapterInternal(AbstractC0914a abstractC0914a, boolean z, boolean z2) {
        if (this.mAdapter != null) {
            this.mAdapter.m19048b(this.mObserver);
            this.mAdapter.m19045b(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.m18624a();
        AbstractC0914a abstractC0914a2 = this.mAdapter;
        this.mAdapter = abstractC0914a;
        if (abstractC0914a != null) {
            abstractC0914a.m19055a(this.mObserver);
            abstractC0914a.m19052a(this);
        }
        if (this.mLayout != null) {
            this.mLayout.m18976a(abstractC0914a2, this.mAdapter);
        }
        this.mRecycler.m18881a(abstractC0914a2, this.mAdapter, z);
        this.mState.f3163f = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.m18811b();
        if (this.mLayout != null) {
            this.mLayout.m19000L();
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
        if (i == 0 && i2 == 0) {
            return;
        }
        C0595u.m20324e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.mLayout == null || !this.mLayout.m18963a(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(AbstractC0924h abstractC0924h) {
        addItemDecoration(abstractC0924h, -1);
    }

    public void addItemDecoration(AbstractC0924h abstractC0924h, int i) {
        if (this.mLayout != null) {
            this.mLayout.mo18735a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(abstractC0924h);
        } else {
            this.mItemDecorations.add(i, abstractC0924h);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(AbstractC0931k abstractC0931k) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(abstractC0931k);
    }

    public void addOnItemTouchListener(AbstractC0933m abstractC0933m) {
        this.mOnItemTouchListeners.add(abstractC0933m);
    }

    public void addOnScrollListener(AbstractC0934n abstractC0934n) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(abstractC0934n);
    }

    void animateAppearance(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2) {
        abstractC0948x.m18799a(false);
        if (this.mItemAnimator.mo18422b(abstractC0948x, c0922c, c0922c2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c, AbstractC0919f.C0922c c0922c2) {
        addAnimatingView(abstractC0948x);
        abstractC0948x.m18799a(false);
        if (this.mItemAnimator.mo18427a(abstractC0948x, c0922c, c0922c2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str + exceptionLabel());
            }
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
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

    boolean canReuseUpdatedViewHolder(AbstractC0948x abstractC0948x) {
        return this.mItemAnimator == null || this.mItemAnimator.mo18553a(abstractC0948x, abstractC0948x.m18776v());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0930j) && this.mLayout.mo18753a((C0930j) layoutParams);
    }

    void clearOldPositions() {
        int m18584c = this.mChildHelper.m18584c();
        for (int i = 0; i < m18584c; i++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i));
            if (!childViewHolderInt.m18795c()) {
                childViewHolderInt.m18807a();
            }
        }
        this.mRecycler.m18853i();
    }

    public void clearOnChildAttachStateChangeListeners() {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.clear();
        }
    }

    public void clearOnScrollListeners() {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18707f()) {
            i = this.mLayout.mo18703g(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18707f()) {
            i = this.mLayout.mo18711d(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18707f()) {
            i = this.mLayout.mo18725b(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18704g()) {
            i = this.mLayout.mo18701h(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18704g()) {
            i = this.mLayout.mo18708e(this.mState);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int i = 0;
        if (this.mLayout != null && this.mLayout.mo18704g()) {
            i = this.mLayout.mo18716c(this.mState);
        }
        return i;
    }

    void considerReleasingGlowsOnScroll(int i, int i2) {
        boolean z = false;
        if (this.mLeftGlow != null) {
            z = false;
            if (!this.mLeftGlow.isFinished()) {
                z = false;
                if (i > 0) {
                    this.mLeftGlow.onRelease();
                    z = this.mLeftGlow.isFinished();
                }
            }
        }
        boolean z2 = z;
        if (this.mRightGlow != null) {
            z2 = z;
            if (!this.mRightGlow.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.mRightGlow.onRelease();
                    z2 = z | this.mRightGlow.isFinished();
                }
            }
        }
        boolean z3 = z2;
        if (this.mTopGlow != null) {
            z3 = z2;
            if (!this.mTopGlow.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.mTopGlow.onRelease();
                    z3 = z2 | this.mTopGlow.isFinished();
                }
            }
        }
        boolean z4 = z3;
        if (this.mBottomGlow != null) {
            z4 = z3;
            if (!this.mBottomGlow.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.mBottomGlow.onRelease();
                    z4 = z3 | this.mBottomGlow.isFinished();
                }
            }
        }
        if (z4) {
            C0595u.m20324e(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            C0612a.m20241a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            C0612a.m20242a();
        } else if (!this.mAdapterHelper.m18610d()) {
        } else {
            if (!this.mAdapterHelper.m18623a(4) || this.mAdapterHelper.m18623a(11)) {
                if (!this.mAdapterHelper.m18610d()) {
                    return;
                }
                C0612a.m20241a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                C0612a.m20242a();
                return;
            }
            C0612a.m20241a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.m18618b();
            if (!this.mLayoutWasDefered) {
                if (hasUpdatedView()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.m18614c();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            C0612a.m20242a();
        }
    }

    void defaultOnMeasure(int i, int i2) {
        setMeasuredDimension(AbstractC0925i.m18997a(i, getPaddingLeft() + getPaddingRight(), C0595u.m20313k(this)), AbstractC0925i.m18997a(i2, getPaddingTop() + getPaddingBottom(), C0595u.m20312l(this)));
    }

    void dispatchChildAttached(View view) {
        AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.m19042c((AbstractC0914a) childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).m18904a(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        if (this.mAdapter != null && childViewHolderInt != null) {
            this.mAdapter.m19039d((AbstractC0914a) childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).m18903b(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            this.mState.f3166i = false;
            if (this.mState.f3161d == 1) {
                dispatchLayoutStep1();
                this.mLayout.m18932f(this);
                dispatchLayoutStep2();
            } else if (!this.mAdapterHelper.m18605f() && this.mLayout.m19010B() == getWidth() && this.mLayout.m19009C() == getHeight()) {
                this.mLayout.m18932f(this);
            } else {
                this.mLayout.m18932f(this);
                dispatchLayoutStep2();
            }
            dispatchLayoutStep3();
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m20397a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m20398a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m20391a(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m20390a(i, i2, iArr, iArr2, i3);
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m20392a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m20394a(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().m20393a(i, i2, i3, i4, iArr, i5);
    }

    void dispatchOnScrollStateChanged(int i) {
        if (this.mLayout != null) {
            this.mLayout.mo18692l(i);
        }
        onScrollStateChanged(i);
        if (this.mScrollListener != null) {
            this.mScrollListener.mo3175a(this, i);
        }
        if (this.mScrollListeners != null) {
            for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo3175a(this, i);
            }
        }
    }

    void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        if (this.mScrollListener != null) {
            this.mScrollListener.mo1098a(this, i, i2);
        }
        if (this.mScrollListeners != null) {
            for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).mo1098a(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            AbstractC0948x abstractC0948x = this.mPendingAccessibilityImportanceChange.get(size);
            if (abstractC0948x.f3183a.getParent() == this && !abstractC0948x.m18795c() && (i = abstractC0948x.f3197o) != -1) {
                C0595u.m20335b(abstractC0948x.f3183a, i);
                abstractC0948x.f3197o = -1;
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
            this.mItemDecorations.get(i).mo1299b(canvas, this, this.mState);
        }
        if (this.mLeftGlow == null || this.mLeftGlow.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate(paddingBottom + (-getHeight()), 0.0f);
            z = this.mLeftGlow != null && this.mLeftGlow.draw(canvas);
            canvas.restoreToCount(save);
        }
        boolean z2 = z;
        if (this.mTopGlow != null) {
            z2 = z;
            if (!this.mTopGlow.isFinished()) {
                int save2 = canvas.save();
                if (this.mClipToPadding) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                z2 = z | (this.mTopGlow != null && this.mTopGlow.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        boolean z3 = z2;
        if (this.mRightGlow != null) {
            z3 = z2;
            if (!this.mRightGlow.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(-paddingTop, -width);
                z3 = z2 | (this.mRightGlow != null && this.mRightGlow.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        boolean z4 = z3;
        if (this.mBottomGlow != null) {
            z4 = z3;
            if (!this.mBottomGlow.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.mClipToPadding) {
                    canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                boolean z5 = false;
                if (this.mBottomGlow != null) {
                    z5 = false;
                    if (this.mBottomGlow.draw(canvas)) {
                        z5 = true;
                    }
                }
                z4 = z3 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (!z4 && this.mItemAnimator != null && this.mItemDecorations.size() > 0 && this.mItemAnimator.mo18548b()) {
            z4 = true;
        }
        if (z4) {
            C0595u.m20324e(this);
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
        this.mBottomGlow = this.mEdgeEffectFactory.m19031a(this, 3);
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
        this.mLeftGlow = this.mEdgeEffectFactory.m19031a(this, 0);
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
        this.mRightGlow = this.mEdgeEffectFactory.m19031a(this, 2);
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
        this.mTopGlow = this.mEdgeEffectFactory.m19031a(this, 1);
        if (this.mClipToPadding) {
            this.mTopGlow.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(C0945u c0945u) {
        if (getScrollState() != 2) {
            c0945u.f3172o = 0;
            c0945u.f3173p = 0;
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f3175a;
        c0945u.f3172o = overScroller.getFinalX() - overScroller.getCurrX();
        c0945u.f3173p = overScroller.getFinalY() - overScroller.getCurrY();
    }

    public View findChildViewUnder(float f, float f2) {
        View view;
        int m18587b = this.mChildHelper.m18587b() - 1;
        while (true) {
            if (m18587b < 0) {
                view = null;
                break;
            }
            view = this.mChildHelper.m18586b(m18587b);
            float translationX = view.getTranslationX();
            float translationY = view.getTranslationY();
            if (f >= view.getLeft() + translationX && f <= translationX + view.getRight() && f2 >= view.getTop() + translationY && f2 <= view.getBottom() + translationY) {
                break;
            }
            m18587b--;
        }
        return view;
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

    public AbstractC0948x findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        return findContainingItemView == null ? null : getChildViewHolder(findContainingItemView);
    }

    public AbstractC0948x findViewHolderForAdapterPosition(int i) {
        AbstractC0948x abstractC0948x = null;
        if (!this.mDataSetHasChangedAfterLayout) {
            int m18584c = this.mChildHelper.m18584c();
            abstractC0948x = null;
            for (int i2 = 0; i2 < m18584c; i2++) {
                AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i2));
                if (childViewHolderInt != null && !childViewHolderInt.m18781q() && getAdapterPositionFor(childViewHolderInt) == i) {
                    abstractC0948x = childViewHolderInt;
                    if (!this.mChildHelper.m18582c(childViewHolderInt.f3183a)) {
                        break;
                    }
                    abstractC0948x = childViewHolderInt;
                }
            }
        }
        return abstractC0948x;
    }

    public AbstractC0948x findViewHolderForItemId(long j) {
        AbstractC0948x abstractC0948x = null;
        if (this.mAdapter != null) {
            if (!this.mAdapter.m19050b()) {
                abstractC0948x = null;
            } else {
                int m18584c = this.mChildHelper.m18584c();
                abstractC0948x = null;
                for (int i = 0; i < m18584c; i++) {
                    AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i));
                    if (childViewHolderInt != null && !childViewHolderInt.m18781q() && childViewHolderInt.m18791g() == j) {
                        abstractC0948x = childViewHolderInt;
                        if (!this.mChildHelper.m18582c(childViewHolderInt.f3183a)) {
                            break;
                        }
                        abstractC0948x = childViewHolderInt;
                    }
                }
            }
        }
        return abstractC0948x;
    }

    public AbstractC0948x findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public AbstractC0948x findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[EDGE_INSN: B:22:0x0079->B:20:0x0079 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.AbstractC0948x findViewHolderForPosition(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            int r0 = r0.m18584c()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        Le:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L79
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            r1 = r8
            android.view.View r0 = r0.m18581d(r1)
            androidx.recyclerview.widget.RecyclerView$x r0 = getChildViewHolderInt(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L48
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.m18781q()
            if (r0 != 0) goto L48
            r0 = r5
            if (r0 == 0) goto L52
            r0 = r9
            int r0 = r0.f3185c
            r1 = r4
            if (r0 == r1) goto L5f
            r0 = r7
            r10 = r0
        L48:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto Le
        L52:
            r0 = r7
            r10 = r0
            r0 = r9
            int r0 = r0.m18794d()
            r1 = r4
            if (r0 != r1) goto L48
        L5f:
            r0 = r9
            r7 = r0
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.mChildHelper
            r1 = r9
            android.view.View r1 = r1.f3183a
            boolean r0 = r0.m18582c(r1)
            if (r0 == 0) goto L79
            r0 = r9
            r10 = r0
            goto L48
        L79:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$x");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0044, code lost:
        if (java.lang.Math.abs(r6) < r5.mMinFlingVelocity) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
        if (java.lang.Math.abs(r7) < r5.mMinFlingVelocity) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (r13 != 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x01b3  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r7, int r8) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
        }
        return this.mLayout.mo18768a();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
        }
        return this.mLayout.mo18762a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
        }
        return this.mLayout.mo18755a(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0914a getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(AbstractC0948x abstractC0948x) {
        return (abstractC0948x.m18806a(524) || !abstractC0948x.m18782p()) ? -1 : this.mAdapterHelper.m18613c(abstractC0948x.f3185c);
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.mLayout != null ? this.mLayout.m18911x() : super.getBaseline();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    long getChangedHolderKey(AbstractC0948x abstractC0948x) {
        return this.mAdapter.m19050b() ? abstractC0948x.m18791g() : abstractC0948x.f3185c;
    }

    public int getChildAdapterPosition(View view) {
        AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.m18793e() : -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        return this.mChildDrawingOrderCallback == null ? super.getChildDrawingOrder(i, i2) : this.mChildDrawingOrderCallback.m19032a(i, i2);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public long getChildItemId(View view) {
        char c = 65535;
        if (this.mAdapter != null) {
            if (!this.mAdapter.m19050b()) {
                c = 65535;
            } else {
                AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
                c = 65535;
                if (childViewHolderInt != null) {
                    c = childViewHolderInt.m18791g();
                }
            }
        }
        return c;
    }

    public int getChildLayoutPosition(View view) {
        AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.m18794d() : -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public AbstractC0948x getChildViewHolder(View view) {
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

    public C0995m getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public C0918e getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public AbstractC0919f getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        Rect rect;
        C0930j c0930j = (C0930j) view.getLayoutParams();
        if (!c0930j.f3124e) {
            rect = c0930j.f3123d;
        } else if (!this.mState.m18824a() || (!c0930j.m18906e() && !c0930j.m18908c())) {
            Rect rect2 = c0930j.f3123d;
            rect2.set(0, 0, 0, 0);
            int size = this.mItemDecorations.size();
            for (int i = 0; i < size; i++) {
                this.mTempRect.set(0, 0, 0, 0);
                this.mItemDecorations.get(i).mo1302a(this.mTempRect, view, this, this.mState);
                rect2.left += this.mTempRect.left;
                rect2.top += this.mTempRect.top;
                rect2.right += this.mTempRect.right;
                rect2.bottom += this.mTempRect.bottom;
            }
            c0930j.f3124e = false;
            rect = rect2;
        } else {
            rect = c0930j.f3123d;
        }
        return rect;
    }

    public AbstractC0924h getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i < 0 || i >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
        }
        return this.mItemDecorations.get(i);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public AbstractC0925i getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    public long getNanoTime() {
        return ALLOW_THREAD_GAP_WORK ? System.nanoTime() : (char) 0;
    }

    public AbstractC0932l getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public C0935o getRecycledViewPool() {
        return this.mRecycler.m18855g();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m20387b();
    }

    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().m20396a(i);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.m18610d();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new C0958a(new C0958a.AbstractC0959a() { // from class: androidx.recyclerview.widget.RecyclerView.6
            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: a */
            public AbstractC0948x mo18602a(int i) {
                AbstractC0948x abstractC0948x = null;
                AbstractC0948x findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
                if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.m18582c(findViewHolderForPosition.f3183a)) {
                    abstractC0948x = findViewHolderForPosition;
                }
                return abstractC0948x;
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: a */
            public void mo18601a(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, true);
                RecyclerView.this.mItemsAddedOrRemoved = true;
                RecyclerView.this.mState.f3160c += i2;
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: a */
            public void mo18600a(int i, int i2, Object obj) {
                RecyclerView.this.viewRangeUpdate(i, i2, obj);
                RecyclerView.this.mItemsChanged = true;
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: a */
            public void mo18599a(C0958a.C0960b c0960b) {
                m19056c(c0960b);
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: b */
            public void mo18598b(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: b */
            public void mo18597b(C0958a.C0960b c0960b) {
                m19056c(c0960b);
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: c */
            public void mo18596c(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForInsert(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            /* renamed from: c */
            void m19056c(C0958a.C0960b c0960b) {
                switch (c0960b.f3265a) {
                    case 1:
                        RecyclerView.this.mLayout.mo18743a(RecyclerView.this, c0960b.f3266b, c0960b.f3268d);
                        return;
                    case 2:
                        RecyclerView.this.mLayout.mo18723b(RecyclerView.this, c0960b.f3266b, c0960b.f3268d);
                        return;
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    default:
                        return;
                    case 4:
                        RecyclerView.this.mLayout.mo18741a(RecyclerView.this, c0960b.f3266b, c0960b.f3268d, c0960b.f3267c);
                        return;
                    case 8:
                        RecyclerView.this.mLayout.mo18742a(RecyclerView.this, c0960b.f3266b, c0960b.f3268d, 1);
                        return;
                }
            }

            @Override // androidx.recyclerview.widget.C0958a.AbstractC0959a
            /* renamed from: d */
            public void mo18595d(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForMove(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }
        });
    }

    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
        Resources resources = getContext().getResources();
        new C0976e(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C0896a.C0898b.fastscroll_default_thickness), resources.getDimensionPixelSize(C0896a.C0898b.fastscroll_minimum_range), resources.getDimensionPixelOffset(C0896a.C0898b.fastscroll_margin));
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
        if (this.mLayout != null) {
            this.mLayout.mo18735a("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        return this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        return this.mItemAnimator != null && this.mItemAnimator.mo18548b();
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

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m20399a();
    }

    void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.mo18709e(i);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int m18584c = this.mChildHelper.m18584c();
        for (int i = 0; i < m18584c; i++) {
            ((C0930j) this.mChildHelper.m18581d(i).getLayoutParams()).f3124e = true;
        }
        this.mRecycler.m18852j();
    }

    void markKnownViewsInvalid() {
        int m18584c = this.mChildHelper.m18584c();
        for (int i = 0; i < m18584c; i++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i));
            if (childViewHolderInt != null && !childViewHolderInt.m18795c()) {
                childViewHolderInt.m18797b(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.m18854h();
    }

    public void offsetChildrenHorizontal(int i) {
        int m18587b = this.mChildHelper.m18587b();
        for (int i2 = 0; i2 < m18587b; i2++) {
            this.mChildHelper.m18586b(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int m18587b = this.mChildHelper.m18587b();
        for (int i2 = 0; i2 < m18587b; i2++) {
            this.mChildHelper.m18586b(i2).offsetTopAndBottom(i);
        }
    }

    void offsetPositionRecordsForInsert(int i, int i2) {
        int m18584c = this.mChildHelper.m18584c();
        for (int i3 = 0; i3 < m18584c; i3++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.m18795c() && childViewHolderInt.f3185c >= i) {
                childViewHolderInt.m18803a(i2, false);
                this.mState.f3163f = true;
            }
        }
        this.mRecycler.m18873b(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int m18584c = this.mChildHelper.m18584c();
        if (i < i2) {
            i3 = -1;
            i4 = i2;
            i5 = i;
        } else {
            i3 = 1;
            i4 = i;
            i5 = i2;
        }
        for (int i6 = 0; i6 < m18584c; i6++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i6));
            if (childViewHolderInt != null && childViewHolderInt.f3185c >= i5 && childViewHolderInt.f3185c <= i4) {
                if (childViewHolderInt.f3185c == i) {
                    childViewHolderInt.m18803a(i2 - i, false);
                } else {
                    childViewHolderInt.m18803a(i3, false);
                }
                this.mState.f3163f = true;
            }
        }
        this.mRecycler.m18888a(i, i2);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int m18584c = this.mChildHelper.m18584c();
        for (int i3 = 0; i3 < m18584c; i3++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.m18795c()) {
                if (childViewHolderInt.f3185c >= i + i2) {
                    childViewHolderInt.m18803a(-i2, z);
                    this.mState.f3163f = true;
                } else if (childViewHolderInt.f3185c >= i) {
                    childViewHolderInt.m18804a(i - 1, -i2, z);
                    this.mState.f3163f = true;
                }
            }
        }
        this.mRecycler.m18887a(i, i2, z);
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
        if (r7 >= 30.0f) goto L19;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            super.onAttachedToWindow()
            r0 = r4
            r1 = 0
            r0.mLayoutOrScrollCounter = r1
            r0 = r4
            r1 = 1
            r0.mIsAttached = r1
            r0 = r4
            boolean r0 = r0.mFirstLayoutComplete
            if (r0 == 0) goto L99
            r0 = r4
            boolean r0 = r0.isLayoutRequested()
            if (r0 != 0) goto L99
        L1e:
            r0 = r4
            r1 = r5
            r0.mFirstLayoutComplete = r1
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            if (r0 == 0) goto L32
            r0 = r4
            androidx.recyclerview.widget.RecyclerView$i r0 = r0.mLayout
            r1 = r4
            r0.m18946c(r1)
        L32:
            r0 = r4
            r1 = 0
            r0.mPostedAnimatorRunner = r1
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L98
            r0 = r4
            java.lang.ThreadLocal<androidx.recyclerview.widget.f> r1 = androidx.recyclerview.widget.RunnableC0981f.f3365a
            java.lang.Object r1 = r1.get()
            androidx.recyclerview.widget.f r1 = (androidx.recyclerview.widget.RunnableC0981f) r1
            r0.mGapWorker = r1
            r0 = r4
            androidx.recyclerview.widget.f r0 = r0.mGapWorker
            if (r0 != 0) goto L90
            r0 = r4
            androidx.recyclerview.widget.f r1 = new androidx.recyclerview.widget.f
            r2 = r1
            r2.<init>()
            r0.mGapWorker = r1
            r0 = r4
            android.view.Display r0 = androidx.core.p026h.C0595u.m20368D(r0)
            r6 = r0
            r0 = r4
            boolean r0 = r0.isInEditMode()
            if (r0 != 0) goto L9e
            r0 = r6
            if (r0 == 0) goto L9e
            r0 = r6
            float r0 = r0.getRefreshRate()
            r7 = r0
            r0 = r7
            r1 = 1106247680(0x41f00000, float:30.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L9e
        L79:
            r0 = r4
            androidx.recyclerview.widget.f r0 = r0.mGapWorker
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            r2 = r7
            float r1 = r1 / r2
            long r1 = (long) r1
            r0.f3369d = r1
            java.lang.ThreadLocal<androidx.recyclerview.widget.f> r0 = androidx.recyclerview.widget.RunnableC0981f.f3365a
            r1 = r4
            androidx.recyclerview.widget.f r1 = r1.mGapWorker
            r0.set(r1)
        L90:
            r0 = r4
            androidx.recyclerview.widget.f r0 = r0.mGapWorker
            r1 = r4
            r0.m18511a(r1)
        L98:
            return
        L99:
            r0 = 0
            r5 = r0
            goto L1e
        L9e:
            r0 = 1114636288(0x42700000, float:60.0)
            r7 = r0
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemAnimator != null) {
            this.mItemAnimator.mo18543d();
        }
        stopScroll();
        this.mIsAttached = false;
        if (this.mLayout != null) {
            this.mLayout.m18953b(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.m18372b();
        if (!ALLOW_THREAD_GAP_WORK || this.mGapWorker == null) {
            return;
        }
        this.mGapWorker.m18504b(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mItemDecorations.get(i).mo3176a(canvas, this, this.mState);
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

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        float f3;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                float f4 = this.mLayout.mo18704g() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.mLayout.mo18707f()) {
                    f2 = f4;
                    f = motionEvent.getAxisValue(10);
                } else {
                    f2 = f4;
                    f = 0.0f;
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue = motionEvent.getAxisValue(26);
                if (this.mLayout.mo18704g()) {
                    f3 = -axisValue;
                    axisValue = 0.0f;
                } else if (this.mLayout.mo18707f()) {
                    f3 = 0.0f;
                } else {
                    axisValue = 0.0f;
                    f3 = 0.0f;
                }
                float f5 = axisValue;
                f2 = f3;
                f = f5;
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            if (f2 == 0.0f && f == 0.0f) {
                return false;
            }
            scrollByInternal((int) (this.mScaledHorizontalScrollFactor * f), (int) (this.mScaledVerticalScrollFactor * f2), motionEvent);
            return false;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0239  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0612a.m20241a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        C0612a.m20242a();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mLayout == null) {
            defaultOnMeasure(i, i2);
        } else if (this.mLayout.mo18713d()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.m18973a(this.mRecycler, this.mState, i, i2);
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
            if (this.mState.f3161d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.m18951c(i, i2);
            this.mState.f3166i = true;
            dispatchLayoutStep2();
            this.mLayout.m18944d(i, i2);
            if (!this.mLayout.mo18921n()) {
                return;
            }
            this.mLayout.m18951c(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            this.mState.f3166i = true;
            dispatchLayoutStep2();
            this.mLayout.m18944d(i, i2);
        } else if (this.mHasFixedSize) {
            this.mLayout.m18973a(this.mRecycler, this.mState, i, i2);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                if (this.mState.f3168k) {
                    this.mState.f3164g = true;
                } else {
                    this.mAdapterHelper.m18607e();
                    this.mState.f3164g = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.f3168k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            if (this.mAdapter != null) {
                this.mState.f3162e = this.mAdapter.mo959a();
            } else {
                this.mState.f3162e = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.m18973a(this.mRecycler, this.mState, i, i2);
            stopInterceptRequestLayout(false);
            this.mState.f3164g = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        return isComputingLayout() ? false : super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0940s)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.mPendingSavedState = (C0940s) parcelable;
        super.onRestoreInstanceState(this.mPendingSavedState.m20121a());
        if (this.mLayout == null || this.mPendingSavedState.f3142a == null) {
            return;
        }
        this.mLayout.mo18760a(this.mPendingSavedState.f3142a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0940s c0940s = new C0940s(super.onSaveInstanceState());
        if (this.mPendingSavedState != null) {
            c0940s.m18847a(this.mPendingSavedState);
        } else if (this.mLayout != null) {
            c0940s.f3142a = this.mLayout.mo18710e();
        } else {
            c0940s.f3142a = null;
        }
        return c0940s;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x034d, code lost:
        if (r20 != 0) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0259  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 1079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        C0595u.m20341a(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent |= z;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(AbstractC0948x abstractC0948x, AbstractC0919f.C0922c c0922c) {
        abstractC0948x.m18805a(0, 8192);
        if (this.mState.f3165h && abstractC0948x.m18809A() && !abstractC0948x.m18781q() && !abstractC0948x.m18795c()) {
            this.mViewInfoStore.m18377a(getChangedHolderKey(abstractC0948x), abstractC0948x);
        }
        this.mViewInfoStore.m18374a(abstractC0948x, c0922c);
    }

    public void removeAndRecycleViews() {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.mo18543d();
        }
        if (this.mLayout != null) {
            this.mLayout.m18947c(this.mRecycler);
            this.mLayout.m18956b(this.mRecycler);
        }
        this.mRecycler.m18890a();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean m18576f = this.mChildHelper.m18576f(view);
        if (m18576f) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.m18865c(childViewHolderInt);
            this.mRecycler.m18870b(childViewHolderInt);
        }
        stopInterceptRequestLayout(!m18576f);
        return m18576f;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC0948x childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.m18780r()) {
                childViewHolderInt.m18785m();
            } else if (!childViewHolderInt.m18795c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(AbstractC0924h abstractC0924h) {
        if (this.mLayout != null) {
            this.mLayout.mo18735a("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(abstractC0924h);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i < 0 || i >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
        }
        removeItemDecoration(getItemDecorationAt(i));
    }

    public void removeOnChildAttachStateChangeListener(AbstractC0931k abstractC0931k) {
        if (this.mOnChildAttachStateListeners == null) {
            return;
        }
        this.mOnChildAttachStateListeners.remove(abstractC0931k);
    }

    public void removeOnItemTouchListener(AbstractC0933m abstractC0933m) {
        this.mOnItemTouchListeners.remove(abstractC0933m);
        if (this.mInterceptingOnItemTouchListener == abstractC0933m) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(AbstractC0934n abstractC0934n) {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.remove(abstractC0934n);
        }
    }

    void repositionShadowingViews() {
        int m18587b = this.mChildHelper.m18587b();
        for (int i = 0; i < m18587b; i++) {
            View m18586b = this.mChildHelper.m18586b(i);
            AbstractC0948x childViewHolder = getChildViewHolder(m18586b);
            if (childViewHolder != null && childViewHolder.f3191i != null) {
                View view = childViewHolder.f3191i.f3183a;
                int left = m18586b.getLeft();
                int top = m18586b.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.m18964a(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.m18967a(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            this.mOnItemTouchListeners.get(i).mo18527a(z);
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
        int m18584c = this.mChildHelper.m18584c();
        for (int i = 0; i < m18584c; i++) {
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(this.mChildHelper.m18581d(i));
            if (!childViewHolderInt.m18795c()) {
                childViewHolderInt.m18798b();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutSuppressed) {
        } else {
            boolean mo18707f = this.mLayout.mo18707f();
            boolean mo18704g = this.mLayout.mo18704g();
            if (!mo18707f && !mo18704g) {
                return;
            }
            if (!mo18707f) {
                i = 0;
            }
            if (!mo18704g) {
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
        boolean z = false;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            this.mReusableIntPair[0] = 0;
            this.mReusableIntPair[1] = 0;
            scrollStep(i, i2, this.mReusableIntPair);
            i4 = this.mReusableIntPair[0];
            i3 = this.mReusableIntPair[1];
            i6 = i - i4;
            i5 = i2 - i3;
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        this.mReusableIntPair[0] = 0;
        this.mReusableIntPair[1] = 0;
        dispatchNestedScroll(i4, i3, i6, i5, this.mScrollOffset, 0, this.mReusableIntPair);
        int i7 = this.mReusableIntPair[0];
        int i8 = this.mReusableIntPair[1];
        boolean z2 = (this.mReusableIntPair[0] == 0 && this.mReusableIntPair[1] == 0) ? false : true;
        this.mLastTouchX -= this.mScrollOffset[0];
        this.mLastTouchY -= this.mScrollOffset[1];
        int[] iArr = this.mNestedOffsets;
        iArr[0] = iArr[0] + this.mScrollOffset[0];
        int[] iArr2 = this.mNestedOffsets;
        iArr2[1] = iArr2[1] + this.mScrollOffset[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0582h.m20400a(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i6 - i7, motionEvent.getY(), i5 - i8);
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (i4 != 0 || i3 != 0) {
            dispatchOnScrolled(i4, i3);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        if (z2 || i4 != 0 || i3 != 0) {
            z = true;
        }
        return z;
    }

    void scrollStep(int i, int i2, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        C0612a.m20241a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int mo18764a = i != 0 ? this.mLayout.mo18764a(i, this.mRecycler, this.mState) : 0;
        int mo18730b = i2 != 0 ? this.mLayout.mo18730b(i2, this.mRecycler, this.mState) : 0;
        C0612a.m20242a();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = mo18764a;
            iArr[1] = mo18730b;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        this.mLayout.mo18709e(i);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C0995m c0995m) {
        this.mAccessibilityDelegate = c0995m;
        C0595u.m20345a(this, this.mAccessibilityDelegate);
    }

    public void setAdapter(AbstractC0914a abstractC0914a) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0914a, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0917d abstractC0917d) {
        if (abstractC0917d == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = abstractC0917d;
        setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
    }

    boolean setChildImportantForAccessibilityInternal(AbstractC0948x abstractC0948x, int i) {
        boolean z;
        if (isComputingLayout()) {
            abstractC0948x.f3197o = i;
            this.mPendingAccessibilityImportanceChange.add(abstractC0948x);
            z = false;
        } else {
            C0595u.m20335b(abstractC0948x.f3183a, i);
            z = true;
        }
        return z;
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

    public void setEdgeEffectFactory(C0918e c0918e) {
        C0527f.m20644a(c0918e);
        this.mEdgeEffectFactory = c0918e;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(AbstractC0919f abstractC0919f) {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.mo18543d();
            this.mItemAnimator.m19030a(null);
        }
        this.mItemAnimator = abstractC0919f;
        if (this.mItemAnimator != null) {
            this.mItemAnimator.m19030a(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.mRecycler.m18889a(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0925i abstractC0925i) {
        if (abstractC0925i == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            if (this.mItemAnimator != null) {
                this.mItemAnimator.mo18543d();
            }
            this.mLayout.m18947c(this.mRecycler);
            this.mLayout.m18956b(this.mRecycler);
            this.mRecycler.m18890a();
            if (this.mIsAttached) {
                this.mLayout.m18953b(this, this.mRecycler);
            }
            this.mLayout.m18954b((RecyclerView) null);
            this.mLayout = null;
        } else {
            this.mRecycler.m18890a();
        }
        this.mChildHelper.m18593a();
        this.mLayout = abstractC0925i;
        if (abstractC0925i != null) {
            if (abstractC0925i.f3107q != null) {
                throw new IllegalArgumentException("LayoutManager " + abstractC0925i + " is already attached to a RecyclerView:" + abstractC0925i.f3107q.exceptionLabel());
            }
            this.mLayout.m18954b(this);
            if (this.mIsAttached) {
                this.mLayout.m18946c(this);
            }
        }
        this.mRecycler.m18875b();
        requestLayout();
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
        getScrollingChildHelper().m20388a(z);
    }

    public void setOnFlingListener(AbstractC0932l abstractC0932l) {
        this.mOnFlingListener = abstractC0932l;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0934n abstractC0934n) {
        this.mScrollListener = abstractC0934n;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(C0935o c0935o) {
        this.mRecycler.m18880a(c0935o);
    }

    public void setRecyclerListener(AbstractC0938q abstractC0938q) {
        this.mRecyclerListener = abstractC0938q;
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
        switch (i) {
            case 0:
                break;
            case 1:
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
                break;
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0946v abstractC0946v) {
        this.mRecycler.m18879a(abstractC0946v);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean z = false;
        if (isComputingLayout()) {
            int m20528a = accessibilityEvent != null ? C0552b.m20528a(accessibilityEvent) : 0;
            if (m20528a == 0) {
                m20528a = 0;
            }
            this.mEatenAccessibilityChangeFlags = m20528a | this.mEatenAccessibilityChangeFlags;
            z = true;
        }
        return z;
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, UNDEFINED_DURATION);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3) {
        smoothScrollBy(i, i2, interpolator, i3, false);
    }

    void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.mLayoutSuppressed) {
        } else {
            int i4 = i;
            if (!this.mLayout.mo18707f()) {
                i4 = 0;
            }
            if (!this.mLayout.mo18704g()) {
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
            this.mViewFlinger.m18812a(i4, i2, i3, interpolator);
        }
    }

    public void smoothScrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            this.mLayout.mo3114a(this, this.mState, i);
        }
    }

    void startInterceptRequestLayout() {
        this.mInterceptRequestLayoutDepth++;
        if (this.mInterceptRequestLayoutDepth != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m20386b(i);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().m20395a(i, i2);
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

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public void stopNestedScroll() {
        getScrollingChildHelper().m20384c();
    }

    public void stopNestedScroll(int i) {
        getScrollingChildHelper().m20383c(i);
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

    public void swapAdapter(AbstractC0914a abstractC0914a, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(abstractC0914a, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i, int i2, Object obj) {
        int m18584c = this.mChildHelper.m18584c();
        for (int i3 = 0; i3 < m18584c; i3++) {
            View m18581d = this.mChildHelper.m18581d(i3);
            AbstractC0948x childViewHolderInt = getChildViewHolderInt(m18581d);
            if (childViewHolderInt != null && !childViewHolderInt.m18795c() && childViewHolderInt.f3185c >= i && childViewHolderInt.f3185c < i + i2) {
                childViewHolderInt.m18797b(2);
                childViewHolderInt.m18800a(obj);
                ((C0930j) m18581d.getLayoutParams()).f3124e = true;
            }
        }
        this.mRecycler.m18867c(i, i2);
    }
}
