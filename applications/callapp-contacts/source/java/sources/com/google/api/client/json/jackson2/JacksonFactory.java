package com.google.api.client.json.jackson2;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonGenerator;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/jackson2/JacksonFactory.class */
public final class JacksonFactory extends JsonFactory {
    private final com.fasterxml.jackson.core.JsonFactory factory;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/jackson2/JacksonFactory$InstanceHolder.class */
    static class InstanceHolder {
        static final JacksonFactory INSTANCE = new JacksonFactory();

        InstanceHolder() {
        }
    }

    public JacksonFactory() {
        com.fasterxml.jackson.core.JsonFactory jsonFactory = new com.fasterxml.jackson.core.JsonFactory();
        this.factory = jsonFactory;
        jsonFactory.configure(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT, false);
    }

    public static JacksonFactory getDefaultInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override // com.google.api.client.json.JsonFactory
    public final com.google.api.client.json.JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) throws IOException {
        return new JacksonGenerator(this, this.factory.createJsonGenerator(outputStream, JsonEncoding.UTF8));
    }

    @Override // com.google.api.client.json.JsonFactory
    public final com.google.api.client.json.JsonGenerator createJsonGenerator(Writer writer) throws IOException {
        return new JacksonGenerator(this, this.factory.createJsonGenerator(writer));
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(InputStream inputStream) throws IOException {
        C15391m.m8946a(inputStream);
        return new JacksonParser(this, this.factory.createJsonParser(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(InputStream inputStream, Charset charset) throws IOException {
        C15391m.m8946a(inputStream);
        return new JacksonParser(this, this.factory.createJsonParser(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(Reader reader) throws IOException {
        C15391m.m8946a(reader);
        return new JacksonParser(this, this.factory.createJsonParser(reader));
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(String str) throws IOException {
        C15391m.m8946a(str);
        return new JacksonParser(this, this.factory.createJsonParser(str));
    }
}
