package com.aotter.net.trek.ads;

import android.content.Context;
import android.text.TextUtils;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.network.ImageHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.aotter.net.trek.ads.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/a.class */
public final class C1661a implements MFTCApiClient.APICallFinishedListener {

    /* renamed from: a */
    public final /* synthetic */ String f1178a;

    /* renamed from: b */
    public final /* synthetic */ boolean f1179b;

    /* renamed from: c */
    public final /* synthetic */ String f1180c;

    public C1661a(String str, boolean z, String str2) {
        this.f1178a = str;
        this.f1179b = z;
        this.f1180c = str2;
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onError(JSONObject jSONObject) {
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onFail() {
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onSuccess(JSONObject jSONObject) {
        Context context;
        try {
            NativeAd[] nativeAdArr = (NativeAd[]) new Gson().fromJson(jSONObject.getJSONArray(AotterTrekApplication.TAG_API_SUCCESS).toString(), (Class<Object>) NativeAd[].class);
            if (nativeAdArr.length > 0) {
                String adType = nativeAdArr[0].getAdType();
                if (!TextUtils.isEmpty(adType)) {
                    ArrayList arrayList = new ArrayList(Arrays.asList(nativeAdArr));
                    AdCache.m36596a(adType, this.f1178a, arrayList, (InstreamVideoListener) null, this.f1179b);
                    if (TextUtils.equals(this.f1180c, Constants.AD_TYPE_NATIVE_INTERACTIVE)) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            NativeAd nativeAd = (NativeAd) it.next();
                            if (!TextUtils.isEmpty(nativeAd.getInteractSrc().getBgPlaceholder())) {
                                arrayList2.add(nativeAd.getInteractSrc().getBgPlaceholder());
                            }
                        }
                        context = AdCache.f1149a;
                        ImageHelper.preCacheImages(context, arrayList2, new C1662b(this));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
