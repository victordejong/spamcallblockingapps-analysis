package com.fasterxml.jackson.annotation;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/PropertyAccessor.class */
public enum PropertyAccessor {
    GETTER,
    SETTER,
    CREATOR,
    FIELD,
    IS_GETTER,
    NONE,
    ALL;

    public final boolean creatorEnabled() {
        return this == CREATOR || this == ALL;
    }

    public final boolean fieldEnabled() {
        return this == FIELD || this == ALL;
    }

    public final boolean getterEnabled() {
        return this == GETTER || this == ALL;
    }

    public final boolean isGetterEnabled() {
        return this == IS_GETTER || this == ALL;
    }

    public final boolean setterEnabled() {
        return this == SETTER || this == ALL;
    }
}
