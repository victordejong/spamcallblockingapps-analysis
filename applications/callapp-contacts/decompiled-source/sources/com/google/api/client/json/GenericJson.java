package com.google.api.client.json;

import com.google.api.client.a.n;
import com.google.common.base.r;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/GenericJson.class */
public class GenericJson extends n implements Cloneable {
    private JsonFactory jsonFactory;

    @Override // com.google.api.client.a.n, java.util.AbstractMap
    public GenericJson clone() {
        return (GenericJson) super.clone();
    }

    public final JsonFactory getFactory() {
        return this.jsonFactory;
    }

    @Override // com.google.api.client.a.n
    public GenericJson set(String str, Object obj) {
        return (GenericJson) super.set(str, obj);
    }

    public final void setFactory(JsonFactory jsonFactory) {
        this.jsonFactory = jsonFactory;
    }

    public String toPrettyString() throws IOException {
        JsonFactory jsonFactory = this.jsonFactory;
        return jsonFactory != null ? jsonFactory.toPrettyString(this) : super.toString();
    }

    @Override // com.google.api.client.a.n, java.util.AbstractMap
    public String toString() {
        JsonFactory jsonFactory = this.jsonFactory;
        if (jsonFactory == null) {
            return super.toString();
        }
        try {
            return jsonFactory.toString(this);
        } catch (IOException e) {
            throw r.a(e);
        }
    }
}
