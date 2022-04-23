package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.impl.background.systemalarm.CommandHandler;
import com.mopub.common.AdReport;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController.class */
public class AdViewController {

    /* renamed from: B */
    public static final FrameLayout.LayoutParams f8385B = new FrameLayout.LayoutParams(-2, -2, 17);

    /* renamed from: C */
    public static final WeakHashMap<View, Boolean> f8386C = new WeakHashMap<>();
    @Nullable

    /* renamed from: b */
    public Context f8389b;
    @Nullable

    /* renamed from: c */
    public MoPubView f8390c;
    @Nullable

    /* renamed from: d */
    public WebViewAdUrlGenerator f8391d;
    @Nullable

    /* renamed from: e */
    public Request f8392e;
    @Nullable

    /* renamed from: f */
    public AdLoader f8393f;
    @Nullable

    /* renamed from: h */
    public AdResponse f8395h;
    @Nullable

    /* renamed from: i */
    public String f8396i;

    /* renamed from: k */
    public boolean f8398k;

    /* renamed from: m */
    public boolean f8400m;

    /* renamed from: r */
    public String f8405r;

    /* renamed from: s */
    public String f8406s;

    /* renamed from: t */
    public Location f8407t;

    /* renamed from: u */
    public Point f8408u;

    /* renamed from: v */
    public WindowInsets f8409v;

    /* renamed from: w */
    public boolean f8410w;

    /* renamed from: x */
    public boolean f8411x;
    @Nullable

    /* renamed from: y */
    public String f8412y;
    @VisibleForTesting

    /* renamed from: n */
    public int f8401n = 1;

    /* renamed from: o */
    public Map<String, Object> f8402o = new HashMap();

    /* renamed from: p */
    public boolean f8403p = true;

    /* renamed from: q */
    public boolean f8404q = true;

    /* renamed from: a */
    public final long f8388a = Utils.generateUniqueId();
    @NonNull

    /* renamed from: g */
    public final AdLoader.Listener f8394g = new C3819a();

    /* renamed from: j */
    public final Runnable f8397j = new RunnableC3820b();
    @Nullable

    /* renamed from: z */
    public Integer f8413z = Integer.valueOf((int) com.aotter.net.trek.ads.view.controller.AdViewController.f1365a);

    /* renamed from: l */
    public Handler f8399l = new Handler();
    @NonNull

    /* renamed from: A */
    public String f8387A = "";

    /* renamed from: com.mopub.mobileads.AdViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$a.class */
    public class C3819a implements AdLoader.Listener {
        public C3819a() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.m30611a(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            AdViewController.this.m30612a(adResponse);
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$b.class */
    public class RunnableC3820b implements Runnable {
        public RunnableC3820b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubView moPubView = AdViewController.this.f8390c;
            if (moPubView != null) {
                AdViewController.this.m30618a(moPubView.m30508l());
            }
            AdViewController.this.m30593i();
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$c.class */
    public class RunnableC3821c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f8416a;

        public RunnableC3821c(View view) {
            this.f8416a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubView moPubView = AdViewController.this.getMoPubView();
            if (moPubView != null) {
                moPubView.removeAllViews();
                View view = this.f8416a;
                moPubView.addView(view, AdViewController.this.m30617a(view));
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$d.class */
    public static /* synthetic */ class C3822d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8418a = new int[MoPubNetworkError.Reason.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f8418a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8418a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public AdViewController(@NonNull Context context, @NonNull MoPubView moPubView) {
        this.f8389b = context;
        this.f8390c = moPubView;
        this.f8391d = new WebViewAdUrlGenerator(this.f8389b.getApplicationContext(), MraidNativeCommandHandler.isStorePictureSupported(this.f8389b));
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public static MoPubErrorCode m30610a(@NonNull VolleyError volleyError, @Nullable Context context) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (!(volleyError instanceof MoPubNetworkError)) {
            return networkResponse == null ? !DeviceUtils.isNetworkAvailable(context) ? MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.UNSPECIFIED : networkResponse.statusCode >= 400 ? MoPubErrorCode.SERVER_ERROR : MoPubErrorCode.UNSPECIFIED;
        }
        int i = C3822d.f8418a[((MoPubNetworkError) volleyError).getReason().ordinal()];
        return i != 1 ? i != 2 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.WARMUP;
    }

    /* renamed from: c */
    public static boolean m30599c(View view) {
        return f8386C.get(view) != null;
    }

    public static void setShouldHonorServerDimensions(View view) {
        f8386C.put(view, true);
    }

    /* renamed from: a */
    public final FrameLayout.LayoutParams m30617a(View view) {
        Integer num;
        AdResponse adResponse = this.f8395h;
        Integer num2 = null;
        if (adResponse != null) {
            num2 = adResponse.getWidth();
            num = this.f8395h.getHeight();
        } else {
            num = null;
        }
        return (num2 == null || num == null || !m30599c(view) || num2.intValue() <= 0 || num.intValue() <= 0) ? f8385B : new FrameLayout.LayoutParams(Dips.asIntPixels(num2.intValue(), this.f8389b), Dips.asIntPixels(num.intValue(), this.f8389b), 17);
    }

    @NonNull
    /* renamed from: a */
    public Integer m30619a(int i) {
        AdResponse adResponse = this.f8395h;
        return adResponse == null ? Integer.valueOf(i) : adResponse.getAdTimeoutMillis(i);
    }

    /* renamed from: a */
    public final void m30620a() {
        this.f8399l.removeCallbacks(this.f8397j);
    }

    /* renamed from: a */
    public void m30618a(Point point) {
        this.f8408u = point;
    }

    /* renamed from: a */
    public void m30614a(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad failed to load.");
        m30587o();
        MoPubView moPubView = getMoPubView();
        if (moPubView != null) {
            if (!TextUtils.isEmpty(this.f8412y)) {
                m30588n();
            }
            moPubView.mo30524a(moPubErrorCode);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30613a(@Nullable MoPubView moPubView, @Nullable String str, @NonNull Map<String, String> map) {
        Preconditions.checkNotNull(map);
        if (moPubView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
        } else {
            moPubView.mo30521a(str, map);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30612a(@NonNull AdResponse adResponse) {
        this.f8401n = 1;
        this.f8395h = adResponse;
        this.f8396i = adResponse.getCustomEventClassName();
        this.f8413z = this.f8395h.getRefreshTimeMillis();
        this.f8392e = null;
        m30613a(this.f8390c, adResponse.getCustomEventClassName(), adResponse.getServerExtras());
        m30588n();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30611a(VolleyError volleyError) {
        if (volleyError instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.f8413z = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode a = m30610a(volleyError, this.f8389b);
        if (a == MoPubErrorCode.SERVER_ERROR) {
            this.f8401n++;
        }
        m30614a(a);
    }

    /* renamed from: a */
    public void m30609a(@NonNull String str, @Nullable MoPubError moPubError) {
        MoPubView moPubView = getMoPubView();
        if (moPubView == null || this.f8389b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            m30587o();
            return;
        }
        synchronized (this) {
            if (this.f8393f == null || !this.f8393f.hasMoreAds()) {
                this.f8393f = new AdLoader(str, moPubView.getAdFormat(), this.f8412y, this.f8389b, this.f8394g);
            }
        }
        this.f8392e = this.f8393f.loadNextAd(moPubError);
    }

    /* renamed from: a */
    public void m30608a(Map<String, Object> map) {
        this.f8402o = map != null ? new TreeMap(map) : new TreeMap();
    }

    /* renamed from: a */
    public final void m30607a(boolean z) {
        if (this.f8411x && this.f8403p != z) {
            String str = z ? "enabled" : "disabled";
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Refresh " + str + " for ad unit (" + this.f8412y + ").");
        }
        this.f8403p = z;
        if (this.f8411x && this.f8403p) {
            m30588n();
        } else if (!this.f8403p) {
            m30620a();
        }
    }

    /* renamed from: b */
    public void m30606b() {
        if (!this.f8398k) {
            m30587o();
            m30607a(false);
            m30620a();
            this.f8390c = null;
            this.f8389b = null;
            this.f8391d = null;
            this.f8387A = "";
            this.f8398k = true;
        }
    }

    /* renamed from: b */
    public void m30605b(View view) {
        this.f8399l.post(new RunnableC3821c(view));
    }

    /* renamed from: b */
    public void m30602b(@Nullable String str, @Nullable MoPubError moPubError) {
        if (str == null) {
            m30614a(MoPubErrorCode.NO_FILL);
            return;
        }
        if (!str.startsWith("javascript:")) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Loading url: " + str);
        }
        if (this.f8392e == null) {
            m30609a(str, moPubError);
        } else if (!TextUtils.isEmpty(this.f8412y)) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Already loading an ad for " + this.f8412y + ", wait to finish.");
        }
    }

    /* renamed from: b */
    public void m30601b(boolean z) {
        this.f8404q = z;
        m30607a(z);
    }

    /* renamed from: b */
    public boolean m30603b(MoPubErrorCode moPubErrorCode) {
        if (moPubErrorCode == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        }
        AdLoader adLoader = this.f8393f;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            m30614a(MoPubErrorCode.NO_FILL);
            return false;
        }
        m30602b("", moPubErrorCode);
        return true;
    }

    /* renamed from: c */
    public void m30600c() {
        m30588n();
        AdLoader adLoader = this.f8393f;
        if (adLoader == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "mAdLoader is not supposed to be null");
            return;
        }
        adLoader.creativeDownloadSuccess();
        this.f8393f = null;
    }

    /* renamed from: d */
    public void m30598d() {
        this.f8400m = false;
        m30589m();
    }

    /* renamed from: e */
    public void m30597e() {
        this.f8400m = true;
        m30591k();
    }

    /* renamed from: f */
    public void m30596f() {
        m30587o();
        loadAd();
    }

    @Nullable
    /* renamed from: g */
    public String m30595g() {
        Location location = null;
        if (this.f8391d == null) {
            return null;
        }
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        AdUrlGenerator withUserDataKeywords = this.f8391d.withAdUnitId(this.f8412y).withKeywords(this.f8405r).withUserDataKeywords(canCollectPersonalInformation ? this.f8406s : null);
        if (canCollectPersonalInformation) {
            location = this.f8407t;
        }
        withUserDataKeywords.withLocation(location).withRequestedAdSize(this.f8408u).withWindowInsets(this.f8409v);
        return this.f8391d.generateUrlString(Constants.HOST);
    }

    public int getAdHeight() {
        AdResponse adResponse = this.f8395h;
        if (adResponse == null || adResponse.getHeight() == null) {
            return 0;
        }
        return this.f8395h.getHeight().intValue();
    }

    @Nullable
    public AdReport getAdReport() {
        String str = this.f8412y;
        if (str == null || this.f8395h == null) {
            return null;
        }
        return new AdReport(str, ClientMetadata.getInstance(this.f8389b), this.f8395h);
    }

    public String getAdUnitId() {
        return this.f8412y;
    }

    public int getAdWidth() {
        AdResponse adResponse = this.f8395h;
        if (adResponse == null || adResponse.getWidth() == null) {
            return 0;
        }
        return this.f8395h.getWidth().intValue();
    }

    @Deprecated
    public boolean getAutorefreshEnabled() {
        return getCurrentAutoRefreshStatus();
    }

    public long getBroadcastIdentifier() {
        return this.f8388a;
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.f8403p;
    }

    @Nullable
    public String getCustomEventClassName() {
        return this.f8396i;
    }

    public String getKeywords() {
        return this.f8405r;
    }

    public Location getLocation() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f8407t;
    }

    @Nullable
    public MoPubView getMoPubView() {
        return this.f8390c;
    }

    public boolean getTesting() {
        return this.f8410w;
    }

    public String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f8406s;
    }

    /* renamed from: h */
    public Map<String, Object> m30594h() {
        TreeMap treeMap;
        Map<String, Object> map = this.f8402o;
        return treeMap != null ? new TreeMap((Map) treeMap) : new TreeMap();
    }

    /* renamed from: i */
    public final void m30593i() {
        this.f8411x = true;
        if (TextUtils.isEmpty(this.f8412y)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
            m30614a(MoPubErrorCode.MISSING_AD_UNIT_ID);
        } else if (!m30592j()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad because there is no network connectivity.");
            m30614a(MoPubErrorCode.NO_CONNECTION);
        } else {
            m30602b(m30595g(), null);
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: j */
    public final boolean m30592j() {
        Context context = this.f8389b;
        if (context == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f8389b.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        }
        boolean z = false;
        if (networkInfo != null) {
            z = false;
            if (networkInfo.isConnected()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public void m30591k() {
        m30607a(false);
    }

    /* renamed from: l */
    public void m30590l() {
        AdResponse adResponse = this.f8395h;
        if (adResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrl(), this.f8389b);
        }
    }

    public void loadAd() {
        this.f8401n = 1;
        m30593i();
    }

    /* renamed from: m */
    public void m30589m() {
        if (this.f8404q && !this.f8400m) {
            m30607a(true);
        }
    }

    /* renamed from: n */
    public void m30588n() {
        Integer num;
        m30620a();
        if (this.f8403p && (num = this.f8413z) != null && num.intValue() > 0) {
            this.f8399l.postDelayed(this.f8397j, Math.min((long) CommandHandler.WORK_PROCESSING_TIME_IN_MS, this.f8413z.intValue() * ((long) Math.pow(1.5d, this.f8401n))));
        }
    }

    /* renamed from: o */
    public void m30587o() {
        Request request = this.f8392e;
        if (request != null) {
            if (!request.isCanceled()) {
                this.f8392e.cancel();
            }
            this.f8392e = null;
        }
        this.f8393f = null;
    }

    /* renamed from: p */
    public void m30586p() {
        AdResponse adResponse = this.f8395h;
        if (adResponse != null) {
            String requestId = adResponse.getRequestId();
            if (this.f8387A.equals(requestId)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ignoring duplicate impression.");
                return;
            }
            if (requestId != null) {
                this.f8387A = requestId;
            }
            TrackingRequest.makeTrackingHttpRequest(this.f8395h.getImpressionTrackingUrls(), this.f8389b);
            new SingleImpression(this.f8395h.getAdUnitId(), this.f8395h.getImpressionData()).sendImpression();
        }
    }

    @Deprecated
    public void reload() {
        loadAd();
    }

    public void setAdUnitId(@NonNull String str) {
        this.f8412y = str;
    }

    public void setKeywords(String str) {
        this.f8405r = str;
    }

    public void setLocation(Location location) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f8407t = null;
        } else {
            this.f8407t = location;
        }
    }

    public void setTesting(boolean z) {
        this.f8410w = z;
    }

    public void setUserDataKeywords(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f8406s = null;
        } else {
            this.f8406s = str;
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        this.f8409v = windowInsets;
    }
}
