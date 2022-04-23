package net.pubnative.lite.sdk.config;

import android.content.Context;
import android.text.TextUtils;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Locale;
import net.pubnative.lite.sdk.config.encryption.AESCrypto;
import net.pubnative.lite.sdk.models.RemoteConfigModel;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/config/ConfigRequest.class */
public class ConfigRequest {
    private static final String TAG = "ConfigRequest";

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/config/ConfigRequest$Listener.class */
    public interface Listener {
        void onConfigError(Throwable th);

        void onConfigFetched(RemoteConfigModel remoteConfigModel);
    }

    private String decryptJsonFile(String str, String str2) throws GeneralSecurityException {
        return AESCrypto.decrypt(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResponse(String str, Listener listener, String str2) {
        if (TextUtils.isEmpty(str)) {
            Exception exc = new Exception("Empty config response received from server");
            Logger.e(TAG, exc.getMessage());
            listener.onConfigError(exc);
            return;
        }
        try {
            listener.onConfigFetched(new RemoteConfigModel(new JSONObject(decryptJsonFile(str2, str))));
        } catch (Exception e) {
            Logger.e(TAG, e.getMessage());
            listener.onConfigError(e);
        }
    }

    public void doRequest(Context context, final String str, final Listener listener) {
        String configUrl = ConfigEndpoints.getConfigUrl();
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", "application/json");
            hashMap.put("Authorization", String.format(Locale.ENGLISH, "Bearer %s", str));
            PNHttpClient.makeRequest(context, configUrl, hashMap, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.config.ConfigRequest.1
                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onFailure(Throwable th) {
                    Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onConfigError(th);
                    }
                }

                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onSuccess(String str2) {
                    Listener listener2 = listener;
                    if (listener2 != null) {
                        ConfigRequest.this.handleResponse(str2, listener2, str);
                    }
                }
            });
        } catch (Exception e) {
            Logger.e(TAG, e.getMessage());
            listener.onConfigError(e);
        }
    }
}
