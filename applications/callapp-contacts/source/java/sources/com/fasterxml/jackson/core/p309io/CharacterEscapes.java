package com.fasterxml.jackson.core.p309io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.Serializable;
import java.util.Arrays;
/* renamed from: com.fasterxml.jackson.core.io.CharacterEscapes */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/CharacterEscapes.class */
public abstract class CharacterEscapes implements Serializable {
    public static final int ESCAPE_CUSTOM = -2;
    public static final int ESCAPE_NONE = 0;
    public static final int ESCAPE_STANDARD = -1;

    public static int[] standardAsciiEscapesForJSON() {
        int[] iArr = CharTypes.get7BitOutputEscapes();
        return Arrays.copyOf(iArr, iArr.length);
    }

    public abstract int[] getEscapeCodesForAscii();

    public abstract SerializableString getEscapeSequence(int i);
}
