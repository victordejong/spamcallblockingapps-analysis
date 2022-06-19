package com.truecaller.ads.offline.deeplink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.offline.common.ui.OfflineAdsActivity;
import com.truecaller.ads.offline.dto.OfflineAdType;
import kotlin.Metadata;
import s1.f0.v;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\r\bÇ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u000fR\u0016\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/os/Bundle;", "extras", "Landroid/content/Intent;", "createDeeplink", "(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;", "", "deepLink", "Lcom/truecaller/ads/offline/dto/OfflineAdType;", "getAdType", "(Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/OfflineAdType;", "PATH_DEEPLINK_UNIFIED_ONLINE", "Ljava/lang/String;", "PATH_DEEPLINK_ONLINE", "PARAM_DEEPLINK_LEADGEN_ID", "PATH_DEEPLINK_OFFLINE", "PATH_DEEPLINK_ARTICLE_PAGE", "EXTRA_LEADGEN_ID", "EXTRA_OFFLINE_AD_TYPE", "<init>", "()V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/deeplink/OfflineAdsDeeplink.class */
public final class OfflineAdsDeeplink {
    public static final String EXTRA_LEADGEN_ID = "extraLeadgenId";
    public static final String EXTRA_OFFLINE_AD_TYPE = "extraOfflineAdType";
    public static final OfflineAdsDeeplink INSTANCE = new OfflineAdsDeeplink();
    public static final String PARAM_DEEPLINK_LEADGEN_ID = "leadgenId";
    public static final String PATH_DEEPLINK_ARTICLE_PAGE = "article_page";
    public static final String PATH_DEEPLINK_OFFLINE = "offline_leadgen";
    public static final String PATH_DEEPLINK_ONLINE = "leadgen";
    public static final String PATH_DEEPLINK_UNIFIED_ONLINE = "online_leadgen";

    private OfflineAdsDeeplink() {
    }

    @DeepLink({"truecaller://offline_leadgen/{leadgenId}", "truecaller://online_leadgen/{leadgenId}", "truecaller://article_page/{leadgenId}"})
    public static final Intent createDeeplink(Context context, Bundle bundle) {
        OfflineAdType offlineAdType;
        String uri;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        Uri parse = Uri.parse(bundle.getString(DeepLink.URI));
        if (parse == null || (uri = parse.toString()) == null) {
            offlineAdType = null;
        } else {
            OfflineAdsDeeplink offlineAdsDeeplink = INSTANCE;
            l.d(uri, "it");
            offlineAdType = offlineAdsDeeplink.getAdType(uri);
        }
        Intent intent = new Intent(context, OfflineAdsActivity.class);
        intent.putExtra(EXTRA_LEADGEN_ID, bundle.getString(PARAM_DEEPLINK_LEADGEN_ID));
        String str = null;
        if (offlineAdType != null) {
            str = offlineAdType.name();
        }
        intent.putExtra(EXTRA_OFFLINE_AD_TYPE, str);
        intent.addFlags(268435456);
        return intent;
    }

    private final OfflineAdType getAdType(String str) {
        return v.B(str, PATH_DEEPLINK_ARTICLE_PAGE, false, 2) ? OfflineAdType.ARTICLE_PAGE : v.B(str, PATH_DEEPLINK_OFFLINE, false, 2) ? OfflineAdType.OFFLINE_LEADGEN : v.B(str, PATH_DEEPLINK_ONLINE, false, 2) ? OfflineAdType.ONLINE_LEADGEN : null;
    }
}
