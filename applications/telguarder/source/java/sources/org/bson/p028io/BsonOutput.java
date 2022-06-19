package org.bson.p028io;

import java.io.Closeable;
import org.bson.types.ObjectId;
/* renamed from: org.bson.io.BsonOutput */
/* loaded from: classes-dex2jar.jar:org/bson/io/BsonOutput.class */
public interface BsonOutput extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable, org.bson.p028io.BsonOutput
    void close();

    int getPosition();

    int getSize();

    void truncateToPosition(int i);

    void writeByte(int i);

    void writeBytes(byte[] bArr);

    void writeBytes(byte[] bArr, int i, int i2);

    void writeCString(String str);

    void writeDouble(double d);

    void writeInt32(int i);

    void writeInt32(int i, int i2);

    void writeInt64(long j);

    void writeObjectId(ObjectId objectId);

    void writeString(String str);
}
