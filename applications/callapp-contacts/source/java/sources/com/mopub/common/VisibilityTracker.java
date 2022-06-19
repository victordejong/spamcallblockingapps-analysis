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
/* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker.class */
public class VisibilityTracker {

    /* renamed from: a */
    final ViewTreeObserver.OnPreDrawListener f58829a;

    /* renamed from: b */
    WeakReference<ViewTreeObserver> f58830b;

    /* renamed from: c */
    private final ArrayList<View> f58831c;

    /* renamed from: d */
    private long f58832d;

    /* renamed from: e */
    private final Map<View, C16712a> f58833e;

    /* renamed from: f */
    private final VisibilityChecker f58834f;

    /* renamed from: g */
    private VisibilityTrackerListener f58835g;

    /* renamed from: h */
    private final RunnableC16713b f58836h;

    /* renamed from: i */
    private final Handler f58837i;

    /* renamed from: j */
    private boolean f58838j;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a */
        private final Rect f58840a = new Rect();

        public boolean hasRequiredTimeElapsed(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public boolean isVisible(View view, View view2, int i, Integer num) {
            if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || !view2.getGlobalVisibleRect(this.f58840a)) {
                return false;
            }
            long height = this.f58840a.height() * this.f58840a.width();
            long height2 = view2.getHeight() * view2.getWidth();
            if (height2 <= 0) {
                return false;
            }
            return (num == null || num.intValue() <= 0) ? height * 100 >= ((long) i) * height2 : height >= ((long) num.intValue());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityTrackerListener.class */
    public interface VisibilityTrackerListener {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    /* renamed from: com.mopub.common.VisibilityTracker$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$a.class */
    public static final class C16712a {

        /* renamed from: a */
        int f58841a;

        /* renamed from: b */
        int f58842b;

        /* renamed from: c */
        long f58843c;

        /* renamed from: d */
        View f58844d;

        /* renamed from: e */
        Integer f58845e;

        C16712a() {
        }
    }

    /* renamed from: com.mopub.common.VisibilityTracker$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public final class RunnableC16713b implements Runnable {

        /* renamed from: c */
        private final ArrayList<View> f58848c = new ArrayList<>();

        /* renamed from: b */
        private final ArrayList<View> f58847b = new ArrayList<>();

        RunnableC16713b() {
            VisibilityTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public final void run() {
            VisibilityTracker.this.f58838j = false;
            for (Map.Entry entry : VisibilityTracker.this.f58833e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((C16712a) entry.getValue()).f58841a;
                int i2 = ((C16712a) entry.getValue()).f58842b;
                Integer num = ((C16712a) entry.getValue()).f58845e;
                View view2 = ((C16712a) entry.getValue()).f58844d;
                if (VisibilityTracker.this.f58834f.isVisible(view2, view, i, num)) {
                    this.f58847b.add(view);
                } else if (!VisibilityTracker.this.f58834f.isVisible(view2, view, i2, null)) {
                    this.f58848c.add(view);
                }
            }
            if (VisibilityTracker.this.f58835g != null) {
                VisibilityTracker.this.f58835g.onVisibilityChanged(this.f58847b, this.f58848c);
            }
            this.f58847b.clear();
            this.f58848c.clear();
        }
    }

    public VisibilityTracker(Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    VisibilityTracker(Context context, Map<View, C16712a> map, VisibilityChecker visibilityChecker, Handler handler) {
        this.f58832d = 0L;
        this.f58833e = map;
        this.f58834f = visibilityChecker;
        this.f58837i = handler;
        this.f58836h = new RunnableC16713b();
        this.f58831c = new ArrayList<>(50);
        this.f58829a = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.common.VisibilityTracker.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                VisibilityTracker.this.scheduleVisibilityCheck();
                return true;
            }
        };
        this.f58830b = new WeakReference<>(null);
        m6686a(context, null);
    }

    /* renamed from: a */
    private void m6686a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f58830b.get();
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
            this.f58830b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f58829a);
        }
    }

    public void addView(View view, int i, Integer num) {
        addView(view, view, i, num);
    }

    public void addView(View view, View view2, int i, int i2, Integer num) {
        m6686a(view2.getContext(), view2);
        C16712a c16712a = this.f58833e.get(view2);
        C16712a c16712a2 = c16712a;
        if (c16712a == null) {
            c16712a2 = new C16712a();
            this.f58833e.put(view2, c16712a2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        c16712a2.f58844d = view;
        c16712a2.f58841a = i;
        c16712a2.f58842b = min;
        c16712a2.f58843c = this.f58832d;
        c16712a2.f58845e = num;
        long j = this.f58832d + 1;
        this.f58832d = j;
        if (j % 50 == 0) {
            for (Map.Entry<View, C16712a> entry : this.f58833e.entrySet()) {
                if (entry.getValue().f58843c < j - 50) {
                    this.f58831c.add(entry.getKey());
                }
            }
            Iterator<View> it2 = this.f58831c.iterator();
            while (it2.hasNext()) {
                removeView(it2.next());
            }
            this.f58831c.clear();
        }
    }

    public void addView(View view, View view2, int i, Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.f58833e.clear();
        this.f58837i.removeMessages(0);
        this.f58838j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f58830b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f58829a);
        }
        this.f58830b.clear();
        this.f58835g = null;
    }

    public void removeView(View view) {
        this.f58833e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (this.f58838j) {
            return;
        }
        this.f58838j = true;
        this.f58837i.postDelayed(this.f58836h, 100L);
    }

    public void setVisibilityTrackerListener(VisibilityTrackerListener visibilityTrackerListener) {
        this.f58835g = visibilityTrackerListener;
    }
}
