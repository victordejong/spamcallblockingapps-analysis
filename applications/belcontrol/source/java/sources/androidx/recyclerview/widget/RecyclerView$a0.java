package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
public class RecyclerView$a0 implements Runnable {

    /* renamed from: a */
    public int f1341a;

    /* renamed from: b */
    public int f1342b;

    /* renamed from: c */
    public OverScroller f1343c;

    /* renamed from: d */
    public Interpolator f1344d;

    /* renamed from: f */
    public boolean f1345f = false;

    /* renamed from: g */
    public boolean f1346g = false;

    /* renamed from: h */
    public final /* synthetic */ RecyclerView f1347h;

    public RecyclerView$a0(RecyclerView recyclerView) {
        this.f1347h = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.f1344d = interpolator;
        this.f1343c = new OverScroller(recyclerView.getContext(), interpolator);
    }

    /* renamed from: a */
    public final int m6221a(int i, int i2, int i3, int i4) {
        int abs;
        int abs2;
        int i5;
        boolean z = Math.abs(i) > Math.abs(i2);
        int sqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
        int sqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
        RecyclerView recyclerView = this.f1347h;
        int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
        float f = sqrt2;
        float f2 = width;
        float f3 = width / 2;
        float m6220b = m6220b(Math.min(1.0f, (f * 1.0f) / f2));
        if (sqrt > 0) {
            i5 = Math.round(Math.abs((f3 + (m6220b * f3)) / sqrt) * 1000.0f) * 4;
        } else {
            i5 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
        }
        return Math.min(i5, (int) CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE);
    }

    /* renamed from: b */
    public final float m6220b(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: c */
    public void m6219c(int i, int i2) {
        this.f1347h.setScrollState(2);
        this.f1342b = 0;
        this.f1341a = 0;
        Interpolator interpolator = this.f1344d;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.f1344d = interpolator2;
            this.f1343c = new OverScroller(this.f1347h.getContext(), interpolator2);
        }
        this.f1343c.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        m6217e();
    }

    /* renamed from: d */
    public final void m6218d() {
        this.f1347h.removeCallbacks(this);
        jb.f0(this.f1347h, this);
    }

    /* renamed from: e */
    public void m6217e() {
        if (this.f1345f) {
            this.f1346g = true;
        } else {
            m6218d();
        }
    }

    /* renamed from: f */
    public void m6216f(int i, int i2, int i3, Interpolator interpolator) {
        int i4 = i3;
        if (i3 == Integer.MIN_VALUE) {
            i4 = m6221a(i, i2, 0, 0);
        }
        Interpolator interpolator2 = interpolator;
        if (interpolator == null) {
            interpolator2 = RecyclerView.sQuinticInterpolator;
        }
        if (this.f1344d != interpolator2) {
            this.f1344d = interpolator2;
            this.f1343c = new OverScroller(this.f1347h.getContext(), interpolator2);
        }
        this.f1342b = 0;
        this.f1341a = 0;
        this.f1347h.setScrollState(2);
        this.f1343c.startScroll(0, 0, i, i2, i4);
        if (Build.VERSION.SDK_INT < 23) {
            this.f1343c.computeScrollOffset();
        }
        m6217e();
    }

    /* renamed from: g */
    public void m6215g() {
        this.f1347h.removeCallbacks(this);
        this.f1343c.abortAnimation();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        int i2;
        int i3;
        RecyclerView recyclerView = this.f1347h;
        if (recyclerView.mLayout == null) {
            m6215g();
            return;
        }
        this.f1346g = false;
        this.f1345f = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f1343c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i4 = currX - this.f1341a;
            int i5 = currY - this.f1342b;
            this.f1341a = currX;
            this.f1342b = currY;
            RecyclerView recyclerView2 = this.f1347h;
            int[] iArr = recyclerView2.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            int i6 = i4;
            int i7 = i5;
            if (recyclerView2.dispatchNestedPreScroll(i4, i5, iArr, (int[]) null, 1)) {
                int[] iArr2 = this.f1347h.mReusableIntPair;
                i6 = i4 - iArr2[0];
                i7 = i5 - iArr2[1];
            }
            if (this.f1347h.getOverScrollMode() != 2) {
                this.f1347h.considerReleasingGlowsOnScroll(i6, i7);
            }
            RecyclerView recyclerView3 = this.f1347h;
            if (recyclerView3.mAdapter != null) {
                int[] iArr3 = recyclerView3.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.scrollStep(i6, i7, iArr3);
                RecyclerView recyclerView4 = this.f1347h;
                int[] iArr4 = recyclerView4.mReusableIntPair;
                int i8 = iArr4[0];
                int i9 = iArr4[1];
                int i10 = i6 - i8;
                int i11 = i7 - i9;
                RecyclerView$x recyclerView$x = recyclerView4.mLayout.mSmoothScroller;
                i6 = i10;
                i = i9;
                i3 = i8;
                i2 = i11;
                if (recyclerView$x != null) {
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (!recyclerView$x.isPendingInitialRun()) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (recyclerView$x.isRunning()) {
                            int m6114b = this.f1347h.mState.m6114b();
                            if (m6114b == 0) {
                                recyclerView$x.stop();
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            } else {
                                if (recyclerView$x.getTargetPosition() >= m6114b) {
                                    recyclerView$x.setTargetPosition(m6114b - 1);
                                }
                                recyclerView$x.onAnimation(i8, i9);
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
            if (!this.f1347h.mItemDecorations.isEmpty()) {
                this.f1347h.invalidate();
            }
            RecyclerView recyclerView5 = this.f1347h;
            int[] iArr5 = recyclerView5.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.dispatchNestedScroll(i3, i, i6, i2, (int[]) null, 1, iArr5);
            RecyclerView recyclerView6 = this.f1347h;
            int[] iArr6 = recyclerView6.mReusableIntPair;
            int i12 = i6 - iArr6[0];
            int i13 = i2 - iArr6[1];
            if (i3 != 0 || i != 0) {
                recyclerView6.dispatchOnScrolled(i3, i);
            }
            if (!RecyclerView.access$200(this.f1347h)) {
                this.f1347h.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
            RecyclerView$x recyclerView$x2 = this.f1347h.mLayout.mSmoothScroller;
            if ((recyclerView$x2 != null && recyclerView$x2.isPendingInitialRun()) || !z) {
                m6217e();
                RecyclerView recyclerView7 = this.f1347h;
                e00 e00Var = recyclerView7.mGapWorker;
                if (e00Var != null) {
                    e00Var.m2306f(recyclerView7, i3, i);
                }
            } else {
                if (this.f1347h.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                    if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    this.f1347h.absorbGlows(i14, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    this.f1347h.mPrefetchRegistry.b();
                }
            }
        }
        RecyclerView$x recyclerView$x3 = this.f1347h.mLayout.mSmoothScroller;
        if (recyclerView$x3 != null && recyclerView$x3.isPendingInitialRun()) {
            recyclerView$x3.onAnimation(0, 0);
        }
        this.f1345f = false;
        if (this.f1346g) {
            m6218d();
            return;
        }
        this.f1347h.setScrollState(0);
        this.f1347h.stopNestedScroll(1);
    }
}
