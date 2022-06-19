package com.fasterxml.jackson.core;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonGenerationException.class */
public class JsonGenerationException extends JsonProcessingException {
    private static final long serialVersionUID = 123;

    /* renamed from: d */
    protected transient AbstractC4461a f13580d;

    @Deprecated
    public JsonGenerationException(String str) {
        super(str, (JsonLocation) null);
    }

    public JsonGenerationException(String str, AbstractC4461a abstractC4461a) {
        super(str, (JsonLocation) null);
    }

    @Deprecated
    public JsonGenerationException(String str, Throwable th) {
        super(str, null, th);
    }

    public JsonGenerationException(String str, Throwable th, AbstractC4461a abstractC4461a) {
        super(str, null, th);
    }

    @Deprecated
    public JsonGenerationException(Throwable th) {
        super(th);
    }

    public JsonGenerationException(Throwable th, AbstractC4461a abstractC4461a) {
        super(th);
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public AbstractC4461a getProcessor() {
        return this.f13580d;
    }

    public JsonGenerationException withGenerator(AbstractC4461a abstractC4461a) {
        return this;
    }
}
