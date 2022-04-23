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

    /* renamed from: a  reason: collision with root package name */
    static final MoPubNativeNetworkListener f34572a = new MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.MoPubNative.1
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public final void onNativeFail(NativeErrorCode nativeErrorCode) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public final void onNativeLoad(NativeAd nativeAd) {
            nativeAd.destroy();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final WeakReference<Context> f34573b;

    /* renamed from: c  reason: collision with root package name */
    MoPubNativeNetworkListener f34574c;

    /* renamed from: d  reason: collision with root package name */
    AdRendererRegistry f34575d;
    private final String e;
    private Map<String, Object> f;
    private AdLoader g;
    private b h;
    private final AdLoader.Listener i;
    private Request j;
    private NativeAd k;

    /* renamed from: com.mopub.nativeads.MoPubNative$4  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNative$4.class */
    static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34579a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f34579a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34579a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34579a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34579a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34579a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34579a[MoPubNetworkError.Reason.UNSPECIFIED.ordinal()] = 6;
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
        this.f = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        this.f34573b = new WeakReference<>(context);
        this.e = str;
        this.f34574c = moPubNativeNetworkListener;
        this.f34575d = adRendererRegistry;
        this.i = new AdLoader.Listener() { // from class: com.mopub.nativeads.MoPubNative.2
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                MoPubNative moPubNative = MoPubNative.this;
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Native ad request failed.", volleyError);
                if (volleyError instanceof MoPubNetworkError) {
                    int i = AnonymousClass4.f34579a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                    if (i == 1) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                    } else if (i == 2) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                    } else if (i == 3) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.WARMUP);
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    } else if (i == 4) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    } else if (i != 5) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.UNSPECIFIED);
                    } else {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.TOO_MANY_REQUESTS);
                    }
                } else {
                    NetworkResponse networkResponse = volleyError.networkResponse;
                    if (networkResponse != null && networkResponse.statusCode >= 500 && networkResponse.statusCode < 600) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
                    } else if (networkResponse != null || DeviceUtils.isNetworkAvailable(moPubNative.f34573b.get())) {
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.UNSPECIFIED);
                    } else {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.NO_CONNECTION);
                        moPubNative.f34574c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
                    }
                }
            }

            @Override // com.mopub.network.AdLoader.Listener
            public final void onSuccess(AdResponse adResponse) {
                MoPubNative.a(MoPubNative.this, adResponse);
            }
        };
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    static /* synthetic */ void a(MoPubNative moPubNative, final AdResponse adResponse) {
        Context a2 = moPubNative.a();
        if (a2 != null) {
            CustomEventNative.CustomEventNativeListener customEventNativeListener = new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.MoPubNative.3
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    if (MoPubNative.this.h != null && MoPubNative.this.h.isStoppedByFloorPrice()) {
                        MoPubNative.this.g = null;
                    }
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode.toString());
                    MoPubNative.this.h = null;
                    MoPubNative.this.a("", nativeErrorCode);
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public final void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    MoPubNative.this.h = null;
                    Context a3 = MoPubNative.this.a();
                    if (a3 != null) {
                        MoPubAdRenderer rendererForAd = MoPubNative.this.f34575d.getRendererForAd(baseNativeAd);
                        if (rendererForAd == null) {
                            onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                            return;
                        }
                        if (MoPubNative.this.g != null) {
                            MoPubNative.this.g.creativeDownloadSuccess();
                        }
                        MoPubNative moPubNative2 = MoPubNative.this;
                        moPubNative2.k = new NativeAd(a3, adResponse, moPubNative2.e, baseNativeAd, rendererForAd);
                        MoPubNative.this.f34574c.onNativeLoad(MoPubNative.this.k);
                    }
                }
            };
            if (moPubNative.h != null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native adapter is not null.");
                moPubNative.h.a();
            }
            b bVar = new b(customEventNativeListener);
            moPubNative.h = bVar;
            bVar.loadNativeAd(a2, moPubNative.f, adResponse);
        }
    }

    final Context a() {
        Context context = this.f34573b.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    final void a(String str, NativeErrorCode nativeErrorCode) {
        Context a2 = a();
        if (a2 != null) {
            AdLoader adLoader = this.g;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                if (TextUtils.isEmpty(str)) {
                    MoPubNativeNetworkListener moPubNativeNetworkListener = this.f34574c;
                    NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                    if (nativeErrorCode == null) {
                        nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                    }
                    moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                    return;
                }
                this.g = new AdLoader(str, AdFormat.NATIVE, this.e, a2, this.i);
            }
            this.j = this.g.loadNextAd(nativeErrorCode);
        }
    }

    public void destroy() {
        this.f34573b.clear();
        Request request = this.j;
        if (request != null) {
            request.cancel();
            this.j = null;
        }
        this.g = null;
        NativeAd nativeAd = this.k;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.k = null;
        }
        this.f34574c = f34572a;
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context a2 = a();
        if (a2 != null) {
            if (!DeviceUtils.isNetworkAvailable(a2)) {
                this.f34574c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
                return;
            }
            Context a3 = a();
            if (a3 != null) {
                if (!(requestParameters == null || requestParameters.getDesiredAssets() == null || !requestParameters.getDesiredAssets().contains(RequestParameters.NativeAdAsset.MAIN_IMAGE.toString()))) {
                    this.f.put(HAS_MAIN_IMAGE, Boolean.TRUE);
                }
                MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
                e a4 = new e(a3).withAdUnitId(this.e).a(requestParameters);
                if (num != null) {
                    a4.g = String.valueOf(num.intValue());
                }
                String generateUrlString = a4.generateUrlString(Constants.HOST);
                if (generateUrlString != null) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubNative Loading ad from: ".concat(String.valueOf(generateUrlString)));
                }
                a(generateUrlString, (NativeErrorCode) null);
            }
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Can't register a null adRenderer")) {
            this.f34575d.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f = new TreeMap();
        } else {
            this.f = new TreeMap(map);
        }
    }
}
