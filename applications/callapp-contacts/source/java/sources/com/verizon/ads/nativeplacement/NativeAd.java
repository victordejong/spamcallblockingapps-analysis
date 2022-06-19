package com.verizon.ads.nativeplacement;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.CreativeInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.events.Events;
import com.verizon.ads.nativeplacement.NativeAdAdapter;
import com.verizon.ads.support.ClickEvent;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.VASPlacement;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAd.class */
public class NativeAd implements VASPlacement {
    public static final int ERROR_AD_EXPIRED = -1;

    /* renamed from: e */
    private static final String f61554e = "NativeAd";

    /* renamed from: b */
    NativeAdListener f61556b;

    /* renamed from: c */
    NativeComponentBundle f61557c;

    /* renamed from: d */
    NativeAdAdapter.NativeAdAdapterListener f61558d = new NativeAdAdapter.NativeAdAdapterListener() { // from class: com.verizon.ads.nativeplacement.NativeAd.1
        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onAdLeftApplication() {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f61555f.m5567d(String.format("Ad left application for placementId '%s'", NativeAd.this.f61563k));
            }
            NativeAd.f61553a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f61556b != null) {
                        NativeAd.this.f61556b.onAdLeftApplication(NativeAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onClicked(final Component component) {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f61555f.m5567d(String.format("Ad clicked for placement Id '%s'", NativeAd.this.f61563k));
            }
            NativeAd.f61553a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f61556b != null) {
                        NativeAd.this.f61556b.onClicked(NativeAd.this, component);
                    }
                }
            });
            NativeAd.this.m5401a();
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onClosed() {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f61555f.m5567d(String.format("Ad closed for placementId '%s'", NativeAd.this.f61563k));
            }
            NativeAd.f61553a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f61556b != null) {
                        NativeAd.this.f61556b.onClosed(NativeAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onEvent(final String str, final String str2, final Map<String, Object> map) {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f61555f.m5567d(String.format("Ad received event <%s> for placementId '%s'", str2, NativeAd.this.f61563k));
            }
            NativeAd.f61553a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f61556b != null) {
                        NativeAd.this.f61556b.onEvent(NativeAd.this, str, "impression".equals(str2) ? "adImpression" : str2, map);
                    }
                }
            });
        }
    };

    /* renamed from: g */
    private volatile Runnable f61559g;

    /* renamed from: h */
    private volatile boolean f61560h;

    /* renamed from: i */
    private volatile boolean f61561i;

    /* renamed from: j */
    private AdSession f61562j;

    /* renamed from: k */
    private String f61563k;

    /* renamed from: l */
    private boolean f61564l;

    /* renamed from: f */
    private static final Logger f61555f = Logger.getInstance(NativeAd.class);

    /* renamed from: a */
    static final Handler f61553a = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAd$NativeAdListener.class */
    public interface NativeAdListener {
        void onAdLeftApplication(NativeAd nativeAd);

        void onClicked(NativeAd nativeAd, Component component);

        void onClosed(NativeAd nativeAd);

        void onError(NativeAd nativeAd, ErrorInfo errorInfo);

        void onEvent(NativeAd nativeAd, String str, String str2, Map<String, Object> map);
    }

    public NativeAd(String str, AdSession adSession, NativeAdListener nativeAdListener) {
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.f61563k = str;
        this.f61562j = adSession;
        this.f61556b = nativeAdListener;
        NativeAdAdapter nativeAdAdapter = (NativeAdAdapter) adSession.getAdAdapter();
        NativeComponentBundle rootBundle = nativeAdAdapter.getRootBundle();
        this.f61557c = rootBundle;
        rootBundle.m5367a(this);
        nativeAdAdapter.setListener(this.f61558d);
    }

    /* renamed from: b */
    public static boolean m5398b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: d */
    static /* synthetic */ void m5393d(NativeAd nativeAd) {
        if (nativeAd.f61561i || nativeAd.m5389h()) {
            return;
        }
        nativeAd.f61560h = true;
        nativeAd.f61559g = null;
        final ErrorInfo errorInfo = new ErrorInfo(f61554e, String.format("Ad expired for placementId: %s", nativeAd.f61563k), -1);
        if (Logger.isLogLevelEnabled(3)) {
            f61555f.m5567d(errorInfo.toString());
        }
        f61553a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.3
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                if (NativeAd.this.f61556b != null) {
                    NativeAd.this.f61556b.onError(NativeAd.this, errorInfo);
                }
            }
        });
    }

    /* renamed from: e */
    private void m5392e() {
        if (this.f61559g != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61555f.m5567d(String.format("Stopping expiration timer for placementId '%s'", this.f61563k));
            }
            f61553a.removeCallbacks(this.f61559g);
            this.f61559g = null;
        }
    }

    /* renamed from: f */
    private boolean m5391f() {
        if (!this.f61560h && !this.f61561i) {
            if (Logger.isLogLevelEnabled(3)) {
                f61555f.m5567d(String.format("Ad accessed for placementId '%s'", this.f61563k));
            }
            this.f61561i = true;
            m5392e();
        }
        return this.f61560h;
    }

    /* renamed from: g */
    private boolean m5390g() {
        if (!m5398b()) {
            f61555f.m5565e("Method call must be made on the UI thread");
            return false;
        } else if (!m5389h()) {
            return true;
        } else {
            f61555f.m5565e("Method called after ad destroyed");
            return false;
        }
    }

    /* renamed from: h */
    private boolean m5389h() {
        return this.f61562j == null;
    }

    /* renamed from: a */
    final void m5401a() {
        if (this.f61564l) {
            return;
        }
        this.f61564l = true;
        Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(this.f61562j));
    }

    public void destroy() {
        if (!m5390g()) {
            return;
        }
        this.f61557c.release();
        m5392e();
        NativeAdAdapter nativeAdAdapter = (NativeAdAdapter) this.f61562j.getAdAdapter();
        if (nativeAdAdapter != null) {
            nativeAdAdapter.release();
        }
        this.f61556b = null;
        this.f61562j = null;
        this.f61563k = null;
        this.f61557c = null;
    }

    public void fireImpression(Context context) {
        if (!m5390g()) {
            return;
        }
        ((NativeAdAdapter) this.f61562j.getAdAdapter()).fireImpression(context);
    }

    public AdSession getAdSession() {
        return this.f61562j;
    }

    public String getAdType() {
        if (!m5390g()) {
            return null;
        }
        return ((NativeAdAdapter) this.f61562j.getAdAdapter()).getAdType();
    }

    public Component getComponent(Context context, String str) {
        return getComponent(str);
    }

    public Component getComponent(String str) {
        if (!m5390g()) {
            return null;
        }
        if (!m5391f()) {
            return this.f61557c.getComponent(str);
        }
        f61555f.m5559w(String.format("Ad has expired. Unable to create component for placementID: %s", this.f61563k));
        return null;
    }

    public Set<String> getComponentIds() {
        return this.f61557c.getComponentIds();
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!m5390g()) {
            return null;
        }
        AdAdapter adAdapter = this.f61562j.getAdAdapter();
        if (adAdapter == null || adAdapter.getAdContent() == null || adAdapter.getAdContent().getMetadata() == null) {
            f61555f.m5565e("Creative Info is not available");
            return null;
        }
        Object obj = adAdapter.getAdContent().getMetadata().get("creative_info");
        if (obj instanceof CreativeInfo) {
            return (CreativeInfo) obj;
        }
        f61555f.m5565e("Creative Info is not available");
        return null;
    }

    public JSONObject getJSON() {
        if (m5391f()) {
            f61555f.m5559w(String.format("Ad has expired. Unable to get JSON for placementID: %s", this.f61563k));
            return null;
        }
        return this.f61557c.getJSON();
    }

    public JSONObject getJSON(String str) {
        if (m5391f()) {
            f61555f.m5559w(String.format("Ad has expired. Unable to get JSON for placementID: %s", this.f61563k));
            return null;
        }
        return this.f61557c.getJSON(str);
    }

    public String getPlacementId() {
        if (!m5390g()) {
            return null;
        }
        return this.f61563k;
    }

    public void invokeDefaultAction(Context context) {
        if (!m5390g()) {
            return;
        }
        if (m5391f()) {
            f61555f.m5559w(String.format("Ad has expired. Unable to invoke default action for placementID: %s", this.f61563k));
            return;
        }
        m5401a();
        ((NativeAdAdapter) this.f61562j.getAdAdapter()).invokeDefaultAction(context);
    }

    public boolean registerContainerView(ViewGroup viewGroup) {
        Logger logger = f61555f;
        logger.m5567d("Registering container view for layout");
        if (!m5390g()) {
            return false;
        }
        if (viewGroup == null) {
            logger.m5565e("Container view cannot be null");
            return false;
        } else if (!((NativeAdAdapter) this.f61562j.getAdAdapter()).registerContainerView(viewGroup)) {
            logger.m5559w(String.format("Error registering container view for placement Id '%s'", this.f61563k));
            return false;
        } else if (!Logger.isLogLevelEnabled(3)) {
            return true;
        } else {
            logger.m5567d(String.format("Container view successfully registered for placement Id '%s'", this.f61563k));
            return true;
        }
    }

    public String toString() {
        return "NativeAd{placementId: " + this.f61563k + ", ad session: " + this.f61562j + '}';
    }
}
