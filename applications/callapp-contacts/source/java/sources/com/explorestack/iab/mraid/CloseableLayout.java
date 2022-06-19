package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.explorestack.iab.utils.C9589d;
import com.explorestack.iab.utils.C9590e;
import com.explorestack.iab.utils.C9593h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {
    private static final int TIMER_INTERVAL = 50;
    private AbstractC9541c closeClickListener;
    private C9593h closeStyle;
    private RunnableC9539a closeTimerRunnable;
    private C9589d closeWrapper;
    private C9593h countDownStyle;
    private C9590e countDownWrapper;
    private final C9540b state = new C9540b();

    /* renamed from: com.explorestack.iab.mraid.CloseableLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$a.class */
    public final class RunnableC9539a implements Runnable {
        private RunnableC9539a() {
            CloseableLayout.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        @Override // java.lang.Runnable
        public final void run() {
            if (CloseableLayout.this.countDownWrapper == null) {
                return;
            }
            ?? r0 = CloseableLayout.this.state.f32429d;
            char c = r0;
            if (CloseableLayout.this.isShown()) {
                c = r0 + 50;
                CloseableLayout.this.state.f32429d = c;
                CloseableLayout.this.countDownWrapper.m24074a((int) (('d' * c) / CloseableLayout.this.state.f32428c), (int) Math.ceil((CloseableLayout.this.state.f32428c - c) / 1000.0d));
            }
            if (c < CloseableLayout.this.state.f32428c) {
                CloseableLayout.this.postDelayed(this, 50L);
                return;
            }
            CloseableLayout.this.syncCloseViewState();
            if (CloseableLayout.this.state.f32427b <= BitmapDescriptorFactory.HUE_RED || CloseableLayout.this.closeClickListener == null) {
                return;
            }
            CloseableLayout.this.closeClickListener.onCountDownFinish();
        }
    }

    /* renamed from: com.explorestack.iab.mraid.CloseableLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$b.class */
    public static final class C9540b {

        /* renamed from: a */
        boolean f32426a;

        /* renamed from: b */
        float f32427b;

        /* renamed from: c */
        long f32428c;

        /* renamed from: d */
        long f32429d;

        /* renamed from: e */
        long f32430e;

        /* renamed from: f */
        long f32431f;

        private C9540b() {
            this.f32426a = false;
            this.f32427b = BitmapDescriptorFactory.HUE_RED;
            this.f32428c = 0L;
            this.f32429d = 0L;
            this.f32430e = 0L;
            this.f32431f = 0L;
        }

        /* renamed from: a */
        public final boolean m24200a() {
            long j = this.f32428c;
            return j != 0 && this.f32429d < j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.CloseableLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$c.class */
    public interface AbstractC9541c {
        void onCloseClick();

        void onCountDownFinish();
    }

    public CloseableLayout(Context context) {
        super(context);
    }

    private void startTimer() {
        if (!isShown()) {
            return;
        }
        stopTimer();
        RunnableC9539a runnableC9539a = new RunnableC9539a();
        this.closeTimerRunnable = runnableC9539a;
        postDelayed(runnableC9539a, 50L);
    }

    private void stopTimer() {
        RunnableC9539a runnableC9539a = this.closeTimerRunnable;
        if (runnableC9539a != null) {
            removeCallbacks(runnableC9539a);
            this.closeTimerRunnable = null;
        }
    }

    public void syncCloseViewState() {
        if (this.state.m24200a()) {
            C9589d c9589d = this.closeWrapper;
            if (c9589d != null) {
                c9589d.m24041d();
            }
            if (this.countDownWrapper == null) {
                this.countDownWrapper = new C9590e(null);
            }
            this.countDownWrapper.m24045a(getContext(), (ViewGroup) this, this.countDownStyle);
            startTimer();
            return;
        }
        stopTimer();
        if (this.closeWrapper == null) {
            this.closeWrapper = new C9589d(new View.OnClickListener() { // from class: com.explorestack.iab.mraid.CloseableLayout.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (CloseableLayout.this.closeClickListener != null) {
                        CloseableLayout.this.closeClickListener.onCloseClick();
                    }
                }
            });
        }
        this.closeWrapper.m24045a(getContext(), (ViewGroup) this, this.closeStyle);
        C9590e c9590e = this.countDownWrapper;
        if (c9590e == null) {
            return;
        }
        c9590e.m24041d();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        C9589d c9589d = this.closeWrapper;
        if (c9589d != null) {
            c9589d.m24044b();
        }
        C9590e c9590e = this.countDownWrapper;
        if (c9590e != null) {
            c9590e.m24044b();
        }
    }

    public boolean canBeClosed() {
        C9540b c9540b = this.state;
        return c9540b.f32428c == 0 || c9540b.f32429d >= c9540b.f32428c;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public long getOnScreenTimeMs() {
        C9540b c9540b = this.state;
        char c = c9540b.f32431f;
        if (c9540b.f32430e > 0) {
            c = System.currentTimeMillis() - c9540b.f32430e;
        }
        return c;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            stopTimer();
        } else if (this.state.m24200a() && this.state.f32426a) {
            startTimer();
        }
        C9540b c9540b = this.state;
        boolean z = i == 0;
        if (c9540b.f32430e > 0) {
            c9540b.f32431f += System.currentTimeMillis() - c9540b.f32430e;
        }
        if (z) {
            c9540b.f32430e = System.currentTimeMillis();
        } else {
            c9540b.f32430e = 0L;
        }
    }

    public void setCloseClickListener(AbstractC9541c abstractC9541c) {
        this.closeClickListener = abstractC9541c;
    }

    public void setCloseStyle(C9593h c9593h) {
        this.closeStyle = c9593h;
        C9589d c9589d = this.closeWrapper;
        if (c9589d == null || !c9589d.m24043c()) {
            return;
        }
        this.closeWrapper.m24045a(getContext(), (ViewGroup) this, c9593h);
    }

    public void setCloseVisibility(boolean z, float f) {
        if (this.state.f32426a == z && this.state.f32427b == f) {
            return;
        }
        C9540b c9540b = this.state;
        c9540b.f32426a = z;
        c9540b.f32427b = f;
        c9540b.f32428c = f * 1000.0f;
        c9540b.f32429d = 0L;
        if (z) {
            syncCloseViewState();
            return;
        }
        C9589d c9589d = this.closeWrapper;
        if (c9589d != null) {
            c9589d.m24041d();
        }
        C9590e c9590e = this.countDownWrapper;
        if (c9590e != null) {
            c9590e.m24041d();
        }
        stopTimer();
    }

    public void setCountDownStyle(C9593h c9593h) {
        this.countDownStyle = c9593h;
        C9590e c9590e = this.countDownWrapper;
        if (c9590e == null || !c9590e.m24043c()) {
            return;
        }
        this.countDownWrapper.m24045a(getContext(), (ViewGroup) this, c9593h);
    }
}
