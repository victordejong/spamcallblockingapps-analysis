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
import p131c.p421j.p426d.C6687l;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker.class */
public class ImpressionTracker {

    /* renamed from: a */
    public final VisibilityTracker f34644a;

    /* renamed from: b */
    public final Map<View, ImpressionInterface> f34645b;

    /* renamed from: c */
    public final Map<View, C6687l<ImpressionInterface>> f34646c;

    /* renamed from: d */
    public final Handler f34647d;

    /* renamed from: e */
    public final RunnableC8921b f34648e;

    /* renamed from: f */
    public final VisibilityTracker.VisibilityChecker f34649f;

    /* renamed from: g */
    public VisibilityTracker.VisibilityTrackerListener f34650g;

    /* renamed from: com.mopub.nativeads.ImpressionTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public class C8920a implements VisibilityTracker.VisibilityTrackerListener {
        public C8920a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            for (View view : list) {
                ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.f34645b.get(view);
                if (impressionInterface == null) {
                    ImpressionTracker.this.removeView(view);
                } else {
                    C6687l lVar = (C6687l) ImpressionTracker.this.f34646c.get(view);
                    if (lVar == null || !impressionInterface.equals(lVar.f20649a)) {
                        ImpressionTracker.this.f34646c.put(view, new C6687l(impressionInterface));
                    }
                }
            }
            for (View view2 : list2) {
                ImpressionTracker.this.f34646c.remove(view2);
            }
            ImpressionTracker.this.m4023a();
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.ImpressionTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$b.class */
    public class RunnableC8921b implements Runnable {

        /* renamed from: a */
        public final ArrayList<View> f34652a = new ArrayList<>();

        public RunnableC8921b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry entry : ImpressionTracker.this.f34646c.entrySet()) {
                View view = (View) entry.getKey();
                C6687l lVar = (C6687l) entry.getValue();
                if (ImpressionTracker.this.f34649f.hasRequiredTimeElapsed(lVar.f20650b, ((ImpressionInterface) lVar.f20649a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) lVar.f20649a).recordImpression(view);
                    ((ImpressionInterface) lVar.f20649a).setImpressionRecorded();
                    this.f34652a.add(view);
                }
            }
            Iterator<View> it = this.f34652a.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.f34652a.clear();
            if (!ImpressionTracker.this.f34646c.isEmpty()) {
                ImpressionTracker.this.m4023a();
            }
        }
    }

    public ImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    public ImpressionTracker(Map<View, ImpressionInterface> map, Map<View, C6687l<ImpressionInterface>> map2, VisibilityTracker.VisibilityChecker visibilityChecker, VisibilityTracker visibilityTracker, Handler handler) {
        this.f34645b = map;
        this.f34646c = map2;
        this.f34649f = visibilityChecker;
        this.f34644a = visibilityTracker;
        C8920a aVar = new C8920a();
        this.f34650g = aVar;
        this.f34644a.setVisibilityTrackerListener(aVar);
        this.f34647d = handler;
        this.f34648e = new RunnableC8921b();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4023a() {
        if (!this.f34647d.hasMessages(0)) {
            this.f34647d.postDelayed(this.f34648e, 250L);
        }
    }

    /* renamed from: a */
    public final void m4022a(View view) {
        this.f34646c.remove(view);
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.f34645b.get(view) != impressionInterface) {
            removeView(view);
            if (!impressionInterface.isImpressionRecorded()) {
                this.f34645b.put(view, impressionInterface);
                this.f34644a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
            }
        }
    }

    public void clear() {
        this.f34645b.clear();
        this.f34646c.clear();
        this.f34644a.clear();
        this.f34647d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f34644a.destroy();
        this.f34650g = null;
    }

    public void removeView(View view) {
        this.f34645b.remove(view);
        m4022a(view);
        this.f34644a.removeView(view);
    }
}
