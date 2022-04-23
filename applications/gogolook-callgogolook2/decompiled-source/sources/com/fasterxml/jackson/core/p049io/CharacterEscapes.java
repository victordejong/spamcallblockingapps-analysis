package com.fasterxml.jackson.core.p049io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.Serializable;
/* renamed from: com.fasterxml.jackson.core.io.CharacterEscapes */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/CharacterEscapes.class */
public abstract class CharacterEscapes implements Serializable {
    public abstract int[] getEscapeCodesForAscii();

    public abstract SerializableString getEscapeSequence(int i);
}
