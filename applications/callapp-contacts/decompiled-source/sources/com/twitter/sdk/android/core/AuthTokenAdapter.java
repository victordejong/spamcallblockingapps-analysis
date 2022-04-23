package com.twitter.sdk.android.core;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.f;
import com.google.gson.internal.j;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/AuthTokenAdapter.class */
public class AuthTokenAdapter implements JsonDeserializer<a>, JsonSerializer<a> {
    private static final String AUTH_TOKEN = "auth_token";
    private static final String AUTH_TYPE = "auth_type";
    static final Map<String, Class<? extends a>> authTypeRegistry;
    private final f gson = new f();

    static {
        HashMap hashMap = new HashMap();
        authTypeRegistry = hashMap;
        hashMap.put("oauth1a", TwitterAuthToken.class);
        hashMap.put("oauth2", OAuth2Token.class);
        hashMap.put("guest", GuestAuthToken.class);
    }

    static String getAuthTypeString(Class<? extends a> cls) {
        for (Map.Entry<String, Class<? extends a>> entry : authTypeRegistry.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return "";
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.JsonDeserializer
    public a deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        String asString = asJsonObject.getAsJsonPrimitive(AUTH_TYPE).getAsString();
        JsonElement jsonElement2 = asJsonObject.get(AUTH_TOKEN);
        f fVar = this.gson;
        Class<? extends a> cls = authTypeRegistry.get(asString);
        return (a) j.a(cls).cast(fVar.a(jsonElement2, (Type) cls));
    }

    public JsonElement serialize(a aVar, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(AUTH_TYPE, getAuthTypeString(aVar.getClass()));
        jsonObject.add(AUTH_TOKEN, this.gson.a(aVar));
        return jsonObject;
    }
}
