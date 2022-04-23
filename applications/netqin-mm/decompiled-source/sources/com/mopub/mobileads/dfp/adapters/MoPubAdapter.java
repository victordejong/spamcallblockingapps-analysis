package com.mopub.mobileads.dfp.adapters;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.StaticNativeAd;
import com.mopub.nativeads.ViewBinder;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import p131c.p161d.p162a.p163b.p168i.C2483a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter.class */
public class MoPubAdapter implements MediationNativeAdapter, MediationBannerAdapter, MediationInterstitialAdapter {
    public static final double DEFAULT_MOPUB_IMAGE_SCALE = 1.0d;
    public static final String MOPUB_NATIVE_CEVENT_VERSION = "gmext";
    public static final String TAG = "MoPubAdapter";

    /* renamed from: a */
    public MoPubView f34448a;

    /* renamed from: b */
    public AdSize f34449b;

    /* renamed from: c */
    public MoPubInterstitial f34450c;

    /* renamed from: d */
    public MediationInterstitialListener f34451d;

    /* renamed from: e */
    public int f34452e;

    /* renamed from: f */
    public int f34453f;

    /* renamed from: g */
    public NativeAd.MoPubNativeEventListener f34454g;

    /* renamed from: h */
    public RequestParameters f34455h;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder.class */
    public static final class BundleBuilder {

        /* renamed from: a */
        public int f34456a;

        public Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putInt("privacy_icon_size_dp", this.f34456a);
            return bundle;
        }

        public BundleBuilder setPrivacyIconSize(int i) {
            this.f34456a = i;
            return this;
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$a.class */
    public class C8855a implements MoPubNative.MoPubNativeNetworkListener {

        /* renamed from: a */
        public final /* synthetic */ MediationNativeListener f34457a;

        /* renamed from: b */
        public final /* synthetic */ NativeMediationAdRequest f34458b;

        /* renamed from: c */
        public final /* synthetic */ Context f34459c;

        /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$a$a.class */
        public class C8856a implements DrawableDownloadListener {

            /* renamed from: a */
            public final /* synthetic */ StaticNativeAd f34461a;

            public C8856a(StaticNativeAd staticNativeAd) {
                this.f34461a = staticNativeAd;
            }

            @Override // com.mopub.mobileads.dfp.adapters.DrawableDownloadListener
            public void onDownloadFailure() {
                Log.e(MoPubAdapter.TAG, "Failed to download images");
                C8855a aVar = C8855a.this;
                aVar.f34457a.mo16618a(MoPubAdapter.this, 0);
            }

            @Override // com.mopub.mobileads.dfp.adapters.DrawableDownloadListener
            public void onDownloadSuccess(HashMap<String, Drawable> hashMap) {
                Drawable drawable = hashMap.get(DownloadDrawablesAsync.KEY_ICON);
                Drawable drawable2 = hashMap.get(DownloadDrawablesAsync.KEY_IMAGE);
                if (C8855a.this.f34458b.mo16532d()) {
                    C8855a aVar = C8855a.this;
                    MoPubUnifiedNativeAdMapper moPubUnifiedNativeAdMapper = new MoPubUnifiedNativeAdMapper(aVar.f34459c, this.f34461a, drawable, drawable2, MoPubAdapter.this.f34452e, MoPubAdapter.this.f34453f);
                    C8855a aVar2 = C8855a.this;
                    aVar2.f34457a.mo16613a(MoPubAdapter.this, moPubUnifiedNativeAdMapper);
                } else if (C8855a.this.f34458b.mo16530f()) {
                    C8855a aVar3 = C8855a.this;
                    MoPubNativeAppInstallAdMapper moPubNativeAppInstallAdMapper = new MoPubNativeAppInstallAdMapper(aVar3.f34459c, this.f34461a, drawable, drawable2, MoPubAdapter.this.f34452e, MoPubAdapter.this.f34453f);
                    C8855a aVar4 = C8855a.this;
                    aVar4.f34457a.mo16614a(MoPubAdapter.this, moPubNativeAppInstallAdMapper);
                }
            }
        }

        public C8855a(MediationNativeListener mediationNativeListener, NativeMediationAdRequest nativeMediationAdRequest, Context context) {
            this.f34457a = mediationNativeListener;
            this.f34458b = nativeMediationAdRequest;
            this.f34459c = context;
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
            int i = C8861f.f34469a[nativeErrorCode.ordinal()];
            if (i == 1) {
                this.f34457a.mo16618a(MoPubAdapter.this, 3);
            } else if (i == 2) {
                this.f34457a.mo16618a(MoPubAdapter.this, 1);
            } else if (i == 3) {
                this.f34457a.mo16618a(MoPubAdapter.this, 1);
            } else if (i != 4) {
                this.f34457a.mo16618a(MoPubAdapter.this, 0);
            } else {
                this.f34457a.mo16618a(MoPubAdapter.this, 0);
            }
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            nativeAd.setMoPubNativeEventListener(MoPubAdapter.this.f34454g);
            BaseNativeAd baseNativeAd = nativeAd.getBaseNativeAd();
            if (!(baseNativeAd instanceof StaticNativeAd)) {
                Log.d(MoPubAdapter.TAG, "Loaded native ad is not an instance of StaticNativeAd");
                this.f34457a.mo16618a(MoPubAdapter.this, 0);
                return;
            }
            StaticNativeAd staticNativeAd = (StaticNativeAd) baseNativeAd;
            HashMap hashMap = new HashMap();
            try {
                hashMap.put(DownloadDrawablesAsync.KEY_ICON, new URL(staticNativeAd.getIconImageUrl()));
                hashMap.put(DownloadDrawablesAsync.KEY_IMAGE, new URL(staticNativeAd.getMainImageUrl()));
            } catch (MalformedURLException e) {
                Log.d(MoPubAdapter.TAG, "Invalid ad response received from MoPub. Image URLs are malformed");
                this.f34457a.mo16618a(MoPubAdapter.this, 0);
            }
            new DownloadDrawablesAsync(new C8856a(staticNativeAd)).execute(hashMap);
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$b.class */
    public class C8857b implements SdkInitializationListener {

        /* renamed from: a */
        public final /* synthetic */ MoPubNative f34463a;

        public C8857b(MoPubNative moPubNative) {
            this.f34463a = moPubNative;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            this.f34463a.makeRequest(MoPubAdapter.this.f34455h);
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$c.class */
    public class C8858c implements NativeAd.MoPubNativeEventListener {

        /* renamed from: a */
        public final /* synthetic */ MediationNativeListener f34465a;

        public C8858c(MediationNativeListener mediationNativeListener) {
            this.f34465a = mediationNativeListener;
        }

        @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
        public void onClick(View view) {
            this.f34465a.mo16601d(MoPubAdapter.this);
            this.f34465a.mo16619a(MoPubAdapter.this);
            this.f34465a.mo16598e(MoPubAdapter.this);
            Log.d(MoPubAdapter.TAG, "onClick");
        }

        @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
        public void onImpression(View view) {
            this.f34465a.mo16597f(MoPubAdapter.this);
            Log.d(MoPubAdapter.TAG, "onImpression");
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$d.class */
    public class C8859d implements SdkInitializationListener {
        public C8859d() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubAdapter.this.f34448a.loadAd();
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$e.class */
    public class C8860e implements SdkInitializationListener {
        public C8860e() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubAdapter.this.f34450c.load();
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$f.class */
    public static /* synthetic */ class C8861f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34469a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f34470b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006b -> B:30:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006f -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0073 -> B:38:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0077 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007b -> B:28:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0083 -> B:36:0x005f). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f34470b = iArr;
            try {
                iArr[MoPubErrorCode.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34470b[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34470b[MoPubErrorCode.SERVER_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34470b[MoPubErrorCode.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[NativeErrorCode.values().length];
            f34469a = iArr2;
            try {
                iArr2[NativeErrorCode.EMPTY_AD_RESPONSE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34469a[NativeErrorCode.INVALID_REQUEST_URL.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34469a[NativeErrorCode.CONNECTION_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34469a[NativeErrorCode.UNSPECIFIED.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$g.class */
    public class C8862g implements MoPubView.BannerAdListener {

        /* renamed from: a */
        public MediationBannerListener f34471a;

        public C8862g(MediationBannerListener mediationBannerListener) {
            this.f34471a = mediationBannerListener;
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            this.f34471a.mo16610b(MoPubAdapter.this);
            this.f34471a.mo16603d(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
            this.f34471a.mo16626a(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
            this.f34471a.mo16600e(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            try {
                int i = C8861f.f34470b[moPubErrorCode.ordinal()];
                if (i == 1) {
                    this.f34471a.mo16625a(MoPubAdapter.this, 3);
                } else if (i == 2) {
                    this.f34471a.mo16625a(MoPubAdapter.this, 2);
                } else if (i != 3) {
                    this.f34471a.mo16625a(MoPubAdapter.this, 0);
                } else {
                    this.f34471a.mo16625a(MoPubAdapter.this, 1);
                }
            } catch (NoClassDefFoundError e) {
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
            if (MoPubAdapter.this.f34449b.m18133b() == moPubView.getAdWidth() && MoPubAdapter.this.f34449b.m18137a() == moPubView.getAdHeight()) {
                this.f34471a.mo16606c(MoPubAdapter.this);
                return;
            }
            Log.e(MoPubAdapter.TAG, "The banner ad size loaded does not match the request size. Update the ad size on your MoPub UI to match the request size.");
            this.f34471a.mo16625a(MoPubAdapter.this, 3);
        }
    }

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubAdapter$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$h.class */
    public class C8863h implements MoPubInterstitial.InterstitialAdListener {

        /* renamed from: a */
        public MediationInterstitialListener f34473a;

        public C8863h(MediationInterstitialListener mediationInterstitialListener) {
            this.f34473a = mediationInterstitialListener;
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            this.f34473a.mo16609b(MoPubAdapter.this);
            this.f34473a.mo16622a(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            this.f34473a.mo16602d(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            try {
                int i = C8861f.f34470b[moPubErrorCode.ordinal()];
                if (i == 1) {
                    this.f34473a.mo16621a(MoPubAdapter.this, 3);
                } else if (i == 2) {
                    this.f34473a.mo16621a(MoPubAdapter.this, 2);
                } else if (i == 3) {
                    this.f34473a.mo16621a(MoPubAdapter.this, 1);
                } else if (i != 4) {
                    this.f34473a.mo16621a(MoPubAdapter.this, 0);
                } else {
                    Log.i(MoPubAdapter.TAG, "The MoPub Ad has expired. Please make a new Ad Request.");
                    this.f34473a.mo16621a(MoPubAdapter.this, 3);
                }
            } catch (NoClassDefFoundError e) {
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            this.f34473a.mo16605c(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            this.f34473a.mo16599e(MoPubAdapter.this);
        }
    }

    /* renamed from: a */
    public static int m4152a(Date date) {
        return Calendar.getInstance().get(1) - Integer.parseInt((String) DateFormat.format("yyyy", date));
    }

    /* renamed from: a */
    public static AdSize m4155a(AdSize adSize, AdSize adSize2) {
        if (adSize.m18133b() * adSize.m18137a() <= adSize2.m18133b() * adSize2.m18137a()) {
            adSize = adSize2;
        }
        return adSize;
    }

    /* renamed from: a */
    public static boolean m4154a(MediationAdRequest mediationAdRequest) {
        return (mediationAdRequest.mo16529g() == null && mediationAdRequest.mo16524l() == -1 && mediationAdRequest.mo16526j() == null) ? false : true;
    }

    /* renamed from: b */
    public static boolean m4151b(AdSize adSize, AdSize adSize2) {
        if (adSize2 == null) {
            return false;
        }
        int b = adSize.m18133b();
        int b2 = adSize2.m18133b();
        int a = adSize.m18137a();
        int a2 = adSize2.m18137a();
        double d = b;
        Double.isNaN(d);
        if (d * 0.5d > b2 || b < b2) {
            return false;
        }
        double d2 = a;
        Double.isNaN(d2);
        return d2 * 0.7d <= ((double) a2) && a >= a2;
    }

    public static AdSize findClosestSize(Context context, AdSize adSize, ArrayList<AdSize> arrayList) {
        AdSize adSize2 = null;
        AdSize adSize3 = null;
        if (arrayList != null) {
            if (adSize != null) {
                float f = context.getResources().getDisplayMetrics().density;
                AdSize adSize4 = new AdSize(Math.round(adSize.m18132b(context) / f), Math.round(adSize.m18135a(context) / f));
                Iterator<AdSize> it = arrayList.iterator();
                while (true) {
                    adSize3 = adSize2;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdSize next = it.next();
                    if (m4151b(adSize4, next)) {
                        adSize2 = adSize2 == null ? next : m4155a(adSize2, next);
                    }
                }
            } else {
                adSize3 = null;
            }
        }
        return adSize3;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getKeywords(com.google.android.gms.ads.mediation.MediationAdRequest r3, boolean r4) {
        /*
            r0 = r3
            java.util.Date r0 = r0.mo16529g()
            r5 = r0
            java.lang.String r0 = ""
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0036
            r0 = r5
            int r0 = m4152a(r0)
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "m_age:"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = java.lang.Integer.toString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r8 = r0
            goto L_0x003a
        L_0x0036:
            java.lang.String r0 = ""
            r8 = r0
        L_0x003a:
            r0 = r3
            int r0 = r0.mo16524l()
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L_0x0060
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x0054
            java.lang.String r0 = "m_gender:f"
            r5 = r0
            goto L_0x0063
        L_0x0054:
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0060
            java.lang.String r0 = "m_gender:m"
            r5 = r0
            goto L_0x0063
        L_0x0060:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0063:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "gmext"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            if (r0 == 0) goto L_0x00b0
            r0 = r6
            r5 = r0
            boolean r0 = com.mopub.common.MoPub.canCollectPersonalInformation()
            if (r0 == 0) goto L_0x00ae
            r0 = r6
            r5 = r0
            r0 = r3
            boolean r0 = m4154a(r0)
            if (r0 == 0) goto L_0x00ae
            r0 = r9
            java.lang.String r0 = r0.toString()
            r5 = r0
        L_0x00ae:
            r0 = r5
            return r0
        L_0x00b0:
            r0 = r3
            boolean r0 = m4154a(r0)
            if (r0 == 0) goto L_0x00ba
            goto L_0x00c0
        L_0x00ba:
            r0 = r9
            java.lang.String r0 = r0.toString()
            r6 = r0
        L_0x00c0:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.dfp.adapters.MoPubAdapter.getKeywords(com.google.android.gms.ads.mediation.MediationAdRequest, boolean):java.lang.String");
    }

    /* renamed from: a */
    public final AdSize m4156a(Context context, AdSize adSize) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(AdSize.f22648g);
        arrayList.add(AdSize.f22652k);
        arrayList.add(AdSize.f22651j);
        arrayList.add(AdSize.f22653l);
        Log.i(TAG, arrayList.toString());
        return findClosestSize(context, adSize, arrayList);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f34448a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        MoPubInterstitial moPubInterstitial = this.f34450c;
        if (moPubInterstitial != null) {
            moPubInterstitial.destroy();
            this.f34450c = null;
        }
        MoPubView moPubView = this.f34448a;
        if (moPubView != null) {
            moPubView.destroy();
            this.f34448a = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        String string = bundle.getString("adUnitId");
        if (TextUtils.isEmpty(string)) {
            Log.d(TAG, "Missing or Invalid MoPub Ad Unit ID.");
            mediationBannerListener.mo16625a(this, 1);
            return;
        }
        AdSize a = m4156a(context, adSize);
        this.f34449b = a;
        if (a == null) {
            Log.w(TAG, "Failed to request ad, AdSize is null.");
            mediationBannerListener.mo16625a(this, 1);
            return;
        }
        MoPubView moPubView = new MoPubView(context);
        this.f34448a = moPubView;
        moPubView.setBannerAdListener(new C8862g(mediationBannerListener));
        this.f34448a.setAdUnitId(string);
        if (mediationAdRequest.isTesting()) {
            this.f34448a.setTesting(true);
        }
        if (mediationAdRequest.mo16526j() != null) {
            this.f34448a.setLocation(mediationAdRequest.mo16526j());
        }
        this.f34448a.setKeywords(getKeywords(mediationAdRequest, false));
        this.f34448a.setUserDataKeywords(getKeywords(mediationAdRequest, true));
        C2483a.m29673a().m29672a(context, new SdkConfiguration.Builder(string).build(), new C8859d());
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        if (!(context instanceof Activity)) {
            Log.w(TAG, "MoPub SDK requires an Activity context to load interstitial ads.");
            mediationInterstitialListener.mo16621a(this, 1);
            return;
        }
        String string = bundle.getString("adUnitId");
        if (TextUtils.isEmpty(string)) {
            Log.d(TAG, "Missing or Invalid MoPub Ad Unit ID.");
            mediationInterstitialListener.mo16621a(this, 1);
            return;
        }
        this.f34451d = mediationInterstitialListener;
        MoPubInterstitial moPubInterstitial = new MoPubInterstitial((Activity) context, string);
        this.f34450c = moPubInterstitial;
        moPubInterstitial.setInterstitialAdListener(new C8863h(this.f34451d));
        if (mediationAdRequest.isTesting()) {
            this.f34450c.setTesting(true);
        }
        this.f34450c.setKeywords(getKeywords(mediationAdRequest, false));
        this.f34450c.setKeywords(getKeywords(mediationAdRequest, true));
        C2483a.m29673a().m29672a(context, new SdkConfiguration.Builder(string).build(), new C8860e());
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        String string = bundle.getString("adUnitId");
        if (TextUtils.isEmpty(string)) {
            Log.d(TAG, "Missing or Invalid MoPub Ad Unit ID.");
            mediationNativeListener.mo16618a(this, 1);
        } else if (nativeMediationAdRequest.mo16532d() || nativeMediationAdRequest.mo16530f()) {
            NativeAdOptions i = nativeMediationAdRequest.mo16527i();
            if (i != null) {
                this.f34452e = i.m18070a();
            } else {
                this.f34452e = 1;
            }
            if (bundle2 != null) {
                int i2 = bundle2.getInt("privacy_icon_size_dp");
                if (i2 < 10) {
                    this.f34453f = 10;
                } else if (i2 > 30) {
                    this.f34453f = 30;
                } else {
                    this.f34453f = i2;
                }
            } else {
                this.f34453f = 20;
            }
            MoPubNative moPubNative = new MoPubNative(context, string, new C8855a(mediationNativeListener, nativeMediationAdRequest, context));
            moPubNative.registerAdRenderer(new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(0).build()));
            this.f34455h = new RequestParameters.Builder().keywords(getKeywords(nativeMediationAdRequest, false)).userDataKeywords(getKeywords(nativeMediationAdRequest, true)).location(nativeMediationAdRequest.mo16526j()).desiredAssets(EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT, RequestParameters.NativeAdAsset.MAIN_IMAGE, RequestParameters.NativeAdAsset.ICON_IMAGE)).build();
            C2483a.m29673a().m29672a(context, new SdkConfiguration.Builder(string).build(), new C8857b(moPubNative));
            this.f34454g = new C8858c(mediationNativeListener);
        } else {
            Log.e(TAG, "Failed to request native ad. Unified Native Ad or App install Ad should be requested");
            mediationNativeListener.mo16618a(this, 1);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        if (this.f34450c.isReady()) {
            this.f34450c.show();
            return;
        }
        MoPubLog.m4578i("Interstitial was not ready. Unable to load the interstitial");
        MediationInterstitialListener mediationInterstitialListener = this.f34451d;
        if (mediationInterstitialListener != null) {
            mediationInterstitialListener.mo16599e(this);
            this.f34451d.mo16602d(this);
        }
    }
}
