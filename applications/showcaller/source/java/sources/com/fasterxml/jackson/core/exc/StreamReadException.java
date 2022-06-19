package com.fasterxml.jackson.core.exc;

import com.fasterxml.jackson.core.AbstractC4462b;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.util.RequestPayload;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/exc/StreamReadException.class */
public abstract class StreamReadException extends JsonProcessingException {
    static final long serialVersionUID = 1;
    protected RequestPayload _requestPayload;

    /* renamed from: d */
    protected transient AbstractC4462b f13597d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamReadException(AbstractC4462b abstractC4462b, String str) {
        super(str, (JsonLocation) null);
        if (abstractC4462b == null) {
            return;
        }
        throw null;
    }

    public StreamReadException(AbstractC4462b abstractC4462b, String str, JsonLocation jsonLocation) {
        super(str, jsonLocation, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamReadException(AbstractC4462b abstractC4462b, String str, Throwable th) {
        super(str, null, th);
        if (abstractC4462b == null) {
            return;
        }
        throw null;
    }

    public StreamReadException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this._location = jsonLocation;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        String str = message;
        if (this._requestPayload != null) {
            str = message + "\nRequest payload : " + this._requestPayload.toString();
        }
        return str;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public AbstractC4462b getProcessor() {
        return this.f13597d;
    }

    public RequestPayload getRequestPayload() {
        return this._requestPayload;
    }

    public String getRequestPayloadAsString() {
        RequestPayload requestPayload = this._requestPayload;
        return requestPayload != null ? requestPayload.toString() : null;
    }

    public abstract StreamReadException withParser(AbstractC4462b abstractC4462b);

    public abstract StreamReadException withRequestPayload(RequestPayload requestPayload);
}
