package com.appsflyer;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/appsflyer/OneLinkHttpTask.class */
public abstract class OneLinkHttpTask implements Runnable {
    public static final String BASE_URL = "https://%sonelink.%s/shortlink-sdk/v1";
    public static final String NO_CONNECTION_ERROR_MSG = "Can't get one link data";
    public static final int WAIT_TIMEOUT = 3000;
    public AppsFlyerLibCore afLib;
    public HttpsUrlConnectionProvider connectionProvider;
    public String oneLinkId;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider.class */
    public static class HttpsUrlConnectionProvider {
        /* renamed from: ǃ */
        public final HttpsURLConnection m36197(String str) throws IOException {
            return (HttpsURLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
        }
    }

    public OneLinkHttpTask(AppsFlyerLibCore appsFlyerLibCore) {
        this.afLib = appsFlyerLibCore;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doRequest() {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.OneLinkHttpTask.doRequest():void");
    }

    public abstract String getOneLinkUrl();

    public abstract void handleResponse(String str);

    public abstract void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    public abstract void onErrorResponse();

    @Override // java.lang.Runnable
    public void run() {
        doRequest();
    }

    public void setConnProvider(HttpsUrlConnectionProvider httpsUrlConnectionProvider) {
        this.connectionProvider = httpsUrlConnectionProvider;
    }
}
