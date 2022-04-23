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
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ad.class */
public final class ad extends OneLinkHttpTask {

    /* renamed from: ı  reason: contains not printable characters */
    private static List<String> f176 = Arrays.asList("onelink.me", "onelnk.com", "app.aflink.com");

    /* renamed from: ǃ  reason: contains not printable characters */
    public boolean f177;

    /* renamed from: ɩ  reason: contains not printable characters */
    private String f178;

    /* renamed from: Ι  reason: contains not printable characters */
    private String f179;

    /* renamed from: ι  reason: contains not printable characters */
    public b f180;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ad$b.class */
    public interface b {
        /* renamed from: ɩ */
        void mo904(String str);

        /* renamed from: Ι */
        void mo905(Map<String, String> map);
    }

    public ad(Uri uri, AppsFlyerLibCore appsFlyerLibCore) {
        super(appsFlyerLibCore);
        int i = 0;
        this.f177 = false;
        if (!(TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath()))) {
            boolean z = false;
            for (String str : f176) {
                if (uri.getHost().contains(str)) {
                    z = true;
                }
            }
            boolean z2 = z;
            if (AFDeepLinkManager.f0 != null) {
                StringBuilder sb = new StringBuilder("Validate custom domain URLs: ");
                sb.append(Arrays.asList(AFDeepLinkManager.f0));
                AFLogger.afRDLog(sb.toString());
                String[] strArr = AFDeepLinkManager.f0;
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
                        if (!TextUtils.isEmpty(str2)) {
                            StringBuilder sb2 = new StringBuilder("DeepLink matches customDomain: ");
                            sb2.append(uri.toString());
                            AFLogger.afDebugLog(sb2.toString());
                            this.f177 = true;
                            z = true;
                        }
                    }
                    i++;
                }
            }
            String[] split = uri.getPath().split("/");
            if (z2 && split.length == 3) {
                this.oneLinkId = split[1];
                this.f179 = split[2];
                this.f178 = uri.toString();
            }
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final String getOneLinkUrl() {
        StringBuilder sb = new StringBuilder();
        sb.append(ServerConfigHandler.getUrl(BASE_URL));
        sb.append("/");
        sb.append(this.oneLinkId);
        sb.append("?id=");
        sb.append(this.f179);
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
            this.f180.mo905(hashMap);
        } catch (JSONException e) {
            this.f180.mo904("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        httpsURLConnection.setRequestMethod("GET");
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void onErrorResponse() {
        String str = this.f178;
        if (str == null) {
            str = "Can't get one link data";
        }
        this.f180.mo904(str);
    }

    /* renamed from: Ι  reason: contains not printable characters */
    public final boolean m934() {
        return !TextUtils.isEmpty(this.oneLinkId) && !TextUtils.isEmpty(this.f179) && !this.oneLinkId.equals("app");
    }
}
