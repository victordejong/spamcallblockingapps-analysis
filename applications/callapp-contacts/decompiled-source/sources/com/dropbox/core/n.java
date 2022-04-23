package com.dropbox.core;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final c<n> f17822a = new c<n>() { // from class: com.dropbox.core.n.1
        @Override // com.dropbox.core.a.c
        public final /* synthetic */ n deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartObject(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("text".equals(currentName)) {
                    str = d.h.f17717a.deserialize(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str2 = d.h.f17717a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str == null) {
                throw new JsonParseException(jsonParser, "Required field \"text\" missing.");
            } else if (str2 != null) {
                n nVar = new n(str, str2);
                expectEndObject(jsonParser);
                return nVar;
            } else {
                throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(n nVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final String f17823b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17824c;

    public n(String str, String str2) {
        Objects.requireNonNull(str, "text");
        Objects.requireNonNull(str2, "locale");
        this.f17823b = str;
        this.f17824c = str2;
    }

    public final String toString() {
        return this.f17823b;
    }
}
