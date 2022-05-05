package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompatJellybean;
import com.aotter.net.trek.TKMyApp;
import com.aotter.net.trek.ads.TKAdN;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.interfaces.TKMyAppInitListener;
import com.aotter.net.trek.model.ImageSrc;
import com.aotter.net.trek.model.NativeAd;
import com.mopub.common.AdType;
import com.mopub.nativeads.CustomEventNative;
import gogolook.callgogolook2.gson.CallAction;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p161a.p164j.AbstractC6217b;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00122\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\b\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J@\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00100\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0014¨\u0006\u0013"}, m815d2 = {"Lcom/mopub/nativeads/AotterTrekCustomEvent;", "Lcom/mopub/nativeads/BaseCustomEventNative;", "()V", "isClearCacheByPlace", "", "serverExtras", "", "", "isNeedWaitingInit", "loadNativeAd", "", "context", "Landroid/content/Context;", "customEventNativeListener", "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;", "localExtras", "", "AotterTrekStaticAd", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekCustomEvent.class */
public final class AotterTrekCustomEvent extends BaseCustomEventNative {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_IS_CLEAR_CACHE_BY_PLACE = "is_clear_cache_by_place";
    public static final String KEY_IS_NEED_WAITING_INIT = "is_need_waiting_init";
    public static final String PLACE_NAME_KEY = "place_name";

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\u0018�� /2\u00020\u00012\u00020\u0002:\u0001/BW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0006\u0010$\u001a\u00020!J\b\u0010%\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0006\u0010'\u001a\u00020!J\u0012\u0010(\u001a\u00020!2\b\u0010)\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010*\u001a\u00020!H\u0016J\u0012\u0010+\u001a\u00020!2\b\u0010)\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010,\u001a\u00020!2\b\u0010)\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010.\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R$\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n��¨\u00060"}, m815d2 = {"Lcom/mopub/nativeads/AotterTrekCustomEvent$AotterTrekStaticAd;", "Lcom/mopub/nativeads/StaticNativeAd;", "Lcom/aotter/net/trek/ads/interfaces/AdListener;", "tkAdN", "Lcom/aotter/net/trek/ads/TKAdN;", "adUnitName", "", "adNSourceName", "adFetchLog", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "placeName", "impressionTracker", "Lcom/mopub/nativeads/ImpressionTracker;", "nativeClickHandler", "Lcom/mopub/nativeads/NativeClickHandler;", "customEventNativeListener", "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;", "aottertrekConfiguration", "Lcom/gogolook/adsdk/config/IAotterTrekConfiguration;", "isNeedUsingTestingSource", "", "(Lcom/aotter/net/trek/ads/TKAdN;Ljava/lang/String;Ljava/lang/String;Lcom/gogolook/adsdk/logs/AdFetchLog;Ljava/lang/String;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/gogolook/adsdk/config/IAotterTrekConfiguration;Z)V", "adClickUrl", "adTrekClickUrl", "<set-?>", NotificationCompatJellybean.KEY_LABEL, "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", "trekNativeAd", "Lcom/aotter/net/trek/model/NativeAd;", AdType.CLEAR, "", "view", "Landroid/view/View;", "clearCacheByPlaceName", "destroy", "handleClick", "loadAd", "onAdClicked", "nativeAd", "onAdFail", "onAdImpression", "onAdLoaded", "prepare", "recordImpression", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekCustomEvent$AotterTrekStaticAd.class */
    public static final class AotterTrekStaticAd extends StaticNativeAd implements AdListener {
        public static final Companion Companion = new Companion(null);
        public static final String LABEL_CED_DISPLAY_BANNER = "CED_Display_banner";
        public static final String LABEL_CED_DISPLAY_CIRCLE = "CED_Display_circle";
        public static final String LABEL_CED_DISPLAY_FULL = "CED_Display_full";
        public static final String LABEL_CED_NATIVE_FULL = "CED_Native_full";
        public static final String LABEL_SMS_DISPLAY_BANNER = "SMS_Display_banner";
        public static final String LABEL_SMS_NATIVE_BANNER = "SMS_Native_banner";
        public static final String LABEL_UNKNOWN = "unknown";
        public static final String SPONSOR_CONTEXT_FOR_AD = "sponsor";

        /* renamed from: A */
        public final CustomEventNative.CustomEventNativeListener f8973A;

        /* renamed from: B */
        public final AbstractC6217b f8974B;

        /* renamed from: p */
        public NativeAd f8975p;

        /* renamed from: q */
        public String f8976q;

        /* renamed from: r */
        public String f8977r;

        /* renamed from: s */
        public String f8978s = "unknown";

        /* renamed from: t */
        public final TKAdN f8979t;

        /* renamed from: u */
        public final String f8980u;

        /* renamed from: v */
        public final String f8981v;

        /* renamed from: w */
        public final C6260a f8982w;

        /* renamed from: x */
        public final String f8983x;

        /* renamed from: y */
        public final ImpressionTracker f8984y;

        /* renamed from: z */
        public final NativeClickHandler f8985z;

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\r"}, m815d2 = {"Lcom/mopub/nativeads/AotterTrekCustomEvent$AotterTrekStaticAd$Companion;", "", "()V", "ADVERTISER_NAME_FOR_AD", "", "LABEL_CED_DISPLAY_BANNER", "LABEL_CED_DISPLAY_CIRCLE", "LABEL_CED_DISPLAY_FULL", "LABEL_CED_NATIVE_FULL", "LABEL_SMS_DISPLAY_BANNER", "LABEL_SMS_NATIVE_BANNER", "LABEL_UNKNOWN", "SPONSOR_CONTEXT_FOR_AD", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekCustomEvent$AotterTrekStaticAd$Companion.class */
        public static final class Companion {
            public Companion() {
            }

            public /* synthetic */ Companion(C15145g gVar) {
                this();
            }
        }

        public AotterTrekStaticAd(TKAdN tKAdN, String str, String str2, C6260a aVar, String str3, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener, AbstractC6217b bVar, boolean z) {
            C15149k.m377b(tKAdN, "tkAdN");
            C15149k.m377b(str, "adUnitName");
            C15149k.m377b(str2, "adNSourceName");
            C15149k.m377b(str3, "placeName");
            C15149k.m377b(impressionTracker, "impressionTracker");
            C15149k.m377b(nativeClickHandler, "nativeClickHandler");
            C15149k.m377b(customEventNativeListener, "customEventNativeListener");
            C15149k.m377b(bVar, "aottertrekConfiguration");
            this.f8979t = tKAdN;
            this.f8980u = str;
            this.f8981v = str2;
            this.f8982w = aVar;
            this.f8983x = str3;
            this.f8984y = impressionTracker;
            this.f8985z = nativeClickHandler;
            this.f8973A = customEventNativeListener;
            this.f8974B = bVar;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            C15149k.m377b(view, "view");
            this.f8984y.removeView(view);
            this.f8985z.clearOnClickListener(view);
        }

        public final void clearCacheByPlaceName() {
            this.f8979t.clearCacheByPlace(this.f8983x);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            String str = "[destroy] place_name: " + this.f8983x;
            this.f8984y.destroy();
            this.f8979t.destroy();
        }

        public final String getLabel() {
            return this.f8978s;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(View view) {
            C15149k.m377b(view, "view");
            String str = "[handleClick] clickDestinationUrl = " + getClickDestinationUrl();
            notifyAdClicked();
            String clickDestinationUrl = getClickDestinationUrl();
            if (clickDestinationUrl != null) {
                C15149k.m383a((Object) clickDestinationUrl, "it");
                if (!(clickDestinationUrl.length() > 0)) {
                    clickDestinationUrl = null;
                }
                if (clickDestinationUrl != null) {
                    this.f8979t.recordTrekClick(this.f8975p);
                    this.f8985z.openClickDestinationUrl(clickDestinationUrl, view);
                    return;
                }
            }
            this.f8979t.clickRegNativeAd(this.f8976q, this.f8977r);
        }

        public final void loadAd() {
            C6260a aVar = this.f8982w;
            if (aVar != null) {
                aVar.m23456j();
            }
            this.f8979t.setTKMyAppListener(this);
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdClicked(NativeAd nativeAd) {
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdFail() {
            C6260a aVar = this.f8982w;
            if (aVar != null) {
                aVar.m23467b(NativeErrorCode.NETWORK_NO_FILL.name());
            }
            C6219a.m23549a("AotterTrekCustomEvent", this.f8980u, this.f8981v, NativeErrorCode.NETWORK_NO_FILL.toString());
            this.f8973A.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdImpression(NativeAd nativeAd) {
            StringBuilder sb = new StringBuilder();
            sb.append("[onAdImpression] trekNativeAd = { adUnitInstanceId: ");
            NativeAd nativeAd2 = this.f8975p;
            sb.append(nativeAd2 != null ? nativeAd2.getAdUnitInstanceId() : null);
            sb.append(" } ");
            sb.toString();
        }

        @Override // com.aotter.net.trek.ads.interfaces.AdListener
        public void onAdLoaded(NativeAd nativeAd) {
            if (nativeAd != null) {
                this.f8975p = nativeAd;
                setTitle(nativeAd.getAdTitle());
                setText(nativeAd.getAdText());
                setCallToAction(nativeAd.getCallToAction());
                addExtra(SPONSOR_CONTEXT_FOR_AD, nativeAd.getAdSponsor());
                addExtra("advertiserName", nativeAd.getAdAdvertiserName());
                this.f8979t.urlImpression(nativeAd);
                this.f8976q = this.f8979t.urlClick(nativeAd);
                this.f8977r = this.f8979t.urlTrek(nativeAd);
                String str = "[onAdLoaded] adUUID = " + nativeAd.getAdUUID();
                String str2 = "[onAdLoaded] adClickUrl = " + this.f8976q;
                String str3 = "[onAdLoaded] adTrekClickUrl = " + this.f8976q;
                String str4 = "[onAdLoaded] title = " + getTitle();
                String str5 = "[onAdLoaded] text = " + getText();
                String str6 = "[onAdLoaded] sponsor = " + nativeAd.getAdSponsor();
                String str7 = "[onAdLoaded] callToAction = " + nativeAd.getCallToAction();
                setClickDestinationUrl(this.f8976q);
                AbstractC6217b bVar = this.f8974B;
                String str8 = this.f8983x;
                Map<String, ImageSrc> adImgs = nativeAd.getAdImgs();
                C15149k.m383a((Object) adImgs, "adImgs");
                ImageSrc a = bVar.mo23556a(str8, adImgs);
                if (a != null) {
                    String str9 = "label: " + a.label + ", src: " + a.src + ", width: " + a.width + ", height: " + a.height;
                    setMainImageUrl(a.src);
                    String str10 = a.label;
                    C15149k.m383a((Object) str10, "it.label");
                    this.f8978s = str10;
                    C6260a aVar = this.f8982w;
                    if (aVar != null) {
                        aVar.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
                    }
                    this.f8973A.onNativeAdLoaded(this);
                } else {
                    C6260a aVar2 = this.f8982w;
                    if (aVar2 != null) {
                        aVar2.m23467b(NativeErrorCode.INVALID_RESPONSE.name());
                    }
                    C6219a.m23549a("AotterTrekCustomEvent", this.f8980u, this.f8981v, NativeErrorCode.INVALID_RESPONSE.toString());
                    this.f8973A.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                }
                if (nativeAd != null) {
                    return;
                }
            }
            C6260a aVar3 = this.f8982w;
            if (aVar3 != null) {
                aVar3.m23467b(C6260a.C6261a.m23453a(C6260a.f15494k, NativeErrorCode.EMPTY_AD_RESPONSE.name(), null, 2, null));
            }
            C6219a.m23549a("AotterTrekCustomEvent", this.f8980u, this.f8981v, NativeErrorCode.EMPTY_AD_RESPONSE.toString());
            this.f8973A.onNativeAdFailed(NativeErrorCode.EMPTY_AD_RESPONSE);
            C14989s sVar = C14989s.f33022a;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            C15149k.m377b(view, "view");
            this.f8984y.addView(view, this);
            this.f8985z.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(View view) {
            C15149k.m377b(view, "view");
            String str = "[recordImpression] place_name: " + this.f8983x;
            StringBuilder sb = new StringBuilder();
            sb.append("[recordImpression] trekNativeAd = { adUnitInstanceId: ");
            NativeAd nativeAd = this.f8975p;
            sb.append(nativeAd != null ? nativeAd.getAdUnitInstanceId() : null);
            sb.append(" } ");
            sb.toString();
            notifyAdImpressed();
            this.f8979t.recordTrekImp(this.f8975p);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\r"}, m815d2 = {"Lcom/mopub/nativeads/AotterTrekCustomEvent$Companion;", "", "()V", "AOTTER_TREK_CLIENT_ID", "", "AOTTER_TREK_CLIENT_SECRET", "DEBUG_AOTTER_TREK_CLIENT_ID", "DEBUG_AOTTER_TREK_CLIENT_SECRET", "KEY_AOTTER_TREK_ADTYPE", "KEY_IS_CLEAR_CACHE_BY_PLACE", "KEY_IS_NEED_WAITING_INIT", "PLACE_NAME_KEY", CallAction.DONE_TAG, "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekCustomEvent$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* renamed from: com.mopub.nativeads.AotterTrekCustomEvent$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AotterTrekCustomEvent$a.class */
    public static final class C3928a implements TKMyAppInitListener {

        /* renamed from: a */
        public final /* synthetic */ AotterTrekStaticAd f8986a;

        public C3928a(AotterTrekStaticAd aotterTrekStaticAd) {
            this.f8986a = aotterTrekStaticAd;
        }

        @Override // com.aotter.net.trek.interfaces.TKMyAppInitListener
        public final void onComplete() {
            this.f8986a.loadAd();
        }
    }

    /* renamed from: c */
    public final boolean m30226c(Map<String, String> map) {
        String str = map.get(KEY_IS_CLEAR_CACHE_BY_PLACE);
        return str != null ? Boolean.parseBoolean(str) : false;
    }

    /* renamed from: d */
    public final boolean m30225d(Map<String, String> map) {
        String str = map.get(KEY_IS_NEED_WAITING_INIT);
        return str != null ? Boolean.parseBoolean(str) : true;
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(customEventNativeListener, "customEventNativeListener");
        C15149k.m377b(map, "localExtras");
        C15149k.m377b(map2, "serverExtras");
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            C6260a.m23471a(aVar, null, 1, null);
            String name = AotterTrekCustomEvent.class.getName();
            C15149k.m383a((Object) name, "AotterTrekCustomEvent::class.java.name");
            aVar.m23461e(name);
        }
        boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
        boolean d = m30225d(map2);
        boolean c = m30226c(map2);
        Object obj = map.get("com.gogolook.adsdk.fetcher.AotterTrekConfiguration");
        Object obj2 = obj;
        if (!(obj instanceof AbstractC6217b)) {
            obj2 = null;
        }
        AbstractC6217b bVar = (AbstractC6217b) obj2;
        if (bVar != null) {
            String str = "[loadNativeAd] isNeedUsingTestingSource = " + isValidUsingTestAdSource + ", isNeedWaitingTrekInit = " + d;
            String str2 = map2.get(PLACE_NAME_KEY);
            String str3 = str2;
            if (!(true ^ (str3 == null || str3.length() == 0))) {
                str2 = null;
            }
            String str4 = str2;
            if (str4 != null) {
                String str5 = isValidUsingTestAdSource ? "dhK5jsirIviBmG7f+BNK" : AotterTrekNative.AOTTER_TREK_CLIENT_ID;
                String str6 = isValidUsingTestAdSource ? "hqooYrqfVxCMNifAWt2hAI15cEiRZ6qoBfFViig9l4JaYsNRJ+F19nN47Y+1RAYQB7dRKK0p" : AotterTrekNative.AOTTER_TREK_CLIENT_SECRET;
                TKAdN tKAdN = new TKAdN(context, str4, Constants.AD_TYPE_NATIVE);
                String str7 = this.f9010b;
                C15149k.m383a((Object) str7, "mAdUnitName");
                String str8 = this.f9011c;
                C15149k.m383a((Object) str8, "mAdNSourceName");
                AotterTrekStaticAd aotterTrekStaticAd = new AotterTrekStaticAd(tKAdN, str7, str8, this.f9009a, str4, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener, bVar, isValidUsingTestAdSource);
                if (c) {
                    aotterTrekStaticAd.clearCacheByPlaceName();
                }
                if (d) {
                    TKMyApp.setListener(new C3928a(aotterTrekStaticAd));
                    TKMyApp.init(context, str5, str6);
                    C6260a aVar2 = this.f9009a;
                    if (aVar2 != null) {
                        aVar2.m23463d(C6262a.EnumC6263a.INITIALIZING.name());
                        return;
                    }
                    return;
                }
                TKMyApp.init(context, str5, str6);
                aotterTrekStaticAd.loadAd();
                return;
            }
            String str9 = this.f9010b;
            C15149k.m383a((Object) str9, "mAdUnitName");
            String str10 = this.f9011c;
            C15149k.m383a((Object) str10, "mAdNSourceName");
            C6219a.m23549a("AotterTrekCustomEvent", str9, str10, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        C6260a aVar3 = this.f9009a;
        if (aVar3 != null) {
            aVar3.m23467b(C6260a.C6261a.m23453a(C6260a.f15494k, C6262a.EnumC6266d.ERROR_AOTTERTREK_CONFIGURATION_IS_NULL.m23447a(), null, 2, null));
        }
        String str11 = this.f9010b;
        C15149k.m383a((Object) str11, "mAdUnitName");
        String str12 = this.f9011c;
        C15149k.m383a((Object) str12, "mAdNSourceName");
        C6219a.m23549a("AotterTrekCustomEvent", str11, str12, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
    }
}
