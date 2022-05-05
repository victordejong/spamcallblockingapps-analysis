package com.aotter.net.trek.ads;

import android.content.Context;
import android.text.TextUtils;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.network.ImageHelper;
import com.aotter.net.trek.util.TrekLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.aotter.net.trek.ads.g */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/g.class */
public class C1668g implements MFTCApiClient.APICallFinishedListener {

    /* renamed from: a */
    public final /* synthetic */ TKAdN f1193a;

    public C1668g(TKAdN tKAdN) {
        this.f1193a = tKAdN;
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onError(JSONObject jSONObject) {
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onFail() {
        AdListener adListener;
        AdListener adListener2;
        try {
            adListener = this.f1193a.f1162c;
            if (adListener != null) {
                adListener2 = this.f1193a.f1162c;
                adListener2.onAdFail();
            } else {
                TrekLog.m36317e("Need set setAdListener");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onSuccess(JSONObject jSONObject) {
        Gson gson;
        String str;
        boolean z;
        String str2;
        Context context;
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(AotterTrekApplication.TAG_API_SUCCESS);
            gson = this.f1193a.f1163d;
            NativeAd[] nativeAdArr = (NativeAd[]) gson.fromJson(jSONArray.toString(), (Class<Object>) NativeAd[].class);
            if (nativeAdArr.length > 0) {
                String adType = nativeAdArr[0].getAdType();
                if (!TextUtils.isEmpty(adType)) {
                    ArrayList arrayList = new ArrayList(Arrays.asList(nativeAdArr));
                    str = this.f1193a.f1167h;
                    z = this.f1193a.f1174q;
                    AdCache.m36596a(adType, str, arrayList, (InstreamVideoListener) null, z);
                    str2 = this.f1193a.f1166g;
                    if (TextUtils.equals(str2, Constants.AD_TYPE_NATIVE_INTERACTIVE)) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            NativeAd nativeAd = (NativeAd) it.next();
                            if (nativeAd.getInteractSrc() != null && !TextUtils.isEmpty(nativeAd.getInteractSrc().getBgPlaceholder())) {
                                arrayList2.add(nativeAd.getInteractSrc().getBgPlaceholder());
                            }
                        }
                        context = this.f1193a.f1165f;
                        ImageHelper.preCacheImages(context, arrayList2, new C1669h(this));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
