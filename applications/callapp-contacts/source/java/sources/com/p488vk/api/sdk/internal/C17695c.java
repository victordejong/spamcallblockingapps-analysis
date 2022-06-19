package com.p488vk.api.sdk.internal;

import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.facebook.AccessToken;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.exceptions.VKApiIllegalResponseException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0002J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007¨\u0006\u0019"}, m4298d2 = {"Lcom/vk/api/sdk/internal/VKErrorUtils;", "", "()V", "executeErrorsSet", "", "", "jsonString", "", "hasExecuteError", "", Payload.RESPONSE, "ignoreErrors", "", "hasSimpleError", "parseExecuteError", "Lcom/vk/api/sdk/exceptions/VKApiException;", "method", "ignoredErrors", "errorsJson", "Lorg/json/JSONArray;", "parseSimpleError", "errorStr", "accessToken", "errorJson", "Lorg/json/JSONObject;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.internal.c */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/c.class */
public final class C17695c {

    /* renamed from: a */
    public static final C17695c f62522a = new C17695c();

    private C17695c() {
    }

    /* renamed from: a */
    public static VKApiException m4817a(JSONObject errorJson, String str, String str2) {
        C18524p.m3840d(errorJson, "errorJson");
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
            VKApiExecutionException.C17681a c17681a = VKApiExecutionException.f62494e;
            return VKApiExecutionException.C17681a.m4830a(errorJson, str, bundle2);
        } catch (Exception e) {
            String jSONObject = errorJson.toString();
            C18524p.m3843b(jSONObject, "errorJson.toString()");
            return new VKApiIllegalResponseException(jSONObject, e);
        }
    }

    /* renamed from: a */
    public static boolean m4820a(String response) {
        C18524p.m3840d(response, "response");
        return JsonUtils.INSTANCE.containsElement(response, "error");
    }

    /* renamed from: a */
    public static boolean m4819a(String response, int[] iArr) {
        C18524p.m3840d(response, "response");
        return JsonUtils.INSTANCE.containsElement(response, "execute_errors");
    }

    /* renamed from: a */
    public final VKApiException m4818a(JSONArray jSONArray, String str, int[] iArr) {
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                C18524p.m3843b(jSONObject, "errorsJson.getJSONObject(i)");
                VKApiException m4817a = m4817a(jSONObject, (String) null, (String) null);
                if (!(m4817a instanceof VKApiExecutionException)) {
                    return m4817a;
                }
                int i2 = ((VKApiExecutionException) m4817a).f62495b;
                if (i2 == 1 || i2 == 14 || i2 == 17 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 9 || i2 == 10 || i2 == 24 || i2 == 25) {
                    return m4817a;
                }
                arrayList.add(m4817a);
            }
            return new VKApiExecutionException(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, str, false, "", null, arrayList, null, null, 192, null);
        } catch (JSONException e) {
            return new VKApiIllegalResponseException(e);
        }
    }
}
