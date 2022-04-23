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
    private static final String e = "NativeAd";

    /* renamed from: b  reason: collision with root package name */
    NativeAdListener f35526b;

    /* renamed from: c  reason: collision with root package name */
    NativeComponentBundle f35527c;

    /* renamed from: d  reason: collision with root package name */
    NativeAdAdapter.NativeAdAdapterListener f35528d = new NativeAdAdapter.NativeAdAdapterListener() { // from class: com.verizon.ads.nativeplacement.NativeAd.1
        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onAdLeftApplication() {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f.d(String.format("Ad left application for placementId '%s'", NativeAd.this.k));
            }
            NativeAd.f35525a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f35526b != null) {
                        NativeAd.this.f35526b.onAdLeftApplication(NativeAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onClicked(final Component component) {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f.d(String.format("Ad clicked for placement Id '%s'", NativeAd.this.k));
            }
            NativeAd.f35525a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f35526b != null) {
                        NativeAd.this.f35526b.onClicked(NativeAd.this, component);
                    }
                }
            });
            NativeAd.this.a();
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onClosed() {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f.d(String.format("Ad closed for placementId '%s'", NativeAd.this.k));
            }
            NativeAd.f35525a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f35526b != null) {
                        NativeAd.this.f35526b.onClosed(NativeAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.NativeAdAdapterListener
        public void onEvent(final String str, final String str2, final Map<String, Object> map) {
            if (Logger.isLogLevelEnabled(3)) {
                NativeAd.f.d(String.format("Ad received event <%s> for placementId '%s'", str2, NativeAd.this.k));
            }
            NativeAd.f35525a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f35526b != null) {
                        NativeAd.this.f35526b.onEvent(NativeAd.this, str, "impression".equals(str2) ? "adImpression" : str2, map);
                    }
                }
            });
        }
    };
    private volatile Runnable g;
    private volatile boolean h;
    private volatile boolean i;
    private AdSession j;
    private String k;
    private boolean l;
    private static final Logger f = Logger.getInstance(NativeAd.class);

    /* renamed from: a  reason: collision with root package name */
    static final Handler f35525a = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAd$NativeAdListener.class */
    public interface NativeAdListener {
        void onAdLeftApplication(NativeAd nativeAd);

        void onClicked(NativeAd nativeAd, Component component);

        void onClosed(NativeAd nativeAd);

        void onError(NativeAd nativeAd, ErrorInfo errorInfo);

        void onEvent(NativeAd nativeAd, String str, String str2, Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd(String str, AdSession adSession, NativeAdListener nativeAdListener) {
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.k = str;
        this.j = adSession;
        this.f35526b = nativeAdListener;
        NativeAdAdapter nativeAdAdapter = (NativeAdAdapter) adSession.getAdAdapter();
        NativeComponentBundle rootBundle = nativeAdAdapter.getRootBundle();
        this.f35527c = rootBundle;
        rootBundle.a(this);
        nativeAdAdapter.setListener(this.f35528d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static /* synthetic */ void d(NativeAd nativeAd) {
        if (!nativeAd.i && !nativeAd.h()) {
            nativeAd.h = true;
            nativeAd.g = null;
            final ErrorInfo errorInfo = new ErrorInfo(e, String.format("Ad expired for placementId: %s", nativeAd.k), -1);
            if (Logger.isLogLevelEnabled(3)) {
                f.d(errorInfo.toString());
            }
            f35525a.post(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (NativeAd.this.f35526b != null) {
                        NativeAd.this.f35526b.onError(NativeAd.this, errorInfo);
                    }
                }
            });
        }
    }

    private void e() {
        if (this.g != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f.d(String.format("Stopping expiration timer for placementId '%s'", this.k));
            }
            f35525a.removeCallbacks(this.g);
            this.g = null;
        }
    }

    private boolean f() {
        if (!this.h && !this.i) {
            if (Logger.isLogLevelEnabled(3)) {
                f.d(String.format("Ad accessed for placementId '%s'", this.k));
            }
            this.i = true;
            e();
        }
        return this.h;
    }

    private boolean g() {
        if (!b()) {
            f.e("Method call must be made on the UI thread");
            return false;
        } else if (!h()) {
            return true;
        } else {
            f.e("Method called after ad destroyed");
            return false;
        }
    }

    private boolean h() {
        return this.j == null;
    }

    final void a() {
        if (!this.l) {
            this.l = true;
            Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(this.j));
        }
    }

    public void destroy() {
        if (g()) {
            this.f35527c.release();
            e();
            NativeAdAdapter nativeAdAdapter = (NativeAdAdapter) this.j.getAdAdapter();
            if (nativeAdAdapter != null) {
                nativeAdAdapter.release();
            }
            this.f35526b = null;
            this.j = null;
            this.k = null;
            this.f35527c = null;
        }
    }

    public void fireImpression(Context context) {
        if (g()) {
            ((NativeAdAdapter) this.j.getAdAdapter()).fireImpression(context);
        }
    }

    public AdSession getAdSession() {
        return this.j;
    }

    public String getAdType() {
        if (!g()) {
            return null;
        }
        return ((NativeAdAdapter) this.j.getAdAdapter()).getAdType();
    }

    public Component getComponent(Context context, String str) {
        return getComponent(str);
    }

    public Component getComponent(String str) {
        if (!g()) {
            return null;
        }
        if (!f()) {
            return this.f35527c.getComponent(str);
        }
        f.w(String.format("Ad has expired. Unable to create component for placementID: %s", this.k));
        return null;
    }

    public Set<String> getComponentIds() {
        return this.f35527c.getComponentIds();
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!g()) {
            return null;
        }
        AdAdapter adAdapter = this.j.getAdAdapter();
        if (adAdapter == null || adAdapter.getAdContent() == null || adAdapter.getAdContent().getMetadata() == null) {
            f.e("Creative Info is not available");
            return null;
        }
        Object obj = adAdapter.getAdContent().getMetadata().get("creative_info");
        if (obj instanceof CreativeInfo) {
            return (CreativeInfo) obj;
        }
        f.e("Creative Info is not available");
        return null;
    }

    public JSONObject getJSON() {
        if (!f()) {
            return this.f35527c.getJSON();
        }
        f.w(String.format("Ad has expired. Unable to get JSON for placementID: %s", this.k));
        return null;
    }

    public JSONObject getJSON(String str) {
        if (!f()) {
            return this.f35527c.getJSON(str);
        }
        f.w(String.format("Ad has expired. Unable to get JSON for placementID: %s", this.k));
        return null;
    }

    public String getPlacementId() {
        if (!g()) {
            return null;
        }
        return this.k;
    }

    public void invokeDefaultAction(Context context) {
        if (g()) {
            if (f()) {
                f.w(String.format("Ad has expired. Unable to invoke default action for placementID: %s", this.k));
                return;
            }
            a();
            ((NativeAdAdapter) this.j.getAdAdapter()).invokeDefaultAction(context);
        }
    }

    public boolean registerContainerView(ViewGroup viewGroup) {
        Logger logger = f;
        logger.d("Registering container view for layout");
        if (!g()) {
            return false;
        }
        if (viewGroup == null) {
            logger.e("Container view cannot be null");
            return false;
        } else if (!((NativeAdAdapter) this.j.getAdAdapter()).registerContainerView(viewGroup)) {
            logger.w(String.format("Error registering container view for placement Id '%s'", this.k));
            return false;
        } else if (!Logger.isLogLevelEnabled(3)) {
            return true;
        } else {
            logger.d(String.format("Container view successfully registered for placement Id '%s'", this.k));
            return true;
        }
    }

    public String toString() {
        return "NativeAd{placementId: " + this.k + ", ad session: " + this.j + '}';
    }
}
