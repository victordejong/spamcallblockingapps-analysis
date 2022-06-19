package com.mopub.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import e.n.a.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker.class */
public class VisibilityTracker {

    /* renamed from: e */
    public final Map<View, C2647a> f8603e;

    /* renamed from: f */
    public final VisibilityChecker f8604f;

    /* renamed from: g */
    public VisibilityTrackerListener f8605g;

    /* renamed from: i */
    public final Handler f8607i;

    /* renamed from: j */
    public boolean f8608j;

    /* renamed from: b */
    public long f8600b = 0;

    /* renamed from: h */
    public final RunnableC2648b f8606h = new RunnableC2648b();

    /* renamed from: a */
    public final ArrayList<View> f8599a = new ArrayList<>(50);
    @VisibleForTesting

    /* renamed from: c */
    public final ViewTreeObserver.OnPreDrawListener f8601c = new k(this);
    @VisibleForTesting

    /* renamed from: d */
    public WeakReference<ViewTreeObserver> f8602d = new WeakReference<>(null);

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a */
        public final Rect f8609a = new Rect();

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
                    } else if (!view2.getGlobalVisibleRect(this.f8609a)) {
                        return false;
                    } else {
                        long height = this.f8609a.height() * this.f8609a.width();
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
    public static class C2647a {

        /* renamed from: a */
        public int f8610a;

        /* renamed from: b */
        public int f8611b;

        /* renamed from: c */
        public long f8612c;

        /* renamed from: d */
        public View f8613d;

        /* renamed from: e */
        public Integer f8614e;
    }

    /* renamed from: com.mopub.common.VisibilityTracker$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public class RunnableC2648b implements Runnable {

        /* renamed from: b */
        public final ArrayList<View> f8616b = new ArrayList<>();

        /* renamed from: a */
        public final ArrayList<View> f8615a = new ArrayList<>();

        public RunnableC2648b() {
            VisibilityTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public void run() {
            VisibilityTracker visibilityTracker = VisibilityTracker.this;
            visibilityTracker.f8608j = false;
            for (Map.Entry<View, C2647a> entry : visibilityTracker.f8603e.entrySet()) {
                View key = entry.getKey();
                int i = entry.getValue().f8610a;
                int i2 = entry.getValue().f8611b;
                Integer num = entry.getValue().f8614e;
                View view = entry.getValue().f8613d;
                if (VisibilityTracker.this.f8604f.isVisible(view, key, i, num)) {
                    this.f8615a.add(key);
                } else if (!VisibilityTracker.this.f8604f.isVisible(view, key, i2, null)) {
                    this.f8616b.add(key);
                }
            }
            VisibilityTrackerListener visibilityTrackerListener = VisibilityTracker.this.f8605g;
            if (visibilityTrackerListener != null) {
                visibilityTrackerListener.onVisibilityChanged(this.f8615a, this.f8616b);
            }
            this.f8615a.clear();
            this.f8616b.clear();
        }
    }

    public VisibilityTracker(Context context) {
        WeakHashMap weakHashMap = new WeakHashMap(10);
        VisibilityChecker visibilityChecker = new VisibilityChecker();
        Handler handler = new Handler();
        this.f8603e = weakHashMap;
        this.f8604f = visibilityChecker;
        this.f8607i = handler;
        m36288a(context, null);
    }

    /* renamed from: a */
    public final void m36288a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f8602d.get();
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
            this.f8602d = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f8601c);
        }
    }

    public void addView(View view, int i, Integer num) {
        addView(view, view, i, num);
    }

    public void addView(View view, View view2, int i, int i2, Integer num) {
        m36288a(view2.getContext(), view2);
        C2647a c2647a = this.f8603e.get(view2);
        C2647a c2647a2 = c2647a;
        if (c2647a == null) {
            c2647a2 = new C2647a();
            this.f8603e.put(view2, c2647a2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        c2647a2.f8613d = view;
        c2647a2.f8610a = i;
        c2647a2.f8611b = min;
        long j = this.f8600b;
        c2647a2.f8612c = j;
        c2647a2.f8614e = num;
        long j2 = j + 1;
        this.f8600b = j2;
        if (j2 % 50 == 0) {
            for (Map.Entry<View, C2647a> entry : this.f8603e.entrySet()) {
                if (entry.getValue().f8612c < j2 - 50) {
                    this.f8599a.add(entry.getKey());
                }
            }
            Iterator<View> it = this.f8599a.iterator();
            while (it.hasNext()) {
                removeView(it.next());
            }
            this.f8599a.clear();
        }
    }

    public void addView(View view, View view2, int i, Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.f8603e.clear();
        this.f8607i.removeMessages(0);
        this.f8608j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f8602d.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f8601c);
        }
        this.f8602d.clear();
        this.f8605g = null;
    }

    public void removeView(View view) {
        this.f8603e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (this.f8608j) {
            return;
        }
        this.f8608j = true;
        this.f8607i.postDelayed(this.f8606h, 100L);
    }

    public void setVisibilityTrackerListener(VisibilityTrackerListener visibilityTrackerListener) {
        this.f8605g = visibilityTrackerListener;
    }
}
