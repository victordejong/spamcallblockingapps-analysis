package com.fasterxml.jackson.annotation;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/OptBoolean.class */
public enum OptBoolean {
    TRUE,
    FALSE,
    DEFAULT;

    public static boolean equals(Boolean bool, Boolean bool2) {
        return bool == null ? bool2 == null : bool.equals(bool2);
    }

    public static OptBoolean fromBoolean(Boolean bool) {
        return bool == null ? DEFAULT : bool.booleanValue() ? TRUE : FALSE;
    }

    public final Boolean asBoolean() {
        if (this == DEFAULT) {
            return null;
        }
        return this == TRUE ? Boolean.TRUE : Boolean.FALSE;
    }

    public final boolean asPrimitive() {
        return this == TRUE;
    }
}
