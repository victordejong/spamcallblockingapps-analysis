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
/* renamed from: com.appsflyer.internal.ad */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ad.class */
public final class C3404ad extends OneLinkHttpTask {

    /* renamed from: ı */
    private static List<String> f12852 = Arrays.asList("onelink.me", "onelnk.com", "app.aflink.com");

    /* renamed from: ǃ */
    public boolean f12853;

    /* renamed from: ɩ */
    private String f12854;

    /* renamed from: Ι */
    private String f12855;

    /* renamed from: ι */
    public AbstractC3405b f12856;

    /* renamed from: com.appsflyer.internal.ad$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ad$b.class */
    public interface AbstractC3405b {
        /* renamed from: ɩ */
        void mo38025(String str);

        /* renamed from: Ι */
        void mo38024(Map<String, String> map);
    }

    public C3404ad(Uri uri, AppsFlyerLibCore appsFlyerLibCore) {
        super(appsFlyerLibCore);
        int i = 0;
        this.f12853 = false;
        if (TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath())) {
            return;
        }
        boolean z = false;
        for (String str : f12852) {
            if (uri.getHost().contains(str)) {
                z = true;
            }
        }
        boolean z2 = z;
        if (AFDeepLinkManager.f12676 != null) {
            StringBuilder sb = new StringBuilder("Validate custom domain URLs: ");
            sb.append(Arrays.asList(AFDeepLinkManager.f12676));
            AFLogger.afRDLog(sb.toString());
            String[] strArr = AFDeepLinkManager.f12676;
            int length = strArr.length;
            while (true) {
                z2 = z;
                if (i >= length) {
                    break;
                }
                String str2 = strArr[i];
                boolean z3 = z;
                if (uri.getHost().contains(str2)) {
                    z3 = z;
                    if (!TextUtils.isEmpty(str2)) {
                        StringBuilder sb2 = new StringBuilder("DeepLink matches customDomain: ");
                        sb2.append(uri.toString());
                        AFLogger.afDebugLog(sb2.toString());
                        this.f12853 = true;
                        z3 = true;
                    }
                }
                i++;
                z = z3;
            }
        }
        String[] split = uri.getPath().split("/");
        if (!z2 || split.length != 3) {
            return;
        }
        this.oneLinkId = split[1];
        this.f12855 = split[2];
        this.f12854 = uri.toString();
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final String getOneLinkUrl() {
        StringBuilder sb = new StringBuilder();
        sb.append(ServerConfigHandler.getUrl(BASE_URL));
        sb.append("/");
        sb.append(this.oneLinkId);
        sb.append("?id=");
        sb.append(this.f12855);
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
            this.f12856.mo38024(hashMap);
        } catch (JSONException e) {
            this.f12856.mo38025("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        httpsURLConnection.setRequestMethod("GET");
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void onErrorResponse() {
        String str = this.f12854;
        if (str == null) {
            str = "Can't get one link data";
        }
        this.f12856.mo38025(str);
    }

    /* renamed from: Ι */
    public final boolean m38026() {
        return !TextUtils.isEmpty(this.oneLinkId) && !TextUtils.isEmpty(this.f12855) && !this.oneLinkId.equals("app");
    }
}
