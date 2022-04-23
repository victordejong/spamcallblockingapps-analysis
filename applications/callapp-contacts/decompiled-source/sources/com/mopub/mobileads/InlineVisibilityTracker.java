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

    /* renamed from: a  reason: collision with root package name */
    final ViewTreeObserver.OnPreDrawListener f34087a;

    /* renamed from: b  reason: collision with root package name */
    WeakReference<ViewTreeObserver> f34088b;

    /* renamed from: c  reason: collision with root package name */
    private final View f34089c;

    /* renamed from: d  reason: collision with root package name */
    private final View f34090d;
    private final a e;
    private InlineVisibilityTrackerListener f;
    private boolean i;
    private boolean j;
    private final Handler h = new Handler();
    private final b g = new b();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener.class */
    public interface InlineVisibilityTrackerListener {
        void onVisibilityChanged();
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f34092a;

        /* renamed from: b  reason: collision with root package name */
        int f34093b;

        /* renamed from: c  reason: collision with root package name */
        long f34094c = Long.MIN_VALUE;

        /* renamed from: d  reason: collision with root package name */
        final Rect f34095d = new Rect();

        a(int i, int i2) {
            this.f34092a = i;
            this.f34093b = i2;
        }

        final boolean a() {
            return this.f34094c != Long.MIN_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineVisibilityTracker$b.class */
    public final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!InlineVisibilityTracker.this.j) {
                InlineVisibilityTracker.this.i = false;
                a aVar = InlineVisibilityTracker.this.e;
                View view = InlineVisibilityTracker.this.f34090d;
                View view2 = InlineVisibilityTracker.this.f34089c;
                boolean z = true;
                if (view2 != null && view2.getVisibility() == 0 && view.getParent() != null && view2.getWidth() > 0 && view2.getHeight() > 0 && view2.getGlobalVisibleRect(aVar.f34095d) && ((long) (Dips.pixelsToIntDips((float) aVar.f34095d.width(), view2.getContext()) * Dips.pixelsToIntDips((float) aVar.f34095d.height(), view2.getContext()))) >= ((long) aVar.f34092a)) {
                    if (!InlineVisibilityTracker.this.e.a()) {
                        InlineVisibilityTracker.this.e.f34094c = SystemClock.uptimeMillis();
                    }
                    a aVar2 = InlineVisibilityTracker.this.e;
                    if (!aVar2.a() || SystemClock.uptimeMillis() - aVar2.f34094c < aVar2.f34093b) {
                        z = false;
                    }
                    if (z && InlineVisibilityTracker.this.f != null) {
                        InlineVisibilityTracker.this.f.onVisibilityChanged();
                        InlineVisibilityTracker.this.j = true;
                    }
                }
                if (!InlineVisibilityTracker.this.j) {
                    InlineVisibilityTracker.this.a();
                }
            }
        }
    }

    public InlineVisibilityTracker(Context context, View view, View view2, int i, int i2) {
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(view2);
        this.f34090d = view;
        this.f34089c = view2;
        this.e = new a(i, i2);
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mobileads.InlineVisibilityTracker.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                InlineVisibilityTracker.this.a();
                return true;
            }
        };
        this.f34087a = onPreDrawListener;
        WeakReference<ViewTreeObserver> weakReference = new WeakReference<>(null);
        this.f34088b = weakReference;
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
            this.f34088b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(onPreDrawListener);
        }
    }

    final void a() {
        if (!this.i) {
            this.i = true;
            this.h.postDelayed(this.g, 100L);
        }
    }

    public void destroy() {
        this.h.removeMessages(0);
        this.i = false;
        ViewTreeObserver viewTreeObserver = this.f34088b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f34087a);
        }
        this.f34088b.clear();
        this.f = null;
    }

    public void setInlineVisibilityTrackerListener(InlineVisibilityTrackerListener inlineVisibilityTrackerListener) {
        this.f = inlineVisibilityTrackerListener;
    }
}
