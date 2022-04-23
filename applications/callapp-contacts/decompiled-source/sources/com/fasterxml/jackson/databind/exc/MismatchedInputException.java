package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.util.ClassUtil;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/exc/MismatchedInputException.class */
public class MismatchedInputException extends JsonMappingException {
    protected Class<?> _targetType;

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str) {
        this(jsonParser, str, (JavaType) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str, JsonLocation jsonLocation) {
        super(jsonParser, str, jsonLocation);
    }

    protected MismatchedInputException(JsonParser jsonParser, String str, JavaType javaType) {
        super(jsonParser, str);
        this._targetType = ClassUtil.rawClass(javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MismatchedInputException(JsonParser jsonParser, String str, Class<?> cls) {
        super(jsonParser, str);
        this._targetType = cls;
    }

    public static MismatchedInputException from(JsonParser jsonParser, JavaType javaType, String str) {
        return new MismatchedInputException(jsonParser, str, javaType);
    }

    public static MismatchedInputException from(JsonParser jsonParser, Class<?> cls, String str) {
        return new MismatchedInputException(jsonParser, str, cls);
    }

    @Deprecated
    public static MismatchedInputException from(JsonParser jsonParser, String str) {
        return from(jsonParser, (Class<?>) null, str);
    }

    public Class<?> getTargetType() {
        return this._targetType;
    }

    public MismatchedInputException setTargetType(JavaType javaType) {
        this._targetType = javaType.getRawClass();
        return this;
    }
}
