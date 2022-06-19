package com.fasterxml.jackson.core.p230io;

import com.fasterxml.jackson.core.AbstractC4462b;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonToken;
/* renamed from: com.fasterxml.jackson.core.io.JsonEOFException */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/JsonEOFException.class */
public class JsonEOFException extends JsonParseException {
    private static final long serialVersionUID = 1;
    protected final JsonToken _token;

    public JsonEOFException(AbstractC4462b abstractC4462b, JsonToken jsonToken, String str) {
        super(abstractC4462b, str);
        this._token = jsonToken;
    }

    public JsonToken getTokenBeingDecoded() {
        return this._token;
    }
}
