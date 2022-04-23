package com.aotter.net.trek.ads;

import com.aotter.net.gson.Gson;
import com.aotter.net.trek.api.MFTCApiClient;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.aotter.net.trek.ads.d */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/d.class */
public class C1665d implements MFTCApiClient.APICallFinishedListener {

    /* renamed from: a */
    public final /* synthetic */ AdCache f1190a;

    public C1665d(AdCache adCache) {
        this.f1190a = adCache;
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onError(JSONObject jSONObject) {
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onFail() {
    }

    @Override // com.aotter.net.trek.api.MFTCApiClient.APICallFinishedListener
    public void onSuccess(JSONObject jSONObject) {
        try {
            for (String str : (List) new Gson().fromJson(jSONObject.getString("false"), new C1666e(this).getType())) {
                try {
                    this.f1190a.m36599a(str);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
