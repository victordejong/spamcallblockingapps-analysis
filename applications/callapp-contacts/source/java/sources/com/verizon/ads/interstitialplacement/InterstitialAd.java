package com.verizon.ads.interstitialplacement;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.AdSession;
import com.verizon.ads.CreativeInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.events.Events;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.support.ClickEvent;
import com.verizon.ads.support.ImpressionEvent;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.VASPlacement;
import com.verizon.ads.utils.ThreadUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAd.class */
public class InterstitialAd implements VASPlacement {
    public static final int ERROR_AD_EXPIRED = -1;

    /* renamed from: b */
    AdSession f61427b;

    /* renamed from: c */
    boolean f61428c;

    /* renamed from: d */
    InterstitialAdListener f61429d;

    /* renamed from: e */
    InterstitialAdAdapter.InterstitialAdAdapterListener f61430e = new InterstitialAdAdapter.InterstitialAdAdapterListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1
        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onAdLeftApplication() {
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.5
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onAdLeftApplication(InterstitialAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onClicked() {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f61425f.m5567d(String.format("Clicked on ad for placement Id '%s'", InterstitialAd.this.f61434k));
            }
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onClicked(InterstitialAd.this);
                    }
                }
            });
            InterstitialAd interstitialAd = InterstitialAd.this;
            if (!interstitialAd.f61428c) {
                interstitialAd.f61428c = true;
                interstitialAd.m5457a();
                Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(interstitialAd.f61427b));
            }
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onClosed() {
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onClosed(InterstitialAd.this);
                    }
                    InterstitialAd.this.destroy();
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onError(final ErrorInfo errorInfo) {
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onError(InterstitialAd.this, errorInfo);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onEvent(final String str, final String str2, final Map<String, Object> map) {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f61425f.m5567d(String.format("Received event from: '%s' with id: '%s'", str, str2));
            }
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.6
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onEvent(InterstitialAd.this, str, str2, map);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onShown() {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f61425f.m5567d(String.format("Ad shown for placement Id '%s'", InterstitialAd.this.f61434k));
            }
            InterstitialAd.f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f61429d != null) {
                        InterstitialAd.this.f61429d.onShown(InterstitialAd.this);
                    }
                }
            });
            InterstitialAd.this.m5457a();
        }
    };

    /* renamed from: h */
    private volatile Runnable f61431h;

    /* renamed from: i */
    private volatile boolean f61432i;

    /* renamed from: j */
    private volatile boolean f61433j;

    /* renamed from: k */
    private String f61434k;

    /* renamed from: l */
    private boolean f61435l;

    /* renamed from: f */
    private static final Logger f61425f = Logger.getInstance(InterstitialAd.class);

    /* renamed from: g */
    private static final String f61426g = InterstitialAd.class.getSimpleName();

    /* renamed from: a */
    static final Handler f61424a = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onAdLeftApplication(InterstitialAd interstitialAd);

        void onClicked(InterstitialAd interstitialAd);

        void onClosed(InterstitialAd interstitialAd);

        void onError(InterstitialAd interstitialAd, ErrorInfo errorInfo);

        void onEvent(InterstitialAd interstitialAd, String str, String str2, Map<String, Object> map);

        void onShown(InterstitialAd interstitialAd);
    }

    public InterstitialAd(String str, AdSession adSession, InterstitialAdListener interstitialAdListener) {
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.f61434k = str;
        this.f61427b = adSession;
        this.f61429d = interstitialAdListener;
        ((InterstitialAdAdapter) adSession.getAdAdapter()).setListener(this.f61430e);
    }

    /* renamed from: d */
    private void m5450d() {
        if (this.f61431h != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61425f.m5567d(String.format("Stopping expiration timer for placementId: %s", this.f61434k));
            }
            f61424a.removeCallbacks(this.f61431h);
            this.f61431h = null;
        }
    }

    /* renamed from: d */
    static /* synthetic */ void m5449d(InterstitialAd interstitialAd) {
        if (interstitialAd.f61433j || interstitialAd.m5448e()) {
            return;
        }
        interstitialAd.m5446g();
        interstitialAd.f61432i = true;
        interstitialAd.f61431h = null;
        final ErrorInfo errorInfo = new ErrorInfo(InterstitialAd.class.getName(), String.format("Ad expired for placementId: %s", interstitialAd.f61434k), -1);
        if (Logger.isLogLevelEnabled(3)) {
            f61425f.m5567d(errorInfo.toString());
        }
        f61424a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.3
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                if (InterstitialAd.this.f61429d != null) {
                    InterstitialAd.this.f61429d.onError(InterstitialAd.this, errorInfo);
                }
            }
        });
    }

    /* renamed from: e */
    private boolean m5448e() {
        return this.f61427b == null;
    }

    /* renamed from: f */
    private boolean m5447f() {
        if (!ThreadUtils.isUiThread()) {
            f61425f.m5565e("Method call must be made on the UI thread");
            return false;
        } else if (!m5448e()) {
            return true;
        } else {
            f61425f.m5565e("Method called after ad destroyed");
            return false;
        }
    }

    /* renamed from: g */
    private void m5446g() {
        InterstitialAdAdapter interstitialAdAdapter;
        AdSession adSession = this.f61427b;
        if (adSession == null || (interstitialAdAdapter = (InterstitialAdAdapter) adSession.getAdAdapter()) == null) {
            return;
        }
        interstitialAdAdapter.release();
    }

    /* renamed from: a */
    final void m5457a() {
        if (this.f61435l) {
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61425f.m5567d(String.format("Ad shown: %s", this.f61427b.toStringLongDescription()));
        }
        this.f61435l = true;
        ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).fireImpression();
        Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(this.f61427b));
        InterstitialAdListener interstitialAdListener = this.f61429d;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onEvent(this, f61426g, "adImpression", null);
    }

    public void destroy() {
        if (!m5447f()) {
            return;
        }
        m5446g();
        m5450d();
        this.f61429d = null;
        this.f61427b = null;
        this.f61434k = null;
    }

    public AdSession getAdSession() {
        return this.f61427b;
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!m5447f()) {
            return null;
        }
        AdAdapter adAdapter = this.f61427b.getAdAdapter();
        if (adAdapter == null || adAdapter.getAdContent() == null || adAdapter.getAdContent().getMetadata() == null) {
            f61425f.m5565e("Creative Info is not available");
            return null;
        }
        Object obj = adAdapter.getAdContent().getMetadata().get("creative_info");
        if (obj instanceof CreativeInfo) {
            return (CreativeInfo) obj;
        }
        f61425f.m5565e("Creative Info is not available");
        return null;
    }

    public Integer getEnterAnimationId() {
        if (!m5447f()) {
            return null;
        }
        return Integer.valueOf(((InterstitialAdAdapter) this.f61427b.getAdAdapter()).getEnterAnimationId());
    }

    public Integer getExitAnimationId() {
        if (!m5447f()) {
            return null;
        }
        return Integer.valueOf(((InterstitialAdAdapter) this.f61427b.getAdAdapter()).getExitAnimationId());
    }

    public String getPlacementId() {
        if (!m5447f()) {
            return null;
        }
        return this.f61434k;
    }

    public boolean isImmersiveEnabled() {
        if (!m5447f()) {
            return false;
        }
        return ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).isImmersiveEnabled();
    }

    public void setEnterAnimation(int i) {
        if (!m5447f()) {
            return;
        }
        ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).setEnterAnimation(i);
    }

    public void setExitAnimation(int i) {
        if (!m5447f()) {
            return;
        }
        ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).setExitAnimation(i);
    }

    public void setImmersiveEnabled(boolean z) {
        if (!m5447f()) {
            return;
        }
        ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).setImmersiveEnabled(z);
    }

    public void show(Context context) {
        if (!m5447f()) {
            return;
        }
        if (!this.f61432i && !this.f61433j) {
            if (Logger.isLogLevelEnabled(3)) {
                f61425f.m5567d(String.format("Ad shown for placementId: %s", this.f61434k));
            }
            this.f61433j = true;
            m5450d();
        }
        if (this.f61432i) {
            f61425f.m5559w(String.format("Ad has expired. Unable to show ad for placement ID: %s", this.f61434k));
        } else {
            ((InterstitialAdAdapter) this.f61427b.getAdAdapter()).show(context);
        }
    }

    public String toString() {
        return "InterstitialAd{placementId: " + this.f61434k + ", adSession: " + this.f61427b + '}';
    }
}
