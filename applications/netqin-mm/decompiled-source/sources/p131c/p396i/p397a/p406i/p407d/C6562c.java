package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.data.bean.RequestConfig;
import com.library.p518ad.strategy.request.batmobi.BatmobiBaseBannerRequest;
import com.library.p518ad.strategy.request.batmobi.BatmobiBaseInterstitialRequest;
import com.library.p518ad.strategy.request.batmobi.BatmobiBaseNativeRequest;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p399f.p400a.C6524b;
/* renamed from: c.i.a.i.d.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/c.class */
public class C6562c {
    /* renamed from: a */
    public static AbstractC6508d m20483a(RequestConfig requestConfig) {
        AbstractC6508d a = C6559a.m20498a(requestConfig);
        if (a != null) {
            return a;
        }
        String str = requestConfig.source;
        char c = 65535;
        if (str.hashCode() == 2123 && str.equals("BM")) {
            c = 0;
        }
        if (c == 0) {
            int i = requestConfig.adType;
            if (i == 1) {
                a = new BatmobiBaseNativeRequest(requestConfig.unitId);
            } else if (i == 3) {
                a = new BatmobiBaseInterstitialRequest(requestConfig.unitId);
            } else if (i == 2) {
                a = new BatmobiBaseBannerRequest(requestConfig.unitId);
            }
        }
        if (a == null) {
            String str2 = requestConfig.source;
            String str3 = "adType:" + C6524b.m20573a(requestConfig.adType);
            String str4 = "unitId:" + requestConfig.unitId;
        }
        return a;
    }
}
