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

    /* renamed from: c */
    final List<AdSize> f61371c;

    /* renamed from: d */
    InlineAdViewRefresher f61372d;

    /* renamed from: e */
    InlineAdListener f61373e;

    /* renamed from: f */
    Integer f61374f;

    /* renamed from: g */
    AdSession f61375g;

    /* renamed from: h */
    String f61376h;

    /* renamed from: i */
    Runnable f61377i;

    /* renamed from: j */
    boolean f61378j;

    /* renamed from: k */
    boolean f61379k;

    /* renamed from: l */
    InlineAdAdapter.InlineAdAdapterListener f61380l = new InlineAdAdapter.InlineAdAdapterListener() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1
        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onAdLeftApplication() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad left application for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.5
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onAdLeftApplication(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onClicked() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad clicked for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    InlineAdView inlineAdView = InlineAdView.this;
                    if (!inlineAdView.m5471d()) {
                        InlineAdView.f61368a.m5567d("Attempt to record a click event off main thread and/or ad has been destroyed.");
                    } else if (!inlineAdView.f61379k) {
                        inlineAdView.f61379k = true;
                        inlineAdView.m5475b();
                        Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(inlineAdView.f61375g));
                    }
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onClicked(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onCollapsed() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad collapsed for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onCollapsed(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onError(final ErrorInfo errorInfo) {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad error for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.6
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onError(InlineAdView.this, errorInfo);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onExpanded() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad expanded for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onExpanded(InlineAdView.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.InlineAdAdapterListener
        public void onResized() {
            if (Logger.isLogLevelEnabled(3)) {
                InlineAdView.f61368a.m5567d(String.format("Ad resized for placement Id '%s'", InlineAdView.this.f61376h));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InlineAdView.this.f61373e != null) {
                        InlineAdView.this.f61373e.onResized(InlineAdView.this);
                    }
                }
            });
        }
    };

    /* renamed from: n */
    private AdSize f61381n;

    /* renamed from: o */
    private final Context f61382o;

    /* renamed from: p */
    private ViewabilityWatcher f61383p;

    /* renamed from: a */
    static final Logger f61368a = Logger.getInstance(InlineAdView.class);

    /* renamed from: m */
    private static final String f61370m = InlineAdView.class.getSimpleName();

    /* renamed from: b */
    static final Handler f61369b = new Handler(Looper.getMainLooper());

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

    public InlineAdView(Context context, String str, View view, AdSize adSize, AdSession adSession, List<AdSize> list, InlineAdListener inlineAdListener, InlineAdViewRefresher inlineAdViewRefresher) {
        super(context);
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.f61382o = context;
        this.f61376h = str;
        this.f61375g = adSession;
        this.f61381n = adSize;
        this.f61371c = list;
        this.f61372d = inlineAdViewRefresher;
        this.f61373e = inlineAdListener;
        ((InlineAdAdapter) adSession.getAdAdapter()).setListener(this.f61380l);
        m5479a(view);
        addView(view, new ViewGroup.LayoutParams(ViewUtils.convertDipsToPixels(context, adSize.getWidth()), ViewUtils.convertDipsToPixels(context, adSize.getHeight())));
        m5467g();
    }

    /* renamed from: g */
    private void m5467g() {
        if (!isRefreshEnabled()) {
            f61368a.m5567d("Refresh disabled or already started, returning");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61368a.m5567d(String.format("Starting refresh for ad: %s", this));
        }
        this.f61372d.m5464a(this);
    }

    /* renamed from: h */
    private void m5466h() {
        ViewabilityWatcher viewabilityWatcher = this.f61383p;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
            this.f61383p = null;
        }
    }

    /* renamed from: a */
    final void m5479a(View view) {
        m5473c();
        m5466h();
        boolean z = false;
        this.f61378j = false;
        this.f61379k = false;
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionViewabilityPercent", -1);
        if (i == 0) {
            z = true;
        }
        final boolean z2 = z;
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(view, new ViewabilityWatcher.ViewabilityListener() { // from class: com.verizon.ads.inlineplacement.InlineAdView.3
            @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
            public void onViewableChanged(boolean z3) {
                final InlineAdView inlineAdView = InlineAdView.this;
                boolean z4 = z2;
                if (Logger.isLogLevelEnabled(3)) {
                    InlineAdView.f61368a.m5567d(String.format("Viewability changed to %s for placement Id '%s'", Boolean.valueOf(z3), inlineAdView.f61376h));
                }
                if (!z3) {
                    inlineAdView.m5473c();
                } else if (z4) {
                    if (inlineAdView.f61378j) {
                        return;
                    }
                    InlineAdView.f61368a.m5567d("Bypassing impression timer and firing impression");
                    inlineAdView.m5475b();
                } else if (inlineAdView.f61378j || inlineAdView.f61377i != null) {
                } else {
                    int i2 = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionDuration", 0);
                    inlineAdView.f61377i = new Runnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.4
                        @Override // java.lang.Runnable
                        public void run() {
                            inlineAdView.m5475b();
                        }
                    };
                    InlineAdView.f61369b.postDelayed(inlineAdView.f61377i, i2);
                }
            }
        });
        this.f61383p = viewabilityWatcher;
        viewabilityWatcher.setMinViewabilityPercent(i);
        this.f61383p.startWatching();
    }

    /* renamed from: a */
    public final boolean m5480a() {
        return this.f61375g == null;
    }

    /* renamed from: b */
    final void m5475b() {
        if (!m5471d()) {
            f61368a.m5567d("Attempt to record an impression event off main thread and/or ad has been destroyed.");
        } else if (this.f61378j) {
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61368a.m5567d(String.format("Ad shown: %s", this.f61375g.toStringLongDescription()));
            }
            this.f61378j = true;
            m5466h();
            m5473c();
            ((InlineAdAdapter) this.f61375g.getAdAdapter()).fireImpression();
            Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(this.f61375g));
            InlineAdListener inlineAdListener = this.f61373e;
            if (inlineAdListener == null) {
                return;
            }
            inlineAdListener.onEvent(this, f61370m, "adImpression", null);
        }
    }

    /* renamed from: c */
    final void m5473c() {
        Runnable runnable = this.f61377i;
        if (runnable != null) {
            f61369b.removeCallbacks(runnable);
            this.f61377i = null;
        }
    }

    /* renamed from: d */
    final boolean m5471d() {
        if (!ThreadUtils.isUiThread()) {
            f61368a.m5565e("Method call must be made on the UI thread");
            return false;
        } else if (!m5480a()) {
            return true;
        } else {
            f61368a.m5565e("Method called after ad destroyed");
            return false;
        }
    }

    public void destroy() {
        if (!m5471d()) {
            return;
        }
        m5473c();
        m5466h();
        if (Logger.isLogLevelEnabled(3)) {
            f61368a.m5567d(String.format("Stopping refresh for ad: %s", this));
        }
        this.f61372d.m5465a();
        InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) this.f61375g.getAdAdapter();
        if (inlineAdAdapter != null) {
            inlineAdAdapter.release();
        }
        this.f61372d = null;
        this.f61373e = null;
        this.f61375g = null;
        this.f61376h = null;
    }

    public AdSession getAdSession() {
        return this.f61375g;
    }

    public AdSize getAdSize() {
        if (m5480a()) {
            f61368a.m5567d("getAdSize called after destroy");
            return null;
        }
        return this.f61381n;
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!m5471d()) {
            return null;
        }
        AdAdapter adAdapter = this.f61375g.getAdAdapter();
        if (adAdapter == null || adAdapter.getAdContent() == null || adAdapter.getAdContent().getMetadata() == null) {
            f61368a.m5565e("Creative Info is not available");
            return null;
        }
        Object obj = adAdapter.getAdContent().getMetadata().get("creative_info");
        if (obj instanceof CreativeInfo) {
            return (CreativeInfo) obj;
        }
        f61368a.m5565e("Creative Info is not available");
        return null;
    }

    public String getPlacementId() {
        if (!m5471d()) {
            return null;
        }
        return this.f61376h;
    }

    public Integer getRefreshInterval() {
        if (!m5471d()) {
            return null;
        }
        return isRefreshEnabled() ? Integer.valueOf(Math.max(this.f61374f.intValue(), Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minInlineRefreshInterval", 20000))) : this.f61374f;
    }

    public boolean isImmersiveEnabled() {
        if (!m5471d()) {
            return false;
        }
        return ((InlineAdAdapter) this.f61375g.getAdAdapter()).isImmersiveEnabled();
    }

    public boolean isRefreshEnabled() {
        Integer num;
        return m5471d() && (num = this.f61374f) != null && num.intValue() > 0;
    }

    public void setImmersiveEnabled(boolean z) {
        if (!m5471d()) {
            return;
        }
        ((InlineAdAdapter) this.f61375g.getAdAdapter()).setImmersiveEnabled(z);
    }

    public void setRefreshInterval(int i) {
        if (!m5471d()) {
            return;
        }
        this.f61374f = Integer.valueOf(Math.max(0, i));
        m5467g();
    }

    @Override // android.view.View
    public String toString() {
        return "InlineAdView{placementId: " + this.f61376h + ", adSession: " + this.f61375g + '}';
    }
}
