package com.fasterxml.jackson.databind.jsonFormatVisitors;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes.class */
public enum JsonFormatTypes {
    STRING,
    NUMBER,
    INTEGER,
    BOOLEAN,
    OBJECT,
    ARRAY,
    NULL,
    ANY;
    
    public static final Map<String, JsonFormatTypes> _byLCName = new HashMap();

    static {
        JsonFormatTypes[] values;
        for (JsonFormatTypes jsonFormatTypes : values()) {
            _byLCName.put(jsonFormatTypes.name().toLowerCase(), jsonFormatTypes);
        }
    }
}
