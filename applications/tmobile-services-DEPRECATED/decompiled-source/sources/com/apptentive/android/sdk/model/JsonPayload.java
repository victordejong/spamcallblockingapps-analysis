package com.apptentive.android.sdk.model;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/JsonPayload.class */
public abstract class JsonPayload extends Payload {
    private static final Map<Class<? extends JsonPayload>, List<String>> SENSITIVE_KEYS_LOOKUP = new HashMap();
    private final JSONObject jsonObject;

    public JsonPayload(PayloadType payloadType) {
        super(payloadType);
        this.jsonObject = new JSONObject();
        setNonce(UUID.randomUUID().toString());
    }

    public JsonPayload(PayloadType payloadType, String str) throws JSONException {
        super(payloadType);
        this.jsonObject = new JSONObject(str);
    }

    private JSONObject createSafeJsonObject(JSONObject jSONObject) {
        try {
            List<String> list = SENSITIVE_KEYS_LOOKUP.get(getClass());
            if (list == null || list.size() <= 0) {
                return null;
            }
            JSONObject jSONObject2 = new JSONObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject2.put(next, list.contains(next) ? "<HIDDEN>" : jSONObject.get(next));
            }
            return jSONObject2;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while creating safe json object", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void registerSensitiveKeys(Class<? extends JsonPayload> cls) {
        List<Field> listFields = RuntimeUtils.listFields(cls, new RuntimeUtils.FieldFilter() { // from class: com.apptentive.android.sdk.model.JsonPayload.1
            @Override // com.apptentive.android.sdk.util.RuntimeUtils.FieldFilter
            public boolean accept(Field field) {
                return Modifier.isStatic(field.getModifiers()) && field.getAnnotation(SensitiveDataKey.class) != null && field.getType().equals(String.class);
            }
        });
        if (listFields.size() > 0) {
            ArrayList arrayList = new ArrayList(listFields.size());
            try {
                for (Field field : listFields) {
                    field.setAccessible(true);
                    arrayList.add((String) field.get(null));
                }
                SENSITIVE_KEYS_LOOKUP.put(cls, arrayList);
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while registering sensitive keys", new Object[0]);
                ErrorMetrics.logException(e);
            }
        }
    }

    private Object toNullableValue(Object obj) {
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        return obj;
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        return this.jsonObject.optBoolean(str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Double getDouble(String str) {
        try {
            return Double.valueOf(this.jsonObject.getDouble(str));
        } catch (Exception e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpRequestContentType() {
        return isAuthenticated() ? "application/octet-stream" : AbstractSpiCall.ACCEPT_JSON_VALUE;
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.PUT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject getJSONObject(String str) {
        return this.jsonObject.optJSONObject(str);
    }

    protected String getJsonContainer() {
        return null;
    }

    public JSONObject getJsonObject() {
        return this.jsonObject;
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getNonce() {
        return optString("nonce", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isNull(String str) {
        return this.jsonObject.isNull(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JSONObject marshallForSending() throws JSONException {
        JSONObject jSONObject;
        String jsonContainer = getJsonContainer();
        if (jsonContainer != null) {
            jSONObject = new JSONObject();
            jSONObject.put(jsonContainer, this.jsonObject);
        } else {
            jSONObject = this.jsonObject;
        }
        if (isAuthenticated()) {
            jSONObject.put("token", getConversationToken());
        }
        if (hasSessionId()) {
            jSONObject.put("session_id", getSessionId());
        }
        return jSONObject;
    }

    public String optString(String str, String str2) {
        if (!this.jsonObject.isNull(str)) {
            return this.jsonObject.optString(str, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void put(String str, double d) {
        try {
            this.jsonObject.put(str, d);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while putting json pair '%s'='%s'", str, Double.valueOf(d));
            ErrorMetrics.logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void put(String str, int i) {
        try {
            this.jsonObject.put(str, i);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while putting json pair '%s'='%s'", str, Integer.valueOf(i));
            ErrorMetrics.logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void put(String str, String str2) {
        try {
            this.jsonObject.put(str, toNullableValue(str2));
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while putting json pair '%s'='%s'", str, str2);
            ErrorMetrics.logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void put(String str, JSONObject jSONObject) {
        try {
            this.jsonObject.put(str, toNullableValue(jSONObject));
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while putting json pair '%s'='%s'", str, jSONObject);
            ErrorMetrics.logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void put(String str, boolean z) {
        try {
            this.jsonObject.put(str, z);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while putting json pair '%s'='%s'", str, Boolean.valueOf(z));
            ErrorMetrics.logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void remove(String str) {
        this.jsonObject.remove(str);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    @NonNull
    public byte[] renderData() throws Exception {
        String jSONObject = marshallForSending().toString();
        ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, jSONObject, new Object[0]);
        if (!isAuthenticated()) {
            return jSONObject.getBytes();
        }
        return getEncryption().encrypt(jSONObject.getBytes());
    }

    public void setNonce(String str) {
        put("nonce", str);
    }

    public String toString() {
        return ApptentiveLog.shouldSanitizeLogMessages() ? StringUtils.format("%s %s", getClass().getSimpleName(), createSafeJsonObject(this.jsonObject)) : StringUtils.format("%s %s", getClass().getSimpleName(), this.jsonObject);
    }
}
