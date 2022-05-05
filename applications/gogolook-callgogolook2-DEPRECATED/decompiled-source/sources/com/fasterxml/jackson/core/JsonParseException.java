package com.fasterxml.jackson.core;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonParseException.class */
public class JsonParseException extends JsonProcessingException {
    public JsonParser _processor;

    public JsonParseException(JsonParser jsonParser, String str) {
        super(str, jsonParser == null ? null : jsonParser.getCurrentLocation());
        this._processor = jsonParser;
    }

    public JsonParseException(JsonParser jsonParser, String str, Throwable th) {
        super(str, jsonParser == null ? null : jsonParser.getCurrentLocation(), th);
        this._processor = jsonParser;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public JsonParser getProcessor() {
        return this._processor;
    }
}
