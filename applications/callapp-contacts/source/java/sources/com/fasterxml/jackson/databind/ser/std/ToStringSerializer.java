package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/ToStringSerializer.class */
public class ToStringSerializer extends ToStringSerializerBase {
    public static final ToStringSerializer instance = new ToStringSerializer();

    public ToStringSerializer() {
        super(Object.class);
    }

    public ToStringSerializer(Class<?> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ToStringSerializerBase
    public final String valueToString(Object obj) {
        return obj.toString();
    }
}
