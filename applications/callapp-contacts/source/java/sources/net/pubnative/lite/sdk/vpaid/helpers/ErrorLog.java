package net.pubnative.lite.sdk.vpaid.helpers;

import android.content.Context;
import android.text.TextUtils;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/ErrorLog.class */
public class ErrorLog {
    private static final String ERROR_CODE = "[ERRORCODE]";
    private static final String LOG_TAG = "ErrorLog";
    private static String sErrorLogUrl;

    private ErrorLog() {
    }

    public static void initErrorLog(String str) {
        sErrorLogUrl = str;
    }

    public static void postError(Context context, VastError vastError) {
        synchronized (ErrorLog.class) {
            try {
                if (TextUtils.isEmpty(sErrorLogUrl)) {
                    return;
                }
                String str = sErrorLogUrl;
                String str2 = str;
                if (str.contains(ERROR_CODE)) {
                    str2 = str.replace(ERROR_CODE, vastError.getValue());
                }
                Logger.m630d(LOG_TAG, str2);
                PNHttpClient.makeRequest(context, str2, null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.vpaid.helpers.ErrorLog.1
                    @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                    public final void onFailure(Throwable th) {
                    }

                    @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                    public final void onSuccess(String str3) {
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
