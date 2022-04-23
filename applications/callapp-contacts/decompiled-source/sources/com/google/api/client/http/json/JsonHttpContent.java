package com.google.api.client.http.json;

import com.google.api.client.http.a;
import com.google.api.client.http.p;
import com.google.api.client.json.Json;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.common.base.m;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/json/JsonHttpContent.class */
public class JsonHttpContent extends a {
    private final Object data;
    private final JsonFactory jsonFactory;
    private String wrapperKey;

    public JsonHttpContent(JsonFactory jsonFactory, Object obj) {
        super(Json.MEDIA_TYPE);
        this.jsonFactory = (JsonFactory) m.a(jsonFactory);
        this.data = m.a(obj);
    }

    public final Object getData() {
        return this.data;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final String getWrapperKey() {
        return this.wrapperKey;
    }

    @Override // com.google.api.client.http.a
    public JsonHttpContent setMediaType(p pVar) {
        super.setMediaType(pVar);
        return this;
    }

    public JsonHttpContent setWrapperKey(String str) {
        this.wrapperKey = str;
        return this;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public void writeTo(OutputStream outputStream) throws IOException {
        JsonGenerator createJsonGenerator = this.jsonFactory.createJsonGenerator(outputStream, getCharset());
        if (this.wrapperKey != null) {
            createJsonGenerator.writeStartObject();
            createJsonGenerator.writeFieldName(this.wrapperKey);
        }
        createJsonGenerator.serialize(this.data);
        if (this.wrapperKey != null) {
            createJsonGenerator.writeEndObject();
        }
        createJsonGenerator.flush();
    }
}
