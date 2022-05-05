package com.mixpanel.android.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import com.mixpanel.android.mpmetrics.MPConfig;
import com.mixpanel.android.util.RemoteService;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/HttpService.class */
public class HttpService implements RemoteService {
    private static final String LOGTAG = "MixpanelAPI.Message";
    private static boolean sIsMixpanelBlocked;
    @NonNull
    private final OkHttpClient okHttpClient;

    public HttpService() {
        this(new OkHttpClient.Builder().retryOnConnectionFailure(false).connectTimeout(10L, TimeUnit.SECONDS).build());
    }

    public HttpService(@NonNull OkHttpClient okHttpClient) {
        this.okHttpClient = okHttpClient;
    }

    private boolean onOfflineMode(OfflineMode offlineMode) {
        boolean z = false;
        if (offlineMode != null) {
            try {
                z = false;
                if (offlineMode.isOffline()) {
                    z = true;
                }
            } catch (Exception e) {
                MPLog.m306v(LOGTAG, "Client State should not throw exception, will assume is not on offline mode", e);
                z = false;
            }
        }
        return z;
    }

    @Override // com.mixpanel.android.util.RemoteService
    public void checkIsMixpanelBlocked() {
        new Thread(new Runnable() { // from class: com.mixpanel.android.util.HttpService.1
            /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x001a, B:8:0x0021, B:13:0x0032, B:15:0x003d), top: B:18:0x0000 }] */
            /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r3 = this;
                    java.lang.String r0 = "api.mixpanel.com"
                    java.net.InetAddress r0 = java.net.InetAddress.getByName(r0)     // Catch: Exception -> 0x0045
                    r4 = r0
                    java.lang.String r0 = "decide.mixpanel.com"
                    java.net.InetAddress r0 = java.net.InetAddress.getByName(r0)     // Catch: Exception -> 0x0045
                    r5 = r0
                    r0 = r4
                    boolean r0 = r0.isLoopbackAddress()     // Catch: Exception -> 0x0045
                    if (r0 != 0) goto L_0x0030
                    r0 = r4
                    boolean r0 = r0.isAnyLocalAddress()     // Catch: Exception -> 0x0045
                    if (r0 != 0) goto L_0x0030
                    r0 = r5
                    boolean r0 = r0.isLoopbackAddress()     // Catch: Exception -> 0x0045
                    if (r0 != 0) goto L_0x0030
                    r0 = r5
                    boolean r0 = r0.isAnyLocalAddress()     // Catch: Exception -> 0x0045
                    if (r0 == 0) goto L_0x002b
                    goto L_0x0030
                L_0x002b:
                    r0 = 0
                    r6 = r0
                    goto L_0x0032
                L_0x0030:
                    r0 = 1
                    r6 = r0
                L_0x0032:
                    r0 = r6
                    boolean r0 = com.mixpanel.android.util.HttpService.access$002(r0)     // Catch: Exception -> 0x0045
                    boolean r0 = com.mixpanel.android.util.HttpService.access$000()     // Catch: Exception -> 0x0045
                    if (r0 == 0) goto L_0x0044
                    java.lang.String r0 = "MixpanelAPI.Message"
                    java.lang.String r1 = "AdBlocker is enabled. Won't be able to use Mixpanel services."
                    com.mixpanel.android.util.MPLog.m307v(r0, r1)     // Catch: Exception -> 0x0045
                L_0x0044:
                    return
                L_0x0045:
                    r4 = move-exception
                    goto L_0x0044
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.util.HttpService.RunnableC15391.run():void");
            }
        }).start();
    }

    @Override // com.mixpanel.android.util.RemoteService
    @SuppressLint({"MissingPermission"})
    public boolean isOnline(Context context, OfflineMode offlineMode) {
        if (sIsMixpanelBlocked || onOfflineMode(offlineMode)) {
            return false;
        }
        boolean z = true;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo == null) {
                MPLog.m307v(LOGTAG, "A default network has not been set so we cannot be certain whether we are offline");
            } else {
                boolean isConnectedOrConnecting = activeNetworkInfo.isConnectedOrConnecting();
                StringBuilder sb = new StringBuilder();
                sb.append("ConnectivityManager says we ");
                sb.append(isConnectedOrConnecting ? "are" : "are not");
                sb.append(" online");
                MPLog.m307v(LOGTAG, sb.toString());
                z = isConnectedOrConnecting;
            }
        } catch (SecurityException e) {
            MPLog.m307v(LOGTAG, "Don't have permission to check connectivity, will assume we are online");
        }
        return z;
    }

    @Override // com.mixpanel.android.util.RemoteService
    @NonNull
    public RemoteResponse performRequest(@NonNull String str, @NonNull String str2) throws RemoteService.ServiceUnavailableException, IOException {
        MPLog.m307v(LOGTAG, "Attempting request to " + str);
        Response execute = this.okHttpClient.newCall(new Request.Builder().addHeader("X-AF-CLIENT-TS", String.valueOf(System.currentTimeMillis())).addHeader("X_AF_DEBUG", MPConfig.DEBUG ? "1" : "0").url(str).post(RequestBody.create((MediaType) null, str2)).build()).execute();
        ResponseBody body = execute.body();
        RemoteResponse remoteResponse = new RemoteResponse(execute.code(), execute.message(), body != null ? body.string() : "");
        MPLog.m313d(LOGTAG, remoteResponse.toString());
        return remoteResponse;
    }
}
