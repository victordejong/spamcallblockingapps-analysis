package net.pubnative.lite.sdk.consent;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import net.pubnative.lite.sdk.consent.models.UserConsentRequestModel;
import net.pubnative.lite.sdk.consent.models.UserConsentResponseModel;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/UserConsentRequest.class */
public class UserConsentRequest {
    private static final String TAG = CheckConsentRequest.class.getSimpleName();

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener.class */
    public interface UserConsentListener {
        void onFailure(Throwable th);

        void onSuccess(UserConsentResponseModel userConsentResponseModel);
    }

    public void handleResponse(String str, UserConsentListener userConsentListener) {
        if (TextUtils.isEmpty(str)) {
            Exception exc = new Exception("Empty response received from server");
            Logger.m628e(TAG, exc.getMessage());
            userConsentListener.onFailure(exc);
            return;
        }
        try {
            userConsentListener.onSuccess(new UserConsentResponseModel(new JSONObject(str)));
        } catch (Exception e) {
            Logger.m628e(TAG, e.getMessage());
            userConsentListener.onFailure(e);
        }
    }

    public void doRequest(Context context, String str, UserConsentRequestModel userConsentRequestModel, final UserConsentListener userConsentListener) {
        String consentUrl = PNConsentEndpoints.getConsentUrl();
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", "application/json");
            hashMap.put("Authorization", String.format(Locale.ENGLISH, "Bearer %s", str));
            PNHttpClient.makeRequest(context, consentUrl, hashMap, userConsentRequestModel.toJson().toString(), new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.consent.UserConsentRequest.1
                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onFailure(Throwable th) {
                    UserConsentListener userConsentListener2 = userConsentListener;
                    if (userConsentListener2 != null) {
                        userConsentListener2.onFailure(th);
                    }
                }

                @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                public void onSuccess(String str2) {
                    UserConsentListener userConsentListener2 = userConsentListener;
                    if (userConsentListener2 != null) {
                        UserConsentRequest.this.handleResponse(str2, userConsentListener2);
                    }
                }
            });
        } catch (Exception e) {
            Logger.m628e(TAG, e.getMessage());
            userConsentListener.onFailure(e);
        }
    }
}
