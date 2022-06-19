package com.appsflyer;

import java.io.IOException;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/appsflyer/OneLinkHttpTask.class */
public abstract class OneLinkHttpTask implements Runnable {
    protected static String BASE_URL = "https://%sonelink.%s/shortlink-sdk/v1";
    static final String NO_CONNECTION_ERROR_MSG = "Can't get one link data";
    private static final int WAIT_TIMEOUT = 3000;
    private AppsFlyerLibCore afLib;
    private HttpsUrlConnectionProvider connectionProvider;
    public String oneLinkId;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider.class */
    public static class HttpsUrlConnectionProvider {
        /* renamed from: ɩ */
        final HttpsURLConnection m38041(String str) throws IOException {
            return (HttpsURLConnection) new URL(str).openConnection();
        }
    }

    public OneLinkHttpTask(AppsFlyerLibCore appsFlyerLibCore) {
        this.afLib = appsFlyerLibCore;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doRequest() {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.OneLinkHttpTask.doRequest():void");
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("onelink".equals(entry.getKey())) {
                BASE_URL = entry.getValue();
            }
        }
    }

    protected abstract String getOneLinkUrl();

    protected abstract void handleResponse(String str);

    protected abstract void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    protected abstract void onErrorResponse();

    @Override // java.lang.Runnable
    public void run() {
        doRequest();
    }

    public void setConnProvider(HttpsUrlConnectionProvider httpsUrlConnectionProvider) {
        this.connectionProvider = httpsUrlConnectionProvider;
    }
}
