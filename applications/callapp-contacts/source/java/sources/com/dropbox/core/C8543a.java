package com.dropbox.core;

import com.dropbox.core.p263a.AbstractC8547c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Objects;
/* renamed from: com.dropbox.core.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a.class */
public final class C8543a<T> {

    /* renamed from: a */
    final T f30448a;

    /* renamed from: b */
    C8621n f30449b;

    /* renamed from: com.dropbox.core.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a$a.class */
    public static final class C8544a<T> extends AbstractC8547c<C8543a<T>> {

        /* renamed from: a */
        private AbstractC8547c<T> f30450a;

        public C8544a(AbstractC8547c<T> abstractC8547c) {
            this.f30450a = abstractC8547c;
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartObject(jsonParser);
            T t = null;
            C8621n c8621n = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("error".equals(currentName)) {
                    t = this.f30450a.deserialize(jsonParser);
                } else if ("user_message".equals(currentName)) {
                    c8621n = C8621n.f30618a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (t != null) {
                C8543a c8543a = new C8543a(t, c8621n);
                expectEndObject(jsonParser);
                return c8543a;
            }
            throw new JsonParseException(jsonParser, "Required field \"error\" missing.");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    }

    public C8543a(T t, C8621n c8621n) {
        Objects.requireNonNull(t, "error");
        this.f30448a = t;
        this.f30449b = c8621n;
    }
}
