package com.vk.api.sdk.internal;

import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.AccessToken;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.exceptions.VKApiIllegalResponseException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0002J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007¨\u0006\u0019"}, d2 = {"Lcom/vk/api/sdk/internal/VKErrorUtils;", "", "()V", "executeErrorsSet", "", "", "jsonString", "", "hasExecuteError", "", Payload.RESPONSE, "ignoreErrors", "", "hasSimpleError", "parseExecuteError", "Lcom/vk/api/sdk/exceptions/VKApiException;", "method", "ignoredErrors", "errorsJson", "Lorg/json/JSONArray;", "parseSimpleError", "errorStr", "accessToken", "errorJson", "Lorg/json/JSONObject;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f36094a = new c();

    private c() {
    }

    public static VKApiException a(JSONObject errorJson, String str, String str2) {
        p.d(errorJson, "errorJson");
        try {
            int optInt = errorJson.optInt("error_code");
            Bundle bundle = null;
            if (optInt == 5) {
                JSONObject optJSONObject = errorJson.optJSONObject("ban_info");
                if (optJSONObject != null) {
                    bundle = new Bundle();
                    bundle.putString("user_ban_info", optJSONObject.toString());
                }
            } else if (optInt == 14) {
                bundle = new Bundle();
                bundle.putString("captcha_sid", errorJson.getString("captcha_sid"));
                bundle.putString("captcha_img", errorJson.getString("captcha_img"));
            } else if (optInt == 17) {
                bundle = new Bundle();
                bundle.putString("validation_url", errorJson.getString("redirect_uri"));
            } else if (optInt == 24) {
                bundle = new Bundle();
                bundle.putString("confirmation_text", errorJson.getString("confirmation_text"));
            } else if (optInt == 3609) {
                bundle = new Bundle();
                bundle.putString("extend_hash", errorJson.optString("extend_hash", null));
            }
            Bundle bundle2 = bundle;
            if (str2 != null) {
                bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle(1);
                }
                bundle2.putString(AccessToken.ACCESS_TOKEN_KEY, str2);
            }
            VKApiExecutionException.a aVar = VKApiExecutionException.e;
            return VKApiExecutionException.a.a(errorJson, str, bundle2);
        } catch (Exception e) {
            String jSONObject = errorJson.toString();
            p.b(jSONObject, "errorJson.toString()");
            return new VKApiIllegalResponseException(jSONObject, e);
        }
    }

    public static boolean a(String response) {
        p.d(response, "response");
        return JsonUtils.INSTANCE.containsElement(response, "error");
    }

    public static boolean a(String response, int[] iArr) {
        p.d(response, "response");
        return JsonUtils.INSTANCE.containsElement(response, "execute_errors");
    }

    public final VKApiException a(JSONArray jSONArray, String str, int[] iArr) {
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                p.b(jSONObject, "errorsJson.getJSONObject(i)");
                VKApiException a2 = a(jSONObject, (String) null, (String) null);
                if (!(a2 instanceof VKApiExecutionException)) {
                    return a2;
                }
                int i2 = ((VKApiExecutionException) a2).f36073b;
                if (i2 == 1 || i2 == 14 || i2 == 17 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 9 || i2 == 10 || i2 == 24 || i2 == 25) {
                    return a2;
                }
                arrayList.add(a2);
            }
            return new VKApiExecutionException(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, str, false, "", null, arrayList, null, null, 192, null);
        } catch (JSONException e) {
            return new VKApiIllegalResponseException(e);
        }
    }
}
