package com.truecaller.ads.adsrouter.model;

import androidx.annotation.Keep;
import com.truecaller.ads.offline.dto.OfflineAdsDto;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p852i.p862c.p863a.AbstractC15006u;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b!\b\u0087\b\u0018��2\u00020\u0001B¥\u0001\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0014\u0012\u0006\u0010/\u001a\u00020\u0017\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\bb\u0010cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u0014HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001aHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJÎ\u0001\u00102\u001a\u00020��2\b\b\u0002\u0010 \u001a\u00020\u00022\b\b\u0002\u0010!\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010#\u001a\u00020\u00022\b\b\u0002\u0010$\u001a\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00022\b\b\u0002\u0010&\u001a\u00020\u00022\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010)\u001a\u00020\u00022\b\b\u0002\u0010*\u001a\u00020\u00022\b\b\u0002\u0010+\u001a\u00020\u00022\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010-\u001a\u00020\u00022\b\b\u0002\u0010.\u001a\u00020\u00142\b\b\u0002\u0010/\u001a\u00020\u00172\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001dHÆ\u0001¢\u0006\u0004\b2\u00103J\u0010\u00104\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b4\u0010\u0004J\u0010\u00106\u001a\u000205HÖ\u0001¢\u0006\u0004\b6\u00107J\u001a\u0010:\u001a\u0002092\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b:\u0010;R\u001e\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010<\u001a\u0004\b=\u0010\u0004R\u001c\u0010&\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010<\u001a\u0004\b>\u0010\u0004R\u001c\u0010%\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010<\u001a\u0004\b?\u0010\u0004R\u001c\u0010)\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b)\u0010<\u001a\u0004\b@\u0010\u0004R\u001c\u0010-\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010<\u001a\u0004\bA\u0010\u0004R\u001e\u0010(\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010<\u001a\u0004\bB\u0010\u0004R\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001c\u0010\"\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010<\u001a\u0004\bF\u0010\u0004R\u001e\u00100\u001a\u0004\u0018\u00010\u001a8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010G\u001a\u0004\bH\u0010\u001cR\u001c\u0010+\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010<\u001a\u0004\bI\u0010\u0004R\u001c\u0010#\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010<\u001a\u0004\bJ\u0010\u0004R\u001c\u0010$\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010<\u001a\u0004\bK\u0010\u0004R\u001e\u00101\u001a\u0004\u0018\u00010\u001d8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b1\u0010L\u001a\u0004\bM\u0010\u001fR\u001c\u0010.\u001a\u00020\u00148\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010N\u001a\u0004\bO\u0010\u0016R$\u0010T\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bQ\u0010\u0004\"\u0004\bR\u0010SR\u001e\u0010,\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010U\u001a\u0004\bV\u0010\u0012R\u001c\u0010/\u001a\u00020\u00178\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b/\u0010W\u001a\u0004\bX\u0010\u0019R\u001c\u0010 \u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010<\u001a\u0004\bY\u0010\u0004R\u001c\u0010!\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010<\u001a\u0004\bZ\u0010\u0004R$\u0010_\u001a\u00020C2\u0006\u0010P\u001a\u00020C8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010<R\u001c\u0010*\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010<\u001a\u0004\ba\u0010\u0004¨\u0006d"}, d2 = {"Lcom/truecaller/ads/adsrouter/model/Ad;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "Lcom/truecaller/ads/adsrouter/model/Size;", "component13", "()Lcom/truecaller/ads/adsrouter/model/Size;", "component14", "Lcom/truecaller/ads/adsrouter/model/Tracking;", "component15", "()Lcom/truecaller/ads/adsrouter/model/Tracking;", "Lcom/truecaller/ads/adsrouter/model/Meta;", "component16", "()Lcom/truecaller/ads/adsrouter/model/Meta;", "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;", "component17", "()Lcom/truecaller/ads/offline/dto/OfflineAdsDto;", "Lcom/truecaller/ads/adsrouter/model/Capping;", "component18", "()Lcom/truecaller/ads/adsrouter/model/Capping;", "adType", "htmlContent", "videoUrl", "logo", "image", "title", "body", "landingUrl", "externalLandingUrl", "cta", "ecpm", "rawEcpm", "size", "advertiserName", "tracking", "meta", "offlineAdsDto", "capping", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Size;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Tracking;Lcom/truecaller/ads/adsrouter/model/Meta;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Lcom/truecaller/ads/adsrouter/model/Capping;)Lcom/truecaller/ads/adsrouter/model/Ad;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getLandingUrl", "getBody", "getTitle", "getCta", "getAdvertiserName", "getExternalLandingUrl", "Le/a/i/c/a/u;", "_adSource", "Le/a/i/c/a/u;", "getVideoUrl", "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;", "getOfflineAdsDto", "getRawEcpm", "getLogo", "getImage", "Lcom/truecaller/ads/adsrouter/model/Capping;", "getCapping", "Lcom/truecaller/ads/adsrouter/model/Tracking;", "getTracking", "value", "getRequestId", "setRequestId", "(Ljava/lang/String;)V", "requestId", "Lcom/truecaller/ads/adsrouter/model/Size;", "getSize", "Lcom/truecaller/ads/adsrouter/model/Meta;", "getMeta", "getAdType", "getHtmlContent", "getAdSource", "()Le/a/i/c/a/u;", "setAdSource", "(Le/a/i/c/a/u;)V", "adSource", "_requestId", "getEcpm", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Size;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Tracking;Lcom/truecaller/ads/adsrouter/model/Meta;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Lcom/truecaller/ads/adsrouter/model/Capping;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.ads.adsrouter.model.Ad */
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/adsrouter/model/Ad.class */
public final class C2813Ad {
    private AbstractC15006u _adSource;
    private String _requestId;
    @b("adType")
    private final String adType;
    @b("advertiserName")
    private final String advertiserName;
    @b("body")
    private final String body;
    @b("capping")
    private final Capping capping;
    @b("cta")
    private final String cta;
    @b("ecpm")
    private final String ecpm;
    @b("externalLandingUrl")
    private final String externalLandingUrl;
    @b("htmlContent")
    private final String htmlContent;
    @b("image")
    private final String image;
    @b("landingUrl")
    private final String landingUrl;
    @b("logo")
    private final String logo;
    @b("meta")
    private final Meta meta;
    @b("uiConfig")
    private final OfflineAdsDto offlineAdsDto;
    @b("rawECPM")
    private final String rawEcpm;
    @b("size")
    private final Size size;
    @b("title")
    private final String title;
    @b("tracking")
    private final Tracking tracking;
    @b("videoUrl")
    private final String videoUrl;

    public C2813Ad(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Size size, String str13, Tracking tracking, Meta meta, OfflineAdsDto offlineAdsDto, Capping capping) {
        l.e(str, "adType");
        l.e(str2, "htmlContent");
        l.e(str3, "videoUrl");
        l.e(str4, "logo");
        l.e(str5, "image");
        l.e(str6, "title");
        l.e(str7, "body");
        l.e(str10, "cta");
        l.e(str11, "ecpm");
        l.e(str12, "rawEcpm");
        l.e(str13, "advertiserName");
        l.e(tracking, "tracking");
        l.e(meta, "meta");
        this.adType = str;
        this.htmlContent = str2;
        this.videoUrl = str3;
        this.logo = str4;
        this.image = str5;
        this.title = str6;
        this.body = str7;
        this.landingUrl = str8;
        this.externalLandingUrl = str9;
        this.cta = str10;
        this.ecpm = str11;
        this.rawEcpm = str12;
        this.size = size;
        this.advertiserName = str13;
        this.tracking = tracking;
        this.meta = meta;
        this.offlineAdsDto = offlineAdsDto;
        this.capping = capping;
        this._adSource = AbstractC15006u.b.b;
    }

    public /* synthetic */ C2813Ad(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Size size, String str13, Tracking tracking, Meta meta, OfflineAdsDto offlineAdsDto, Capping capping, int i, f fVar) {
        this(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, size, str13, tracking, meta, (i & 65536) != 0 ? null : offlineAdsDto, (i & 131072) != 0 ? null : capping);
    }

    public static /* synthetic */ C2813Ad copy$default(C2813Ad c2813Ad, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Size size, String str13, Tracking tracking, Meta meta, OfflineAdsDto offlineAdsDto, Capping capping, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c2813Ad.adType;
        }
        if ((i & 2) != 0) {
            str2 = c2813Ad.htmlContent;
        }
        if ((i & 4) != 0) {
            str3 = c2813Ad.videoUrl;
        }
        if ((i & 8) != 0) {
            str4 = c2813Ad.logo;
        }
        if ((i & 16) != 0) {
            str5 = c2813Ad.image;
        }
        if ((i & 32) != 0) {
            str6 = c2813Ad.title;
        }
        if ((i & 64) != 0) {
            str7 = c2813Ad.body;
        }
        if ((i & 128) != 0) {
            str8 = c2813Ad.landingUrl;
        }
        if ((i & 256) != 0) {
            str9 = c2813Ad.externalLandingUrl;
        }
        if ((i & 512) != 0) {
            str10 = c2813Ad.cta;
        }
        if ((i & 1024) != 0) {
            str11 = c2813Ad.ecpm;
        }
        if ((i & 2048) != 0) {
            str12 = c2813Ad.rawEcpm;
        }
        if ((i & 4096) != 0) {
            size = c2813Ad.size;
        }
        if ((i & 8192) != 0) {
            str13 = c2813Ad.advertiserName;
        }
        if ((i & 16384) != 0) {
            tracking = c2813Ad.tracking;
        }
        if ((i & 32768) != 0) {
            meta = c2813Ad.meta;
        }
        if ((i & 65536) != 0) {
            offlineAdsDto = c2813Ad.offlineAdsDto;
        }
        if ((i & 131072) != 0) {
            capping = c2813Ad.capping;
        }
        return c2813Ad.copy(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, size, str13, tracking, meta, offlineAdsDto, capping);
    }

    public final String component1() {
        return this.adType;
    }

    public final String component10() {
        return this.cta;
    }

    public final String component11() {
        return this.ecpm;
    }

    public final String component12() {
        return this.rawEcpm;
    }

    public final Size component13() {
        return this.size;
    }

    public final String component14() {
        return this.advertiserName;
    }

    public final Tracking component15() {
        return this.tracking;
    }

    public final Meta component16() {
        return this.meta;
    }

    public final OfflineAdsDto component17() {
        return this.offlineAdsDto;
    }

    public final Capping component18() {
        return this.capping;
    }

    public final String component2() {
        return this.htmlContent;
    }

    public final String component3() {
        return this.videoUrl;
    }

    public final String component4() {
        return this.logo;
    }

    public final String component5() {
        return this.image;
    }

    public final String component6() {
        return this.title;
    }

    public final String component7() {
        return this.body;
    }

    public final String component8() {
        return this.landingUrl;
    }

    public final String component9() {
        return this.externalLandingUrl;
    }

    public final C2813Ad copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Size size, String str13, Tracking tracking, Meta meta, OfflineAdsDto offlineAdsDto, Capping capping) {
        l.e(str, "adType");
        l.e(str2, "htmlContent");
        l.e(str3, "videoUrl");
        l.e(str4, "logo");
        l.e(str5, "image");
        l.e(str6, "title");
        l.e(str7, "body");
        l.e(str10, "cta");
        l.e(str11, "ecpm");
        l.e(str12, "rawEcpm");
        l.e(str13, "advertiserName");
        l.e(tracking, "tracking");
        l.e(meta, "meta");
        return new C2813Ad(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, size, str13, tracking, meta, offlineAdsDto, capping);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C2813Ad)) {
                return false;
            }
            C2813Ad c2813Ad = (C2813Ad) obj;
            return l.a(this.adType, c2813Ad.adType) && l.a(this.htmlContent, c2813Ad.htmlContent) && l.a(this.videoUrl, c2813Ad.videoUrl) && l.a(this.logo, c2813Ad.logo) && l.a(this.image, c2813Ad.image) && l.a(this.title, c2813Ad.title) && l.a(this.body, c2813Ad.body) && l.a(this.landingUrl, c2813Ad.landingUrl) && l.a(this.externalLandingUrl, c2813Ad.externalLandingUrl) && l.a(this.cta, c2813Ad.cta) && l.a(this.ecpm, c2813Ad.ecpm) && l.a(this.rawEcpm, c2813Ad.rawEcpm) && l.a(this.size, c2813Ad.size) && l.a(this.advertiserName, c2813Ad.advertiserName) && l.a(this.tracking, c2813Ad.tracking) && l.a(this.meta, c2813Ad.meta) && l.a(this.offlineAdsDto, c2813Ad.offlineAdsDto) && l.a(this.capping, c2813Ad.capping);
        }
        return true;
    }

    public final AbstractC15006u getAdSource() {
        AbstractC15006u.b bVar = this._adSource;
        if (bVar == null) {
            bVar = AbstractC15006u.b.b;
        }
        return bVar;
    }

    public final String getAdType() {
        return this.adType;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getBody() {
        return this.body;
    }

    public final Capping getCapping() {
        return this.capping;
    }

    public final String getCta() {
        return this.cta;
    }

    public final String getEcpm() {
        return this.ecpm;
    }

    public final String getExternalLandingUrl() {
        return this.externalLandingUrl;
    }

    public final String getHtmlContent() {
        return this.htmlContent;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getLandingUrl() {
        return this.landingUrl;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final Meta getMeta() {
        return this.meta;
    }

    public final OfflineAdsDto getOfflineAdsDto() {
        return this.offlineAdsDto;
    }

    public final String getRawEcpm() {
        return this.rawEcpm;
    }

    public final String getRequestId() {
        String str = this._requestId;
        if (str == null) {
            str = C22128a.m8627e2("UUID.randomUUID().toString()");
        }
        return str;
    }

    public final Size getSize() {
        return this.size;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Tracking getTracking() {
        return this.tracking;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.adType;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.htmlContent;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.videoUrl;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.logo;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.image;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.title;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.body;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.landingUrl;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.externalLandingUrl;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.cta;
        int hashCode10 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.ecpm;
        int hashCode11 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.rawEcpm;
        int hashCode12 = str12 != null ? str12.hashCode() : 0;
        Size size = this.size;
        int hashCode13 = size != null ? size.hashCode() : 0;
        String str13 = this.advertiserName;
        int hashCode14 = str13 != null ? str13.hashCode() : 0;
        Tracking tracking = this.tracking;
        int hashCode15 = tracking != null ? tracking.hashCode() : 0;
        Meta meta = this.meta;
        int hashCode16 = meta != null ? meta.hashCode() : 0;
        OfflineAdsDto offlineAdsDto = this.offlineAdsDto;
        int hashCode17 = offlineAdsDto != null ? offlineAdsDto.hashCode() : 0;
        Capping capping = this.capping;
        if (capping != null) {
            i = capping.hashCode();
        }
        return (((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + i;
    }

    public final void setAdSource(AbstractC15006u abstractC15006u) {
        l.e(abstractC15006u, "value");
        this._adSource = abstractC15006u;
    }

    public final void setRequestId(String str) {
        l.e(str, "value");
        this._requestId = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Ad(adType=");
        m8728C.append(this.adType);
        m8728C.append(", htmlContent=");
        m8728C.append(this.htmlContent);
        m8728C.append(", videoUrl=");
        m8728C.append(this.videoUrl);
        m8728C.append(", logo=");
        m8728C.append(this.logo);
        m8728C.append(", image=");
        m8728C.append(this.image);
        m8728C.append(", title=");
        m8728C.append(this.title);
        m8728C.append(", body=");
        m8728C.append(this.body);
        m8728C.append(", landingUrl=");
        m8728C.append(this.landingUrl);
        m8728C.append(", externalLandingUrl=");
        m8728C.append(this.externalLandingUrl);
        m8728C.append(", cta=");
        m8728C.append(this.cta);
        m8728C.append(", ecpm=");
        m8728C.append(this.ecpm);
        m8728C.append(", rawEcpm=");
        m8728C.append(this.rawEcpm);
        m8728C.append(", size=");
        m8728C.append(this.size);
        m8728C.append(", advertiserName=");
        m8728C.append(this.advertiserName);
        m8728C.append(", tracking=");
        m8728C.append(this.tracking);
        m8728C.append(", meta=");
        m8728C.append(this.meta);
        m8728C.append(", offlineAdsDto=");
        m8728C.append(this.offlineAdsDto);
        m8728C.append(", capping=");
        m8728C.append(this.capping);
        m8728C.append(")");
        return m8728C.toString();
    }
}
