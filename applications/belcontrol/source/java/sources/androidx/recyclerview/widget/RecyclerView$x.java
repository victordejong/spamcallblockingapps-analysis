package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
public abstract class RecyclerView$x {
    private RecyclerView$o mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final C0185a mRecyclingAction = new C0185a(0, 0);

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x$a.class */
    public static class C0185a {

        /* renamed from: a */
        public int f1376a;

        /* renamed from: b */
        public int f1377b;

        /* renamed from: c */
        public int f1378c;

        /* renamed from: d */
        public int f1379d;

        /* renamed from: e */
        public Interpolator f1380e;

        /* renamed from: f */
        public boolean f1381f;

        /* renamed from: g */
        public int f1382g;

        public C0185a(int i, int i2) {
            this(i, i2, Integer.MIN_VALUE, null);
        }

        public C0185a(int i, int i2, int i3, Interpolator interpolator) {
            this.f1379d = -1;
            this.f1381f = false;
            this.f1382g = 0;
            this.f1376a = i;
            this.f1377b = i2;
            this.f1378c = i3;
            this.f1380e = interpolator;
        }

        /* renamed from: a */
        public boolean m6120a() {
            return this.f1379d >= 0;
        }

        /* renamed from: b */
        public void m6119b(int i) {
            this.f1379d = i;
        }

        /* renamed from: c */
        public void m6118c(RecyclerView recyclerView) {
            int i = this.f1379d;
            if (i >= 0) {
                this.f1379d = -1;
                recyclerView.jumpToPositionForSmoothScroller(i);
                this.f1381f = false;
            } else if (!this.f1381f) {
                this.f1382g = 0;
            } else {
                m6116e();
                recyclerView.mViewFlinger.m6216f(this.f1376a, this.f1377b, this.f1378c, this.f1380e);
                int i2 = this.f1382g + 1;
                this.f1382g = i2;
                if (i2 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f1381f = false;
            }
        }

        /* renamed from: d */
        public void m6117d(int i, int i2, int i3, Interpolator interpolator) {
            this.f1376a = i;
            this.f1377b = i2;
            this.f1378c = i3;
            this.f1380e = interpolator;
            this.f1381f = true;
        }

        /* renamed from: e */
        public final void m6116e() {
            if (this.f1380e == null || this.f1378c >= 1) {
                if (this.f1378c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                return;
            }
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x$b.class */
    public interface AbstractC0186b {
        PointF computeScrollVectorForPosition(int i);
    }

    public PointF computeScrollVectorForPosition(int i) {
        RecyclerView$o layoutManager = getLayoutManager();
        if (layoutManager instanceof AbstractC0186b) {
            return ((AbstractC0186b) layoutManager).computeScrollVectorForPosition(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0186b.class.getCanonicalName());
        return null;
    }

    public View findViewByPosition(int i) {
        return this.mRecyclerView.mLayout.findViewByPosition(i);
    }

    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    public RecyclerView$o getLayoutManager() {
        return this.mLayoutManager;
    }

    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    @Deprecated
    public void instantScrollToPosition(int i) {
        this.mRecyclerView.scrollToPosition(i);
    }

    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public void normalize(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        pointF.x /= sqrt;
        pointF.y /= sqrt;
    }

    public void onAnimation(int i, int i2) {
        PointF computeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
            float f = computeScrollVectorForPosition.x;
            if (f != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f), (int) Math.signum(computeScrollVectorForPosition.y), (int[]) null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.m6118c(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i, i2, recyclerView.mState, this.mRecyclingAction);
            boolean m6120a = this.mRecyclingAction.m6120a();
            this.mRecyclingAction.m6118c(recyclerView);
            if (!m6120a || !this.mRunning) {
                return;
            }
            this.mPendingInitialRun = true;
            recyclerView.mViewFlinger.m6217e();
        }
    }

    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
        }
    }

    public abstract void onSeekTargetStep(int i, int i2, RecyclerView$y recyclerView$y, C0185a c0185a);

    public abstract void onStart();

    public abstract void onStop();

    public abstract void onTargetFound(View view, RecyclerView$y recyclerView$y, C0185a c0185a);

    public void setTargetPosition(int i) {
        this.mTargetPosition = i;
    }

    public void start(RecyclerView recyclerView, RecyclerView$o recyclerView$o) {
        recyclerView.mViewFlinger.m6215g();
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = recyclerView$o;
        int i = this.mTargetPosition;
        if (i != -1) {
            recyclerView.mState.f1383a = i;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = findViewByPosition(getTargetPosition());
            onStart();
            this.mRecyclerView.mViewFlinger.m6217e();
            this.mStarted = true;
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }

    public final void stop() {
        if (!this.mRunning) {
            return;
        }
        this.mRunning = false;
        onStop();
        this.mRecyclerView.mState.f1383a = -1;
        this.mTargetView = null;
        this.mTargetPosition = -1;
        this.mPendingInitialRun = false;
        this.mLayoutManager.onSmoothScrollerStopped(this);
        this.mLayoutManager = null;
        this.mRecyclerView = null;
    }
}
