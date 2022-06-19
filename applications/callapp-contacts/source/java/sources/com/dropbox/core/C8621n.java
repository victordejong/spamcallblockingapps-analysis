package com.dropbox.core;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Objects;
/* renamed from: com.dropbox.core.n */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/n.class */
public final class C8621n {

    /* renamed from: a */
    static final AbstractC8547c<C8621n> f30618a = new AbstractC8547c<C8621n>() { // from class: com.dropbox.core.n.1
        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ C8621n deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartObject(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("text".equals(currentName)) {
                    str = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str != null) {
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
                }
                C8621n c8621n = new C8621n(str, str2);
                expectEndObject(jsonParser);
                return c8621n;
            }
            throw new JsonParseException(jsonParser, "Required field \"text\" missing.");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(C8621n c8621n, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    };

    /* renamed from: b */
    private final String f30619b;

    /* renamed from: c */
    private final String f30620c;

    public C8621n(String str, String str2) {
        Objects.requireNonNull(str, "text");
        Objects.requireNonNull(str2, "locale");
        this.f30619b = str;
        this.f30620c = str2;
    }

    public final String toString() {
        return this.f30619b;
    }
}
