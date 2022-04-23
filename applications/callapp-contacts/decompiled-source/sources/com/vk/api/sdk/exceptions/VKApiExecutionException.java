package com.vk.api.sdk.exceptions;

import android.os.Bundle;
import com.facebook.AccessToken;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ag;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.f.c;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.t;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010��\n\u0002\b\u0007\b\u0016\u0018�� B2\u00020\u0001:\u0001BBi\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0013\u0010:\u001a\u00020\u00072\b\u0010;\u001a\u0004\u0018\u00010<H\u0096\u0002J\u000e\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0003J\u0006\u0010?\u001a\u00020\u0007J\b\u0010@\u001a\u00020\u0003H\u0016J\b\u0010A\u001a\u00020\u0005H\u0016R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u0013R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0013R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\f¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b \u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n��\u001a\u0004\b!\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0011\u0010&\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b&\u0010$R\u0011\u0010'\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b'\u0010$R\u0011\u0010(\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b(\u0010$R\u0011\u0010)\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b)\u0010$R\u0011\u0010*\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b*\u0010$R\u0011\u0010+\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b+\u0010$R\u0011\u0010,\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b,\u0010$R\u0011\u0010-\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b-\u0010$R\u0011\u0010.\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b.\u0010$R\u0011\u0010/\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b/\u0010$R\u001f\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f¢\u0006\b\n��\u001a\u0004\b0\u00101R\u0013\u00102\u001a\u0004\u0018\u0001038F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0011\u00106\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b7\u0010\u0013R\u0011\u00108\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b9\u0010\u0013¨\u0006C"}, d2 = {"Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "Lcom/vk/api/sdk/exceptions/VKApiException;", "code", "", "apiMethod", "", "hasLocalizedMessage", "", "detailMessage", "extra", "Landroid/os/Bundle;", "executeErrors", "", "errorMsg", "requestParams", "", "(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V", "accessToken", "getAccessToken", "()Ljava/lang/String;", "getApiMethod", "captchaImg", "getCaptchaImg", "captchaSid", "getCaptchaSid", "getCode", "()I", "getDetailMessage", "getErrorMsg", "getExecuteErrors", "()Ljava/util/List;", "extensionHash", "getExtensionHash", "getExtra", "()Landroid/os/Bundle;", "getHasLocalizedMessage", "()Z", "isAccessError", "isCaptchaError", "isCompositeError", "isInternalServerError", "isInvalidCredentialsError", "isPasswordConfirmRequired", "isRateLimitReachedError", "isTokenConfirmationRequired", "isTooManyRequestsError", "isUserConfirmRequired", "isValidationRequired", "getRequestParams", "()Ljava/util/Map;", "userBanInfo", "Lorg/json/JSONObject;", "getUserBanInfo", "()Lorg/json/JSONObject;", "userConfirmText", "getUserConfirmText", "validationUrl", "getValidationUrl", "equals", "other", "", "hasError", "errorCode", "hasExtra", "hashCode", "toString", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/VKApiExecutionException.class */
public class VKApiExecutionException extends VKApiException {
    public static final a e = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final int f36073b;

    /* renamed from: c  reason: collision with root package name */
    public final String f36074c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f36075d;
    private final boolean f;
    private final String g;
    private final List<VKApiExecutionException> h;
    private final String i;
    private final Map<String, String> j;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/vk/api/sdk/exceptions/VKApiExecutionException$Companion;", "", "()V", "serialVersionUID", "", "parse", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "json", "Lorg/json/JSONObject;", "methodName", "", "extra", "Landroid/os/Bundle;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/VKApiExecutionException$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static VKApiExecutionException a(JSONObject json, String str, Bundle bundle) {
            JSONArray jSONArray;
            String str2;
            p.d(json, "json");
            String str3 = str;
            if (str == null) {
                str3 = json.optString("method");
            }
            String str4 = str3 == null ? "" : str3;
            int optInt = json.optInt("error_code", 1);
            String optString = json.optString("error_msg");
            if (optString == null) {
                optString = "";
            }
            try {
                jSONArray = json.getJSONArray("request_params");
            } catch (JSONException e) {
                jSONArray = new JSONArray();
            }
            c b2 = d.b(0, jSONArray.length());
            LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(n.a(b2, 10)), 16));
            Iterator<Integer> it2 = b2.iterator();
            while (it2.hasNext()) {
                JSONObject jSONObject = jSONArray.getJSONObject(((ag) it2).a());
                kotlin.n a2 = t.a(jSONObject.getString("key"), jSONObject.getString("value"));
                linkedHashMap.put(a2.f36810a, a2.f36811b);
            }
            if (json.has("error_text")) {
                String optString2 = json.optString("error_text");
                if (optString2 == null) {
                    optString2 = "";
                }
                return new VKApiExecutionException(optInt, str4, true, optString2, bundle, null, optString, linkedHashMap, 32, null);
            }
            String optString3 = json.optString("error_msg");
            if (optString3 == null) {
                str2 = json.toString();
                p.b(str2, "json.toString()");
            } else {
                str2 = optString3;
            }
            return new VKApiExecutionException(optInt, str4, false, str2 + " | by [" + str4 + ']', bundle, null, str2, linkedHashMap, 32, null);
        }
    }

    public VKApiExecutionException(int i, String str, boolean z, String str2) {
        this(i, str, z, str2, null, null, null, null, 240, null);
    }

    public VKApiExecutionException(int i, String str, boolean z, String str2, Bundle bundle) {
        this(i, str, z, str2, bundle, null, null, null, 224, null);
    }

    public VKApiExecutionException(int i, String str, boolean z, String str2, Bundle bundle, List<? extends VKApiExecutionException> list) {
        this(i, str, z, str2, bundle, list, null, null, 192, null);
    }

    public VKApiExecutionException(int i, String str, boolean z, String str2, Bundle bundle, List<? extends VKApiExecutionException> list, String str3) {
        this(i, str, z, str2, bundle, list, str3, null, 128, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VKApiExecutionException(int i, String apiMethod, boolean z, String detailMessage, Bundle bundle, List<? extends VKApiExecutionException> list, String str, Map<String, String> map) {
        super(detailMessage);
        p.d(apiMethod, "apiMethod");
        p.d(detailMessage, "detailMessage");
        this.f36073b = i;
        this.f36074c = apiMethod;
        this.f = z;
        this.g = detailMessage;
        this.f36075d = bundle;
        this.h = list;
        this.i = str;
        this.j = map;
    }

    public /* synthetic */ VKApiExecutionException(int i, String str, boolean z, String str2, Bundle bundle, List list, String str3, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, z, str2, (i2 & 16) != 0 ? Bundle.EMPTY : bundle, (i2 & 32) != 0 ? null : list, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? null : map);
    }

    public final boolean a() {
        int i = this.f36073b;
        return i == 4 || i == 5 || i == 3610;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VKApiExecutionException)) {
            return false;
        }
        VKApiExecutionException vKApiExecutionException = (VKApiExecutionException) obj;
        if (this.f36073b != vKApiExecutionException.f36073b) {
            return false;
        }
        Bundle bundle = this.f36075d;
        Bundle bundle2 = vKApiExecutionException.f36075d;
        return !(bundle != null ? p.a(bundle, bundle2) ^ true : bundle2 != null);
    }

    public int hashCode() {
        int i = this.f36073b;
        Bundle bundle = this.f36075d;
        return (i * 31) + (bundle != null ? bundle.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        Bundle bundle;
        Bundle bundle2 = this.f36075d;
        if (bundle2 == null || !bundle2.containsKey(AccessToken.ACCESS_TOKEN_KEY)) {
            bundle = this.f36075d;
        } else {
            bundle = new Bundle(this.f36075d);
            bundle.putString(AccessToken.ACCESS_TOKEN_KEY, "hidden");
        }
        StringBuilder sb = new StringBuilder("VKApiExecutionException{code=");
        sb.append(this.f36073b);
        sb.append(", extra=");
        sb.append(bundle);
        sb.append(", method=");
        sb.append(this.f36074c);
        sb.append(", executeErrors=");
        List<VKApiExecutionException> list = this.h;
        sb.append(list != null ? n.a(list, (CharSequence) null, "[", "]", 0, (CharSequence) null, (Function1) null, 57) : null);
        sb.append(", super=");
        sb.append(super.toString());
        sb.append("}");
        return sb.toString();
    }
}
