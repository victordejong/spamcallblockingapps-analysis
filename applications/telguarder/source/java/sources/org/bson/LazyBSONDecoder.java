package org.bson;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.bson.p028io.Bits;
/* loaded from: classes-dex2jar.jar:org/bson/LazyBSONDecoder.class */
public class LazyBSONDecoder implements BSONDecoder {
    private static final int BYTES_IN_INTEGER = 4;

    @Override // org.bson.BSONDecoder
    public int decode(InputStream inputStream, BSONCallback bSONCallback) throws IOException {
        byte[] bArr = new byte[4];
        int readInt = Bits.readInt(inputStream, bArr);
        byte[] copyOf = Arrays.copyOf(bArr, readInt);
        Bits.readFully(inputStream, copyOf, 4, readInt - 4);
        bSONCallback.gotBinary(null, (byte) 0, copyOf);
        return readInt;
    }

    @Override // org.bson.BSONDecoder
    public int decode(byte[] bArr, BSONCallback bSONCallback) {
        try {
            return decode(new ByteArrayInputStream(bArr), bSONCallback);
        } catch (IOException e) {
            throw new BSONException("Invalid bytes received", e);
        }
    }

    @Override // org.bson.BSONDecoder
    public BSONObject readObject(InputStream inputStream) throws IOException {
        LazyBSONCallback lazyBSONCallback = new LazyBSONCallback();
        decode(inputStream, lazyBSONCallback);
        return (BSONObject) lazyBSONCallback.get();
    }

    @Override // org.bson.BSONDecoder
    public BSONObject readObject(byte[] bArr) {
        LazyBSONCallback lazyBSONCallback = new LazyBSONCallback();
        decode(bArr, lazyBSONCallback);
        return (BSONObject) lazyBSONCallback.get();
    }
}
