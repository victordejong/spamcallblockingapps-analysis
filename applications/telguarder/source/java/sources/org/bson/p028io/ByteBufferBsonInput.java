package org.bson.p028io;

import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import org.bson.BsonSerializationException;
import org.bson.ByteBuf;
import org.bson.types.ObjectId;
/* renamed from: org.bson.io.ByteBufferBsonInput */
/* loaded from: classes-dex2jar.jar:org/bson/io/ByteBufferBsonInput.class */
public class ByteBufferBsonInput implements BsonInput {
    private ByteBuf buffer;
    private int mark = -1;
    private static final Charset UTF8_CHARSET = Charset.forName(POBCommonConstants.URL_ENCODING);
    private static final String[] ONE_BYTE_ASCII_STRINGS = new String[128];

    static {
        int i = 0;
        while (true) {
            String[] strArr = ONE_BYTE_ASCII_STRINGS;
            if (i < strArr.length) {
                strArr[i] = String.valueOf((char) i);
                i++;
            } else {
                return;
            }
        }
    }

    public ByteBufferBsonInput(ByteBuf byteBuf) {
        if (byteBuf != null) {
            this.buffer = byteBuf;
            byteBuf.order(ByteOrder.LITTLE_ENDIAN);
            return;
        }
        throw new IllegalArgumentException("buffer can not be null");
    }

    private void ensureAvailable(int i) {
        if (this.buffer.remaining() >= i) {
            return;
        }
        throw new BsonSerializationException(String.format("While decoding a BSON document %d bytes were required, but only %d remain", Integer.valueOf(i), Integer.valueOf(this.buffer.remaining())));
    }

    public void ensureOpen() {
        if (this.buffer != null) {
            return;
        }
        throw new IllegalStateException("Stream is closed");
    }

    private String readString(int i) {
        if (i == 2) {
            byte readByte = readByte();
            if (readByte() != 0) {
                throw new BsonSerializationException("Found a BSON string that is not null-terminated");
            }
            return readByte < 0 ? UTF8_CHARSET.newDecoder().replacement() : ONE_BYTE_ASCII_STRINGS[readByte];
        }
        byte[] bArr = new byte[i - 1];
        readBytes(bArr);
        if (readByte() != 0) {
            throw new BsonSerializationException("Found a BSON string that is not null-terminated");
        }
        return new String(bArr, UTF8_CHARSET);
    }

    private void readUntilNullByte() {
        do {
        } while (readByte() != 0);
    }

    @Override // org.bson.p028io.BsonInput, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.buffer.release();
        this.buffer = null;
    }

    @Override // org.bson.p028io.BsonInput
    public BsonInputMark getMark(int i) {
        return new BsonInputMark() { // from class: org.bson.io.ByteBufferBsonInput.1
            private int mark;

            {
                ByteBufferBsonInput.this = this;
                this.mark = this.buffer.position();
            }

            @Override // org.bson.p028io.BsonInputMark
            public void reset() {
                ByteBufferBsonInput.this.ensureOpen();
                ByteBufferBsonInput.this.buffer.position(this.mark);
            }
        };
    }

    @Override // org.bson.p028io.BsonInput
    public int getPosition() {
        ensureOpen();
        return this.buffer.position();
    }

    @Override // org.bson.p028io.BsonInput
    public boolean hasRemaining() {
        ensureOpen();
        return this.buffer.hasRemaining();
    }

    @Override // org.bson.p028io.BsonInput
    @Deprecated
    public void mark(int i) {
        ensureOpen();
        this.mark = this.buffer.position();
    }

    @Override // org.bson.p028io.BsonInput
    public byte readByte() {
        ensureOpen();
        ensureAvailable(1);
        return this.buffer.get();
    }

    @Override // org.bson.p028io.BsonInput
    public void readBytes(byte[] bArr) {
        ensureOpen();
        ensureAvailable(bArr.length);
        this.buffer.get(bArr);
    }

    @Override // org.bson.p028io.BsonInput
    public void readBytes(byte[] bArr, int i, int i2) {
        ensureOpen();
        ensureAvailable(i2);
        this.buffer.get(bArr, i, i2);
    }

    @Override // org.bson.p028io.BsonInput
    public String readCString() {
        ensureOpen();
        int position = this.buffer.position();
        readUntilNullByte();
        int position2 = this.buffer.position();
        this.buffer.position(position);
        return readString(position2 - position);
    }

    @Override // org.bson.p028io.BsonInput
    public double readDouble() {
        ensureOpen();
        ensureAvailable(8);
        return this.buffer.getDouble();
    }

    @Override // org.bson.p028io.BsonInput
    public int readInt32() {
        ensureOpen();
        ensureAvailable(4);
        return this.buffer.getInt();
    }

    @Override // org.bson.p028io.BsonInput
    public long readInt64() {
        ensureOpen();
        ensureAvailable(8);
        return this.buffer.getLong();
    }

    @Override // org.bson.p028io.BsonInput
    public ObjectId readObjectId() {
        ensureOpen();
        byte[] bArr = new byte[12];
        readBytes(bArr);
        return new ObjectId(bArr);
    }

    @Override // org.bson.p028io.BsonInput
    public String readString() {
        ensureOpen();
        int readInt32 = readInt32();
        if (readInt32 > 0) {
            return readString(readInt32);
        }
        throw new BsonSerializationException(String.format("While decoding a BSON string found a size that is not a positive number: %d", Integer.valueOf(readInt32)));
    }

    @Override // org.bson.p028io.BsonInput
    @Deprecated
    public void reset() {
        ensureOpen();
        int i = this.mark;
        if (i != -1) {
            this.buffer.position(i);
            return;
        }
        throw new IllegalStateException("Mark not set");
    }

    @Override // org.bson.p028io.BsonInput
    public void skip(int i) {
        ensureOpen();
        ByteBuf byteBuf = this.buffer;
        byteBuf.position(byteBuf.position() + i);
    }

    @Override // org.bson.p028io.BsonInput
    public void skipCString() {
        ensureOpen();
        readUntilNullByte();
    }
}
