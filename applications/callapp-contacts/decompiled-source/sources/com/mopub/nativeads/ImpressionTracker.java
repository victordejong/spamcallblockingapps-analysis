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

    /* renamed from: a  reason: collision with root package name */
    private final VisibilityTracker f34543a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<View, ImpressionInterface> f34544b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<View, k<ImpressionInterface>> f34545c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f34546d;
    private final a e;
    private final VisibilityTracker.VisibilityChecker f;
    private VisibilityTracker.VisibilityTrackerListener g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<View> f34549b = new ArrayList<>();

        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (Map.Entry entry : ImpressionTracker.this.f34545c.entrySet()) {
                View view = (View) entry.getKey();
                k kVar = (k) entry.getValue();
                if (ImpressionTracker.this.f.hasRequiredTimeElapsed(kVar.f34701b, ((ImpressionInterface) kVar.f34700a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) kVar.f34700a).recordImpression(view);
                    ((ImpressionInterface) kVar.f34700a).setImpressionRecorded();
                    this.f34549b.add(view);
                }
            }
            Iterator<View> it2 = this.f34549b.iterator();
            while (it2.hasNext()) {
                ImpressionTracker.this.removeView(it2.next());
            }
            this.f34549b.clear();
            if (!ImpressionTracker.this.f34545c.isEmpty()) {
                ImpressionTracker.this.a();
            }
        }
    }

    public ImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler(Looper.getMainLooper()));
    }

    ImpressionTracker(Map<View, ImpressionInterface> map, Map<View, k<ImpressionInterface>> map2, VisibilityTracker.VisibilityChecker visibilityChecker, VisibilityTracker visibilityTracker, Handler handler) {
        this.f34544b = map;
        this.f34545c = map2;
        this.f = visibilityChecker;
        this.f34543a = visibilityTracker;
        VisibilityTracker.VisibilityTrackerListener visibilityTrackerListener = new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.ImpressionTracker.1
            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public final void onVisibilityChanged(List<View> list, List<View> list2) {
                for (View view : list) {
                    ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.f34544b.get(view);
                    if (impressionInterface == null) {
                        ImpressionTracker.this.removeView(view);
                    } else {
                        k kVar = (k) ImpressionTracker.this.f34545c.get(view);
                        if (kVar == null || !impressionInterface.equals(kVar.f34700a)) {
                            ImpressionTracker.this.f34545c.put(view, new k(impressionInterface));
                        }
                    }
                }
                for (View view2 : list2) {
                    ImpressionTracker.this.f34545c.remove(view2);
                }
                ImpressionTracker.this.a();
            }
        };
        this.g = visibilityTrackerListener;
        visibilityTracker.setVisibilityTrackerListener(visibilityTrackerListener);
        this.f34546d = handler;
        this.e = new a();
    }

    final void a() {
        if (!this.f34546d.hasMessages(0)) {
            this.f34546d.postDelayed(this.e, 250L);
        }
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.f34544b.get(view) != impressionInterface) {
            removeView(view);
            if (!impressionInterface.isImpressionRecorded()) {
                this.f34544b.put(view, impressionInterface);
                this.f34543a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
            }
        }
    }

    public void clear() {
        this.f34544b.clear();
        this.f34545c.clear();
        this.f34543a.clear();
        this.f34546d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f34543a.destroy();
        this.g = null;
    }

    public void removeView(View view) {
        this.f34544b.remove(view);
        this.f34545c.remove(view);
        this.f34543a.removeView(view);
    }
}
