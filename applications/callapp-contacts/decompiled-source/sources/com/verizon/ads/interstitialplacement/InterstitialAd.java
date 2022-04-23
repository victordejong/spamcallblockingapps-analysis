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

    /* renamed from: b  reason: collision with root package name */
    AdSession f35447b;

    /* renamed from: c  reason: collision with root package name */
    boolean f35448c;

    /* renamed from: d  reason: collision with root package name */
    InterstitialAdListener f35449d;
    InterstitialAdAdapter.InterstitialAdAdapterListener e = new InterstitialAdAdapter.InterstitialAdAdapterListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1
        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onAdLeftApplication() {
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.5
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onAdLeftApplication(InterstitialAd.this);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onClicked() {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f.d(String.format("Clicked on ad for placement Id '%s'", InterstitialAd.this.k));
            }
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onClicked(InterstitialAd.this);
                    }
                }
            });
            InterstitialAd interstitialAd = InterstitialAd.this;
            if (!interstitialAd.f35448c) {
                interstitialAd.f35448c = true;
                interstitialAd.a();
                Events.sendEvent(ClickEvent.CLICK_EVENT_ID, new ClickEvent(interstitialAd.f35447b));
            }
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onClosed() {
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onClosed(InterstitialAd.this);
                    }
                    InterstitialAd.this.destroy();
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onError(final ErrorInfo errorInfo) {
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.1
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onError(InterstitialAd.this, errorInfo);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onEvent(final String str, final String str2, final Map<String, Object> map) {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f.d(String.format("Received event from: '%s' with id: '%s'", str, str2));
            }
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.6
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onEvent(InterstitialAd.this, str, str2, map);
                    }
                }
            });
        }

        @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.InterstitialAdAdapterListener
        public void onShown() {
            if (Logger.isLogLevelEnabled(3)) {
                InterstitialAd.f.d(String.format("Ad shown for placement Id '%s'", InterstitialAd.this.k));
            }
            InterstitialAd.f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.1.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onShown(InterstitialAd.this);
                    }
                }
            });
            InterstitialAd.this.a();
        }
    };
    private volatile Runnable h;
    private volatile boolean i;
    private volatile boolean j;
    private String k;
    private boolean l;
    private static final Logger f = Logger.getInstance(InterstitialAd.class);
    private static final String g = InterstitialAd.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    static final Handler f35446a = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onAdLeftApplication(InterstitialAd interstitialAd);

        void onClicked(InterstitialAd interstitialAd);

        void onClosed(InterstitialAd interstitialAd);

        void onError(InterstitialAd interstitialAd, ErrorInfo errorInfo);

        void onEvent(InterstitialAd interstitialAd, String str, String str2, Map<String, Object> map);

        void onShown(InterstitialAd interstitialAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InterstitialAd(String str, AdSession adSession, InterstitialAdListener interstitialAdListener) {
        adSession.putObject(VASAds.REQUEST_PLACEMENT_REF, new WeakReference(this));
        this.k = str;
        this.f35447b = adSession;
        this.f35449d = interstitialAdListener;
        ((InterstitialAdAdapter) adSession.getAdAdapter()).setListener(this.e);
    }

    private void d() {
        if (this.h != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f.d(String.format("Stopping expiration timer for placementId: %s", this.k));
            }
            f35446a.removeCallbacks(this.h);
            this.h = null;
        }
    }

    static /* synthetic */ void d(InterstitialAd interstitialAd) {
        if (!interstitialAd.j && !interstitialAd.e()) {
            interstitialAd.g();
            interstitialAd.i = true;
            interstitialAd.h = null;
            final ErrorInfo errorInfo = new ErrorInfo(InterstitialAd.class.getName(), String.format("Ad expired for placementId: %s", interstitialAd.k), -1);
            if (Logger.isLogLevelEnabled(3)) {
                f.d(errorInfo.toString());
            }
            f35446a.post(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (InterstitialAd.this.f35449d != null) {
                        InterstitialAd.this.f35449d.onError(InterstitialAd.this, errorInfo);
                    }
                }
            });
        }
    }

    private boolean e() {
        return this.f35447b == null;
    }

    private boolean f() {
        if (!ThreadUtils.isUiThread()) {
            f.e("Method call must be made on the UI thread");
            return false;
        } else if (!e()) {
            return true;
        } else {
            f.e("Method called after ad destroyed");
            return false;
        }
    }

    private void g() {
        InterstitialAdAdapter interstitialAdAdapter;
        AdSession adSession = this.f35447b;
        if (adSession != null && (interstitialAdAdapter = (InterstitialAdAdapter) adSession.getAdAdapter()) != null) {
            interstitialAdAdapter.release();
        }
    }

    final void a() {
        if (!this.l) {
            if (Logger.isLogLevelEnabled(3)) {
                f.d(String.format("Ad shown: %s", this.f35447b.toStringLongDescription()));
            }
            this.l = true;
            ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).fireImpression();
            Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(this.f35447b));
            InterstitialAdListener interstitialAdListener = this.f35449d;
            if (interstitialAdListener != null) {
                interstitialAdListener.onEvent(this, g, "adImpression", null);
            }
        }
    }

    public void destroy() {
        if (f()) {
            g();
            d();
            this.f35449d = null;
            this.f35447b = null;
            this.k = null;
        }
    }

    public AdSession getAdSession() {
        return this.f35447b;
    }

    @Override // com.verizon.ads.support.VASPlacement
    public CreativeInfo getCreativeInfo() {
        if (!f()) {
            return null;
        }
        AdAdapter adAdapter = this.f35447b.getAdAdapter();
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

    public Integer getEnterAnimationId() {
        if (!f()) {
            return null;
        }
        return Integer.valueOf(((InterstitialAdAdapter) this.f35447b.getAdAdapter()).getEnterAnimationId());
    }

    public Integer getExitAnimationId() {
        if (!f()) {
            return null;
        }
        return Integer.valueOf(((InterstitialAdAdapter) this.f35447b.getAdAdapter()).getExitAnimationId());
    }

    public String getPlacementId() {
        if (!f()) {
            return null;
        }
        return this.k;
    }

    public boolean isImmersiveEnabled() {
        if (!f()) {
            return false;
        }
        return ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).isImmersiveEnabled();
    }

    public void setEnterAnimation(int i) {
        if (f()) {
            ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).setEnterAnimation(i);
        }
    }

    public void setExitAnimation(int i) {
        if (f()) {
            ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).setExitAnimation(i);
        }
    }

    public void setImmersiveEnabled(boolean z) {
        if (f()) {
            ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).setImmersiveEnabled(z);
        }
    }

    public void show(Context context) {
        if (f()) {
            if (!this.i && !this.j) {
                if (Logger.isLogLevelEnabled(3)) {
                    f.d(String.format("Ad shown for placementId: %s", this.k));
                }
                this.j = true;
                d();
            }
            if (this.i) {
                f.w(String.format("Ad has expired. Unable to show ad for placement ID: %s", this.k));
            } else {
                ((InterstitialAdAdapter) this.f35447b.getAdAdapter()).show(context);
            }
        }
    }

    public String toString() {
        return "InterstitialAd{placementId: " + this.k + ", adSession: " + this.f35447b + '}';
    }
}
