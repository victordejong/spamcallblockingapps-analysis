package com.explorestack.protobuf;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryReader.class */
public abstract class BinaryReader implements Reader {
    private static final int FIXED32_MULTIPLE_MASK = 3;
    private static final int FIXED64_MULTIPLE_MASK = 7;

    /* renamed from: com.explorestack.protobuf.BinaryReader$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryReader$1.class */
    public static /* synthetic */ class C96881 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryReader$SafeHeapReader.class */
    public static final class SafeHeapReader extends BinaryReader {
        private final byte[] buffer;
        private final boolean bufferIsImmutable;
        private int endGroupTag;
        private final int initialPos;
        private int limit;
        private int pos;
        private int tag;

        public SafeHeapReader(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.bufferIsImmutable = z;
            this.buffer = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.pos = arrayOffset;
            this.initialPos = arrayOffset;
            this.limit = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private boolean isAtEnd() {
            return this.pos == this.limit;
        }

        private byte readByte() throws IOException {
            int i = this.pos;
            if (i != this.limit) {
                byte[] bArr = this.buffer;
                this.pos = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private Object readField(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            switch (C96881.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(readBool());
                case 2:
                    return readBytes();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(readEnum());
                case 5:
                    return Integer.valueOf(readFixed32());
                case 6:
                    return Long.valueOf(readFixed64());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(readInt32());
                case 9:
                    return Long.valueOf(readInt64());
                case 10:
                    return readMessage(cls, extensionRegistryLite);
                case 11:
                    return Integer.valueOf(readSFixed32());
                case 12:
                    return Long.valueOf(readSFixed64());
                case 13:
                    return Integer.valueOf(readSInt32());
                case 14:
                    return Long.valueOf(readSInt64());
                case 15:
                    return readStringRequireUtf8();
                case 16:
                    return Integer.valueOf(readUInt32());
                case 17:
                    return Long.valueOf(readUInt64());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T readGroup(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i = this.endGroupTag;
            this.endGroupTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(this.tag), 4);
            try {
                T newInstance = schema.newInstance();
                schema.mergeFrom(newInstance, this, extensionRegistryLite);
                schema.makeImmutable(newInstance);
                if (this.tag == this.endGroupTag) {
                    return newInstance;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.endGroupTag = i;
            }
        }

        private int readLittleEndian32() throws IOException {
            requireBytes(4);
            return readLittleEndian32_NoCheck();
        }

        private int readLittleEndian32_NoCheck() {
            int i = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        private long readLittleEndian64() throws IOException {
            requireBytes(8);
            return readLittleEndian64_NoCheck();
        }

        private long readLittleEndian64_NoCheck() {
            int i = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        private <T> T readMessage(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readVarint32 = readVarint32();
            requireBytes(readVarint32);
            int i = this.limit;
            int i2 = this.pos + readVarint32;
            this.limit = i2;
            try {
                T newInstance = schema.newInstance();
                schema.mergeFrom(newInstance, this, extensionRegistryLite);
                schema.makeImmutable(newInstance);
                if (this.pos == i2) {
                    return newInstance;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.limit = i;
            }
        }

        private int readVarint32() throws IOException {
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
                } else if (i3 - i4 < 9) {
                    return (int) readVarint64SlowPath();
                } else {
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
                                                    if (bArr[i15] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                    i = i11;
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
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        private long readVarint64SlowPath() throws IOException {
            byte readByte;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (readByte & Byte.MAX_VALUE) << i;
                if ((readByte() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void requireBytes(int i) throws IOException {
            if (i < 0 || i > this.limit - this.pos) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private void requirePosition(int i) throws IOException {
            if (this.pos == i) {
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void requireWireType(int i) throws IOException {
            if (WireFormat.getTagWireType(this.tag) == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        private void skipBytes(int i) throws IOException {
            requireBytes(i);
            this.pos += i;
        }

        private void skipGroup() throws IOException {
            int i = this.endGroupTag;
            this.endGroupTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(this.tag), 4);
            while (getFieldNumber() != Integer.MAX_VALUE && skipField()) {
            }
            if (this.tag == this.endGroupTag) {
                this.endGroupTag = i;
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private void skipVarint() throws IOException {
            int i = this.limit;
            int i2 = this.pos;
            if (i - i2 >= 10) {
                byte[] bArr = this.buffer;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.pos = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            skipVarintSlowPath();
        }

        private void skipVarintSlowPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void verifyPackedFixed32Length(int i) throws IOException {
            requireBytes(i);
            if ((i & 3) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private void verifyPackedFixed64Length(int i) throws IOException {
            requireBytes(i);
            if ((i & 7) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        @Override // com.explorestack.protobuf.Reader
        public final int getFieldNumber() throws IOException {
            if (isAtEnd()) {
                return Integer.MAX_VALUE;
            }
            int readVarint32 = readVarint32();
            this.tag = readVarint32;
            if (readVarint32 != this.endGroupTag) {
                return WireFormat.getTagFieldNumber(readVarint32);
            }
            return Integer.MAX_VALUE;
        }

        @Override // com.explorestack.protobuf.Reader
        public final int getTag() {
            return this.tag;
        }

        @Override // com.explorestack.protobuf.BinaryReader
        public final int getTotalBytesRead() {
            return this.pos - this.initialPos;
        }

        @Override // com.explorestack.protobuf.Reader
        public final boolean readBool() throws IOException {
            boolean z = false;
            requireWireType(0);
            if (readVarint32() != 0) {
                z = true;
            }
            return z;
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readBoolList(List<Boolean> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof BooleanArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int readVarint32 = this.pos + readVarint32();
                    while (this.pos < readVarint32) {
                        list.add(Boolean.valueOf(readVarint32() != 0));
                    }
                    requirePosition(readVarint32);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(readBool()));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            BooleanArrayList booleanArrayList = (BooleanArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readVarint322 = this.pos + readVarint32();
                while (this.pos < readVarint322) {
                    booleanArrayList.addBoolean(readVarint32() != 0);
                }
                requirePosition(readVarint322);
                return;
            }
            do {
                booleanArrayList.addBoolean(readBool());
                if (isAtEnd()) {
                    return;
                }
                i2 = this.pos;
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.explorestack.protobuf.Reader
        public final ByteString readBytes() throws IOException {
            requireWireType(2);
            int readVarint32 = readVarint32();
            if (readVarint32 == 0) {
                return ByteString.EMPTY;
            }
            requireBytes(readVarint32);
            ByteString wrap = this.bufferIsImmutable ? ByteString.wrap(this.buffer, this.pos, readVarint32) : ByteString.copyFrom(this.buffer, this.pos, readVarint32);
            this.pos += readVarint32;
            return wrap;
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readBytesList(List<ByteString> list) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) == 2) {
                do {
                    list.add(readBytes());
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.Reader
        public final double readDouble() throws IOException {
            requireWireType(1);
            return Double.longBitsToDouble(readLittleEndian64());
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readDoubleList(List<Double> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof DoubleArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed64Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Double.valueOf(Double.longBitsToDouble(readLittleEndian64_NoCheck())));
                    }
                    return;
                }
            }
            DoubleArrayList doubleArrayList = (DoubleArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    doubleArrayList.addDouble(readDouble());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = readVarint32();
                verifyPackedFixed64Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    doubleArrayList.addDouble(Double.longBitsToDouble(readLittleEndian64_NoCheck()));
                }
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readEnum() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readEnumList(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int readVarint32 = readVarint32();
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Integer.valueOf(readVarint32()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readEnum()));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readVarint322 = readVarint32();
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    intArrayList.addInt(readVarint32());
                }
                return;
            }
            do {
                intArrayList.addInt(readEnum());
                if (isAtEnd()) {
                    return;
                }
                i2 = this.pos;
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readFixed32() throws IOException {
            requireWireType(5);
            return readLittleEndian32();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed32Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Integer.valueOf(readLittleEndian32_NoCheck()));
                    }
                    return;
                } else if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Integer.valueOf(readFixed32()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int readVarint322 = readVarint32();
                verifyPackedFixed32Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    intArrayList.addInt(readLittleEndian32_NoCheck());
                }
            } else if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    intArrayList.addInt(readFixed32());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final long readFixed64() throws IOException {
            requireWireType(1);
            return readLittleEndian64();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Long.valueOf(readFixed64()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed64Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Long.valueOf(readLittleEndian64_NoCheck()));
                    }
                    return;
                }
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    longArrayList.addLong(readFixed64());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = readVarint32();
                verifyPackedFixed64Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    longArrayList.addLong(readLittleEndian64_NoCheck());
                }
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final float readFloat() throws IOException {
            requireWireType(5);
            return Float.intBitsToFloat(readLittleEndian32());
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readFloatList(List<Float> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof FloatArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed32Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Float.valueOf(Float.intBitsToFloat(readLittleEndian32_NoCheck())));
                    }
                    return;
                } else if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Float.valueOf(readFloat()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
            }
            FloatArrayList floatArrayList = (FloatArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int readVarint322 = readVarint32();
                verifyPackedFixed32Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    floatArrayList.addFloat(Float.intBitsToFloat(readLittleEndian32_NoCheck()));
                }
            } else if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    floatArrayList.addFloat(readFloat());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> T readGroup(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(3);
            return (T) readGroup(Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> T readGroupBySchemaWithCheck(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(3);
            return (T) readGroup(schema, extensionRegistryLite);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.Reader
        public final <T> void readGroupList(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) == 3) {
                int i2 = this.tag;
                do {
                    list.add(readGroup(schema, extensionRegistryLite));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == i2);
                this.pos = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> void readGroupList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            readGroupList(list, Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readInt32() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Integer.valueOf(readInt32()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = this.pos + readVarint32();
                    while (this.pos < readVarint32) {
                        list.add(Integer.valueOf(readVarint32()));
                    }
                    requirePosition(readVarint32);
                    return;
                }
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    intArrayList.addInt(readInt32());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = this.pos + readVarint32();
                while (this.pos < readVarint322) {
                    intArrayList.addInt(readVarint32());
                }
                requirePosition(readVarint322);
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final long readInt64() throws IOException {
            requireWireType(0);
            return readVarint64();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Long.valueOf(readInt64()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = this.pos + readVarint32();
                    while (this.pos < readVarint32) {
                        list.add(Long.valueOf(readVarint64()));
                    }
                    requirePosition(readVarint32);
                    return;
                }
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    longArrayList.addLong(readInt64());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = this.pos + readVarint32();
                while (this.pos < readVarint322) {
                    longArrayList.addLong(readVarint64());
                }
                requirePosition(readVarint322);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.Reader
        public final <K, V> void readMap(Map<K, V> map, MapEntryLite.Metadata<K, V> metadata, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            int readVarint32 = readVarint32();
            requireBytes(readVarint32);
            int i = this.limit;
            this.limit = this.pos + readVarint32;
            try {
                K k = metadata.defaultKey;
                V v = metadata.defaultValue;
                while (true) {
                    int fieldNumber = getFieldNumber();
                    if (fieldNumber == Integer.MAX_VALUE) {
                        map.put(k, v);
                        return;
                    } else if (fieldNumber == 1) {
                        k = readField(metadata.keyType, null, null);
                    } else if (fieldNumber != 2) {
                        try {
                            if (!skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException e) {
                            if (!skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        v = readField(metadata.valueType, metadata.defaultValue.getClass(), extensionRegistryLite);
                    }
                }
            } finally {
                this.limit = i;
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> T readMessage(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            return (T) readMessage(Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> T readMessageBySchemaWithCheck(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            return (T) readMessage(schema, extensionRegistryLite);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.Reader
        public final <T> void readMessageList(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) == 2) {
                int i2 = this.tag;
                do {
                    list.add(readMessage(schema, extensionRegistryLite));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == i2);
                this.pos = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.Reader
        public final <T> void readMessageList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            readMessageList(list, Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readSFixed32() throws IOException {
            requireWireType(5);
            return readLittleEndian32();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readSFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed32Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Integer.valueOf(readLittleEndian32_NoCheck()));
                    }
                    return;
                } else if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Integer.valueOf(readSFixed32()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int readVarint322 = readVarint32();
                verifyPackedFixed32Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    intArrayList.addInt(readLittleEndian32_NoCheck());
                }
            } else if (tagWireType2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    intArrayList.addInt(readSFixed32());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final long readSFixed64() throws IOException {
            requireWireType(1);
            return readLittleEndian64();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readSFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Long.valueOf(readSFixed64()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = readVarint32();
                    verifyPackedFixed64Length(readVarint32);
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Long.valueOf(readLittleEndian64_NoCheck()));
                    }
                    return;
                }
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    longArrayList.addLong(readSFixed64());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = readVarint32();
                verifyPackedFixed64Length(readVarint322);
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    longArrayList.addLong(readLittleEndian64_NoCheck());
                }
            }
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readSInt32() throws IOException {
            requireWireType(0);
            return CodedInputStream.decodeZigZag32(readVarint32());
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readSInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int readVarint32 = readVarint32();
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Integer.valueOf(CodedInputStream.decodeZigZag32(readVarint32())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readSInt32()));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readVarint322 = readVarint32();
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    intArrayList.addInt(CodedInputStream.decodeZigZag32(readVarint32()));
                }
                return;
            }
            do {
                intArrayList.addInt(readSInt32());
                if (isAtEnd()) {
                    return;
                }
                i2 = this.pos;
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.explorestack.protobuf.Reader
        public final long readSInt64() throws IOException {
            requireWireType(0);
            return CodedInputStream.decodeZigZag64(readVarint64());
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readSInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int readVarint32 = readVarint32();
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Long.valueOf(CodedInputStream.decodeZigZag64(readVarint64())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(readSInt64()));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readVarint322 = readVarint32();
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    longArrayList.addLong(CodedInputStream.decodeZigZag64(readVarint64()));
                }
                return;
            }
            do {
                longArrayList.addLong(readSInt64());
                if (isAtEnd()) {
                    return;
                }
                i2 = this.pos;
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.explorestack.protobuf.Reader
        public final String readString() throws IOException {
            return readStringInternal(false);
        }

        public final String readStringInternal(boolean z) throws IOException {
            requireWireType(2);
            int readVarint32 = readVarint32();
            if (readVarint32 == 0) {
                return "";
            }
            requireBytes(readVarint32);
            if (z) {
                byte[] bArr = this.buffer;
                int i = this.pos;
                if (!Utf8.isValidUtf8(bArr, i, i + readVarint32)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.buffer, this.pos, readVarint32, Internal.UTF_8);
            this.pos += readVarint32;
            return str;
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readStringList(List<String> list) throws IOException {
            readStringListInternal(list, false);
        }

        public final void readStringListInternal(List<String> list, boolean z) throws IOException {
            int i;
            int i2;
            if (WireFormat.getTagWireType(this.tag) == 2) {
                if (!(list instanceof LazyStringList) || z) {
                    do {
                        list.add(readStringInternal(z));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                LazyStringList lazyStringList = (LazyStringList) list;
                do {
                    lazyStringList.add(readBytes());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readStringListRequireUtf8(List<String> list) throws IOException {
            readStringListInternal(list, true);
        }

        @Override // com.explorestack.protobuf.Reader
        public final String readStringRequireUtf8() throws IOException {
            return readStringInternal(true);
        }

        @Override // com.explorestack.protobuf.Reader
        public final int readUInt32() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readUInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int readVarint32 = readVarint32();
                    int i3 = this.pos;
                    while (this.pos < i3 + readVarint32) {
                        list.add(Integer.valueOf(readVarint32()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readUInt32()));
                    if (isAtEnd()) {
                        return;
                    }
                    i = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int readVarint322 = readVarint32();
                int i4 = this.pos;
                while (this.pos < i4 + readVarint322) {
                    intArrayList.addInt(readVarint32());
                }
                return;
            }
            do {
                intArrayList.addInt(readUInt32());
                if (isAtEnd()) {
                    return;
                }
                i2 = this.pos;
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.explorestack.protobuf.Reader
        public final long readUInt64() throws IOException {
            requireWireType(0);
            return readVarint64();
        }

        @Override // com.explorestack.protobuf.Reader
        public final void readUInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Long.valueOf(readUInt64()));
                        if (isAtEnd()) {
                            return;
                        }
                        i = this.pos;
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                } else if (tagWireType != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int readVarint32 = this.pos + readVarint32();
                    while (this.pos < readVarint32) {
                        list.add(Long.valueOf(readVarint64()));
                    }
                    requirePosition(readVarint32);
                    return;
                }
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    longArrayList.addLong(readUInt64());
                    if (isAtEnd()) {
                        return;
                    }
                    i2 = this.pos;
                } while (readVarint32() == this.tag);
                this.pos = i2;
            } else if (tagWireType2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readVarint322 = this.pos + readVarint32();
                while (this.pos < readVarint322) {
                    longArrayList.addLong(readVarint64());
                }
                requirePosition(readVarint322);
            }
        }

        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* JADX WARN: Type inference failed for: r0v62, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
        public final long readVarint64() throws IOException {
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
                } else if (i3 - i4 < 9) {
                    return readVarint64SlowPath();
                } else {
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
                                            i5 = i11 + 1;
                                            c5 = c4 ^ (bArr[i11] << 49);
                                            if (c5 < 0) {
                                                c2 = 16256;
                                            } else {
                                                int i12 = i5 + 1;
                                                c = (c5 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                                if (c < 0) {
                                                    i5 = i12 + 1;
                                                    if (bArr[i12] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                } else {
                                                    i5 = i12;
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
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.Reader
        public final boolean skipField() throws IOException {
            int i;
            if (isAtEnd() || (i = this.tag) == this.endGroupTag) {
                return false;
            }
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipVarint();
                return true;
            } else if (tagWireType == 1) {
                skipBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipBytes(readVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipGroup();
                return true;
            } else if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                skipBytes(4);
                return true;
            }
        }
    }

    private BinaryReader() {
    }

    /* synthetic */ BinaryReader(C96881 c96881) {
        this();
    }

    public static BinaryReader newInstance(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new SafeHeapReader(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    public abstract int getTotalBytesRead();

    @Override // com.explorestack.protobuf.Reader
    public boolean shouldDiscardUnknownFields() {
        return false;
    }
}
