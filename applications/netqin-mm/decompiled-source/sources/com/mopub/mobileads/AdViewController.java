package com.mopub.mobileads;

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
    public static final FrameLayout.LayoutParams f33982B = new FrameLayout.LayoutParams(-2, -2, 17);

    /* renamed from: C */
    public static final WeakHashMap<View, Boolean> f33983C = new WeakHashMap<>();

    /* renamed from: b */
    public Context f33986b;

    /* renamed from: c */
    public MoPubView f33987c;

    /* renamed from: d */
    public WebViewAdUrlGenerator f33988d;

    /* renamed from: e */
    public Request f33989e;

    /* renamed from: f */
    public AdLoader f33990f;

    /* renamed from: h */
    public AdResponse f33992h;

    /* renamed from: i */
    public String f33993i;

    /* renamed from: k */
    public boolean f33995k;

    /* renamed from: m */
    public boolean f33997m;

    /* renamed from: r */
    public String f34002r;

    /* renamed from: s */
    public String f34003s;

    /* renamed from: t */
    public Location f34004t;

    /* renamed from: u */
    public Point f34005u;

    /* renamed from: v */
    public WindowInsets f34006v;

    /* renamed from: w */
    public boolean f34007w;

    /* renamed from: x */
    public boolean f34008x;

    /* renamed from: y */
    public String f34009y;
    @VisibleForTesting

    /* renamed from: n */
    public int f33998n = 1;

    /* renamed from: o */
    public Map<String, Object> f33999o = new HashMap();

    /* renamed from: p */
    public boolean f34000p = true;

    /* renamed from: q */
    public boolean f34001q = true;

    /* renamed from: a */
    public final long f33985a = Utils.generateUniqueId();

    /* renamed from: g */
    public final AdLoader.Listener f33991g = new C8753a();

    /* renamed from: j */
    public final Runnable f33994j = new RunnableC8754b();

    /* renamed from: z */
    public Integer f34010z = 60000;

    /* renamed from: l */
    public Handler f33996l = new Handler();

    /* renamed from: A */
    public String f33984A = "";

    /* renamed from: com.mopub.mobileads.AdViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$a.class */
    public class C8753a implements AdLoader.Listener {
        public C8753a() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.m4473a(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            AdViewController.this.m4474a(adResponse);
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$b.class */
    public class RunnableC8754b implements Runnable {
        public RunnableC8754b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubView moPubView = AdViewController.this.f33987c;
            if (moPubView != null) {
                AdViewController.this.m4480a(moPubView.mo4308l());
            }
            AdViewController.this.m4455i();
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$c.class */
    public class RunnableC8755c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f34013a;

        public RunnableC8755c(View view) {
            this.f34013a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubView moPubView = AdViewController.this.getMoPubView();
            if (moPubView != null) {
                moPubView.removeAllViews();
                View view = this.f34013a;
                moPubView.addView(view, AdViewController.this.m4479a(view));
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdViewController$d.class */
    public static /* synthetic */ class C8756d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34015a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f34015a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34015a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public AdViewController(Context context, MoPubView moPubView) {
        this.f33986b = context;
        this.f33987c = moPubView;
        this.f33988d = new WebViewAdUrlGenerator(this.f33986b.getApplicationContext(), MraidNativeCommandHandler.isStorePictureSupported(this.f33986b));
    }

    @VisibleForTesting
    /* renamed from: a */
    public static MoPubErrorCode m4472a(VolleyError volleyError, Context context) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (!(volleyError instanceof MoPubNetworkError)) {
            return networkResponse == null ? !DeviceUtils.isNetworkAvailable(context) ? MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.UNSPECIFIED : networkResponse.statusCode >= 400 ? MoPubErrorCode.SERVER_ERROR : MoPubErrorCode.UNSPECIFIED;
        }
        int i = C8756d.f34015a[((MoPubNetworkError) volleyError).getReason().ordinal()];
        return i != 1 ? i != 2 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NO_FILL : MoPubErrorCode.WARMUP;
    }

    /* renamed from: c */
    public static boolean m4461c(View view) {
        return f33983C.get(view) != null;
    }

    public static void setShouldHonorServerDimensions(View view) {
        f33983C.put(view, true);
    }

    /* renamed from: a */
    public final FrameLayout.LayoutParams m4479a(View view) {
        Integer num;
        AdResponse adResponse = this.f33992h;
        Integer num2 = null;
        if (adResponse != null) {
            num2 = adResponse.getWidth();
            num = this.f33992h.getHeight();
        } else {
            num = null;
        }
        return (num2 == null || num == null || !m4461c(view) || num2.intValue() <= 0 || num.intValue() <= 0) ? f33982B : new FrameLayout.LayoutParams(Dips.asIntPixels(num2.intValue(), this.f33986b), Dips.asIntPixels(num.intValue(), this.f33986b), 17);
    }

    /* renamed from: a */
    public Integer m4481a(int i) {
        AdResponse adResponse = this.f33992h;
        return adResponse == null ? Integer.valueOf(i) : adResponse.getAdTimeoutMillis(i);
    }

    /* renamed from: a */
    public final void m4482a() {
        this.f33996l.removeCallbacks(this.f33994j);
    }

    /* renamed from: a */
    public void m4480a(Point point) {
        this.f34005u = point;
    }

    /* renamed from: a */
    public void m4476a(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad failed to load.");
        m4449o();
        MoPubView moPubView = getMoPubView();
        if (moPubView != null) {
            if (!TextUtils.isEmpty(this.f34009y)) {
                m4450n();
            }
            moPubView.mo4323a(moPubErrorCode);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4475a(MoPubView moPubView, String str, Map<String, String> map) {
        Preconditions.checkNotNull(map);
        if (moPubView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
        } else {
            moPubView.mo4320a(str, map);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4474a(AdResponse adResponse) {
        this.f33998n = 1;
        this.f33992h = adResponse;
        this.f33993i = adResponse.getCustomEventClassName();
        this.f34010z = this.f33992h.getRefreshTimeMillis();
        this.f33989e = null;
        m4475a(this.f33987c, adResponse.getCustomEventClassName(), adResponse.getServerExtras());
        m4450n();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4473a(VolleyError volleyError) {
        if (volleyError instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.f34010z = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode a = m4472a(volleyError, this.f33986b);
        if (a == MoPubErrorCode.SERVER_ERROR) {
            this.f33998n++;
        }
        m4476a(a);
    }

    /* renamed from: a */
    public void m4471a(String str, MoPubError moPubError) {
        MoPubView moPubView = getMoPubView();
        if (moPubView == null || this.f33986b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            m4449o();
            return;
        }
        synchronized (this) {
            if (this.f33990f == null || !this.f33990f.hasMoreAds()) {
                this.f33990f = new AdLoader(str, moPubView.getAdFormat(), this.f34009y, this.f33986b, this.f33991g);
            }
        }
        this.f33989e = this.f33990f.loadNextAd(moPubError);
    }

    /* renamed from: a */
    public void m4470a(Map<String, Object> map) {
        this.f33999o = map != null ? new TreeMap(map) : new TreeMap();
    }

    /* renamed from: a */
    public final void m4469a(boolean z) {
        if (this.f34008x && this.f34000p != z) {
            String str = z ? "enabled" : "disabled";
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Refresh " + str + " for ad unit (" + this.f34009y + ").");
        }
        this.f34000p = z;
        if (this.f34008x && z) {
            m4450n();
        } else if (!this.f34000p) {
            m4482a();
        }
    }

    /* renamed from: b */
    public void m4468b() {
        if (!this.f33995k) {
            m4449o();
            m4469a(false);
            m4482a();
            this.f33987c = null;
            this.f33986b = null;
            this.f33988d = null;
            this.f33984A = "";
            this.f33995k = true;
        }
    }

    /* renamed from: b */
    public void m4467b(View view) {
        this.f33996l.post(new RunnableC8755c(view));
    }

    /* renamed from: b */
    public void m4464b(String str, MoPubError moPubError) {
        if (str == null) {
            m4476a(MoPubErrorCode.NO_FILL);
            return;
        }
        if (!str.startsWith("javascript:")) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Loading url: " + str);
        }
        if (this.f33989e == null) {
            m4471a(str, moPubError);
        } else if (!TextUtils.isEmpty(this.f34009y)) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Already loading an ad for " + this.f34009y + ", wait to finish.");
        }
    }

    /* renamed from: b */
    public void m4463b(boolean z) {
        this.f34001q = z;
        m4469a(z);
    }

    /* renamed from: b */
    public boolean m4465b(MoPubErrorCode moPubErrorCode) {
        if (moPubErrorCode == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        }
        AdLoader adLoader = this.f33990f;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            m4476a(MoPubErrorCode.NO_FILL);
            return false;
        }
        m4464b("", moPubErrorCode);
        return true;
    }

    /* renamed from: c */
    public void m4462c() {
        m4450n();
        AdLoader adLoader = this.f33990f;
        if (adLoader == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "mAdLoader is not supposed to be null");
            return;
        }
        adLoader.creativeDownloadSuccess();
        this.f33990f = null;
    }

    /* renamed from: d */
    public void m4460d() {
        this.f33997m = false;
        m4451m();
    }

    /* renamed from: e */
    public void m4459e() {
        this.f33997m = true;
        m4453k();
    }

    /* renamed from: f */
    public void m4458f() {
        m4449o();
        loadAd();
    }

    /* renamed from: g */
    public String m4457g() {
        Location location = null;
        if (this.f33988d == null) {
            return null;
        }
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        AdUrlGenerator withUserDataKeywords = this.f33988d.withAdUnitId(this.f34009y).withKeywords(this.f34002r).withUserDataKeywords(canCollectPersonalInformation ? this.f34003s : null);
        if (canCollectPersonalInformation) {
            location = this.f34004t;
        }
        withUserDataKeywords.withLocation(location).withRequestedAdSize(this.f34005u).withWindowInsets(this.f34006v);
        return this.f33988d.generateUrlString(Constants.HOST);
    }

    public int getAdHeight() {
        AdResponse adResponse = this.f33992h;
        if (adResponse == null || adResponse.getHeight() == null) {
            return 0;
        }
        return this.f33992h.getHeight().intValue();
    }

    public AdReport getAdReport() {
        String str = this.f34009y;
        if (str == null || this.f33992h == null) {
            return null;
        }
        return new AdReport(str, ClientMetadata.getInstance(this.f33986b), this.f33992h);
    }

    public String getAdUnitId() {
        return this.f34009y;
    }

    public int getAdWidth() {
        AdResponse adResponse = this.f33992h;
        if (adResponse == null || adResponse.getWidth() == null) {
            return 0;
        }
        return this.f33992h.getWidth().intValue();
    }

    @Deprecated
    public boolean getAutorefreshEnabled() {
        return getCurrentAutoRefreshStatus();
    }

    public long getBroadcastIdentifier() {
        return this.f33985a;
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.f34000p;
    }

    public String getCustomEventClassName() {
        return this.f33993i;
    }

    public String getKeywords() {
        return this.f34002r;
    }

    public Location getLocation() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f34004t;
    }

    public MoPubView getMoPubView() {
        return this.f33987c;
    }

    public boolean getTesting() {
        return this.f34007w;
    }

    public String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f34003s;
    }

    /* renamed from: h */
    public Map<String, Object> m4456h() {
        return this.f33999o != null ? new TreeMap(this.f33999o) : new TreeMap();
    }

    /* renamed from: i */
    public final void m4455i() {
        this.f34008x = true;
        if (TextUtils.isEmpty(this.f34009y)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
            m4476a(MoPubErrorCode.MISSING_AD_UNIT_ID);
        } else if (!m4454j()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad because there is no network connectivity.");
            m4476a(MoPubErrorCode.NO_CONNECTION);
        } else {
            m4464b(m4457g(), null);
        }
    }

    /* renamed from: j */
    public final boolean m4454j() {
        Context context = this.f33986b;
        if (context == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f33986b.getSystemService("connectivity");
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
    public void m4453k() {
        m4469a(false);
    }

    /* renamed from: l */
    public void m4452l() {
        AdResponse adResponse = this.f33992h;
        if (adResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrl(), this.f33986b);
        }
    }

    public void loadAd() {
        this.f33998n = 1;
        m4455i();
    }

    /* renamed from: m */
    public void m4451m() {
        if (this.f34001q && !this.f33997m) {
            m4469a(true);
        }
    }

    /* renamed from: n */
    public void m4450n() {
        Integer num;
        m4482a();
        if (this.f34000p && (num = this.f34010z) != null && num.intValue() > 0) {
            this.f33996l.postDelayed(this.f33994j, Math.min(600000L, this.f34010z.intValue() * ((long) Math.pow(1.5d, this.f33998n))));
        }
    }

    /* renamed from: o */
    public void m4449o() {
        Request request = this.f33989e;
        if (request != null) {
            if (!request.isCanceled()) {
                this.f33989e.cancel();
            }
            this.f33989e = null;
        }
        this.f33990f = null;
    }

    /* renamed from: p */
    public void m4448p() {
        AdResponse adResponse = this.f33992h;
        if (adResponse != null) {
            String requestId = adResponse.getRequestId();
            if (this.f33984A.equals(requestId)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ignoring duplicate impression.");
                return;
            }
            if (requestId != null) {
                this.f33984A = requestId;
            }
            TrackingRequest.makeTrackingHttpRequest(this.f33992h.getImpressionTrackingUrls(), this.f33986b);
            new SingleImpression(this.f33992h.getAdUnitId(), this.f33992h.getImpressionData()).sendImpression();
        }
    }

    @Deprecated
    public void reload() {
        loadAd();
    }

    public void setAdUnitId(String str) {
        this.f34009y = str;
    }

    public void setKeywords(String str) {
        this.f34002r = str;
    }

    public void setLocation(Location location) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f34004t = null;
        } else {
            this.f34004t = location;
        }
    }

    public void setTesting(boolean z) {
        this.f34007w = z;
    }

    public void setUserDataKeywords(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f34003s = null;
        } else {
            this.f34003s = str;
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        this.f34006v = windowInsets;
    }
}
