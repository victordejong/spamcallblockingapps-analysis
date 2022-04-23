package com.google.gson;

import com.google.gson.internal.g;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/gson/JsonObject.class */
public final class JsonObject extends JsonElement {
    private final g<String, JsonElement> members = new g<>();

    public final void add(String str, JsonElement jsonElement) {
        g<String, JsonElement> gVar = this.members;
        JsonElement jsonElement2 = jsonElement;
        if (jsonElement == null) {
            jsonElement2 = JsonNull.INSTANCE;
        }
        gVar.put(str, jsonElement2);
    }

    public final void addProperty(String str, Boolean bool) {
        add(str, bool == null ? JsonNull.INSTANCE : new JsonPrimitive(bool));
    }

    public final void addProperty(String str, Character ch) {
        add(str, ch == null ? JsonNull.INSTANCE : new JsonPrimitive(ch));
    }

    public final void addProperty(String str, Number number) {
        add(str, number == null ? JsonNull.INSTANCE : new JsonPrimitive(number));
    }

    public final void addProperty(String str, String str2) {
        add(str, str2 == null ? JsonNull.INSTANCE : new JsonPrimitive(str2));
    }

    @Override // com.google.gson.JsonElement
    public final JsonObject deepCopy() {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry<String, JsonElement> entry : this.members.entrySet()) {
            jsonObject.add(entry.getKey(), entry.getValue().deepCopy());
        }
        return jsonObject;
    }

    public final Set<Map.Entry<String, JsonElement>> entrySet() {
        return this.members.entrySet();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonObject) && ((JsonObject) obj).members.equals(this.members);
        }
        return true;
    }

    public final JsonElement get(String str) {
        return this.members.get(str);
    }

    public final JsonArray getAsJsonArray(String str) {
        return (JsonArray) this.members.get(str);
    }

    public final JsonObject getAsJsonObject(String str) {
        return (JsonObject) this.members.get(str);
    }

    public final JsonPrimitive getAsJsonPrimitive(String str) {
        return (JsonPrimitive) this.members.get(str);
    }

    public final boolean has(String str) {
        return this.members.containsKey(str);
    }

    public final int hashCode() {
        return this.members.hashCode();
    }

    public final Set<String> keySet() {
        return this.members.keySet();
    }

    public final JsonElement remove(String str) {
        return this.members.remove(str);
    }

    public final int size() {
        return this.members.size();
    }
}
