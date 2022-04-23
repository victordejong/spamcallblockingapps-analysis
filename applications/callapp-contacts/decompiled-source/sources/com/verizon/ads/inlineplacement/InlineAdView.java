package com.verizon.ads.inlineplacement;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.AdSession;
import com.verizon.ads.Configuration;
import com.verizon.ads.CreativeInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.events.Events;
import com.verizon.ads.inlineplacement.InlineAdAdapter;
import com.verizon.ads.support.ClickEvent;
import com.verizon.ads.support.ImpressionEvent;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.VASPlacement;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.support.utils.ViewabilityWatcher;
import com.verizon.ads.utils.ThreadUtils;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdView.class */
public class InlineAdView extends FrameLayout implements VASPlacement {

    /* renamed from: c  reason: collision with root package name */
    final List<AdSize> f35421c;

    /* renamed from: d  reason: collision with root package name */
    InlineAdViewRefresher f35422d;
    InlineAdListener e;
    Integer f;
    AdSession g;
    String h;
    Runnable i;
    boolean j;
    boolean k;
    InlineAdAdapter.InlineAdAdapterListener l = new InlineAdAdapter.InlineAdAdapterListener() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1
        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onAdLeftApplication() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad left application for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.5
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onAdLeftApplication(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onClicked() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad clicked for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    InlineAdView inlineAdView = InlineAdView.this;
                    if (!inlineAdView.d()) {
                        InlineAdView.f35419a.d("Attempt to record a click event off main thread and/or ad has been destroyed.");
                    } else if (!inlineAdView.k) {
                        inlineAdView.k = true;
                        inlineAdView.b();
                        Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(inlineAdView.g));
                    }
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onClicked(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onCollapsed() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad collapsed for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onCollapsed(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onError(final ErrorInfo errorInfo) {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad error for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.6
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onError(InlineAdView.this, errorInfo);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onExpanded() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad expanded for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onExpanded(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onResized() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f35419a.d(String.format("Ad resized for placement Id '%s'", InlineAdView.this.h));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.e != null) {
                        InlineAdView.this.e.onResized(InlineAdView.this);
                    }
                }
            });
        }
    };
    private AdSize n;
    private final Context o;
    private ViewabilityWatcher p;

    /* renamed from: a  reason: collision with root package name */
    static final Logger f35419a = Logger.getInstance(InlineAdView.class);
    private static final String m = InlineAdView.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    static final Handler f35420b = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdView$InlineAdListener.class */
    public interface InlineAdListener {
        void onAdLeftApplication(InlineAdView inlineAdView);

        void onAdRefreshed(InlineAdView inlineAdView);

        void onClicked(InlineAdView inlineAdView);

        void onCollapsed(InlineAdView inlineAdView);

        void onError(InlineAdView inlineAdView, ErrorInfo errorInfo);

        void onEvent(InlineAdView inlineAdView, String str, String str2, Map<String, Object> map);

        void onExpanded(InlineAdView inlineAdView);

        void onResized(InlineAdView inlineAdView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InlineAdView(Context context, String str, View view, AdSize adSize, AdSession adSession, List<AdSize> list, InlineAdListener inlineAdListener, InlineAdViewRefresher inlineAdViewRefresher) {
        super(context);
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.o = context;
        this.h = str;
        this.g = adSession;
        this.n = adSize;
        this.f35421c = list;
        this.f35422d = inlineAdViewRefresher;
        this.e = inlineAdListener;
        ((InlineAdAdapter) adSession.getAdAdapter()).setListener(this.l);
        a(view);
        addView(view, new ViewGroup.LayoutParams(ViewUtils.convertDipsToPixels(context, adSize.getWidth()), ViewUtils.convertDipsToPixels(context, adSize.getHeight())));
        g();
    }

    private void g() {
        if (!isRefreshEnabled()) {
            f35419a.d("Refresh disabled or already started, returning");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35419a.d(String.format("Starting refresh for ad: %s", this));
        }
        this.f35422d.a(this);
    }

    private void h() {
        ViewabilityWatcher viewabilityWatcher = this.p;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
            this.p = null;
        }
    }

    final void a(View view) {
        c();
        h();
        final boolean z = false;
        this.j = false;
        this.k = false;
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionViewabilityPercent", -1);
        if (i == 0) {
            z = true;
        }
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(view, new ViewabilityWatcher.ViewabilityListener() { // from class: com.verizon.ads.inlineplacement.InlineAdView.3
            @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
            public void onViewableChanged(boolean z2) {
                final InlineAdView inlineAdView = InlineAdView.this;
                boolean z3 = z;
                if (Logger.isLogLevelEnabled(3)) {
                    InlineAdView.f35419a.d(String.format("Viewability changed to %s for placement Id '%s'", Boolean.valueOf(z2), inlineAdView.h));
                }
                if (!z2) {
                    inlineAdView.c();
                } else if (z3) {
                    if (!inlineAdView.j) {
                        InlineAdView.f35419a.d("Bypassing impression timer and firing impression");
                        inlineAdView.b();
                    }
                } else if (!inlineAdView.j && inlineAdView.i == null) {
                    int i2 = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionDuration", 0);
                    inlineAdView.i = new Runnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.4
                        @Override // java.lang.Runnable
                        public void run() {
                            InlineAdView.this.b();
                        }
                    };
                    InlineAdView.f35420b.postDelayed(inlineAdView.i, i2);
                }
            }
        });
        this.p = viewabilityWatcher;
        viewabilityWatcher.setMinViewabilityPercent(i);
        this.p.startWatching();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.g == null;
    }

    final void b() {
        if (!d()) {
            f35419a.d("Attempt to record an impression event off main thread and/or ad has been destroyed.");
        } else if (!this.j) {
            if (Logger.isLogLevelEnabled(3)) {
                f35419a.d(String.format("Ad shown: %s", this.g.toStringLongDescription()));
            }
            this.j = true;
            h();
            c();
            ((InlineAdAdapter) this.g.getAdAdapter()).fireImpression();
            Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(this.g));
            InlineAdListener inlineAdListener = this.e;
            if (inlineAdListener != null) {
                inlineAdListener.onEvent(this, m, "adImpression", null);
            }
        }
    }

    final void c() {
        Runnable runnable = this.i;
        if (runnable != null) {
            f35420b.removeCallbacks(runnable);
            this.i = null;
        }
    }

    final boolean d() {
        if (!ThreadUtils.isUiThread()) {
            f35419a.e("Method call must be made on the UI thread");
            return false;
        } else if (!a()) {
            return true;
        } else {
            f35419a.e("Method called after ad destroyed");
            return false;
        }
    }

    public void destroy() {
        if (d()) {
            c();
            h();
            if (Logger.isLogLevelEnabled(3)) {
                f35419a.d(String.format("Stopping refresh for ad: %s", this));
            }
            this.f35422d.a();
            InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) this.g.getAdAdapter();
            if (inlineAdAdapter != null) {
                inlineAdAdapter.release();
            }
            this.f35422d = null;
            this.e = null;
            this.g = null;
            this.h = null;
        }
    }

    public AdSession getAdSession() {
        return this.g;
    }

    public AdSize getAdSize() {
        if (!a()) {
            return this.n;
        }
        f35419a.d("getAdSize called after destroy");
        return null;
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!d()) {
            return null;
        }
        AdAdapter adAdapter = this.g.getAdAdapter();
        if (adAdapter == null || adAdapter.getAdContent() == null || adAdapter.getAdContent().getMetadata() == null) {
            f35419a.e("Creative Info is not available");
            return null;
        }
        Object obj = adAdapter.getAdContent().getMetadata().get("creative_info");
        if (obj instanceof CreativeInfo) {
            return (CreativeInfo) obj;
        }
        f35419a.e("Creative Info is not available");
        return null;
    }

    public String getPlacementId() {
        if (!d()) {
            return null;
        }
        return this.h;
    }

    public Integer getRefreshInterval() {
        if (!d()) {
            return null;
        }
        return isRefreshEnabled() ? Integer.valueOf(Math.max(this.f.intValue(), Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minInlineRefreshInterval", 20000))) : this.f;
    }

    public boolean isImmersiveEnabled() {
        if (!d()) {
            return false;
        }
        return ((InlineAdAdapter) this.g.getAdAdapter()).isImmersiveEnabled();
    }

    public boolean isRefreshEnabled() {
        Integer num;
        return d() && (num = this.f) != null && num.intValue() > 0;
    }

    public void setImmersiveEnabled(boolean z) {
        if (d()) {
            ((InlineAdAdapter) this.g.getAdAdapter()).setImmersiveEnabled(z);
        }
    }

    public void setRefreshInterval(int i) {
        if (d()) {
            this.f = Integer.valueOf(Math.max(0, i));
            g();
        }
    }

    @Override // android.view.View
    public String toString() {
        return "InlineAdView{placementId: " + this.h + ", adSession: " + this.g + '}';
    }
}
