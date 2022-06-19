package com.fasterxml.jackson.core.util;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/Separators.class */
public class Separators implements Serializable {
    private final char arrayValueSeparator;
    private final char objectEntrySeparator;
    private final char objectFieldValueSeparator;

    public Separators() {
        this(':', ',', ',');
    }

    public Separators(char c, char c2, char c3) {
        this.objectFieldValueSeparator = c;
        this.objectEntrySeparator = c2;
        this.arrayValueSeparator = c3;
    }

    public static Separators createDefaultInstance() {
        return new Separators();
    }

    public char getArrayValueSeparator() {
        return this.arrayValueSeparator;
    }

    public char getObjectEntrySeparator() {
        return this.objectEntrySeparator;
    }

    public char getObjectFieldValueSeparator() {
        return this.objectFieldValueSeparator;
    }
}
