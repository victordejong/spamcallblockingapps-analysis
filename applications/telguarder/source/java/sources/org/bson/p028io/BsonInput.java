package org.bson.p028io;

import java.io.Closeable;
import org.bson.types.ObjectId;
/* renamed from: org.bson.io.BsonInput */
/* loaded from: classes-dex2jar.jar:org/bson/io/BsonInput.class */
public interface BsonInput extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    BsonInputMark getMark(int i);

    int getPosition();

    boolean hasRemaining();

    @Deprecated
    void mark(int i);

    byte readByte();

    void readBytes(byte[] bArr);

    void readBytes(byte[] bArr, int i, int i2);

    String readCString();

    double readDouble();

    int readInt32();

    long readInt64();

    ObjectId readObjectId();

    String readString();

    @Deprecated
    void reset();

    void skip(int i);

    void skipCString();
}
