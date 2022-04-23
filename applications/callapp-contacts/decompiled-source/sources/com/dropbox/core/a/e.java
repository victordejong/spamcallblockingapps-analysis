package com.dropbox.core.a;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/e.class */
public abstract class e<T> extends a<T> {
    @Override // com.dropbox.core.a.c
    public T deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
        return deserialize(jsonParser, false);
    }

    public abstract T deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException;

    @Override // com.dropbox.core.a.c
    public void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        serialize((e<T>) t, jsonGenerator, false);
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException;
}
