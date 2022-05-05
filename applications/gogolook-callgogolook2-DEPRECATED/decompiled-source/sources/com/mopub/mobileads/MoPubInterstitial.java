package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial.class */
public class MoPubInterstitial implements CustomEventInterstitialAdapter.AbstractC3827b {
    @NonNull

    /* renamed from: a */
    public MoPubInterstitialView f8487a;
    @Nullable

    /* renamed from: b */
    public CustomEventInterstitialAdapter f8488b;
    @Nullable

    /* renamed from: c */
    public InterstitialAdListener f8489c;
    @NonNull

    /* renamed from: d */
    public Activity f8490d;
    @NonNull

    /* renamed from: g */
    public volatile EnumC3838c f8493g = EnumC3838c.IDLE;
    @NonNull

    /* renamed from: e */
    public Handler f8491e = new Handler();
    @NonNull

    /* renamed from: f */
    public final Runnable f8492f = new RunnableC3836a();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView.class */
    public class MoPubInterstitialView extends MoPubView {
        public MoPubInterstitialView(Context context) {
            super(context);
            setAutorefreshEnabled(false);
        }

        @Override // com.mopub.mobileads.MoPubView
        /* renamed from: a */
        public void mo30524a(MoPubErrorCode moPubErrorCode) {
            MoPubInterstitial.this.m30542a(EnumC3838c.IDLE);
            if (MoPubInterstitial.this.f8489c != null) {
                MoPubInterstitial.this.f8489c.onInterstitialFailed(MoPubInterstitial.this, moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        /* renamed from: a */
        public void mo30521a(String str, Map<String, String> map) {
            if (this.f8498a != null) {
                if (TextUtils.isEmpty(str)) {
                    MoPubLog.m30733d("Couldn't invoke custom event because the server did not specify one.");
                    m30518b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                    return;
                }
                if (MoPubInterstitial.this.f8488b != null) {
                    MoPubInterstitial.this.f8488b.m30556c();
                }
                MoPubLog.m30733d("Loading custom event interstitial adapter.");
                MoPubInterstitial moPubInterstitial = MoPubInterstitial.this;
                moPubInterstitial.f8488b = CustomEventInterstitialAdapterFactory.create(moPubInterstitial, str, map, this.f8498a.getBroadcastIdentifier(), this.f8498a.getAdReport());
                MoPubInterstitial.this.f8488b.m30558a(MoPubInterstitial.this);
                MoPubInterstitial.this.f8488b.m30554e();
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        public AdFormat getAdFormat() {
            return AdFormat.INTERSTITIAL;
        }

        @Nullable
        /* renamed from: p */
        public String m30530p() {
            return this.f8498a.getCustomEventClassName();
        }

        /* renamed from: q */
        public void m30529q() {
            MoPubLog.m30733d("Tracking impression for interstitial.");
            AdViewController adViewController = this.f8498a;
            if (adViewController != null) {
                adViewController.m30586p();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$a.class */
    public class RunnableC3836a implements Runnable {
        public RunnableC3836a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.m30733d("Expiring unused Interstitial ad.");
            MoPubInterstitial.this.m30541a(EnumC3838c.IDLE, true);
            if (!EnumC3838c.SHOWING.equals(MoPubInterstitial.this.f8493g) && !EnumC3838c.DESTROYED.equals(MoPubInterstitial.this.f8493g)) {
                MoPubInterstitial.this.f8487a.mo30524a(MoPubErrorCode.EXPIRED);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$b.class */
    public static /* synthetic */ class C3837b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8496a = new int[EnumC3838c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f8496a[EnumC3838c.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8496a[EnumC3838c.SHOWING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8496a[EnumC3838c.DESTROYED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8496a[EnumC3838c.IDLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8496a[EnumC3838c.READY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.MoPubInterstitial$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$c.class */
    public enum EnumC3838c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(@NonNull Activity activity, @NonNull String str) {
        this.f8490d = activity;
        this.f8487a = new MoPubInterstitialView(this.f8490d);
        this.f8487a.setAdUnitId(str);
    }

    /* renamed from: a */
    public Integer m30543a() {
        return this.f8487a.getAdTimeoutDelay();
    }

    /* renamed from: a */
    public final boolean m30542a(@NonNull EnumC3838c cVar) {
        return m30541a(cVar, false);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30541a(@NonNull EnumC3838c cVar, boolean z) {
        synchronized (this) {
            Preconditions.checkNotNull(cVar);
            int i = C3837b.f8496a[this.f8493g.ordinal()];
            if (i == 1) {
                int i2 = C3837b.f8496a[cVar.ordinal()];
                if (i2 == 1) {
                    if (!z) {
                        MoPubLog.m30733d("Already loading an interstitial.");
                    }
                    return false;
                } else if (i2 == 2) {
                    MoPubLog.m30733d("Interstitial is not ready to be shown yet.");
                    return false;
                } else if (i2 == 3) {
                    m30533d();
                    return true;
                } else if (i2 == 4) {
                    m30537b();
                    this.f8493g = EnumC3838c.IDLE;
                    return true;
                } else if (i2 != 5) {
                    return false;
                } else {
                    this.f8493g = EnumC3838c.READY;
                    if (AdTypeTranslator.CustomEventType.isMoPubSpecific(this.f8487a.m30530p())) {
                        this.f8491e.postDelayed(this.f8492f, 14400000L);
                    }
                    return true;
                }
            } else if (i == 2) {
                int i3 = C3837b.f8496a[cVar.ordinal()];
                if (i3 == 1) {
                    if (!z) {
                        MoPubLog.m30733d("Interstitial already showing. Not loading another.");
                    }
                    return false;
                } else if (i3 == 2) {
                    MoPubLog.m30733d("Already showing an interstitial. Cannot show it again.");
                    return false;
                } else if (i3 == 3) {
                    m30533d();
                    return true;
                } else if (i3 != 4) {
                    return false;
                } else {
                    if (z) {
                        MoPubLog.m30733d("Cannot force refresh while showing an interstitial.");
                        return false;
                    }
                    m30537b();
                    this.f8493g = EnumC3838c.IDLE;
                    return true;
                }
            } else if (i == 3) {
                MoPubLog.m30733d("MoPubInterstitial destroyed. Ignoring all requests.");
                return false;
            } else if (i == 4) {
                int i4 = C3837b.f8496a[cVar.ordinal()];
                if (i4 == 1) {
                    m30537b();
                    this.f8493g = EnumC3838c.LOADING;
                    if (z) {
                        this.f8487a.forceRefresh();
                    } else {
                        this.f8487a.loadAd();
                    }
                    return true;
                } else if (i4 == 2) {
                    MoPubLog.m30733d("No interstitial loading or loaded.");
                    return false;
                } else if (i4 != 3) {
                    return false;
                } else {
                    m30533d();
                    return true;
                }
            } else if (i != 5) {
                return false;
            } else {
                int i5 = C3837b.f8496a[cVar.ordinal()];
                if (i5 == 1) {
                    MoPubLog.m30733d("Interstitial already loaded. Not loading another.");
                    if (this.f8489c != null) {
                        this.f8489c.onInterstitialLoaded(this);
                    }
                    return false;
                } else if (i5 == 2) {
                    m30531e();
                    this.f8493g = EnumC3838c.SHOWING;
                    this.f8491e.removeCallbacks(this.f8492f);
                    return true;
                } else if (i5 == 3) {
                    m30533d();
                    return true;
                } else if (i5 != 4) {
                    return false;
                } else {
                    if (!z) {
                        return false;
                    }
                    m30537b();
                    this.f8493g = EnumC3838c.IDLE;
                    return true;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m30537b() {
        CustomEventInterstitialAdapter customEventInterstitialAdapter = this.f8488b;
        if (customEventInterstitialAdapter != null) {
            customEventInterstitialAdapter.m30556c();
            this.f8488b = null;
        }
    }

    /* renamed from: c */
    public boolean m30535c() {
        return this.f8493g == EnumC3838c.DESTROYED;
    }

    /* renamed from: d */
    public final void m30533d() {
        m30537b();
        this.f8487a.setBannerAdListener(null);
        this.f8487a.destroy();
        this.f8491e.removeCallbacks(this.f8492f);
        this.f8493g = EnumC3838c.DESTROYED;
    }

    public void destroy() {
        m30542a(EnumC3838c.DESTROYED);
    }

    /* renamed from: e */
    public final void m30531e() {
        CustomEventInterstitialAdapter customEventInterstitialAdapter = this.f8488b;
        if (customEventInterstitialAdapter != null) {
            customEventInterstitialAdapter.m30553f();
        }
    }

    public void forceRefresh() {
        m30541a(EnumC3838c.IDLE, true);
        m30541a(EnumC3838c.LOADING, true);
    }

    @NonNull
    public Activity getActivity() {
        return this.f8490d;
    }

    @Nullable
    public InterstitialAdListener getInterstitialAdListener() {
        return this.f8489c;
    }

    @Nullable
    public String getKeywords() {
        return this.f8487a.getKeywords();
    }

    @NonNull
    public Map<String, Object> getLocalExtras() {
        return this.f8487a.getLocalExtras();
    }

    @Nullable
    public Location getLocation() {
        return this.f8487a.getLocation();
    }

    public boolean getTesting() {
        return this.f8487a.getTesting();
    }

    public boolean isReady() {
        return this.f8493g == EnumC3838c.READY;
    }

    public void load() {
        m30542a(EnumC3838c.LOADING);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC3827b
    public void onCustomEventInterstitialClicked() {
        if (!m30535c()) {
            this.f8487a.m30510j();
            InterstitialAdListener interstitialAdListener = this.f8489c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC3827b
    public void onCustomEventInterstitialDismissed() {
        if (!m30535c()) {
            m30542a(EnumC3838c.IDLE);
            InterstitialAdListener interstitialAdListener = this.f8489c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialDismissed(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC3827b
    public void onCustomEventInterstitialFailed(@NonNull MoPubErrorCode moPubErrorCode) {
        if (!m30535c() && !this.f8487a.m30518b(moPubErrorCode)) {
            m30542a(EnumC3838c.IDLE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC3827b
    public void onCustomEventInterstitialLoaded() {
        if (!m30535c()) {
            m30542a(EnumC3838c.READY);
            InterstitialAdListener interstitialAdListener = this.f8489c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialLoaded(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC3827b
    public void onCustomEventInterstitialShown() {
        if (!m30535c()) {
            this.f8487a.m30529q();
            InterstitialAdListener interstitialAdListener = this.f8489c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialShown(this);
            }
        }
    }

    public void setInterstitialAdListener(@Nullable InterstitialAdListener interstitialAdListener) {
        this.f8489c = interstitialAdListener;
    }

    public void setKeywords(@Nullable String str) {
        this.f8487a.setKeywords(str);
    }

    public void setLocalExtras(Map<String, Object> map) {
        this.f8487a.setLocalExtras(map);
    }

    public void setTesting(boolean z) {
        this.f8487a.setTesting(z);
    }

    public boolean show() {
        return m30542a(EnumC3838c.SHOWING);
    }
}
