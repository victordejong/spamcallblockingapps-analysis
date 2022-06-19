package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.p309io.CharacterEscapes;
import com.fasterxml.jackson.core.p309io.SerializedString;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonpCharacterEscapes.class */
public class JsonpCharacterEscapes extends CharacterEscapes {
    private static final int[] asciiEscapes = CharacterEscapes.standardAsciiEscapesForJSON();
    private static final SerializedString escapeFor2028 = new SerializedString("\\u2028");
    private static final SerializedString escapeFor2029 = new SerializedString("\\u2029");
    private static final JsonpCharacterEscapes sInstance = new JsonpCharacterEscapes();
    private static final long serialVersionUID = 1;

    public static JsonpCharacterEscapes instance() {
        return sInstance;
    }

    @Override // com.fasterxml.jackson.core.p309io.CharacterEscapes
    public int[] getEscapeCodesForAscii() {
        return asciiEscapes;
    }

    @Override // com.fasterxml.jackson.core.p309io.CharacterEscapes
    public SerializableString getEscapeSequence(int i) {
        if (i != 8232) {
            if (i == 8233) {
                return escapeFor2029;
            }
            return null;
        }
        return escapeFor2028;
    }
}
