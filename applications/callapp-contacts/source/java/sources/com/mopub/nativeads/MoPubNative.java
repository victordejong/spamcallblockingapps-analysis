package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.RequestParameters;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNative.class */
public class MoPubNative {
    public static final String HAS_MAIN_IMAGE = "has_main_image";

    /* renamed from: a */
    static final MoPubNativeNetworkListener f59991a = new MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.MoPubNative.1
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public final void onNativeFail(NativeErrorCode nativeErrorCode) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public final void onNativeLoad(NativeAd nativeAd) {
            nativeAd.destroy();
        }
    };

    /* renamed from: b */
    final WeakReference<Context> f59992b;

    /* renamed from: c */
    MoPubNativeNetworkListener f59993c;

    /* renamed from: d */
    AdRendererRegistry f59994d;

    /* renamed from: e */
    private final String f59995e;

    /* renamed from: f */
    private Map<String, Object> f59996f;

    /* renamed from: g */
    private AdLoader f59997g;

    /* renamed from: h */
    private C16971b f59998h;

    /* renamed from: i */
    private final AdLoader.Listener f59999i;

    /* renamed from: j */
    private Request f60000j;

    /* renamed from: k */
    private NativeAd f60001k;

    /* renamed from: com.mopub.nativeads.MoPubNative$4 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNative$4.class */
    static final /* synthetic */ class C169464 {

        /* renamed from: a */
        static final /* synthetic */ int[] f60005a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f60005a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f60005a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f60005a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f60005a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f60005a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f60005a[MoPubNetworkError.Reason.UNSPECIFIED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener.class */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    public MoPubNative(Context context, String str, AdRendererRegistry adRendererRegistry, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f59996f = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        this.f59992b = new WeakReference<>(context);
        this.f59995e = str;
        this.f59993c = moPubNativeNetworkListener;
        this.f59994d = adRendererRegistry;
        this.f59999i = new AdLoader.Listener() { // from class: com.mopub.nativeads.MoPubNative.2
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                MoPubNative moPubNative = MoPubNative.this;
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Native ad request failed.", volleyError);
                if (!(volleyError instanceof MoPubNetworkError)) {
                    NetworkResponse networkResponse = volleyError.networkResponse;
                    if (networkResponse != null && networkResponse.statusCode >= 500 && networkResponse.statusCode < 600) {
                        moPubNative.f59993c.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
                        return;
                    } else if (networkResponse != null || DeviceUtils.isNetworkAvailable(moPubNative.f59992b.get())) {
                        moPubNative.f59993c.onNativeFail(NativeErrorCode.UNSPECIFIED);
                        return;
                    } else {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.NO_CONNECTION);
                        moPubNative.f59993c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
                        return;
                    }
                }
                int i = C169464.f60005a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                if (i == 1) {
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                } else if (i == 2) {
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                } else if (i == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.WARMUP);
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                } else if (i == 4) {
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                } else if (i != 5) {
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.UNSPECIFIED);
                } else {
                    moPubNative.f59993c.onNativeFail(NativeErrorCode.TOO_MANY_REQUESTS);
                }
            }

            @Override // com.mopub.network.AdLoader.Listener
            public final void onSuccess(AdResponse adResponse) {
                MoPubNative.m6180a(MoPubNative.this, adResponse);
            }
        };
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    /* renamed from: a */
    static /* synthetic */ void m6180a(MoPubNative moPubNative, final AdResponse adResponse) {
        Context m6183a = moPubNative.m6183a();
        if (m6183a != null) {
            CustomEventNative.CustomEventNativeListener customEventNativeListener = new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.MoPubNative.3
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    if (MoPubNative.this.f59998h != null && MoPubNative.this.f59998h.isStoppedByFloorPrice()) {
                        MoPubNative.this.f59997g = null;
                    }
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode.toString());
                    MoPubNative.this.f59998h = null;
                    MoPubNative.this.m6179a("", nativeErrorCode);
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    MoPubNative.this.f59998h = null;
                    Context m6183a2 = MoPubNative.this.m6183a();
                    if (m6183a2 == null) {
                        return;
                    }
                    MoPubAdRenderer rendererForAd = MoPubNative.this.f59994d.getRendererForAd(baseNativeAd);
                    if (rendererForAd == null) {
                        onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                        return;
                    }
                    if (MoPubNative.this.f59997g != null) {
                        MoPubNative.this.f59997g.creativeDownloadSuccess();
                    }
                    MoPubNative moPubNative2 = MoPubNative.this;
                    moPubNative2.f60001k = new NativeAd(m6183a2, adResponse, moPubNative2.f59995e, baseNativeAd, rendererForAd);
                    MoPubNative.this.f59993c.onNativeLoad(MoPubNative.this.f60001k);
                }
            };
            if (moPubNative.f59998h != null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native adapter is not null.");
                moPubNative.f59998h.m6123a();
            }
            C16971b c16971b = new C16971b(customEventNativeListener);
            moPubNative.f59998h = c16971b;
            c16971b.loadNativeAd(m6183a, moPubNative.f59996f, adResponse);
        }
    }

    /* renamed from: a */
    final Context m6183a() {
        Context context = this.f59992b.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    /* renamed from: a */
    final void m6179a(String str, NativeErrorCode nativeErrorCode) {
        Context m6183a = m6183a();
        if (m6183a == null) {
            return;
        }
        AdLoader adLoader = this.f59997g;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            if (TextUtils.isEmpty(str)) {
                MoPubNativeNetworkListener moPubNativeNetworkListener = this.f59993c;
                NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                if (nativeErrorCode == null) {
                    nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                }
                moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                return;
            }
            this.f59997g = new AdLoader(str, AdFormat.NATIVE, this.f59995e, m6183a, this.f59999i);
        }
        this.f60000j = this.f59997g.loadNextAd(nativeErrorCode);
    }

    public void destroy() {
        this.f59992b.clear();
        Request request = this.f60000j;
        if (request != null) {
            request.cancel();
            this.f60000j = null;
        }
        this.f59997g = null;
        NativeAd nativeAd = this.f60001k;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f60001k = null;
        }
        this.f59993c = f59991a;
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context m6183a = m6183a();
        if (m6183a == null) {
            return;
        }
        if (!DeviceUtils.isNetworkAvailable(m6183a)) {
            this.f59993c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            return;
        }
        Context m6183a2 = m6183a();
        if (m6183a2 == null) {
            return;
        }
        if (requestParameters != null && requestParameters.getDesiredAssets() != null && requestParameters.getDesiredAssets().contains(RequestParameters.NativeAdAsset.MAIN_IMAGE.toString())) {
            this.f59996f.put(HAS_MAIN_IMAGE, Boolean.TRUE);
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        C16980e m6112a = new C16980e(m6183a2).withAdUnitId(this.f59995e).m6112a(requestParameters);
        if (num != null) {
            m6112a.f60165g = String.valueOf(num.intValue());
        }
        String generateUrlString = m6112a.generateUrlString(Constants.HOST);
        if (generateUrlString != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubNative Loading ad from: ".concat(String.valueOf(generateUrlString)));
        }
        m6179a(generateUrlString, (NativeErrorCode) null);
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Can't register a null adRenderer")) {
            return;
        }
        this.f59994d.registerAdRenderer(moPubAdRenderer);
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f59996f = new TreeMap();
        } else {
            this.f59996f = new TreeMap(map);
        }
    }
}
