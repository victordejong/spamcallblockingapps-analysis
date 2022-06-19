package net.pubnative.lite.sdk.consent;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import net.pubnative.lite.sdk.consent.models.UserConsentResponseModel;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/CheckConsentRequest.class */
public class CheckConsentRequest {
    private static final String TAG = "CheckConsentRequest";

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener.class */
    public interface CheckConsentListener {
        void onFailure(Throwable th);

        void onSuccess(UserConsentResponseModel userConsentResponseModel);
    }

    public void handleResponse(String str, CheckConsentListener checkConsentListener) {
        if (TextUtils.isEmpty(str)) {
            Exception exc = new Exception("Empty response received from server");
            Logger.m628e(TAG, exc.getMessage());
            checkConsentListener.onFailure(exc);
            return;
        }
        try {
            checkConsentListener.onSuccess(new UserConsentResponseModel(new JSONObject(str)));
        } catch (Exception e) {
            Logger.m628e(TAG, e.getMessage());
            checkConsentListener.onFailure(e);
        }
    }

    public void checkConsent(Context context, String str, String str2, final CheckConsentListener checkConsentListener) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            checkConsentListener.onFailure(new Exception("Invalid parameters for check user consent request."));
            return;
        }
        String checkConsentUrl = PNConsentEndpoints.getCheckConsentUrl(str2);
        HashMap hashMap = new HashMap();
        hashMap.put("Authorization", String.format(Locale.ENGLISH, "Bearer %s", str));
        PNHttpClient.makeRequest(context, checkConsentUrl, hashMap, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.consent.CheckConsentRequest.1
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                CheckConsentListener checkConsentListener2 = checkConsentListener;
                if (checkConsentListener2 != null) {
                    checkConsentListener2.onFailure(th);
                }
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str3) {
                CheckConsentListener checkConsentListener2 = checkConsentListener;
                if (checkConsentListener2 != null) {
                    CheckConsentRequest.this.handleResponse(str3, checkConsentListener2);
                }
            }
        });
    }
}
