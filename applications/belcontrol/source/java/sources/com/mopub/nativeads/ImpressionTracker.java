package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ImpressionTracker.class */
public class ImpressionTracker {

    /* renamed from: a */
    public final VisibilityTracker f5136a;

    /* renamed from: b */
    public final Map<View, ImpressionInterface> f5137b;

    /* renamed from: c */
    public final Map<View, ei1<ImpressionInterface>> f5138c;

    /* renamed from: d */
    public final Handler f5139d;

    /* renamed from: e */
    public final RunnableC1178b f5140e;

    /* renamed from: f */
    public final VisibilityTracker.VisibilityChecker f5141f;

    /* renamed from: g */
    public VisibilityTracker.VisibilityTrackerListener f5142g;

    /* renamed from: com.mopub.nativeads.ImpressionTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public class C1177a implements VisibilityTracker.VisibilityTrackerListener {
        public C1177a() {
            ImpressionTracker.this = r4;
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            for (View view : list) {
                ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.f5137b.get(view);
                if (impressionInterface == null) {
                    ImpressionTracker.this.removeView(view);
                } else {
                    ei1 ei1Var = (ei1) ImpressionTracker.this.f5138c.get(view);
                    if (ei1Var == null || !impressionInterface.equals(ei1Var.f6352a)) {
                        ImpressionTracker.this.f5138c.put(view, new ei1(impressionInterface));
                    }
                }
            }
            for (View view2 : list2) {
                ImpressionTracker.this.f5138c.remove(view2);
            }
            ImpressionTracker.this.m3349e();
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.ImpressionTracker$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$b.class */
    public class RunnableC1178b implements Runnable {

        /* renamed from: a */
        public final ArrayList<View> f5144a = new ArrayList<>();

        public RunnableC1178b() {
            ImpressionTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry entry : ImpressionTracker.this.f5138c.entrySet()) {
                View view = (View) entry.getKey();
                ei1 ei1Var = (ei1) entry.getValue();
                if (ImpressionTracker.this.f5141f.hasRequiredTimeElapsed(ei1Var.f6353b, ((ImpressionInterface) ei1Var.f6352a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) ei1Var.f6352a).recordImpression(view);
                    ((ImpressionInterface) ei1Var.f6352a).setImpressionRecorded();
                    this.f5144a.add(view);
                }
            }
            Iterator<View> it = this.f5144a.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.f5144a.clear();
            if (!ImpressionTracker.this.f5138c.isEmpty()) {
                ImpressionTracker.this.m3349e();
            }
        }
    }

    public ImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    public ImpressionTracker(Map<View, ImpressionInterface> map, Map<View, ei1<ImpressionInterface>> map2, VisibilityTracker.VisibilityChecker visibilityChecker, VisibilityTracker visibilityTracker, Handler handler) {
        this.f5137b = map;
        this.f5138c = map2;
        this.f5141f = visibilityChecker;
        this.f5136a = visibilityTracker;
        C1177a c1177a = new C1177a();
        this.f5142g = c1177a;
        visibilityTracker.setVisibilityTrackerListener(c1177a);
        this.f5139d = handler;
        this.f5140e = new RunnableC1178b();
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.f5137b.get(view) == impressionInterface) {
            return;
        }
        removeView(view);
        if (impressionInterface.isImpressionRecorded()) {
            return;
        }
        this.f5137b.put(view, impressionInterface);
        this.f5136a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
    }

    public void clear() {
        this.f5137b.clear();
        this.f5138c.clear();
        this.f5136a.clear();
        this.f5139d.removeMessages(0);
    }

    /* renamed from: d */
    public final void m3350d(View view) {
        this.f5138c.remove(view);
    }

    public void destroy() {
        clear();
        this.f5136a.destroy();
        this.f5142g = null;
    }

    @VisibleForTesting
    /* renamed from: e */
    public void m3349e() {
        if (this.f5139d.hasMessages(0)) {
            return;
        }
        this.f5139d.postDelayed(this.f5140e, 250L);
    }

    public void removeView(View view) {
        this.f5137b.remove(view);
        m3350d(view);
        this.f5136a.removeView(view);
    }
}
