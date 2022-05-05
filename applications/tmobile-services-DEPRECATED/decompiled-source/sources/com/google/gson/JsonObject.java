package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/gson/JsonObject.class */
public final class JsonObject extends JsonElement {

    /* renamed from: a */
    private final LinkedTreeMap<String, JsonElement> f11956a = new LinkedTreeMap<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonObject) && ((JsonObject) obj).f11956a.equals(this.f11956a));
    }

    public int hashCode() {
        return this.f11956a.hashCode();
    }

    /* renamed from: k */
    public void m8386k(String str, JsonElement jsonElement) {
        JsonElement jsonElement2 = jsonElement;
        if (jsonElement == null) {
            jsonElement2 = JsonNull.f11955a;
        }
        this.f11956a.put(str, jsonElement2);
    }

    /* renamed from: n */
    public Set<Map.Entry<String, JsonElement>> m8385n() {
        return this.f11956a.entrySet();
    }
}
