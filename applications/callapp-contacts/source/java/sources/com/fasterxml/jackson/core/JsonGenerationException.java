package com.fasterxml.jackson.core;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerationException.class */
public class JsonGenerationException extends JsonProcessingException {
    private static final long serialVersionUID = 123;
    protected transient JsonGenerator _processor;

    @Deprecated
    public JsonGenerationException(String str) {
        super(str, (JsonLocation) null);
    }

    public JsonGenerationException(String str, JsonGenerator jsonGenerator) {
        super(str, (JsonLocation) null);
        this._processor = jsonGenerator;
    }

    @Deprecated
    public JsonGenerationException(String str, Throwable th) {
        super(str, null, th);
    }

    public JsonGenerationException(String str, Throwable th, JsonGenerator jsonGenerator) {
        super(str, null, th);
        this._processor = jsonGenerator;
    }

    @Deprecated
    public JsonGenerationException(Throwable th) {
        super(th);
    }

    public JsonGenerationException(Throwable th, JsonGenerator jsonGenerator) {
        super(th);
        this._processor = jsonGenerator;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    public JsonGenerator getProcessor() {
        return this._processor;
    }

    public JsonGenerationException withGenerator(JsonGenerator jsonGenerator) {
        this._processor = jsonGenerator;
        return this;
    }
}
