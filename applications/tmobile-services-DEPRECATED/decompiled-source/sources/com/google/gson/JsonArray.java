package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/JsonArray.class */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {

    /* renamed from: f */
    private final List<JsonElement> f11954f = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof JsonArray) && ((JsonArray) obj).f11954f.equals(this.f11954f));
    }

    public int hashCode() {
        return this.f11954f.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<JsonElement> iterator() {
        return this.f11954f.iterator();
    }

    /* renamed from: k */
    public void m8395k(JsonElement jsonElement) {
        JsonElement jsonElement2 = jsonElement;
        if (jsonElement == null) {
            jsonElement2 = JsonNull.f11955a;
        }
        this.f11954f.add(jsonElement2);
    }
}
