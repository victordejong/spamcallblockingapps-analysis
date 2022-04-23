package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.data.bean.RequestConfig;
import com.library.p518ad.strategy.request.admob.AdMobBannerBaseRequest;
import com.library.p518ad.strategy.request.admob.AdMobInterstitialAdBaseRequest;
import com.library.p518ad.strategy.request.admob.AdMobOpenBaseRequest;
import com.library.p518ad.strategy.request.admob.AdMobUnifiedNativeBaseRequest;
import com.library.p518ad.strategy.request.admob.AdMobVideoBaseRequest;
import com.library.p518ad.strategy.request.facebook.FacebookBannerBaseRequest;
import com.library.p518ad.strategy.request.facebook.FacebookInterstitialBaseRequest;
import com.library.p518ad.strategy.request.facebook.FacebookNativeAdBaseRequest;
import com.library.p518ad.strategy.request.mopub.MoPubBannerBaseRequest;
import com.library.p518ad.strategy.request.mopub.MoPubInterstitialBaseRequest;
import com.library.p518ad.strategy.request.mopub.MoPubNativeBaseRequest;
import p131c.p396i.p397a.p398e.AbstractC6508d;
/* renamed from: c.i.a.i.d.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/a.class */
public class C6559a {
    /* renamed from: a */
    public static AbstractC6508d m20498a(RequestConfig requestConfig) {
        char c;
        AbstractC6508d dVar;
        String str = requestConfig.source;
        int hashCode = str.hashCode();
        if (hashCode == 2092) {
            if (str.equals("AM")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 2236) {
            if (hashCode == 2467 && str.equals("MP")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals("FB")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            int i = requestConfig.adType;
            dVar = i == 1 ? new FacebookNativeAdBaseRequest(requestConfig.unitId) : i == 2 ? new FacebookBannerBaseRequest(requestConfig.unitId) : new FacebookInterstitialBaseRequest(requestConfig.unitId);
        } else if (c == 1) {
            int i2 = requestConfig.adType;
            dVar = i2 == 1 ? new AdMobUnifiedNativeBaseRequest(requestConfig.unitId) : i2 == 2 ? new AdMobBannerBaseRequest(requestConfig.unitId) : i2 == 4 ? new AdMobVideoBaseRequest(requestConfig.unitId) : i2 == 6 ? new AdMobOpenBaseRequest(requestConfig.unitId) : new AdMobInterstitialAdBaseRequest(requestConfig.unitId);
        } else if (c != 2) {
            dVar = null;
        } else {
            int i3 = requestConfig.adType;
            dVar = i3 == 1 ? new MoPubNativeBaseRequest(requestConfig.unitId) : i3 == 2 ? new MoPubBannerBaseRequest(requestConfig.unitId) : new MoPubInterstitialBaseRequest(requestConfig.unitId);
        }
        return dVar;
    }
}
