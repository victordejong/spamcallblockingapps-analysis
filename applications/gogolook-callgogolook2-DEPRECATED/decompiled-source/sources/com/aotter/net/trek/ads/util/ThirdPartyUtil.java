package com.aotter.net.trek.ads.util;

import android.content.Context;
import android.text.TextUtils;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.ArrayUtils;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/util/ThirdPartyUtil.class */
public class ThirdPartyUtil {
    /* renamed from: a */
    public static String m36534a(String str) {
        return str.replace(" ", "");
    }

    /* renamed from: a */
    public static void m36535a(Context context, NativeAd nativeAd) {
        String[] third_party_clc;
        if (!ArrayUtils.isEmpty(nativeAd.getThird_party_clc())) {
            for (String str : nativeAd.getThird_party_clc()) {
                if (!TextUtils.isEmpty(str)) {
                    MFTCApiClient.getSharedInstance(context).sendGetUrl(str);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m36533b(Context context, NativeAd nativeAd) {
        String[] third_party_imp;
        if (!ArrayUtils.isEmpty(nativeAd.getThird_party_imp())) {
            for (String str : nativeAd.getThird_party_imp()) {
                if (!TextUtils.isEmpty(str)) {
                    MFTCApiClient.getSharedInstance(context).sendGetUrl(str);
                }
            }
        }
    }

    public static void recordClc(Context context, NativeAd nativeAd) {
        m36535a(context, nativeAd);
    }

    public static void recordImp(Context context, NativeAd nativeAd) {
        m36533b(context, nativeAd);
    }
}
