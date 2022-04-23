package com.mopub.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker.class */
public class VisibilityTracker {
    @NonNull

    /* renamed from: a */
    public final ArrayList<View> f8168a;

    /* renamed from: b */
    public long f8169b;
    @NonNull
    @VisibleForTesting

    /* renamed from: c */
    public final ViewTreeObserver.OnPreDrawListener f8170c;
    @NonNull
    @VisibleForTesting

    /* renamed from: d */
    public WeakReference<ViewTreeObserver> f8171d;
    @NonNull

    /* renamed from: e */
    public final Map<View, C3786b> f8172e;
    @NonNull

    /* renamed from: f */
    public final VisibilityChecker f8173f;
    @Nullable

    /* renamed from: g */
    public VisibilityTrackerListener f8174g;
    @NonNull

    /* renamed from: h */
    public final RunnableC3787c f8175h;
    @NonNull

    /* renamed from: i */
    public final Handler f8176i;

    /* renamed from: j */
    public boolean f8177j;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a */
        public final Rect f8178a = new Rect();

        public boolean hasRequiredTimeElapsed(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public boolean isVisible(@Nullable View view, @Nullable View view2, int i, @Nullable Integer num) {
            if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || !view2.getGlobalVisibleRect(this.f8178a)) {
                return false;
            }
            long height = this.f8178a.height() * this.f8178a.width();
            long height2 = view2.getHeight() * view2.getWidth();
            if (height2 <= 0) {
                return false;
            }
            boolean z = true;
            boolean z2 = true;
            if (num == null || num.intValue() <= 0) {
                if (height * 100 < i * height2) {
                    z = false;
                }
                return z;
            }
            if (height < num.intValue()) {
                z2 = false;
            }
            return z2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityTrackerListener.class */
    public interface VisibilityTrackerListener {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    /* renamed from: com.mopub.common.VisibilityTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC3785a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC3785a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            VisibilityTracker.this.scheduleVisibilityCheck();
            return true;
        }
    }

    /* renamed from: com.mopub.common.VisibilityTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public static class C3786b {

        /* renamed from: a */
        public int f8180a;

        /* renamed from: b */
        public int f8181b;

        /* renamed from: c */
        public long f8182c;

        /* renamed from: d */
        public View f8183d;
        @Nullable

        /* renamed from: e */
        public Integer f8184e;
    }

    /* renamed from: com.mopub.common.VisibilityTracker$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$c.class */
    public class RunnableC3787c implements Runnable {
        @NonNull

        /* renamed from: b */
        public final ArrayList<View> f8186b = new ArrayList<>();
        @NonNull

        /* renamed from: a */
        public final ArrayList<View> f8185a = new ArrayList<>();

        public RunnableC3787c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VisibilityTracker.this.f8177j = false;
            for (Map.Entry entry : VisibilityTracker.this.f8172e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((C3786b) entry.getValue()).f8180a;
                int i2 = ((C3786b) entry.getValue()).f8181b;
                Integer num = ((C3786b) entry.getValue()).f8184e;
                View view2 = ((C3786b) entry.getValue()).f8183d;
                if (VisibilityTracker.this.f8173f.isVisible(view2, view, i, num)) {
                    this.f8185a.add(view);
                } else if (!VisibilityTracker.this.f8173f.isVisible(view2, view, i2, null)) {
                    this.f8186b.add(view);
                }
            }
            if (VisibilityTracker.this.f8174g != null) {
                VisibilityTracker.this.f8174g.onVisibilityChanged(this.f8185a, this.f8186b);
            }
            this.f8185a.clear();
            this.f8186b.clear();
        }
    }

    public VisibilityTracker(@NonNull Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    @VisibleForTesting
    public VisibilityTracker(@NonNull Context context, @NonNull Map<View, C3786b> map, @NonNull VisibilityChecker visibilityChecker, @NonNull Handler handler) {
        this.f8169b = 0L;
        this.f8172e = map;
        this.f8173f = visibilityChecker;
        this.f8176i = handler;
        this.f8175h = new RunnableC3787c();
        this.f8168a = new ArrayList<>(50);
        this.f8170c = new ViewTreeObserver$OnPreDrawListenerC3785a();
        this.f8171d = new WeakReference<>(null);
        m30745a(context, (View) null);
    }

    /* renamed from: a */
    public final void m30746a(long j) {
        for (Map.Entry<View, C3786b> entry : this.f8172e.entrySet()) {
            if (entry.getValue().f8182c < j) {
                this.f8168a.add(entry.getKey());
            }
        }
        Iterator<View> it = this.f8168a.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f8168a.clear();
    }

    /* renamed from: a */
    public final void m30745a(@Nullable Context context, @Nullable View view) {
        ViewTreeObserver viewTreeObserver = this.f8171d.get();
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
            this.f8171d = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f8170c);
        }
    }

    public void addView(@NonNull View view, int i, @Nullable Integer num) {
        addView(view, view, i, num);
    }

    public void addView(@NonNull View view, @NonNull View view2, int i, int i2, @Nullable Integer num) {
        m30745a(view2.getContext(), view2);
        C3786b bVar = this.f8172e.get(view2);
        C3786b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = new C3786b();
            this.f8172e.put(view2, bVar2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        bVar2.f8183d = view;
        bVar2.f8180a = i;
        bVar2.f8181b = min;
        long j = this.f8169b;
        bVar2.f8182c = j;
        bVar2.f8184e = num;
        this.f8169b = j + 1;
        long j2 = this.f8169b;
        if (j2 % 50 == 0) {
            m30746a(j2 - 50);
        }
    }

    public void addView(@NonNull View view, @NonNull View view2, int i, @Nullable Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.f8172e.clear();
        this.f8176i.removeMessages(0);
        this.f8177j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f8171d.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f8170c);
        }
        this.f8171d.clear();
        this.f8174g = null;
    }

    public void removeView(@NonNull View view) {
        this.f8172e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (!this.f8177j) {
            this.f8177j = true;
            this.f8176i.postDelayed(this.f8175h, 100L);
        }
    }

    public void setVisibilityTrackerListener(@Nullable VisibilityTrackerListener visibilityTrackerListener) {
        this.f8174g = visibilityTrackerListener;
    }
}
