package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import e.n.d.d;
import e.n.d.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ImpressionTracker.class */
public class ImpressionTracker {

    /* renamed from: a */
    public final VisibilityTracker f9039a;

    /* renamed from: b */
    public final Map<View, ImpressionInterface> f9040b;

    /* renamed from: c */
    public final Map<View, q<ImpressionInterface>> f9041c;

    /* renamed from: d */
    public final Handler f9042d;

    /* renamed from: e */
    public final RunnableC2703a f9043e = new RunnableC2703a();

    /* renamed from: f */
    public final VisibilityTracker.VisibilityChecker f9044f;

    /* renamed from: g */
    public VisibilityTracker.VisibilityTrackerListener f9045g;

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.ImpressionTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public class RunnableC2703a implements Runnable {

        /* renamed from: a */
        public final ArrayList<View> f9046a = new ArrayList<>();

        public RunnableC2703a() {
            ImpressionTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry<View, q<ImpressionInterface>> entry : ImpressionTracker.this.f9041c.entrySet()) {
                View key = entry.getKey();
                q<ImpressionInterface> value = entry.getValue();
                if (ImpressionTracker.this.f9044f.hasRequiredTimeElapsed(value.b, ((ImpressionInterface) value.a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) value.a).recordImpression(key);
                    ((ImpressionInterface) value.a).setImpressionRecorded();
                    this.f9046a.add(key);
                }
            }
            Iterator<View> it = this.f9046a.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.f9046a.clear();
            if (!ImpressionTracker.this.f9041c.isEmpty()) {
                ImpressionTracker.this.m36188a();
            }
        }
    }

    public ImpressionTracker(Context context) {
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        VisibilityTracker.VisibilityChecker visibilityChecker = new VisibilityTracker.VisibilityChecker();
        VisibilityTracker visibilityTracker = new VisibilityTracker(context);
        Handler handler = new Handler(Looper.getMainLooper());
        this.f9040b = weakHashMap;
        this.f9041c = weakHashMap2;
        this.f9044f = visibilityChecker;
        this.f9039a = visibilityTracker;
        d dVar = new d(this);
        this.f9045g = dVar;
        visibilityTracker.setVisibilityTrackerListener(dVar);
        this.f9042d = handler;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m36188a() {
        if (this.f9042d.hasMessages(0)) {
            return;
        }
        this.f9042d.postDelayed(this.f9043e, 250L);
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.f9040b.get(view) == impressionInterface) {
            return;
        }
        removeView(view);
        if (impressionInterface.isImpressionRecorded()) {
            return;
        }
        this.f9040b.put(view, impressionInterface);
        this.f9039a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
    }

    public void clear() {
        this.f9040b.clear();
        this.f9041c.clear();
        this.f9039a.clear();
        this.f9042d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f9039a.destroy();
        this.f9045g = null;
    }

    public void removeView(View view) {
        this.f9040b.remove(view);
        this.f9041c.remove(view);
        this.f9039a.removeView(view);
    }
}
