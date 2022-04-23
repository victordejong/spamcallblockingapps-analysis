package com.dropbox.core;

import com.dropbox.core.a.c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f17706a;

    /* renamed from: b  reason: collision with root package name */
    n f17707b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a$a.class */
    public static final class C0351a<T> extends c<a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private c<T> f17708a;

        public C0351a(c<T> cVar) {
            this.f17708a = cVar;
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartObject(jsonParser);
            T t = null;
            n nVar = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("error".equals(currentName)) {
                    t = this.f17708a.deserialize(jsonParser);
                } else if ("user_message".equals(currentName)) {
                    nVar = n.f17822a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (t != null) {
                a aVar = new a(t, nVar);
                expectEndObject(jsonParser);
                return aVar;
            }
            throw new JsonParseException(jsonParser, "Required field \"error\" missing.");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    }

    public a(T t, n nVar) {
        Objects.requireNonNull(t, "error");
        this.f17706a = t;
        this.f17707b = nVar;
    }
}
