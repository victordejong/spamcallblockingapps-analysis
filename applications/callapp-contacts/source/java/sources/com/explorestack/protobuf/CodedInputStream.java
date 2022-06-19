package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream.class */
public abstract class CodedInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_RECURSION_LIMIT = 100;
    private static final int DEFAULT_SIZE_LIMIT = Integer.MAX_VALUE;
    int recursionDepth;
    int recursionLimit;
    private boolean shouldDiscardUnknownFields;
    int sizeLimit;
    CodedInputStreamReader wrapper;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$ArrayDecoder.class */
    public static final class ArrayDecoder extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private int limit;
        private int pos;
        private int startPos;

        private ArrayDecoder(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = bArr;
            this.limit = i2 + i;
            this.pos = i;
            this.startPos = i;
            this.immutable = z;
        }

        private void recomputeBufferSizeAfterLimit() {
            int i = this.limit + this.bufferSizeAfterLimit;
            this.limit = i;
            int i2 = i - this.startPos;
            int i3 = this.currentLimit;
            if (i2 <= i3) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i4 = i2 - i3;
            this.bufferSizeAfterLimit = i4;
            this.limit = i - i4;
        }

        private void skipRawVarint() throws IOException {
            if (this.limit - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.buffer;
                int i2 = this.pos;
                this.pos = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void checkLastTagWas(int i) throws InvalidProtocolBufferException {
            if (this.lastTag == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void enableAliasing(boolean z) {
            this.enableAliasing = z;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getBytesUntilLimit() {
            int i = this.currentLimit;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getLastTag() {
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getTotalBytesRead() {
            return this.pos - this.startPos;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean isAtEnd() throws IOException {
            return this.pos == this.limit;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void popLimit(int i) {
            this.currentLimit = i;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int pushLimit(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int totalBytesRead = i + getTotalBytesRead();
                int i2 = this.currentLimit;
                if (totalBytesRead > i2) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.currentLimit = totalBytesRead;
                recomputeBufferSizeAfterLimit();
                return i2;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.limit;
                int i2 = this.pos;
                if (readRawVarint32 <= i - i2) {
                    ByteBuffer wrap = (this.immutable || !this.enableAliasing) ? ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i2, i2 + readRawVarint32)) : ByteBuffer.wrap(this.buffer, i2, readRawVarint32).slice();
                    this.pos += readRawVarint32;
                    return wrap;
                }
            }
            if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (readRawVarint32 >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.limit;
                int i2 = this.pos;
                if (readRawVarint32 <= i - i2) {
                    ByteString copyFrom = (!this.immutable || !this.enableAliasing) ? ByteString.copyFrom(this.buffer, i2, readRawVarint32) : ByteString.wrap(this.buffer, i2, readRawVarint32);
                    this.pos += readRawVarint32;
                    return copyFrom;
                }
            }
            return readRawVarint32 == 0 ? ByteString.EMPTY : ByteString.wrap(readRawBytes(readRawVarint32));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte readRawByte() throws IOException {
            int i = this.pos;
            if (i != this.limit) {
                byte[] bArr = this.buffer;
                this.pos = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readRawBytes(int i) throws IOException {
            if (i > 0) {
                int i2 = this.limit;
                int i3 = this.pos;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.pos = i4;
                    return Arrays.copyOfRange(this.buffer, i3, i4);
                }
            }
            if (i <= 0) {
                if (i != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawLittleEndian32() throws IOException {
            int i = this.pos;
            if (this.limit - i >= 4) {
                byte[] bArr = this.buffer;
                this.pos = i + 4;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawLittleEndian64() throws IOException {
            int i = this.pos;
            if (this.limit - i >= 8) {
                byte[] bArr = this.buffer;
                this.pos = i + 8;
                return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawVarint32() throws IOException {
            int i;
            int i2 = this.pos;
            int i3 = this.limit;
            if (i3 != i2) {
                byte[] bArr = this.buffer;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.pos = i4;
                    return b;
                } else if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                int i10 = i5 + 1;
                                byte b2 = bArr[i5];
                                int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                                i = i11;
                                i5 = i10;
                                if (b2 < 0) {
                                    int i12 = i10 + 1;
                                    i = i11;
                                    i5 = i12;
                                    if (bArr[i10] < 0) {
                                        int i13 = i12 + 1;
                                        i = i11;
                                        i5 = i13;
                                        if (bArr[i12] < 0) {
                                            int i14 = i13 + 1;
                                            i = i11;
                                            i5 = i14;
                                            if (bArr[i13] < 0) {
                                                int i15 = i14 + 1;
                                                i = i11;
                                                i5 = i15;
                                                if (bArr[i14] < 0) {
                                                    i5 = i15 + 1;
                                                    if (bArr[i15] >= 0) {
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.pos = i5;
                    return i;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v88, types: [long] */
        /* JADX WARN: Type inference failed for: r0v91, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawVarint64() throws IOException {
            char c;
            char c2;
            char c3;
            int i;
            int i2 = this.pos;
            int i3 = this.limit;
            if (i3 != i2) {
                byte[] bArr = this.buffer;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.pos = i4;
                    return b;
                } else if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            c = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j = i9;
                                int i10 = i5 + 1;
                                char c4 = j ^ (bArr[i5] << 28);
                                if (c4 >= 0) {
                                    c3 = 16256;
                                    i5 = i10;
                                } else {
                                    i5 = i10 + 1;
                                    char c5 = c4 ^ (bArr[i10] << 35);
                                    if (c5 < 0) {
                                        c2 = 16256;
                                    } else {
                                        int i11 = i5 + 1;
                                        c4 = c5 ^ (bArr[i5] << 42);
                                        if (c4 >= 0) {
                                            c3 = 16256;
                                            i5 = i11;
                                        } else {
                                            int i12 = i11 + 1;
                                            c5 = c4 ^ (bArr[i11] << 49);
                                            if (c5 < 0) {
                                                c2 = 16256;
                                                i5 = i12;
                                            } else {
                                                i5 = i12 + 1;
                                                c = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                                if (c < 0) {
                                                    int i13 = i5 + 1;
                                                    if (bArr[i5] >= 0) {
                                                        i5 = i13;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    c = c5 ^ c2;
                                }
                                c = c4 ^ c3;
                            }
                        }
                        this.pos = i5;
                        return c;
                    }
                    i = i6 ^ (-128);
                    c = i;
                    this.pos = i5;
                    return c;
                }
            }
            return readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        final long readRawVarint64SlowPath() throws IOException {
            byte readRawByte;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (readRawByte & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSInt32() throws IOException {
            return decodeZigZag32(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSInt64() throws IOException {
            return decodeZigZag64(readRawVarint64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= this.limit - this.pos) {
                String str = new String(this.buffer, this.pos, readRawVarint32, Internal.UTF_8);
                this.pos += readRawVarint32;
                return str;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.limit;
                int i2 = this.pos;
                if (readRawVarint32 <= i - i2) {
                    String decodeUtf8 = Utf8.decodeUtf8(this.buffer, i2, readRawVarint32);
                    this.pos += readRawVarint32;
                    return decodeUtf8;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        @Deprecated
        public final void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException {
            readGroup(i, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4));
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                skipRawBytes(4);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeRawVarint32(i);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeRawVarint32(makeTag);
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readRawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, codedOutputStream));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipRawBytes(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.limit;
                int i3 = this.pos;
                if (i <= i2 - i3) {
                    this.pos = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$IterableDirectByteBufferDecoder.class */
    public static final class IterableDirectByteBufferDecoder extends CodedInputStream {
        private int bufferSizeAfterCurrentLimit;
        private long currentAddress;
        private ByteBuffer currentByteBuffer;
        private long currentByteBufferLimit;
        private long currentByteBufferPos;
        private long currentByteBufferStartPos;
        private int currentLimit;
        private boolean enableAliasing;
        private boolean immutable;
        private Iterable<ByteBuffer> input;
        private Iterator<ByteBuffer> iterator;
        private int lastTag;
        private int startOffset;
        private int totalBufferSize;
        private int totalBytesRead;

        private IterableDirectByteBufferDecoder(Iterable<ByteBuffer> iterable, int i, boolean z) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.totalBufferSize = i;
            this.input = iterable;
            this.iterator = iterable.iterator();
            this.immutable = z;
            this.totalBytesRead = 0;
            this.startOffset = 0;
            if (i != 0) {
                tryGetNextByteBuffer();
                return;
            }
            this.currentByteBuffer = Internal.EMPTY_BYTE_BUFFER;
            this.currentByteBufferPos = 0L;
            this.currentByteBufferStartPos = 0L;
            this.currentByteBufferLimit = 0L;
            this.currentAddress = 0L;
        }

        private long currentRemaining() {
            return this.currentByteBufferLimit - this.currentByteBufferPos;
        }

        private void getNextByteBuffer() throws InvalidProtocolBufferException {
            if (this.iterator.hasNext()) {
                tryGetNextByteBuffer();
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void readRawBytesTo(byte[] bArr, int i, int i2) throws IOException {
            if (i2 < 0 || i2 > remaining()) {
                if (i2 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i2 != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i3 = i2;
            while (i3 > 0) {
                if (currentRemaining() == 0) {
                    getNextByteBuffer();
                }
                int min = Math.min(i3, (int) currentRemaining());
                long j = min;
                UnsafeUtil.copyMemory(this.currentByteBufferPos, bArr, (i2 - i3) + i, j);
                i3 -= min;
                this.currentByteBufferPos += j;
            }
        }

        private void recomputeBufferSizeAfterLimit() {
            int i = this.totalBufferSize + this.bufferSizeAfterCurrentLimit;
            this.totalBufferSize = i;
            int i2 = i - this.startOffset;
            int i3 = this.currentLimit;
            if (i2 <= i3) {
                this.bufferSizeAfterCurrentLimit = 0;
                return;
            }
            int i4 = i2 - i3;
            this.bufferSizeAfterCurrentLimit = i4;
            this.totalBufferSize = i - i4;
        }

        private int remaining() {
            return (int) (((this.totalBufferSize - this.totalBytesRead) - this.currentByteBufferPos) + this.currentByteBufferStartPos);
        }

        private void skipRawVarint() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer slice(int i, int i2) throws IOException {
            int position = this.currentByteBuffer.position();
            int limit = this.currentByteBuffer.limit();
            try {
                try {
                    this.currentByteBuffer.position(i);
                    this.currentByteBuffer.limit(i2);
                    ByteBuffer slice = this.currentByteBuffer.slice();
                    this.currentByteBuffer.position(position);
                    this.currentByteBuffer.limit(limit);
                    return slice;
                } catch (IllegalArgumentException e) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th) {
                this.currentByteBuffer.position(position);
                this.currentByteBuffer.limit(limit);
                throw th;
            }
        }

        private void tryGetNextByteBuffer() {
            ByteBuffer next = this.iterator.next();
            this.currentByteBuffer = next;
            this.totalBytesRead += (int) (this.currentByteBufferPos - this.currentByteBufferStartPos);
            long position = next.position();
            this.currentByteBufferPos = position;
            this.currentByteBufferStartPos = position;
            this.currentByteBufferLimit = this.currentByteBuffer.limit();
            long addressOffset = UnsafeUtil.addressOffset(this.currentByteBuffer);
            this.currentAddress = addressOffset;
            this.currentByteBufferPos += addressOffset;
            this.currentByteBufferStartPos += addressOffset;
            this.currentByteBufferLimit += addressOffset;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void checkLastTagWas(int i) throws InvalidProtocolBufferException {
            if (this.lastTag == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void enableAliasing(boolean z) {
            this.enableAliasing = z;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getBytesUntilLimit() {
            int i = this.currentLimit;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getLastTag() {
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getTotalBytesRead() {
            return (int) (((this.totalBytesRead - this.startOffset) + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean isAtEnd() throws IOException {
            return (((long) this.totalBytesRead) + this.currentByteBufferPos) - this.currentByteBufferStartPos == ((long) this.totalBufferSize);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void popLimit(int i) {
            this.currentLimit = i;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int pushLimit(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int totalBytesRead = i + getTotalBytesRead();
                int i2 = this.currentLimit;
                if (totalBytesRead > i2) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.currentLimit = totalBytesRead;
                recomputeBufferSizeAfterLimit();
                return i2;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                if (j <= currentRemaining()) {
                    if (this.immutable || !this.enableAliasing) {
                        byte[] bArr = new byte[readRawVarint32];
                        UnsafeUtil.copyMemory(this.currentByteBufferPos, bArr, 0L, j);
                        this.currentByteBufferPos += j;
                        return ByteBuffer.wrap(bArr);
                    }
                    long j2 = this.currentByteBufferPos + j;
                    this.currentByteBufferPos = j2;
                    long j3 = this.currentAddress;
                    return slice((int) ((j2 - j3) - j), (int) (j2 - j3));
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return ByteBuffer.wrap(bArr2);
            } else if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            } else {
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.currentByteBufferLimit;
                long j3 = this.currentByteBufferPos;
                if (j <= j2 - j3) {
                    if (!this.immutable || !this.enableAliasing) {
                        byte[] bArr = new byte[readRawVarint32];
                        UnsafeUtil.copyMemory(j3, bArr, 0L, j);
                        this.currentByteBufferPos += j;
                        return ByteString.wrap(bArr);
                    }
                    int i = (int) (j3 - this.currentAddress);
                    ByteString wrap = ByteString.wrap(slice(i, readRawVarint32 + i));
                    this.currentByteBufferPos += j;
                    return wrap;
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return ByteString.wrap(bArr2);
            } else if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            } else {
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte readRawByte() throws IOException {
            if (currentRemaining() == 0) {
                getNextByteBuffer();
            }
            long j = this.currentByteBufferPos;
            this.currentByteBufferPos = 1 + j;
            return UnsafeUtil.getByte(j);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readRawBytes(int i) throws IOException {
            if (i >= 0) {
                long j = i;
                if (j <= currentRemaining()) {
                    byte[] bArr = new byte[i];
                    UnsafeUtil.copyMemory(this.currentByteBufferPos, bArr, 0L, j);
                    this.currentByteBufferPos += j;
                    return bArr;
                }
            }
            if (i >= 0 && i <= remaining()) {
                byte[] bArr2 = new byte[i];
                readRawBytesTo(bArr2, 0, i);
                return bArr2;
            } else if (i > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            } else {
                if (i != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return Internal.EMPTY_BYTE_ARRAY;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawLittleEndian32() throws IOException {
            if (currentRemaining() >= 4) {
                long j = this.currentByteBufferPos;
                this.currentByteBufferPos = 4 + j;
                return ((UnsafeUtil.getByte(j + 3) & 255) << 24) | (UnsafeUtil.getByte(j) & 255) | ((UnsafeUtil.getByte(1 + j) & 255) << 8) | ((UnsafeUtil.getByte(2 + j) & 255) << 16);
            }
            return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawLittleEndian64() throws IOException {
            if (currentRemaining() >= 8) {
                long j = this.currentByteBufferPos;
                this.currentByteBufferPos = 8 + j;
                return ((UnsafeUtil.getByte(j + 7) & 255) << 56) | (UnsafeUtil.getByte(j) & 255) | ((UnsafeUtil.getByte(1 + j) & 255) << 8) | ((UnsafeUtil.getByte(2 + j) & 255) << 16) | ((UnsafeUtil.getByte(3 + j) & 255) << 24) | ((UnsafeUtil.getByte(4 + j) & 255) << 32) | ((UnsafeUtil.getByte(5 + j) & 255) << 40) | ((UnsafeUtil.getByte(6 + j) & 255) << 48);
            }
            return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24) | ((readRawByte() & 255) << 32) | ((readRawByte() & 255) << 40) | ((readRawByte() & 255) << 48) | ((readRawByte() & 255) << 56);
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawVarint32() throws IOException {
            int i;
            long j = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j) {
                long j2 = j + 1;
                byte b = UnsafeUtil.getByte(j);
                if (b >= 0) {
                    this.currentByteBufferPos++;
                    return b;
                } else if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    char c = j2 + 1;
                    int i2 = b ^ (UnsafeUtil.getByte(j2) << 7);
                    if (i2 < 0) {
                        i = i2 ^ (-128);
                    } else {
                        ?? r0 = c + 1;
                        int i3 = i2 ^ (UnsafeUtil.getByte(c) << 14);
                        if (i3 >= 0) {
                            i = i3 ^ 16256;
                            c = r0;
                        } else {
                            c = r0 + 1;
                            int i4 = i3 ^ (UnsafeUtil.getByte(r0) << 21);
                            if (i4 < 0) {
                                i = i4 ^ (-2080896);
                            } else {
                                ?? r02 = c + 1;
                                byte b2 = UnsafeUtil.getByte(c);
                                int i5 = (i4 ^ (b2 << 28)) ^ 266354560;
                                i = i5;
                                c = r02;
                                if (b2 < 0) {
                                    ?? r03 = r02 + 1;
                                    i = i5;
                                    c = r03;
                                    if (UnsafeUtil.getByte(r02) < 0) {
                                        ?? r04 = r03 + 1;
                                        i = i5;
                                        c = r04;
                                        if (UnsafeUtil.getByte(r03) < 0) {
                                            ?? r05 = r04 + 1;
                                            i = i5;
                                            c = r05;
                                            if (UnsafeUtil.getByte(r04) < 0) {
                                                ?? r06 = r05 + 1;
                                                i = i5;
                                                c = r06;
                                                if (UnsafeUtil.getByte(r05) < 0) {
                                                    c = r06 + 1;
                                                    if (UnsafeUtil.getByte(r06) >= 0) {
                                                        i = i5;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.currentByteBufferPos = c;
                    return i;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v54, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v73, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85, types: [long] */
        /* JADX WARN: Type inference failed for: r0v93, types: [long] */
        /* JADX WARN: Type inference failed for: r0v95, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawVarint64() throws IOException {
            char c;
            char c2;
            char c3;
            char c4;
            char c5;
            int i;
            long j = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j) {
                long j2 = j + 1;
                byte b = UnsafeUtil.getByte(j);
                if (b >= 0) {
                    this.currentByteBufferPos++;
                    return b;
                } else if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    ?? r0 = j2 + 1;
                    int i2 = b ^ (UnsafeUtil.getByte(j2) << 7);
                    if (i2 >= 0) {
                        c = r0 + 1;
                        int i3 = i2 ^ (UnsafeUtil.getByte(r0) << 14);
                        if (i3 >= 0) {
                            c2 = i3 ^ 16256;
                        } else {
                            ?? r02 = c + 1;
                            int i4 = i3 ^ (UnsafeUtil.getByte(c) << 21);
                            if (i4 < 0) {
                                i = i4 ^ (-2080896);
                                c = r02;
                            } else {
                                c = r02 + 1;
                                ?? r03 = i4 ^ (UnsafeUtil.getByte(r02) << 28);
                                if (r03 >= 0) {
                                    c5 = 16256;
                                    c4 = r03;
                                } else {
                                    char c6 = c + 1;
                                    char c7 = r03 ^ (UnsafeUtil.getByte(c) << 35);
                                    if (c7 < 0) {
                                        c3 = 16256;
                                    } else {
                                        c = c6 + 1;
                                        ?? r04 = c7 ^ (UnsafeUtil.getByte(c6) << 42);
                                        if (r04 >= 0) {
                                            c4 = r04;
                                            c5 = 16256;
                                        } else {
                                            c6 = c + 1;
                                            c7 = r04 ^ (UnsafeUtil.getByte(c) << 49);
                                            if (c7 < 0) {
                                                c3 = 16256;
                                            } else {
                                                ?? r05 = c6 + 1;
                                                ?? r06 = (c7 ^ (UnsafeUtil.getByte(c6) << 56)) ^ 71499008037633920L;
                                                c2 = r06;
                                                c = r05;
                                                if (r06 < 0) {
                                                    if (UnsafeUtil.getByte(r05) >= 0) {
                                                        c = 1 + r05;
                                                        c2 = r06;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    ?? r07 = c7 ^ c3;
                                    c = c6;
                                    c2 = r07;
                                }
                                c2 = c4 ^ c5;
                            }
                        }
                        this.currentByteBufferPos = c;
                        return c2;
                    }
                    i = i2 ^ (-128);
                    c = r0;
                    c2 = i;
                    this.currentByteBufferPos = c;
                    return c2;
                }
            }
            return readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        final long readRawVarint64SlowPath() throws IOException {
            byte readRawByte;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (readRawByte & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSInt32() throws IOException {
            return decodeZigZag32(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSInt64() throws IOException {
            return decodeZigZag64(readRawVarint64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.currentByteBufferLimit;
                long j3 = this.currentByteBufferPos;
                if (j <= j2 - j3) {
                    byte[] bArr = new byte[readRawVarint32];
                    UnsafeUtil.copyMemory(j3, bArr, 0L, j);
                    String str = new String(bArr, Internal.UTF_8);
                    this.currentByteBufferPos += j;
                    return str;
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return new String(bArr2, Internal.UTF_8);
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.currentByteBufferLimit;
                long j3 = this.currentByteBufferPos;
                if (j <= j2 - j3) {
                    String decodeUtf8 = Utf8.decodeUtf8(this.currentByteBuffer, (int) (j3 - this.currentByteBufferStartPos), readRawVarint32);
                    this.currentByteBufferPos += j;
                    return decodeUtf8;
                }
            }
            if (readRawVarint32 >= 0 && readRawVarint32 <= remaining()) {
                byte[] bArr = new byte[readRawVarint32];
                readRawBytesTo(bArr, 0, readRawVarint32);
                return Utf8.decodeUtf8(bArr, 0, readRawVarint32);
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        @Deprecated
        public final void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException {
            readGroup(i, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void resetSizeCounter() {
            this.startOffset = (int) ((this.totalBytesRead + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4));
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                skipRawBytes(4);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeRawVarint32(i);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeRawVarint32(makeTag);
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readRawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, codedOutputStream));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipRawBytes(int i) throws IOException {
            if (i < 0 || i > ((this.totalBufferSize - this.totalBytesRead) - this.currentByteBufferPos) + this.currentByteBufferStartPos) {
                if (i >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (i > 0) {
                if (currentRemaining() == 0) {
                    getNextByteBuffer();
                }
                int min = Math.min(i, (int) currentRemaining());
                i -= min;
                this.currentByteBufferPos += min;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$StreamDecoder.class */
    public static final class StreamDecoder extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSize;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private final InputStream input;
        private int lastTag;
        private int pos;
        private RefillCallback refillCallback;
        private int totalBytesRetired;

        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$StreamDecoder$RefillCallback.class */
        public interface RefillCallback {
            void onRefill();
        }

        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink.class */
        class SkippedDataSink implements RefillCallback {
            private ByteArrayOutputStream byteArrayStream;
            private int lastPos;

            private SkippedDataSink() {
                StreamDecoder.this = r4;
                this.lastPos = r4.pos;
            }

            ByteBuffer getSkippedData() {
                ByteArrayOutputStream byteArrayOutputStream = this.byteArrayStream;
                if (byteArrayOutputStream == null) {
                    return ByteBuffer.wrap(StreamDecoder.this.buffer, this.lastPos, StreamDecoder.this.pos - this.lastPos);
                }
                byteArrayOutputStream.write(StreamDecoder.this.buffer, this.lastPos, StreamDecoder.this.pos);
                return ByteBuffer.wrap(this.byteArrayStream.toByteArray());
            }

            @Override // com.explorestack.protobuf.CodedInputStream.StreamDecoder.RefillCallback
            public void onRefill() {
                if (this.byteArrayStream == null) {
                    this.byteArrayStream = new ByteArrayOutputStream();
                }
                this.byteArrayStream.write(StreamDecoder.this.buffer, this.lastPos, StreamDecoder.this.pos - this.lastPos);
                this.lastPos = 0;
            }
        }

        private StreamDecoder(InputStream inputStream, int i) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.refillCallback = null;
            Internal.checkNotNull(inputStream, "input");
            this.input = inputStream;
            this.buffer = new byte[i];
            this.bufferSize = 0;
            this.pos = 0;
            this.totalBytesRetired = 0;
        }

        private ByteString readBytesSlowPath(int i) throws IOException {
            byte[] readRawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i);
            if (readRawBytesSlowPathOneChunk != null) {
                return ByteString.copyFrom(readRawBytesSlowPathOneChunk);
            }
            int i2 = this.pos;
            int i3 = this.bufferSize;
            int i4 = i3 - i2;
            this.totalBytesRetired += i3;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> readRawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, i2, bArr, 0, i4);
            Iterator<byte[]> it2 = readRawBytesSlowPathRemainingChunks.iterator();
            int i5 = i4;
            while (true) {
                int i6 = i5;
                if (!it2.hasNext()) {
                    return ByteString.wrap(bArr);
                }
                byte[] next = it2.next();
                System.arraycopy(next, 0, bArr, i6, next.length);
                i5 = i6 + next.length;
            }
        }

        private byte[] readRawBytesSlowPath(int i, boolean z) throws IOException {
            byte[] readRawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i);
            if (readRawBytesSlowPathOneChunk != null) {
                return z ? (byte[]) readRawBytesSlowPathOneChunk.clone() : readRawBytesSlowPathOneChunk;
            }
            int i2 = this.pos;
            int i3 = this.bufferSize;
            int i4 = i3 - i2;
            this.totalBytesRetired += i3;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> readRawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, i2, bArr, 0, i4);
            Iterator<byte[]> it2 = readRawBytesSlowPathRemainingChunks.iterator();
            int i5 = i4;
            while (true) {
                int i6 = i5;
                if (!it2.hasNext()) {
                    return bArr;
                }
                byte[] next = it2.next();
                System.arraycopy(next, 0, bArr, i6, next.length);
                i5 = i6 + next.length;
            }
        }

        private byte[] readRawBytesSlowPathOneChunk(int i) throws IOException {
            if (i == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i2 = this.totalBytesRetired + this.pos + i;
            if (i2 - this.sizeLimit > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i3 = this.currentLimit;
            if (i2 > i3) {
                skipRawBytes((i3 - this.totalBytesRetired) - this.pos);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i4 = this.bufferSize - this.pos;
            int i5 = i - i4;
            if (i5 >= 4096 && i5 > this.input.available()) {
                return null;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, this.pos, bArr, 0, i4);
            this.totalBytesRetired += this.bufferSize;
            this.pos = 0;
            this.bufferSize = 0;
            while (i4 < i) {
                int read = this.input.read(bArr, i4, i - i4);
                if (read == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.totalBytesRetired += read;
                i4 += read;
            }
            return bArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            r7 = r7 - r0;
            r0.add(r0);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<byte[]> readRawBytesSlowPathRemainingChunks(int r7) throws java.io.IOException {
            /*
                r6 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r1.<init>()
                r8 = r0
            L8:
                r0 = r7
                if (r0 <= 0) goto L62
                r0 = r7
                r1 = 4096(0x1000, float:5.74E-42)
                int r0 = java.lang.Math.min(r0, r1)
                r9 = r0
                r0 = r9
                byte[] r0 = new byte[r0]
                r10 = r0
                r0 = 0
                r11 = r0
            L1c:
                r0 = r11
                r1 = r9
                if (r0 >= r1) goto L52
                r0 = r6
                java.io.InputStream r0 = r0.input
                r1 = r10
                r2 = r11
                r3 = r9
                r4 = r11
                int r3 = r3 - r4
                int r0 = r0.read(r1, r2, r3)
                r12 = r0
                r0 = r12
                r1 = -1
                if (r0 == r1) goto L4e
                r0 = r6
                r1 = r6
                int r1 = r1.totalBytesRetired
                r2 = r12
                int r1 = r1 + r2
                r0.totalBytesRetired = r1
                r0 = r11
                r1 = r12
                int r0 = r0 + r1
                r11 = r0
                goto L1c
            L4e:
                com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
                throw r0
            L52:
                r0 = r7
                r1 = r9
                int r0 = r0 - r1
                r7 = r0
                r0 = r8
                r1 = r10
                boolean r0 = r0.add(r1)
                goto L8
            L62:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.CodedInputStream.StreamDecoder.readRawBytesSlowPathRemainingChunks(int):java.util.List");
        }

        private void recomputeBufferSizeAfterLimit() {
            int i = this.bufferSize + this.bufferSizeAfterLimit;
            this.bufferSize = i;
            int i2 = this.totalBytesRetired + i;
            int i3 = this.currentLimit;
            if (i2 <= i3) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i4 = i2 - i3;
            this.bufferSizeAfterLimit = i4;
            this.bufferSize = i - i4;
        }

        private void refillBuffer(int i) throws IOException {
            if (!tryRefillBuffer(i)) {
                if (i <= (this.sizeLimit - this.totalBytesRetired) - this.pos) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x00c5, code lost:
            throw new java.lang.IllegalStateException(r5.input.getClass() + "#skip returned invalid result: " + r0 + "\nThe InputStream implementation is buggy.");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void skipRawBytesSlowPath(int r6) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.CodedInputStream.StreamDecoder.skipRawBytesSlowPath(int):void");
        }

        private void skipRawVarint() throws IOException {
            if (this.bufferSize - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.buffer;
                int i2 = this.pos;
                this.pos = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean tryRefillBuffer(int i) throws IOException {
            while (this.pos + i > this.bufferSize) {
                int i2 = this.sizeLimit;
                int i3 = this.totalBytesRetired;
                int i4 = this.pos;
                if (i > (i2 - i3) - i4 || i3 + i4 + i > this.currentLimit) {
                    return false;
                }
                RefillCallback refillCallback = this.refillCallback;
                if (refillCallback != null) {
                    refillCallback.onRefill();
                }
                int i5 = this.pos;
                if (i5 > 0) {
                    int i6 = this.bufferSize;
                    if (i6 > i5) {
                        byte[] bArr = this.buffer;
                        System.arraycopy(bArr, i5, bArr, 0, i6 - i5);
                    }
                    this.totalBytesRetired += i5;
                    this.bufferSize -= i5;
                    this.pos = 0;
                }
                InputStream inputStream = this.input;
                byte[] bArr2 = this.buffer;
                int i7 = this.bufferSize;
                int read = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.sizeLimit - this.totalBytesRetired) - this.bufferSize));
                if (read == 0 || read < -1 || read > this.buffer.length) {
                    throw new IllegalStateException(this.input.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                } else if (read <= 0) {
                    return false;
                } else {
                    this.bufferSize += read;
                    recomputeBufferSizeAfterLimit();
                    if (this.bufferSize >= i) {
                        return true;
                    }
                }
            }
            throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void checkLastTagWas(int i) throws InvalidProtocolBufferException {
            if (this.lastTag == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void enableAliasing(boolean z) {
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getBytesUntilLimit() {
            int i = this.currentLimit;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.totalBytesRetired + this.pos);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getLastTag() {
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getTotalBytesRead() {
            return this.totalBytesRetired + this.pos;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean isAtEnd() throws IOException {
            return this.pos == this.bufferSize && !tryRefillBuffer(1);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void popLimit(int i) {
            this.currentLimit = i;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int pushLimit(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int i2 = i + this.totalBytesRetired + this.pos;
                int i3 = this.currentLimit;
                if (i2 > i3) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.currentLimit = i2;
                recomputeBufferSizeAfterLimit();
                return i3;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readByteArray() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.bufferSize;
            int i2 = this.pos;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return readRawBytesSlowPath(readRawVarint32, false);
            }
            byte[] copyOfRange = Arrays.copyOfRange(this.buffer, i2, i2 + readRawVarint32);
            this.pos += readRawVarint32;
            return copyOfRange;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.bufferSize;
            int i2 = this.pos;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return readRawVarint32 == 0 ? Internal.EMPTY_BYTE_BUFFER : ByteBuffer.wrap(readRawBytesSlowPath(readRawVarint32, true));
            }
            ByteBuffer wrap = ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i2, i2 + readRawVarint32));
            this.pos += readRawVarint32;
            return wrap;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.bufferSize;
            int i2 = this.pos;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return readRawVarint32 == 0 ? ByteString.EMPTY : readBytesSlowPath(readRawVarint32);
            }
            ByteString copyFrom = ByteString.copyFrom(this.buffer, i2, readRawVarint32);
            this.pos += readRawVarint32;
            return copyFrom;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte readRawByte() throws IOException {
            if (this.pos == this.bufferSize) {
                refillBuffer(1);
            }
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            return bArr[i];
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readRawBytes(int i) throws IOException {
            int i2 = this.pos;
            if (i > this.bufferSize - i2 || i <= 0) {
                return readRawBytesSlowPath(i, false);
            }
            int i3 = i + i2;
            this.pos = i3;
            return Arrays.copyOfRange(this.buffer, i2, i3);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawLittleEndian32() throws IOException {
            int i = this.pos;
            int i2 = i;
            if (this.bufferSize - i < 4) {
                refillBuffer(4);
                i2 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawLittleEndian64() throws IOException {
            int i = this.pos;
            int i2 = i;
            if (this.bufferSize - i < 8) {
                refillBuffer(8);
                i2 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i2 + 8;
            return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawVarint32() throws IOException {
            int i;
            int i2 = this.pos;
            int i3 = this.bufferSize;
            if (i3 != i2) {
                byte[] bArr = this.buffer;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.pos = i4;
                    return b;
                } else if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                int i10 = i5 + 1;
                                byte b2 = bArr[i5];
                                int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                                i = i11;
                                i5 = i10;
                                if (b2 < 0) {
                                    int i12 = i10 + 1;
                                    i = i11;
                                    i5 = i12;
                                    if (bArr[i10] < 0) {
                                        int i13 = i12 + 1;
                                        i = i11;
                                        i5 = i13;
                                        if (bArr[i12] < 0) {
                                            int i14 = i13 + 1;
                                            i = i11;
                                            i5 = i14;
                                            if (bArr[i13] < 0) {
                                                int i15 = i14 + 1;
                                                i = i11;
                                                i5 = i15;
                                                if (bArr[i14] < 0) {
                                                    i5 = i15 + 1;
                                                    if (bArr[i15] >= 0) {
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.pos = i5;
                    return i;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v88, types: [long] */
        /* JADX WARN: Type inference failed for: r0v91, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawVarint64() throws IOException {
            char c;
            char c2;
            char c3;
            int i;
            int i2 = this.pos;
            int i3 = this.bufferSize;
            if (i3 != i2) {
                byte[] bArr = this.buffer;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.pos = i4;
                    return b;
                } else if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            c = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j = i9;
                                int i10 = i5 + 1;
                                char c4 = j ^ (bArr[i5] << 28);
                                if (c4 >= 0) {
                                    c3 = 16256;
                                    i5 = i10;
                                } else {
                                    int i11 = i10 + 1;
                                    char c5 = c4 ^ (bArr[i10] << 35);
                                    if (c5 < 0) {
                                        c2 = 16256;
                                        i5 = i11;
                                    } else {
                                        i5 = i11 + 1;
                                        c4 = c5 ^ (bArr[i11] << 42);
                                        if (c4 >= 0) {
                                            c3 = 16256;
                                        } else {
                                            int i12 = i5 + 1;
                                            c5 = c4 ^ (bArr[i5] << 49);
                                            if (c5 < 0) {
                                                c2 = 16256;
                                                i5 = i12;
                                            } else {
                                                i5 = i12 + 1;
                                                c = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                                if (c < 0) {
                                                    int i13 = i5 + 1;
                                                    if (bArr[i5] >= 0) {
                                                        i5 = i13;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    c = c5 ^ c2;
                                }
                                c = c4 ^ c3;
                            }
                        }
                        this.pos = i5;
                        return c;
                    }
                    i = i6 ^ (-128);
                    c = i;
                    this.pos = i5;
                    return c;
                }
            }
            return readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        final long readRawVarint64SlowPath() throws IOException {
            byte readRawByte;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (readRawByte & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSInt32() throws IOException {
            return decodeZigZag32(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSInt64() throws IOException {
            return decodeZigZag64(readRawVarint64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= this.bufferSize - this.pos) {
                String str = new String(this.buffer, this.pos, readRawVarint32, Internal.UTF_8);
                this.pos += readRawVarint32;
                return str;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 > this.bufferSize) {
                    return new String(readRawBytesSlowPath(readRawVarint32, false), Internal.UTF_8);
                }
                refillBuffer(readRawVarint32);
                String str2 = new String(this.buffer, this.pos, readRawVarint32, Internal.UTF_8);
                this.pos += readRawVarint32;
                return str2;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readStringRequireUtf8() throws IOException {
            byte[] bArr;
            int readRawVarint32 = readRawVarint32();
            int i = this.pos;
            int i2 = this.bufferSize;
            if (readRawVarint32 <= i2 - i && readRawVarint32 > 0) {
                bArr = this.buffer;
                this.pos = i + readRawVarint32;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 <= i2) {
                    refillBuffer(readRawVarint32);
                    bArr = this.buffer;
                    this.pos = readRawVarint32 + 0;
                } else {
                    bArr = readRawBytesSlowPath(readRawVarint32, false);
                }
                i = 0;
            }
            return Utf8.decodeUtf8(bArr, i, readRawVarint32);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        @Deprecated
        public final void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException {
            readGroup(i, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void resetSizeCounter() {
            this.totalBytesRetired = -this.pos;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4));
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                skipRawBytes(4);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeRawVarint32(i);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeRawVarint32(makeTag);
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readRawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, codedOutputStream));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipRawBytes(int i) throws IOException {
            int i2 = this.bufferSize;
            int i3 = this.pos;
            if (i > i2 - i3 || i < 0) {
                skipRawBytesSlowPath(i);
            } else {
                this.pos = i3 + i;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStream$UnsafeDirectNioDecoder.class */
    public static final class UnsafeDirectNioDecoder extends CodedInputStream {
        private final long address;
        private final ByteBuffer buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private long limit;
        private long pos;
        private long startPos;

        private UnsafeDirectNioDecoder(ByteBuffer byteBuffer, boolean z) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = byteBuffer;
            long addressOffset = UnsafeUtil.addressOffset(byteBuffer);
            this.address = addressOffset;
            this.limit = byteBuffer.limit() + addressOffset;
            long position = addressOffset + byteBuffer.position();
            this.pos = position;
            this.startPos = position;
            this.immutable = z;
        }

        private int bufferPos(long j) {
            return (int) (j - this.address);
        }

        static boolean isSupported() {
            return UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        private void recomputeBufferSizeAfterLimit() {
            long j = this.limit + this.bufferSizeAfterLimit;
            this.limit = j;
            int i = (int) (j - this.startPos);
            int i2 = this.currentLimit;
            if (i <= i2) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i3 = i - i2;
            this.bufferSizeAfterLimit = i3;
            this.limit = j - i3;
        }

        private int remaining() {
            return (int) (this.limit - this.pos);
        }

        private void skipRawVarint() throws IOException {
            if (remaining() >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                long j = this.pos;
                this.pos = 1 + j;
                if (UnsafeUtil.getByte(j) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer slice(long j, long j2) throws IOException {
            int position = this.buffer.position();
            int limit = this.buffer.limit();
            try {
                try {
                    this.buffer.position(bufferPos(j));
                    this.buffer.limit(bufferPos(j2));
                    ByteBuffer slice = this.buffer.slice();
                    this.buffer.position(position);
                    this.buffer.limit(limit);
                    return slice;
                } catch (IllegalArgumentException e) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th) {
                this.buffer.position(position);
                this.buffer.limit(limit);
                throw th;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void checkLastTagWas(int i) throws InvalidProtocolBufferException {
            if (this.lastTag == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void enableAliasing(boolean z) {
            this.enableAliasing = z;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getBytesUntilLimit() {
            int i = this.currentLimit;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getLastTag() {
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int getTotalBytesRead() {
            return (int) (this.pos - this.startPos);
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean isAtEnd() throws IOException {
            return this.pos == this.limit;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void popLimit(int i) {
            this.currentLimit = i;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int pushLimit(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int totalBytesRead = i + getTotalBytesRead();
                int i2 = this.currentLimit;
                if (totalBytesRead > i2) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.currentLimit = totalBytesRead;
                recomputeBufferSizeAfterLimit();
                return i2;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > remaining()) {
                if (readRawVarint32 == 0) {
                    return Internal.EMPTY_BYTE_BUFFER;
                }
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else if (this.immutable || !this.enableAliasing) {
                byte[] bArr = new byte[readRawVarint32];
                long j = readRawVarint32;
                UnsafeUtil.copyMemory(this.pos, bArr, 0L, j);
                this.pos += j;
                return ByteBuffer.wrap(bArr);
            } else {
                long j2 = this.pos;
                long j3 = readRawVarint32;
                ByteBuffer slice = slice(j2, j2 + j3);
                this.pos += j3;
                return slice;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > remaining()) {
                if (readRawVarint32 == 0) {
                    return ByteString.EMPTY;
                }
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else if (!this.immutable || !this.enableAliasing) {
                byte[] bArr = new byte[readRawVarint32];
                long j = readRawVarint32;
                UnsafeUtil.copyMemory(this.pos, bArr, 0L, j);
                this.pos += j;
                return ByteString.wrap(bArr);
            } else {
                long j2 = this.pos;
                long j3 = readRawVarint32;
                ByteBuffer slice = slice(j2, j2 + j3);
                this.pos += j3;
                return ByteString.wrap(slice);
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            if (this.recursionDepth < this.recursionLimit) {
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(WireFormat.makeTag(i, 4));
                this.recursionDepth--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (this.recursionDepth < this.recursionLimit) {
                int pushLimit = pushLimit(readRawVarint32);
                this.recursionDepth++;
                builder.mergeFrom(this, extensionRegistryLite);
                checkLastTagWas(0);
                this.recursionDepth--;
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte readRawByte() throws IOException {
            long j = this.pos;
            if (j != this.limit) {
                this.pos = 1 + j;
                return UnsafeUtil.getByte(j);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final byte[] readRawBytes(int i) throws IOException {
            if (i < 0 || i > remaining()) {
                if (i > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return Internal.EMPTY_BYTE_ARRAY;
            }
            byte[] bArr = new byte[i];
            long j = this.pos;
            long j2 = i;
            slice(j, j + j2).get(bArr);
            this.pos += j2;
            return bArr;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawLittleEndian32() throws IOException {
            long j = this.pos;
            if (this.limit - j >= 4) {
                this.pos = 4 + j;
                return ((UnsafeUtil.getByte(j + 3) & 255) << 24) | (UnsafeUtil.getByte(j) & 255) | ((UnsafeUtil.getByte(1 + j) & 255) << 8) | ((UnsafeUtil.getByte(2 + j) & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawLittleEndian64() throws IOException {
            long j = this.pos;
            if (this.limit - j >= 8) {
                this.pos = 8 + j;
                return ((UnsafeUtil.getByte(j + 7) & 255) << 56) | (UnsafeUtil.getByte(j) & 255) | ((UnsafeUtil.getByte(1 + j) & 255) << 8) | ((UnsafeUtil.getByte(2 + j) & 255) << 16) | ((UnsafeUtil.getByte(3 + j) & 255) << 24) | ((UnsafeUtil.getByte(4 + j) & 255) << 32) | ((UnsafeUtil.getByte(5 + j) & 255) << 40) | ((UnsafeUtil.getByte(6 + j) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readRawVarint32() throws IOException {
            int i;
            char c;
            long j = this.pos;
            if (this.limit != j) {
                long j2 = j + 1;
                byte b = UnsafeUtil.getByte(j);
                if (b >= 0) {
                    this.pos = j2;
                    return b;
                } else if (this.limit - j2 >= 9) {
                    ?? r0 = j2 + 1;
                    int i2 = b ^ (UnsafeUtil.getByte(j2) << 7);
                    if (i2 < 0) {
                        i = i2 ^ (-128);
                        c = r0;
                    } else {
                        c = r0 + 1;
                        int i3 = i2 ^ (UnsafeUtil.getByte(r0) << 14);
                        if (i3 >= 0) {
                            i = i3 ^ 16256;
                        } else {
                            ?? r02 = c + 1;
                            int i4 = i3 ^ (UnsafeUtil.getByte(c) << 21);
                            if (i4 < 0) {
                                i = i4 ^ (-2080896);
                                c = r02;
                            } else {
                                ?? r03 = r02 + 1;
                                byte b2 = UnsafeUtil.getByte(r02);
                                int i5 = (i4 ^ (b2 << 28)) ^ 266354560;
                                i = i5;
                                c = r03;
                                if (b2 < 0) {
                                    ?? r04 = r03 + 1;
                                    i = i5;
                                    c = r04;
                                    if (UnsafeUtil.getByte(r03) < 0) {
                                        ?? r05 = r04 + 1;
                                        i = i5;
                                        c = r05;
                                        if (UnsafeUtil.getByte(r04) < 0) {
                                            ?? r06 = r05 + 1;
                                            i = i5;
                                            c = r06;
                                            if (UnsafeUtil.getByte(r05) < 0) {
                                                ?? r07 = r06 + 1;
                                                i = i5;
                                                c = r07;
                                                if (UnsafeUtil.getByte(r06) < 0) {
                                                    c = r07 + 1;
                                                    if (UnsafeUtil.getByte(r07) >= 0) {
                                                        i = i5;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.pos = c;
                    return i;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v54, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v73, types: [long] */
        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        /* JADX WARN: Type inference failed for: r0v92, types: [long] */
        /* JADX WARN: Type inference failed for: r0v94, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readRawVarint64() throws IOException {
            char c;
            char c2;
            char c3;
            char c4;
            char c5;
            int i;
            long j = this.pos;
            if (this.limit != j) {
                long j2 = j + 1;
                byte b = UnsafeUtil.getByte(j);
                if (b >= 0) {
                    this.pos = j2;
                    return b;
                } else if (this.limit - j2 >= 9) {
                    ?? r0 = j2 + 1;
                    int i2 = b ^ (UnsafeUtil.getByte(j2) << 7);
                    if (i2 >= 0) {
                        c = r0 + 1;
                        int i3 = i2 ^ (UnsafeUtil.getByte(r0) << 14);
                        if (i3 >= 0) {
                            c2 = i3 ^ 16256;
                        } else {
                            ?? r02 = c + 1;
                            int i4 = i3 ^ (UnsafeUtil.getByte(c) << 21);
                            if (i4 < 0) {
                                i = i4 ^ (-2080896);
                                c = r02;
                            } else {
                                c = r02 + 1;
                                ?? r03 = i4 ^ (UnsafeUtil.getByte(r02) << 28);
                                if (r03 >= 0) {
                                    c4 = 16256;
                                    c5 = r03;
                                } else {
                                    char c6 = c + 1;
                                    char c7 = r03 ^ (UnsafeUtil.getByte(c) << 35);
                                    if (c7 < 0) {
                                        c3 = 16256;
                                    } else {
                                        c = c6 + 1;
                                        ?? r04 = c7 ^ (UnsafeUtil.getByte(c6) << 42);
                                        if (r04 >= 0) {
                                            c4 = 16256;
                                            c5 = r04;
                                        } else {
                                            c6 = c + 1;
                                            c7 = r04 ^ (UnsafeUtil.getByte(c) << 49);
                                            if (c7 < 0) {
                                                c3 = 16256;
                                            } else {
                                                ?? r05 = c6 + 1;
                                                ?? r06 = (c7 ^ (UnsafeUtil.getByte(c6) << 56)) ^ 71499008037633920L;
                                                c2 = r06;
                                                c = r05;
                                                if (r06 < 0) {
                                                    if (UnsafeUtil.getByte(r05) >= 0) {
                                                        c = 1 + r05;
                                                        c2 = r06;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    ?? r07 = c7 ^ c3;
                                    c = c6;
                                    c2 = r07;
                                }
                                c2 = c5 ^ c4;
                            }
                        }
                        this.pos = c;
                        return c2;
                    }
                    i = i2 ^ (-128);
                    c = r0;
                    c2 = i;
                    this.pos = c;
                    return c2;
                }
            }
            return readRawVarint64SlowPath();
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        @Override // com.explorestack.protobuf.CodedInputStream
        final long readRawVarint64SlowPath() throws IOException {
            byte readRawByte;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (readRawByte & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readSInt32() throws IOException {
            return decodeZigZag32(readRawVarint32());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readSInt64() throws IOException {
            return decodeZigZag64(readRawVarint64());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > remaining()) {
                if (readRawVarint32 == 0) {
                    return "";
                }
                if (readRawVarint32 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            byte[] bArr = new byte[readRawVarint32];
            long j = readRawVarint32;
            UnsafeUtil.copyMemory(this.pos, bArr, 0L, j);
            String str = new String(bArr, Internal.UTF_8);
            this.pos += j;
            return str;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                String decodeUtf8 = Utf8.decodeUtf8(this.buffer, bufferPos(this.pos), readRawVarint32);
                this.pos += readRawVarint32;
                return decodeUtf8;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.lastTag;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        @Deprecated
        public final void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException {
            readGroup(i, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4));
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                skipRawBytes(4);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final boolean skipField(int i, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeRawVarint32(i);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeRawVarint32(makeTag);
                return true;
            } else if (tagWireType == 4) {
                return false;
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readRawLittleEndian32 = readRawLittleEndian32();
                codedOutputStream.writeRawVarint32(i);
                codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, codedOutputStream));
        }

        @Override // com.explorestack.protobuf.CodedInputStream
        public final void skipRawBytes(int i) throws IOException {
            if (i >= 0 && i <= remaining()) {
                this.pos += i;
            } else if (i >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }
    }

    private CodedInputStream() {
        this.recursionLimit = 100;
        this.sizeLimit = Integer.MAX_VALUE;
        this.shouldDiscardUnknownFields = false;
    }

    public static int decodeZigZag32(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long decodeZigZag64(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return newInstance(inputStream, 4096);
    }

    public static CodedInputStream newInstance(InputStream inputStream, int i) {
        if (i > 0) {
            return inputStream == null ? newInstance(Internal.EMPTY_BYTE_ARRAY) : new StreamDecoder(inputStream, i);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static CodedInputStream newInstance(Iterable<ByteBuffer> iterable) {
        return !UnsafeDirectNioDecoder.isSupported() ? newInstance(new IterableByteBufferInputStream(iterable)) : newInstance(iterable, false);
    }

    static CodedInputStream newInstance(Iterable<ByteBuffer> iterable, boolean z) {
        boolean z2 = false;
        int i = 0;
        for (ByteBuffer byteBuffer : iterable) {
            i += byteBuffer.remaining();
            z2 = byteBuffer.hasArray() ? z2 | true : byteBuffer.isDirect() ? z2 | true : z2 | true;
        }
        return z2 ? new IterableDirectByteBufferDecoder(iterable, i, z) : newInstance(new IterableByteBufferInputStream(iterable));
    }

    public static CodedInputStream newInstance(ByteBuffer byteBuffer) {
        return newInstance(byteBuffer, false);
    }

    public static CodedInputStream newInstance(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return newInstance(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z);
        }
        if (byteBuffer.isDirect() && UnsafeDirectNioDecoder.isSupported()) {
            return new UnsafeDirectNioDecoder(byteBuffer, z);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return newInstance(bArr, 0, remaining, true);
    }

    public static CodedInputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedInputStream newInstance(byte[] bArr, int i, int i2) {
        return newInstance(bArr, i, i2, false);
    }

    public static CodedInputStream newInstance(byte[] bArr, int i, int i2, boolean z) {
        ArrayDecoder arrayDecoder = new ArrayDecoder(bArr, i, i2, z);
        try {
            arrayDecoder.pushLimit(i2);
            return arrayDecoder;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (r7 >= 64) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        r0 = r5.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        if (r0 == (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
        if ((r0 & 128) != 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
        r7 = r7 + 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
        throw com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
        throw com.explorestack.protobuf.InvalidProtocolBufferException.malformedVarint();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int readRawVarint32(int r4, java.io.InputStream r5) throws java.io.IOException {
        /*
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto La
            r0 = r4
            return r0
        La:
            r0 = r4
            r1 = 127(0x7f, float:1.78E-43)
            r0 = r0 & r1
            r6 = r0
            r0 = 7
            r4 = r0
        L12:
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = 32
            if (r0 >= r1) goto L41
            r0 = r5
            int r0 = r0.read()
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L3d
            r0 = r6
            r1 = r7
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r2 = r4
            int r1 = r1 << r2
            r0 = r0 | r1
            r6 = r0
            r0 = r7
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L37
            r0 = r6
            return r0
        L37:
            int r4 = r4 + 7
            goto L12
        L3d:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        L41:
            r0 = r7
            r1 = 64
            if (r0 >= r1) goto L65
            r0 = r5
            int r0 = r0.read()
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L61
            r0 = r4
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L5b
            r0 = r6
            return r0
        L5b:
            int r7 = r7 + 7
            goto L41
        L61:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        L65:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.malformedVarint()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.CodedInputStream.readRawVarint32(int, java.io.InputStream):int");
    }

    static int readRawVarint32(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return readRawVarint32(read, inputStream);
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public abstract void checkLastTagWas(int i) throws InvalidProtocolBufferException;

    public final void discardUnknownFields() {
        this.shouldDiscardUnknownFields = true;
    }

    public abstract void enableAliasing(boolean z);

    public abstract int getBytesUntilLimit();

    public abstract int getLastTag();

    public abstract int getTotalBytesRead();

    public abstract boolean isAtEnd() throws IOException;

    public abstract void popLimit(int i);

    public abstract int pushLimit(int i) throws InvalidProtocolBufferException;

    public abstract boolean readBool() throws IOException;

    public abstract byte[] readByteArray() throws IOException;

    public abstract ByteBuffer readByteBuffer() throws IOException;

    public abstract ByteString readBytes() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract int readEnum() throws IOException;

    public abstract int readFixed32() throws IOException;

    public abstract long readFixed64() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract int readInt32() throws IOException;

    public abstract long readInt64() throws IOException;

    public abstract <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract byte readRawByte() throws IOException;

    public abstract byte[] readRawBytes(int i) throws IOException;

    public abstract int readRawLittleEndian32() throws IOException;

    public abstract long readRawLittleEndian64() throws IOException;

    public abstract int readRawVarint32() throws IOException;

    public abstract long readRawVarint64() throws IOException;

    abstract long readRawVarint64SlowPath() throws IOException;

    public abstract int readSFixed32() throws IOException;

    public abstract long readSFixed64() throws IOException;

    public abstract int readSInt32() throws IOException;

    public abstract long readSInt64() throws IOException;

    public abstract String readString() throws IOException;

    public abstract String readStringRequireUtf8() throws IOException;

    public abstract int readTag() throws IOException;

    public abstract int readUInt32() throws IOException;

    public abstract long readUInt64() throws IOException;

    @Deprecated
    public abstract void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException;

    public abstract void resetSizeCounter();

    public final int setRecursionLimit(int i) {
        if (i >= 0) {
            int i2 = this.recursionLimit;
            this.recursionLimit = i;
            return i2;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: ".concat(String.valueOf(i)));
    }

    public final int setSizeLimit(int i) {
        if (i >= 0) {
            int i2 = this.sizeLimit;
            this.sizeLimit = i;
            return i2;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: ".concat(String.valueOf(i)));
    }

    public final boolean shouldDiscardUnknownFields() {
        return this.shouldDiscardUnknownFields;
    }

    public abstract boolean skipField(int i) throws IOException;

    @Deprecated
    public abstract boolean skipField(int i, CodedOutputStream codedOutputStream) throws IOException;

    public abstract void skipMessage() throws IOException;

    public abstract void skipMessage(CodedOutputStream codedOutputStream) throws IOException;

    public abstract void skipRawBytes(int i) throws IOException;

    public final void unsetDiscardUnknownFields() {
        this.shouldDiscardUnknownFields = false;
    }
}
