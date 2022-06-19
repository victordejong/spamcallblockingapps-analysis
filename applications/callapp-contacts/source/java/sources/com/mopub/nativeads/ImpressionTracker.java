package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mopub.common.VisibilityTracker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ImpressionTracker.class */
public class ImpressionTracker {

    /* renamed from: a */
    private final VisibilityTracker f59953a;

    /* renamed from: b */
    private final Map<View, ImpressionInterface> f59954b;

    /* renamed from: c */
    private final Map<View, C16989k<ImpressionInterface>> f59955c;

    /* renamed from: d */
    private final Handler f59956d;

    /* renamed from: e */
    private final RunnableC16932a f59957e;

    /* renamed from: f */
    private final VisibilityTracker.VisibilityChecker f59958f;

    /* renamed from: g */
    private VisibilityTracker.VisibilityTrackerListener f59959g;

    /* renamed from: com.mopub.nativeads.ImpressionTracker$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public final class RunnableC16932a implements Runnable {

        /* renamed from: b */
        private final ArrayList<View> f59962b = new ArrayList<>();

        RunnableC16932a() {
            ImpressionTracker.this = r5;
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (Map.Entry entry : ImpressionTracker.this.f59955c.entrySet()) {
                View view = (View) entry.getKey();
                C16989k c16989k = (C16989k) entry.getValue();
                if (ImpressionTracker.this.f59958f.hasRequiredTimeElapsed(c16989k.f60202b, ((ImpressionInterface) c16989k.f60201a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) c16989k.f60201a).recordImpression(view);
                    ((ImpressionInterface) c16989k.f60201a).setImpressionRecorded();
                    this.f59962b.add(view);
                }
            }
            Iterator<View> it2 = this.f59962b.iterator();
            while (it2.hasNext()) {
                ImpressionTracker.this.removeView(it2.next());
            }
            this.f59962b.clear();
            if (!ImpressionTracker.this.f59955c.isEmpty()) {
                ImpressionTracker.this.m6195a();
            }
        }
    }

    public ImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler(Looper.getMainLooper()));
    }

    ImpressionTracker(Map<View, ImpressionInterface> map, Map<View, C16989k<ImpressionInterface>> map2, VisibilityTracker.VisibilityChecker visibilityChecker, VisibilityTracker visibilityTracker, Handler handler) {
        this.f59954b = map;
        this.f59955c = map2;
        this.f59958f = visibilityChecker;
        this.f59953a = visibilityTracker;
        VisibilityTracker.VisibilityTrackerListener visibilityTrackerListener = new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.ImpressionTracker.1
            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public final void onVisibilityChanged(List<View> list, List<View> list2) {
                for (View view : list) {
                    ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.f59954b.get(view);
                    if (impressionInterface == null) {
                        ImpressionTracker.this.removeView(view);
                    } else {
                        C16989k c16989k = (C16989k) ImpressionTracker.this.f59955c.get(view);
                        if (c16989k == null || !impressionInterface.equals(c16989k.f60201a)) {
                            ImpressionTracker.this.f59955c.put(view, new C16989k(impressionInterface));
                        }
                    }
                }
                for (View view2 : list2) {
                    ImpressionTracker.this.f59955c.remove(view2);
                }
                ImpressionTracker.this.m6195a();
            }
        };
        this.f59959g = visibilityTrackerListener;
        visibilityTracker.setVisibilityTrackerListener(visibilityTrackerListener);
        this.f59956d = handler;
        this.f59957e = new RunnableC16932a();
    }

    /* renamed from: a */
    final void m6195a() {
        if (this.f59956d.hasMessages(0)) {
            return;
        }
        this.f59956d.postDelayed(this.f59957e, 250L);
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.f59954b.get(view) == impressionInterface) {
            return;
        }
        removeView(view);
        if (impressionInterface.isImpressionRecorded()) {
            return;
        }
        this.f59954b.put(view, impressionInterface);
        this.f59953a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
    }

    public void clear() {
        this.f59954b.clear();
        this.f59955c.clear();
        this.f59953a.clear();
        this.f59956d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f59953a.destroy();
        this.f59959g = null;
    }

    public void removeView(View view) {
        this.f59954b.remove(view);
        this.f59955c.remove(view);
        this.f59953a.removeView(view);
    }
}
