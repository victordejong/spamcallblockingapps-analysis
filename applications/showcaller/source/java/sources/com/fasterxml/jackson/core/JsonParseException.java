package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.core.util.RequestPayload;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonParseException.class */
public class JsonParseException extends StreamReadException {
    private static final long serialVersionUID = 2;

    public JsonParseException(AbstractC4462b abstractC4462b, String str) {
        super(abstractC4462b, str);
    }

    public JsonParseException(AbstractC4462b abstractC4462b, String str, JsonLocation jsonLocation) {
        super(abstractC4462b, str, jsonLocation);
    }

    public JsonParseException(AbstractC4462b abstractC4462b, String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    public JsonParseException(AbstractC4462b abstractC4462b, String str, Throwable th) {
        super(abstractC4462b, str, th);
    }

    @Deprecated
    public JsonParseException(String str, JsonLocation jsonLocation) {
        super(str, jsonLocation, (Throwable) null);
    }

    @Deprecated
    public JsonParseException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException, com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException, com.fasterxml.jackson.core.JsonProcessingException
    public AbstractC4462b getProcessor() {
        return super.getProcessor();
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public RequestPayload getRequestPayload() {
        return super.getRequestPayload();
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public String getRequestPayloadAsString() {
        return super.getRequestPayloadAsString();
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public JsonParseException withParser(AbstractC4462b abstractC4462b) {
        return this;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public JsonParseException withRequestPayload(RequestPayload requestPayload) {
        this._requestPayload = requestPayload;
        return this;
    }
}
