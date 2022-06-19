package com.mopub.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker.class */
public class VisibilityTracker {

    /* renamed from: a */
    public final ArrayList<View> f4352a;

    /* renamed from: b */
    public long f4353b;
    @VisibleForTesting

    /* renamed from: c */
    public final ViewTreeObserver.OnPreDrawListener f4354c;
    @VisibleForTesting

    /* renamed from: d */
    public WeakReference<ViewTreeObserver> f4355d;

    /* renamed from: e */
    public final Map<View, C1039b> f4356e;

    /* renamed from: f */
    public final VisibilityChecker f4357f;

    /* renamed from: g */
    public VisibilityTrackerListener f4358g;

    /* renamed from: h */
    public final RunnableC1040c f4359h;

    /* renamed from: i */
    public final Handler f4360i;

    /* renamed from: j */
    public boolean f4361j;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a */
        public final Rect f4362a = new Rect();

        public boolean hasRequiredTimeElapsed(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public boolean isVisible(View view, View view2, int i, Integer num) {
            boolean z = false;
            if (view2 != null) {
                z = false;
                if (view2.getVisibility() == 0) {
                    if (view.getParent() == null) {
                        z = false;
                    } else if (!view2.getGlobalVisibleRect(this.f4362a)) {
                        return false;
                    } else {
                        long height = this.f4362a.height() * this.f4362a.width();
                        long height2 = view2.getHeight() * view2.getWidth();
                        if (height2 <= 0) {
                            return false;
                        }
                        if (num != null && num.intValue() > 0) {
                            boolean z2 = false;
                            if (height >= num.intValue()) {
                                z2 = true;
                            }
                            return z2;
                        }
                        z = false;
                        if (height * 100 >= i * height2) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityTrackerListener.class */
    public interface VisibilityTrackerListener {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    /* renamed from: com.mopub.common.VisibilityTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC1038a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC1038a() {
            VisibilityTracker.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            VisibilityTracker.this.scheduleVisibilityCheck();
            return true;
        }
    }

    /* renamed from: com.mopub.common.VisibilityTracker$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public static class C1039b {

        /* renamed from: a */
        public int f4364a;

        /* renamed from: b */
        public int f4365b;

        /* renamed from: c */
        public long f4366c;

        /* renamed from: d */
        public View f4367d;

        /* renamed from: e */
        public Integer f4368e;
    }

    /* renamed from: com.mopub.common.VisibilityTracker$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$c.class */
    public class RunnableC1040c implements Runnable {

        /* renamed from: b */
        public final ArrayList<View> f4370b = new ArrayList<>();

        /* renamed from: a */
        public final ArrayList<View> f4369a = new ArrayList<>();

        public RunnableC1040c() {
            VisibilityTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<View> arrayList;
            VisibilityTracker.this.f4361j = false;
            for (Map.Entry entry : VisibilityTracker.this.f4356e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((C1039b) entry.getValue()).f4364a;
                int i2 = ((C1039b) entry.getValue()).f4365b;
                Integer num = ((C1039b) entry.getValue()).f4368e;
                View view2 = ((C1039b) entry.getValue()).f4367d;
                if (VisibilityTracker.this.f4357f.isVisible(view2, view, i, num)) {
                    arrayList = this.f4369a;
                } else if (!VisibilityTracker.this.f4357f.isVisible(view2, view, i2, null)) {
                    arrayList = this.f4370b;
                }
                arrayList.add(view);
            }
            if (VisibilityTracker.this.f4358g != null) {
                VisibilityTracker.this.f4358g.onVisibilityChanged(this.f4369a, this.f4370b);
            }
            this.f4369a.clear();
            this.f4370b.clear();
        }
    }

    public VisibilityTracker(Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    @VisibleForTesting
    public VisibilityTracker(Context context, Map<View, C1039b> map, VisibilityChecker visibilityChecker, Handler handler) {
        this.f4353b = 0L;
        this.f4356e = map;
        this.f4357f = visibilityChecker;
        this.f4360i = handler;
        this.f4359h = new RunnableC1040c();
        this.f4352a = new ArrayList<>(50);
        this.f4354c = new ViewTreeObserver$OnPreDrawListenerC1038a();
        this.f4355d = new WeakReference<>(null);
        m3874e(context, null);
    }

    public void addView(View view, int i, Integer num) {
        addView(view, view, i, num);
    }

    public void addView(View view, View view2, int i, int i2, Integer num) {
        m3874e(view2.getContext(), view2);
        C1039b c1039b = this.f4356e.get(view2);
        C1039b c1039b2 = c1039b;
        if (c1039b == null) {
            c1039b2 = new C1039b();
            this.f4356e.put(view2, c1039b2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        c1039b2.f4367d = view;
        c1039b2.f4364a = i;
        c1039b2.f4365b = min;
        long j = this.f4353b;
        c1039b2.f4366c = j;
        c1039b2.f4368e = num;
        long j2 = j + 1;
        this.f4353b = j2;
        if (j2 % 50 == 0) {
            m3873f(j2 - 50);
        }
    }

    public void addView(View view, View view2, int i, Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.f4356e.clear();
        this.f4360i.removeMessages(0);
        this.f4361j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f4355d.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f4354c);
        }
        this.f4355d.clear();
        this.f4358g = null;
    }

    /* renamed from: e */
    public final void m3874e(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f4355d.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view);
            if (topmostView == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.f4355d = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f4354c);
        }
    }

    /* renamed from: f */
    public final void m3873f(long j) {
        for (Map.Entry<View, C1039b> entry : this.f4356e.entrySet()) {
            if (entry.getValue().f4366c < j) {
                this.f4352a.add(entry.getKey());
            }
        }
        Iterator<View> it = this.f4352a.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f4352a.clear();
    }

    public void removeView(View view) {
        this.f4356e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (this.f4361j) {
            return;
        }
        this.f4361j = true;
        this.f4360i.postDelayed(this.f4359h, 100L);
    }

    public void setVisibilityTrackerListener(VisibilityTrackerListener visibilityTrackerListener) {
        this.f4358g = visibilityTrackerListener;
    }
}
