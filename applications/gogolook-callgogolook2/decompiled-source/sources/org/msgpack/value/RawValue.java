package org.msgpack.value;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:org/msgpack/value/RawValue.class */
public interface RawValue extends Value {
    byte[] asByteArray();

    ByteBuffer asByteBuffer();

    String asString();

    String toString();
}
