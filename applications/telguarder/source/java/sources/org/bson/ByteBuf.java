package org.bson;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:org/bson/ByteBuf.class */
public interface ByteBuf {
    byte[] array();

    ByteBuffer asNIO();

    ByteBuf asReadOnly();

    int capacity();

    ByteBuf clear();

    ByteBuf duplicate();

    ByteBuf flip();

    byte get();

    byte get(int i);

    ByteBuf get(int i, byte[] bArr);

    ByteBuf get(int i, byte[] bArr, int i2, int i3);

    ByteBuf get(byte[] bArr);

    ByteBuf get(byte[] bArr, int i, int i2);

    double getDouble();

    double getDouble(int i);

    int getInt();

    int getInt(int i);

    long getLong();

    long getLong(int i);

    int getReferenceCount();

    boolean hasRemaining();

    int limit();

    ByteBuf limit(int i);

    ByteBuf order(ByteOrder byteOrder);

    int position();

    ByteBuf position(int i);

    ByteBuf put(byte b);

    ByteBuf put(int i, byte b);

    ByteBuf put(byte[] bArr, int i, int i2);

    void release();

    int remaining();

    ByteBuf retain();
}
