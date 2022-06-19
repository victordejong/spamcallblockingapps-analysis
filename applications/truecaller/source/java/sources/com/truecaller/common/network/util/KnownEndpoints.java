package com.truecaller.common.network.util;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.network.constant.Protocols;
import com.truecaller.ads.offline.deeplink.OfflineAdsDeeplink;
import com.truecaller.common.network.KnownDomain;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
import u3.a0;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\bA\b\u0086\u0001\u0018�� \u00162\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0017B9\b\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0019\u0010\u0010\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000ej\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJ¨\u0006K"}, d2 = {"Lcom/truecaller/common/network/util/KnownEndpoints;", "", "Lu3/a0;", "url", "()Lu3/a0;", "Lcom/truecaller/common/network/KnownDomain;", "domain", "", "getHost", "(Lcom/truecaller/common/network/KnownDomain;)Ljava/lang/String;", "", "stagingPort", "Ljava/lang/Integer;", "nonEuHost", "Ljava/lang/String;", "stagingEndpoint", AnalyticsConstants.KEY, "getKey", "()Ljava/lang/String;", "euHost", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "Companion", "a", "SEARCH", "REQUEST", "CONTACTREQUEST", "PREMIUM", "CONTACT", "NOTIFICATION", "BATCHLOG", "PHONEBOOK", "TAGGING", "FILTER", "EDGE", "FEEDBACK", "API", "ADS", "ADS_CAMPAIGN", "CALLMEBACK", "USERAPPS", "REFERRAL", "PROFILE", "COMPANYPROFILE", "LEADGEN", "BACKUP", "TOPSPAMMERS", "PUSHID", "IMAGES", "USERARCHIVE", "ACCOUNT", "FLASH", "OPTOUT", "PRESENCE_GRPC", "PUSH_CALLER_ID_GRPC", "PROFILE_VIEW", "SPAM_URL", "MESSENGER", "MESSENGER_PREVIEW", "CLIENT_SEARCH", "LAST_ACTIVITY", "VOIP", "ADS_ROUTER", "ADS_PARTNER", "GEOLOCATION_GRPC", "DEVICE_SAFETY", "SEARCH_WARNINGS_GRPC", "COMMENTS_GRPC", "INSIGHT_CATEGORIZER", "INSIGHT_FEATURE_REGISTRY", "ADS_LOGGER", "SDK_OAUTH_ACCOUNT", "VIDEO_CALLER_ID", "SURVEYS_GRPC", "ENTERPRISE_FEEDBACK_GRPC", "common-network_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/util/KnownEndpoints.class */
public enum KnownEndpoints {
    SEARCH("search5", "search5-eu", "search5-noneu", null, 16080, 8, null),
    REQUEST("request3", "request3-eu", "request3-noneu", null, null, 24, null),
    CONTACTREQUEST("contact-request", "contact-request-eu", "contact-request-noneu", null, null, 24, null),
    PREMIUM("premium", "premium-eu", "premium-noneu", null, null, 24, null),
    CONTACT("contact-upload4", "contact-upload4-eu", "contact-upload4-noneu", null, 19010, 8, null),
    NOTIFICATION("notifications5", "notifications5-eu", "notifications5-noneu", null, 19000, 8, null),
    BATCHLOG("batchlogging4", "batchlogging4-eu", "batchlogging4-noneu", null, 23250, 8, null),
    PHONEBOOK("phonebook5", "phonebook5-eu", "phonebook5-noneu", null, 28220, 8, null),
    TAGGING("tagging5", "tagging5-eu", "tagging5-noneu", null, 20150, 8, null),
    FILTER("filter-store4", "filter-store4-eu", "filter-store4-noneu", null, 16010, 8, null),
    EDGE("edge-locations5", "edge-locations5-eu", "edge-locations5-noneu", null, 19050, 8, null),
    FEEDBACK("feedback", "feedback-eu", "feedback-noneu", null, null, 24, null),
    API("api4", "api4-eu", "api4-noneu", null, 17010, 8, null),
    ADS("ads5", "ads5-eu", "ads5-noneu", null, 19060, 8, null),
    ADS_CAMPAIGN("ads-segment", "ads-segment-profile-eu", "ads-segment-profile-noneu", null, null, 24, null),
    CALLMEBACK("callmeback", "callmeback-eu", "callmeback-noneu", null, 16020, 8, null),
    USERAPPS("userapps", "userapps-eu", "userapps-noneu", null, 16050, 8, null),
    REFERRAL("referrals", "referrals-eu", "referrals-noneu", null, 19080, 8, null),
    PROFILE("profile4", "profile4-eu", "profile4-noneu", null, null, 24, null),
    COMPANYPROFILE("company-profile", "company-profile-eu", "company-profile-noneu", null, null, 24, null),
    LEADGEN(OfflineAdsDeeplink.PATH_DEEPLINK_ONLINE, "leadgen-eu", "leadgen-noneu", null, 16350, 8, null),
    BACKUP("backup", "backup-eu", "backup-noneu", null, null, 24, null),
    TOPSPAMMERS("topspammers", "topspammers-eu", "topspammers-noneu", null, 16610, 8, null),
    PUSHID("pushid", "pushid-eu", "pushid-noneu", null, null, 24, null),
    IMAGES("images", "images-eu", "images-noneu", null, null, 24, null),
    USERARCHIVE("user-archive", "user-archive-eu", "user-archive-noneu", null, null, 24, null),
    ACCOUNT("account", "account-eu", "account-noneu", null, 18870, 8, null),
    FLASH("flash", "flash-eu", "flash-noneu", null, null, 24, null),
    OPTOUT("opt-out", "opt-out-eu", "opt-out-noneu", null, null, 24, null),
    PRESENCE_GRPC("presence-grpc", "presence-grpc-eu", "presence-grpc-noneu", null, null, 24, null),
    PUSH_CALLER_ID_GRPC("push-callerid", "push-callerid-eu", "push-callerid-noneu", null, null, 24, null),
    PROFILE_VIEW("profile-view", "profile-view-eu", "profile-view-noneu", null, null, 24, null),
    SPAM_URL("link-reports", "link-reports-eu", "link-reports-noneu", null, null, 24, null),
    MESSENGER("messenger", "messenger-eu", "messenger-noneu", null, null, 24, null),
    MESSENGER_PREVIEW("messenger-previews", "messenger-previews-eu", "messenger-previews-noneu", null, null, 24, null),
    CLIENT_SEARCH("client-search", "client-search-eu", "client-search-noneu", null, null, 24, null),
    LAST_ACTIVITY("lastactivity", "lastactivity-eu", "lastactivity-noneu", null, null, 24, null),
    VOIP("voip", "voip-eu", "voip-noneu", null, null, 24, null),
    ADS_ROUTER("ads-router", "ads-router-eu", "ads-router-noneu", null, null, 24, null),
    ADS_PARTNER("ads-partner", "ads-partner-eu", "ads-partner-noneu", null, null, 24, null),
    GEOLOCATION_GRPC("geolocation", "geolocation-eu", "geolocation-noneu", null, null, 24, null),
    DEVICE_SAFETY("device-safety", "device-safety-eu", "device-safety-noneu", null, null, 24, null),
    SEARCH_WARNINGS_GRPC("search-warnings", "search-warnings-eu", "search-warnings-noneu", null, null, 24, null),
    COMMENTS_GRPC("comments", "comments-eu", "comments-noneu", null, null, 24, null),
    INSIGHT_CATEGORIZER("insights-categorizer", "insights-categorizer-eu", "insights-categorizer-noneu", null, null, 24, null),
    INSIGHT_FEATURE_REGISTRY("insights-registry", "insights-registry-eu", "insights-registry-noneu", null, null, 24, null),
    ADS_LOGGER("ads-logger", "pixel", "pixel-noneu", null, null, 24, null),
    SDK_OAUTH_ACCOUNT("oauth-account", "oauth-account-eu", "oauth-account-noneu", null, null, 24, null),
    VIDEO_CALLER_ID("video-callerid", "video-callerid-eu", "video-callerid-noneu", null, null, 24, null),
    SURVEYS_GRPC("survey", "survey-eu", "survey-noneu", null, null, 24, null),
    ENTERPRISE_FEEDBACK_GRPC("enterprise-feedback", "enterprise-feedback-eu", "enterprise-feedback-noneu", null, null, 24, null);
    
    public static final C3683a Companion = new C3683a(null);
    private static boolean isStaging;
    private final String euHost;
    private final String key;
    private final String nonEuHost;
    private final String stagingEndpoint;
    private final Integer stagingPort;

    /* renamed from: com.truecaller.common.network.util.KnownEndpoints$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/util/KnownEndpoints$a.class */
    public static final class C3683a {
        public C3683a(f fVar) {
        }
    }

    KnownEndpoints(String str, String str2, String str3, String str4, Integer num) {
        this.key = str;
        this.euHost = str2;
        this.nonEuHost = str3;
        this.stagingEndpoint = str4;
        this.stagingPort = num;
    }

    /* synthetic */ KnownEndpoints(String str, String str2, String str3, String str4, Integer num, int i, f fVar) {
        this(str, str2, str3, (i & 8) != 0 ? "staging1" : str4, (i & 16) != 0 ? null : num);
    }

    public static final void switchToStaging() {
        Objects.requireNonNull(Companion);
        isStaging = true;
    }

    public final String getHost(KnownDomain knownDomain) {
        String str;
        l.e(knownDomain, "domain");
        int ordinal = knownDomain.ordinal();
        if (ordinal == 0) {
            str = this.euHost;
        } else if (ordinal != 1) {
            throw new i();
        } else {
            str = this.nonEuHost;
        }
        return C22128a.m8543z2(str, ".truecaller.com");
    }

    public final String getKey() {
        return this.key;
    }

    public final a0 url() {
        a0 a0Var;
        if (!isStaging || this.stagingPort == null || this.stagingEndpoint == null) {
            a0.a aVar = new a0.a();
            aVar.j("https");
            aVar.e(this.key + ".truecaller.com");
            a0Var = aVar.b();
        } else {
            a0.a aVar2 = new a0.a();
            aVar2.j(Protocols.HTTP);
            aVar2.e(this.stagingEndpoint + ".truecaller.net");
            aVar2.h(this.stagingPort.intValue());
            a0Var = aVar2.b();
        }
        return a0Var;
    }
}
