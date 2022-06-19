package com.twitter.sdk.android.core;

import com.google.gson.C15965f;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.internal.C16079j;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/AuthTokenAdapter.class */
public class AuthTokenAdapter implements JsonDeserializer<AbstractC17205a>, JsonSerializer<AbstractC17205a> {
    private static final String AUTH_TOKEN = "auth_token";
    private static final String AUTH_TYPE = "auth_type";
    static final Map<String, Class<? extends AbstractC17205a>> authTypeRegistry;
    private final C15965f gson = new C15965f();

    static {
        HashMap hashMap = new HashMap();
        authTypeRegistry = hashMap;
        hashMap.put("oauth1a", TwitterAuthToken.class);
        hashMap.put("oauth2", OAuth2Token.class);
        hashMap.put("guest", GuestAuthToken.class);
    }

    static String getAuthTypeString(Class<? extends AbstractC17205a> cls) {
        for (Map.Entry<String, Class<? extends AbstractC17205a>> entry : authTypeRegistry.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return "";
    }

    @Override // com.google.gson.JsonDeserializer
    public AbstractC17205a deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        String asString = asJsonObject.getAsJsonPrimitive(AUTH_TYPE).getAsString();
        JsonElement jsonElement2 = asJsonObject.get(AUTH_TOKEN);
        C15965f c15965f = this.gson;
        Class<? extends AbstractC17205a> cls = authTypeRegistry.get(asString);
        return (AbstractC17205a) C16079j.m7870a(cls).cast(c15965f.m7978a(jsonElement2, (Type) cls));
    }

    public JsonElement serialize(AbstractC17205a abstractC17205a, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(AUTH_TYPE, getAuthTypeString(abstractC17205a.getClass()));
        jsonObject.add(AUTH_TOKEN, this.gson.m7970a(abstractC17205a));
        return jsonObject;
    }
}
