package com.fasterxml.jackson.core.exc;

import com.fasterxml.jackson.core.AbstractC4462b;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.RequestPayload;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/exc/InputCoercionException.class */
public class InputCoercionException extends StreamReadException {
    private static final long serialVersionUID = 1;
    protected final JsonToken _inputType;
    protected final Class<?> _targetType;

    public InputCoercionException(AbstractC4462b abstractC4462b, String str, JsonToken jsonToken, Class<?> cls) {
        super(abstractC4462b, str);
        this._inputType = jsonToken;
        this._targetType = cls;
    }

    public JsonToken getInputType() {
        return this._inputType;
    }

    public Class<?> getTargetType() {
        return this._targetType;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public InputCoercionException withParser(AbstractC4462b abstractC4462b) {
        return this;
    }

    @Override // com.fasterxml.jackson.core.exc.StreamReadException
    public InputCoercionException withRequestPayload(RequestPayload requestPayload) {
        this._requestPayload = requestPayload;
        return this;
    }
}
