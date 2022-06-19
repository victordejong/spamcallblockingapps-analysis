package com.fasterxml.jackson.core.type;

import com.fasterxml.jackson.core.JsonToken;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/type/WritableTypeId.class */
public class WritableTypeId {
    public String asProperty;
    public Object forValue;
    public Class<?> forValueType;

    /* renamed from: id */
    public Object f34289id;
    public Inclusion include;
    public JsonToken valueShape;
    public boolean wrapperWritten;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/type/WritableTypeId$Inclusion.class */
    public enum Inclusion {
        WRAPPER_ARRAY,
        WRAPPER_OBJECT,
        METADATA_PROPERTY,
        PAYLOAD_PROPERTY,
        PARENT_PROPERTY;

        public final boolean requiresObjectContext() {
            return this == METADATA_PROPERTY || this == PAYLOAD_PROPERTY;
        }
    }

    public WritableTypeId() {
    }

    public WritableTypeId(Object obj, JsonToken jsonToken) {
        this(obj, jsonToken, (Object) null);
    }

    public WritableTypeId(Object obj, JsonToken jsonToken, Object obj2) {
        this.forValue = obj;
        this.f34289id = obj2;
        this.valueShape = jsonToken;
    }

    public WritableTypeId(Object obj, Class<?> cls, JsonToken jsonToken) {
        this(obj, jsonToken, (Object) null);
        this.forValueType = cls;
    }
}
