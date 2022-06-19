package org.bson;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.bson.p028io.Bits;
import org.bson.p028io.ByteBufferBsonInput;
/* loaded from: classes-dex2jar.jar:org/bson/BasicBSONDecoder.class */
public class BasicBSONDecoder implements BSONDecoder {
    private byte[] readFully(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        Bits.readFully(inputStream, bArr);
        int readInt = Bits.readInt(bArr);
        byte[] bArr2 = new byte[readInt];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        Bits.readFully(inputStream, bArr2, 4, readInt - 4);
        return bArr2;
    }

    @Override // org.bson.BSONDecoder
    public int decode(InputStream inputStream, BSONCallback bSONCallback) throws IOException {
        return decode(readFully(inputStream), bSONCallback);
    }

    @Override // org.bson.BSONDecoder
    public int decode(byte[] bArr, BSONCallback bSONCallback) {
        BsonBinaryReader bsonBinaryReader = new BsonBinaryReader(new ByteBufferBsonInput(new ByteBufNIO(ByteBuffer.wrap(bArr))));
        try {
            new BSONCallbackAdapter(new BsonWriterSettings(), bSONCallback).pipe(bsonBinaryReader);
            return bsonBinaryReader.getBsonInput().getPosition();
        } finally {
            bsonBinaryReader.close();
        }
    }

    @Override // org.bson.BSONDecoder
    public BSONObject readObject(InputStream inputStream) throws IOException {
        return readObject(readFully(inputStream));
    }

    @Override // org.bson.BSONDecoder
    public BSONObject readObject(byte[] bArr) {
        BasicBSONCallback basicBSONCallback = new BasicBSONCallback();
        decode(bArr, basicBSONCallback);
        return (BSONObject) basicBSONCallback.get();
    }
}
