package net.pubnative.lite.sdk.reporting;

import android.content.Context;
import java.util.HashMap;
import net.pubnative.lite.sdk.network.PNHttpClient;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/reporting/ReportingDelegate.class */
public class ReportingDelegate {
    private static final String TAG = "ReportingDelegate";
    private final Context mContext;
    private final String mReportingUrl;

    public ReportingDelegate(Context context, String str) {
        this.mContext = context;
        this.mReportingUrl = str;
    }

    private String getAuthString() {
        return "";
    }

    public void reportEventRaw(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/json");
        hashMap.put("Authorization", getAuthString());
        PNHttpClient.makeRequest(this.mContext, this.mReportingUrl, hashMap, jSONObject.toString(), new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.reporting.ReportingDelegate.1
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                String unused = ReportingDelegate.TAG;
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str) {
                String unused = ReportingDelegate.TAG;
            }
        });
    }
}
