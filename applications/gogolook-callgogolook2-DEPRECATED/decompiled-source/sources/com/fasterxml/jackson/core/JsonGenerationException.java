package com.fasterxml.jackson.core;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerationException.class */
public class JsonGenerationException extends JsonProcessingException {
    public JsonGenerator _processor;

    public JsonGenerationException(String str, JsonGenerator jsonGenerator) {
        super(str, (JsonLocation) null);
        this._processor = jsonGenerator;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public JsonGenerator getProcessor() {
        return this._processor;
    }
}
