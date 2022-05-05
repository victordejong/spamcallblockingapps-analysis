package com.aotter.net.trek.ads.impression;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.aotter.net.trek.ads.AdCache;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.util.ThirdPartyUtil;
import com.aotter.net.trek.ads.view.TrekMediaView;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/ImpRecordHelper.class */
public class ImpRecordHelper {
    /* renamed from: a */
    public static void m36557a(Context context, AdListener adListener, NativeAd nativeAd) {
        if (AdCache.getImpCache().get(nativeAd.getUnitInstanceId()) == null) {
            AdCache.getImpCache().put(nativeAd.getUnitInstanceId(), nativeAd);
            if (!TextUtils.isEmpty(nativeAd.getAdurl_imp())) {
                MFTCApiClient.getSharedInstance(context).sendImp(nativeAd.getAdurl_imp());
                if (adListener != null) {
                    adListener.onAdImpression(nativeAd);
                }
            }
            ThirdPartyUtil.recordImp(context, nativeAd);
        }
    }

    /* renamed from: a */
    public static void m36556a(Context context, AdListener adListener, NativeAd nativeAd, View view) {
        if (AdCache.getImpCache().get(nativeAd.getUnitInstanceId()) == null) {
            AdCache.getImpCache().put(nativeAd.getUnitInstanceId(), nativeAd);
            if (!TextUtils.isEmpty(nativeAd.getAdurl_imp())) {
                MFTCApiClient.getSharedInstance(context).sendImp(nativeAd.getAdurl_imp());
                if (adListener != null) {
                    adListener.onAdImpression(nativeAd);
                }
            }
            try {
                if (view instanceof TrekMediaView) {
                    ((TrekMediaView) view).recordImpression();
                }
            } catch (Exception e) {
            }
        }
    }

    public static void sendImp(Context context, AdListener adListener, NativeAd nativeAd) {
        m36557a(context.getApplicationContext(), adListener, nativeAd);
    }

    public static void sendImpWithInterActiveAd(Context context, AdListener adListener, NativeAd nativeAd, View view) {
        m36556a(context.getApplicationContext(), adListener, nativeAd, view);
    }
}
