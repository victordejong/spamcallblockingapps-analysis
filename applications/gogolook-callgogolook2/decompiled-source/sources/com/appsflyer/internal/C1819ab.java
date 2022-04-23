package com.appsflyer.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.AFDeepLinkManager;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.ab */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab.class */
public final class C1819ab extends OneLinkHttpTask {

    /* renamed from: Ι */
    public static List<String> f1771 = Arrays.asList("onelink.me", "onelnk.com", "app.aflink.com");

    /* renamed from: ı */
    public String f1772;

    /* renamed from: ǃ */
    public String f1773;

    /* renamed from: ι */
    public AbstractC1820b f1774;

    /* renamed from: com.appsflyer.internal.ab$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab$b.class */
    public interface AbstractC1820b {
        /* renamed from: ı */
        void mo36189(String str);

        /* renamed from: ɩ */
        void mo36188(Map<String, String> map);
    }

    public C1819ab(Uri uri, AppsFlyerLibCore appsFlyerLibCore) {
        super(appsFlyerLibCore);
        if (!(TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath()))) {
            int i = 0;
            boolean z = false;
            for (String str : f1771) {
                if (uri.getHost().contains(str)) {
                    z = true;
                }
            }
            boolean z2 = z;
            if (AFDeepLinkManager.f1605 != null) {
                StringBuilder sb = new StringBuilder("Validate custom domain URLs: ");
                sb.append(Arrays.asList(AFDeepLinkManager.f1605));
                AFLogger.afRDLog(sb.toString());
                String[] strArr = AFDeepLinkManager.f1605;
                int length = strArr.length;
                while (true) {
                    z2 = z;
                    if (i >= length) {
                        break;
                    }
                    String str2 = strArr[i];
                    z = z;
                    if (uri.getHost().contains(str2)) {
                        z = z;
                        if (str2 != "") {
                            StringBuilder sb2 = new StringBuilder("DeepLink matches customDomain: ");
                            sb2.append(uri.toString());
                            AFLogger.afDebugLog(sb2.toString());
                            z = true;
                        }
                    }
                    i++;
                }
            }
            String[] split = uri.getPath().split("/");
            if (z2 && split.length == 3) {
                this.oneLinkId = split[1];
                this.f1773 = split[2];
                this.f1772 = uri.toString();
            }
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final String getOneLinkUrl() {
        StringBuilder sb = new StringBuilder();
        sb.append(ServerConfigHandler.getUrl(OneLinkHttpTask.BASE_URL));
        sb.append("/");
        sb.append(this.oneLinkId);
        sb.append("?id=");
        sb.append(this.f1773);
        return sb.toString();
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void handleResponse(String str) {
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.optString(next));
            }
            this.f1774.mo36188(hashMap);
        } catch (JSONException e) {
            this.f1774.mo36189("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        httpsURLConnection.setRequestMethod("GET");
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void onErrorResponse() {
        String str = this.f1772;
        if (str == null) {
            str = OneLinkHttpTask.NO_CONNECTION_ERROR_MSG;
        }
        this.f1774.mo36189(str);
    }

    /* renamed from: ι */
    public final boolean m36190() {
        return !TextUtils.isEmpty(this.oneLinkId) && !TextUtils.isEmpty(this.f1773) && !this.oneLinkId.equals("app");
    }
}
