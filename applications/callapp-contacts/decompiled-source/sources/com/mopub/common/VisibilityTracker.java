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

    /* renamed from: a  reason: collision with root package name */
    final ViewTreeObserver.OnPreDrawListener f33892a;

    /* renamed from: b  reason: collision with root package name */
    WeakReference<ViewTreeObserver> f33893b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<View> f33894c;

    /* renamed from: d  reason: collision with root package name */
    private long f33895d;
    private final Map<View, a> e;
    private final VisibilityChecker f;
    private VisibilityTrackerListener g;
    private final b h;
    private final Handler i;
    private boolean j;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f33897a = new Rect();

        public boolean hasRequiredTimeElapsed(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public boolean isVisible(View view, View view2, int i, Integer num) {
            if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || !view2.getGlobalVisibleRect(this.f33897a)) {
                return false;
            }
            long height = this.f33897a.height() * this.f33897a.width();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f33898a;

        /* renamed from: b  reason: collision with root package name */
        int f33899b;

        /* renamed from: c  reason: collision with root package name */
        long f33900c;

        /* renamed from: d  reason: collision with root package name */
        View f33901d;
        Integer e;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public final class b implements Runnable {

        /* renamed from: c  reason: collision with root package name */
        private final ArrayList<View> f33904c = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<View> f33903b = new ArrayList<>();

        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VisibilityTracker.this.j = false;
            for (Map.Entry entry : VisibilityTracker.this.e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((a) entry.getValue()).f33898a;
                int i2 = ((a) entry.getValue()).f33899b;
                Integer num = ((a) entry.getValue()).e;
                View view2 = ((a) entry.getValue()).f33901d;
                if (VisibilityTracker.this.f.isVisible(view2, view, i, num)) {
                    this.f33903b.add(view);
                } else if (!VisibilityTracker.this.f.isVisible(view2, view, i2, null)) {
                    this.f33904c.add(view);
                }
            }
            if (VisibilityTracker.this.g != null) {
                VisibilityTracker.this.g.onVisibilityChanged(this.f33903b, this.f33904c);
            }
            this.f33903b.clear();
            this.f33904c.clear();
        }
    }

    public VisibilityTracker(Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    VisibilityTracker(Context context, Map<View, a> map, VisibilityChecker visibilityChecker, Handler handler) {
        this.f33895d = 0L;
        this.e = map;
        this.f = visibilityChecker;
        this.i = handler;
        this.h = new b();
        this.f33894c = new ArrayList<>(50);
        this.f33892a = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.common.VisibilityTracker.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                VisibilityTracker.this.scheduleVisibilityCheck();
                return true;
            }
        };
        this.f33893b = new WeakReference<>(null);
        a(context, null);
    }

    private void a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f33893b.get();
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
            this.f33893b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f33892a);
        }
    }

    public void addView(View view, int i, Integer num) {
        addView(view, view, i, num);
    }

    public void addView(View view, View view2, int i, int i2, Integer num) {
        a(view2.getContext(), view2);
        a aVar = this.e.get(view2);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a();
            this.e.put(view2, aVar2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        aVar2.f33901d = view;
        aVar2.f33898a = i;
        aVar2.f33899b = min;
        aVar2.f33900c = this.f33895d;
        aVar2.e = num;
        long j = this.f33895d + 1;
        this.f33895d = j;
        if (j % 50 == 0) {
            for (Map.Entry<View, a> entry : this.e.entrySet()) {
                if (entry.getValue().f33900c < j - 50) {
                    this.f33894c.add(entry.getKey());
                }
            }
            Iterator<View> it2 = this.f33894c.iterator();
            while (it2.hasNext()) {
                removeView(it2.next());
            }
            this.f33894c.clear();
        }
    }

    public void addView(View view, View view2, int i, Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.e.clear();
        this.i.removeMessages(0);
        this.j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f33893b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f33892a);
        }
        this.f33893b.clear();
        this.g = null;
    }

    public void removeView(View view) {
        this.e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (!this.j) {
            this.j = true;
            this.i.postDelayed(this.h, 100L);
        }
    }

    public void setVisibilityTrackerListener(VisibilityTrackerListener visibilityTrackerListener) {
        this.g = visibilityTrackerListener;
    }
}
