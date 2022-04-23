package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import p081h.p430l.p435d.C10744k;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker.class */
public class ImpressionTracker {
    @NonNull

    /* renamed from: a */
    public final VisibilityTracker f9102a;
    @NonNull

    /* renamed from: b */
    public final Map<View, ImpressionInterface> f9103b;
    @NonNull

    /* renamed from: c */
    public final Map<View, C10744k<ImpressionInterface>> f9104c;
    @NonNull

    /* renamed from: d */
    public final Handler f9105d;
    @NonNull

    /* renamed from: e */
    public final RunnableC3958b f9106e;
    @NonNull

    /* renamed from: f */
    public final VisibilityTracker.VisibilityChecker f9107f;
    @Nullable

    /* renamed from: g */
    public VisibilityTracker.VisibilityTrackerListener f9108g;

    /* renamed from: com.mopub.nativeads.ImpressionTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$a.class */
    public class C3957a implements VisibilityTracker.VisibilityTrackerListener {
        public C3957a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(@NonNull List<View> list, @NonNull List<View> list2) {
            for (View view : list) {
                ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.f9103b.get(view);
                if (impressionInterface == null) {
                    ImpressionTracker.this.removeView(view);
                } else {
                    C10744k kVar = (C10744k) ImpressionTracker.this.f9104c.get(view);
                    if (kVar == null || !impressionInterface.equals(kVar.f24505a)) {
                        ImpressionTracker.this.f9104c.put(view, new C10744k(impressionInterface));
                    }
                }
            }
            for (View view2 : list2) {
                ImpressionTracker.this.f9104c.remove(view2);
            }
            ImpressionTracker.this.m30162a();
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.ImpressionTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionTracker$b.class */
    public class RunnableC3958b implements Runnable {
        @NonNull

        /* renamed from: a */
        public final ArrayList<View> f9110a = new ArrayList<>();

        public RunnableC3958b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry entry : ImpressionTracker.this.f9104c.entrySet()) {
                View view = (View) entry.getKey();
                C10744k kVar = (C10744k) entry.getValue();
                if (ImpressionTracker.this.f9107f.hasRequiredTimeElapsed(kVar.f24506b, ((ImpressionInterface) kVar.f24505a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) kVar.f24505a).recordImpression(view);
                    ((ImpressionInterface) kVar.f24505a).setImpressionRecorded();
                    this.f9110a.add(view);
                }
            }
            Iterator<View> it = this.f9110a.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.f9110a.clear();
            if (!ImpressionTracker.this.f9104c.isEmpty()) {
                ImpressionTracker.this.m30162a();
            }
        }
    }

    public ImpressionTracker(@NonNull Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    public ImpressionTracker(@NonNull Map<View, ImpressionInterface> map, @NonNull Map<View, C10744k<ImpressionInterface>> map2, @NonNull VisibilityTracker.VisibilityChecker visibilityChecker, @NonNull VisibilityTracker visibilityTracker, @NonNull Handler handler) {
        this.f9103b = map;
        this.f9104c = map2;
        this.f9107f = visibilityChecker;
        this.f9102a = visibilityTracker;
        this.f9108g = new C3957a();
        this.f9102a.setVisibilityTrackerListener(this.f9108g);
        this.f9105d = handler;
        this.f9106e = new RunnableC3958b();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30162a() {
        if (!this.f9105d.hasMessages(0)) {
            this.f9105d.postDelayed(this.f9106e, 250L);
        }
    }

    /* renamed from: a */
    public final void m30161a(View view) {
        this.f9104c.remove(view);
    }

    public void addView(View view, @NonNull ImpressionInterface impressionInterface) {
        if (this.f9103b.get(view) != impressionInterface) {
            removeView(view);
            if (!impressionInterface.isImpressionRecorded()) {
                this.f9103b.put(view, impressionInterface);
                this.f9102a.addView(view, impressionInterface.getImpressionMinPercentageViewed(), impressionInterface.getImpressionMinVisiblePx());
            }
        }
    }

    public void clear() {
        this.f9103b.clear();
        this.f9104c.clear();
        this.f9102a.clear();
        this.f9105d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f9102a.destroy();
        this.f9108g = null;
    }

    public void removeView(View view) {
        this.f9103b.remove(view);
        m30161a(view);
        this.f9102a.removeView(view);
    }
}
