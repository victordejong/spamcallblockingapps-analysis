package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/JsonEOFException.class */
public class JsonEOFException extends JsonParseException {
    private static final long serialVersionUID = 1;
    protected final JsonToken _token;

    public JsonEOFException(JsonParser jsonParser, JsonToken jsonToken, String str) {
        super(jsonParser, str);
        this._token = jsonToken;
    }

    public JsonToken getTokenBeingDecoded() {
        return this._token;
    }
}
