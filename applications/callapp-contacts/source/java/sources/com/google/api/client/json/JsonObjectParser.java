package com.google.api.client.json;

import com.google.api.client.p379a.AbstractC15254x;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/JsonObjectParser.class */
public class JsonObjectParser implements AbstractC15254x {
    private final JsonFactory jsonFactory;
    private final Set<String> wrapperKeys;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/JsonObjectParser$Builder.class */
    public static class Builder {
        final JsonFactory jsonFactory;
        Collection<String> wrapperKeys = new HashSet();

        public Builder(JsonFactory jsonFactory) {
            this.jsonFactory = (JsonFactory) C15391m.m8946a(jsonFactory);
        }

        public JsonObjectParser build() {
            return new JsonObjectParser(this);
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final Collection<String> getWrapperKeys() {
            return this.wrapperKeys;
        }

        public Builder setWrapperKeys(Collection<String> collection) {
            this.wrapperKeys = collection;
            return this;
        }
    }

    public JsonObjectParser(JsonFactory jsonFactory) {
        this(new Builder(jsonFactory));
    }

    protected JsonObjectParser(Builder builder) {
        this.jsonFactory = builder.jsonFactory;
        this.wrapperKeys = new HashSet(builder.wrapperKeys);
    }

    private void initializeParser(JsonParser jsonParser) throws IOException {
        if (this.wrapperKeys.isEmpty()) {
            return;
        }
        try {
            C15391m.m8936a((jsonParser.skipToKey(this.wrapperKeys) == null || jsonParser.getCurrentToken() == JsonToken.END_OBJECT) ? false : true, "wrapper key(s) not found: %s", this.wrapperKeys);
        } catch (Throwable th) {
            jsonParser.close();
            throw th;
        }
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public Set<String> getWrapperKeys() {
        return Collections.unmodifiableSet(this.wrapperKeys);
    }

    @Override // com.google.api.client.p379a.AbstractC15254x
    public <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        return (T) parseAndClose(inputStream, charset, (Type) cls);
    }

    public Object parseAndClose(InputStream inputStream, Charset charset, Type type) throws IOException {
        JsonParser createJsonParser = this.jsonFactory.createJsonParser(inputStream, charset);
        initializeParser(createJsonParser);
        return createJsonParser.parse(type, true);
    }

    public <T> T parseAndClose(Reader reader, Class<T> cls) throws IOException {
        return (T) parseAndClose(reader, (Type) cls);
    }

    public Object parseAndClose(Reader reader, Type type) throws IOException {
        JsonParser createJsonParser = this.jsonFactory.createJsonParser(reader);
        initializeParser(createJsonParser);
        return createJsonParser.parse(type, true);
    }
}
