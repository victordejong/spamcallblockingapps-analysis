package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker.class */
public class InlineVisibilityTracker {

    /* renamed from: a */
    final ViewTreeObserver.OnPreDrawListener f59241a;

    /* renamed from: b */
    WeakReference<ViewTreeObserver> f59242b;

    /* renamed from: c */
    private final View f59243c;

    /* renamed from: d */
    private final View f59244d;

    /* renamed from: e */
    private final C16783a f59245e;

    /* renamed from: f */
    private InlineVisibilityTrackerListener f59246f;

    /* renamed from: i */
    private boolean f59249i;

    /* renamed from: j */
    private boolean f59250j;

    /* renamed from: h */
    private final Handler f59248h = new Handler();

    /* renamed from: g */
    private final RunnableC16784b f59247g = new RunnableC16784b();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener.class */
    public interface InlineVisibilityTrackerListener {
        void onVisibilityChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.InlineVisibilityTracker$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$a.class */
    public static final class C16783a {

        /* renamed from: a */
        int f59252a;

        /* renamed from: b */
        int f59253b;

        /* renamed from: c */
        long f59254c = Long.MIN_VALUE;

        /* renamed from: d */
        final Rect f59255d = new Rect();

        C16783a(int i, int i2) {
            this.f59252a = i;
            this.f59253b = i2;
        }

        /* renamed from: a */
        final boolean m6485a() {
            return this.f59254c != Long.MIN_VALUE;
        }
    }

    /* renamed from: com.mopub.mobileads.InlineVisibilityTracker$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$b.class */
    public final class RunnableC16784b implements Runnable {
        RunnableC16784b() {
            InlineVisibilityTracker.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (InlineVisibilityTracker.this.f59250j) {
                return;
            }
            InlineVisibilityTracker.this.f59249i = false;
            C16783a c16783a = InlineVisibilityTracker.this.f59245e;
            View view = InlineVisibilityTracker.this.f59244d;
            View view2 = InlineVisibilityTracker.this.f59243c;
            if (view2 != null && view2.getVisibility() == 0 && view.getParent() != null && view2.getWidth() > 0 && view2.getHeight() > 0 && view2.getGlobalVisibleRect(c16783a.f59255d) && ((long) (Dips.pixelsToIntDips((float) c16783a.f59255d.width(), view2.getContext()) * Dips.pixelsToIntDips((float) c16783a.f59255d.height(), view2.getContext()))) >= ((long) c16783a.f59252a)) {
                if (!InlineVisibilityTracker.this.f59245e.m6485a()) {
                    InlineVisibilityTracker.this.f59245e.f59254c = SystemClock.uptimeMillis();
                }
                C16783a c16783a2 = InlineVisibilityTracker.this.f59245e;
                if ((c16783a2.m6485a() && SystemClock.uptimeMillis() - c16783a2.f59254c >= ((long) c16783a2.f59253b)) && InlineVisibilityTracker.this.f59246f != null) {
                    InlineVisibilityTracker.this.f59246f.onVisibilityChanged();
                    InlineVisibilityTracker.this.f59250j = true;
                }
            }
            if (InlineVisibilityTracker.this.f59250j) {
                return;
            }
            InlineVisibilityTracker.this.m6493a();
        }
    }

    public InlineVisibilityTracker(Context context, View view, View view2, int i, int i2) {
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view2);
        this.f59244d = view;
        this.f59243c = view2;
        this.f59245e = new C16783a(i, i2);
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mobileads.InlineVisibilityTracker.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                InlineVisibilityTracker.this.m6493a();
                return true;
            }
        };
        this.f59241a = onPreDrawListener;
        WeakReference<ViewTreeObserver> weakReference = new WeakReference<>(null);
        this.f59242b = weakReference;
        ViewTreeObserver viewTreeObserver = weakReference.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view2);
            if (topmostView == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.f59242b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(onPreDrawListener);
        }
    }

    /* renamed from: a */
    final void m6493a() {
        if (this.f59249i) {
            return;
        }
        this.f59249i = true;
        this.f59248h.postDelayed(this.f59247g, 100L);
    }

    public void destroy() {
        this.f59248h.removeMessages(0);
        this.f59249i = false;
        ViewTreeObserver viewTreeObserver = this.f59242b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f59241a);
        }
        this.f59242b.clear();
        this.f59246f = null;
    }

    public void setInlineVisibilityTrackerListener(InlineVisibilityTrackerListener inlineVisibilityTrackerListener) {
        this.f59246f = inlineVisibilityTrackerListener;
    }
}
