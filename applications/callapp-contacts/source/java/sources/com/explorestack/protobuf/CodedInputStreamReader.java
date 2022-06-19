package com.explorestack.protobuf;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStreamReader.class */
public final class CodedInputStreamReader implements Reader {
    private static final int FIXED32_MULTIPLE_MASK = 3;
    private static final int FIXED64_MULTIPLE_MASK = 7;
    private static final int NEXT_TAG_UNSET = 0;
    private int endGroupTag;
    private final CodedInputStream input;
    private int nextTag = 0;
    private int tag;

    /* renamed from: com.explorestack.protobuf.CodedInputStreamReader$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedInputStreamReader$1.class */
    public static /* synthetic */ class C96961 {
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

    private CodedInputStreamReader(CodedInputStream codedInputStream) {
        CodedInputStream codedInputStream2 = (CodedInputStream) Internal.checkNotNull(codedInputStream, "input");
        this.input = codedInputStream2;
        codedInputStream2.wrapper = this;
    }

    public static CodedInputStreamReader forCodedInput(CodedInputStream codedInputStream) {
        return codedInputStream.wrapper != null ? codedInputStream.wrapper : new CodedInputStreamReader(codedInputStream);
    }

    private Object readField(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        switch (C96961.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
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

    private <T> T readMessage(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int readUInt32 = this.input.readUInt32();
        if (this.input.recursionDepth < this.input.recursionLimit) {
            int pushLimit = this.input.pushLimit(readUInt32);
            T newInstance = schema.newInstance();
            this.input.recursionDepth++;
            schema.mergeFrom(newInstance, this, extensionRegistryLite);
            schema.makeImmutable(newInstance);
            this.input.checkLastTagWas(0);
            this.input.recursionDepth--;
            this.input.popLimit(pushLimit);
            return newInstance;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    private void requirePosition(int i) throws IOException {
        if (this.input.getTotalBytesRead() == i) {
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

    private void verifyPackedFixed32Length(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    private void verifyPackedFixed64Length(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    @Override // com.explorestack.protobuf.Reader
    public final int getFieldNumber() throws IOException {
        int i = this.nextTag;
        if (i != 0) {
            this.tag = i;
            this.nextTag = 0;
        } else {
            this.tag = this.input.readTag();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.endGroupTag) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.getTagFieldNumber(i2);
    }

    @Override // com.explorestack.protobuf.Reader
    public final int getTag() {
        return this.tag;
    }

    @Override // com.explorestack.protobuf.Reader
    public final boolean readBool() throws IOException {
        requireWireType(0);
        return this.input.readBool();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readBoolList(List<Boolean> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof BooleanArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Boolean.valueOf(this.input.readBool()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Boolean.valueOf(this.input.readBool()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        BooleanArrayList booleanArrayList = (BooleanArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                booleanArrayList.addBoolean(this.input.readBool());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                booleanArrayList.addBoolean(this.input.readBool());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final ByteString readBytes() throws IOException {
        requireWireType(2);
        return this.input.readBytes();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readBytesList(List<ByteString> list) throws IOException {
        int readTag;
        if (WireFormat.getTagWireType(this.tag) == 2) {
            do {
                list.add(readBytes());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag = this.input.readTag();
            } while (readTag == this.tag);
            this.nextTag = readTag;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.explorestack.protobuf.Reader
    public final double readDouble() throws IOException {
        requireWireType(1);
        return this.input.readDouble();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readDoubleList(List<Double> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof DoubleArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                do {
                    list.add(Double.valueOf(this.input.readDouble()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed64Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Double.valueOf(this.input.readDouble()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            }
        }
        DoubleArrayList doubleArrayList = (DoubleArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                doubleArrayList.addDouble(this.input.readDouble());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed64Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                doubleArrayList.addDouble(this.input.readDouble());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final int readEnum() throws IOException {
        requireWireType(0);
        return this.input.readEnum();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readEnumList(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Integer.valueOf(this.input.readEnum()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Integer.valueOf(this.input.readEnum()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                intArrayList.addInt(this.input.readEnum());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                intArrayList.addInt(this.input.readEnum());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final int readFixed32() throws IOException {
        requireWireType(5);
        return this.input.readFixed32();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readFixed32List(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 2) {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed32Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Integer.valueOf(this.input.readFixed32()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            } else if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    list.add(Integer.valueOf(this.input.readFixed32()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed32Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                intArrayList.addInt(this.input.readFixed32());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        } else if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            do {
                intArrayList.addInt(this.input.readFixed32());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final long readFixed64() throws IOException {
        requireWireType(1);
        return this.input.readFixed64();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readFixed64List(List<Long> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof LongArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                do {
                    list.add(Long.valueOf(this.input.readFixed64()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed64Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Long.valueOf(this.input.readFixed64()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            }
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                longArrayList.addLong(this.input.readFixed64());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed64Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                longArrayList.addLong(this.input.readFixed64());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final float readFloat() throws IOException {
        requireWireType(5);
        return this.input.readFloat();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readFloatList(List<Float> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof FloatArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 2) {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed32Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Float.valueOf(this.input.readFloat()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            } else if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    list.add(Float.valueOf(this.input.readFloat()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            }
        }
        FloatArrayList floatArrayList = (FloatArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed32Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                floatArrayList.addFloat(this.input.readFloat());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        } else if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            do {
                floatArrayList.addFloat(this.input.readFloat());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
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
        int readTag;
        if (WireFormat.getTagWireType(this.tag) == 3) {
            int i = this.tag;
            do {
                list.add(readGroup(schema, extensionRegistryLite));
                if (this.input.isAtEnd() || this.nextTag != 0) {
                    return;
                }
                readTag = this.input.readTag();
            } while (readTag == i);
            this.nextTag = readTag;
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
        return this.input.readInt32();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readInt32List(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Integer.valueOf(this.input.readInt32()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Integer.valueOf(this.input.readInt32()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                intArrayList.addInt(this.input.readInt32());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                intArrayList.addInt(this.input.readInt32());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final long readInt64() throws IOException {
        requireWireType(0);
        return this.input.readInt64();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readInt64List(List<Long> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof LongArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Long.valueOf(this.input.readInt64()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Long.valueOf(this.input.readInt64()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                longArrayList.addLong(this.input.readInt64());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                longArrayList.addLong(this.input.readInt64());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.Reader
    public final <K, V> void readMap(Map<K, V> map, MapEntryLite.Metadata<K, V> metadata, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        requireWireType(2);
        int pushLimit = this.input.pushLimit(this.input.readUInt32());
        K k = metadata.defaultKey;
        V v = metadata.defaultValue;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.input.isAtEnd()) {
                    break;
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
            } finally {
                this.input.popLimit(pushLimit);
            }
        }
        map.put(k, v);
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
        int readTag;
        if (WireFormat.getTagWireType(this.tag) == 2) {
            int i = this.tag;
            do {
                list.add(readMessage(schema, extensionRegistryLite));
                if (this.input.isAtEnd() || this.nextTag != 0) {
                    return;
                }
                readTag = this.input.readTag();
            } while (readTag == i);
            this.nextTag = readTag;
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
        return this.input.readSFixed32();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readSFixed32List(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 2) {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed32Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Integer.valueOf(this.input.readSFixed32()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            } else if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    list.add(Integer.valueOf(this.input.readSFixed32()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed32Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                intArrayList.addInt(this.input.readSFixed32());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        } else if (tagWireType2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            do {
                intArrayList.addInt(this.input.readSFixed32());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final long readSFixed64() throws IOException {
        requireWireType(1);
        return this.input.readSFixed64();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readSFixed64List(List<Long> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof LongArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                do {
                    list.add(Long.valueOf(this.input.readSFixed64()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int readUInt32 = this.input.readUInt32();
                verifyPackedFixed64Length(readUInt32);
                int totalBytesRead = this.input.getTotalBytesRead();
                do {
                    list.add(Long.valueOf(this.input.readSFixed64()));
                } while (this.input.getTotalBytesRead() < totalBytesRead + readUInt32);
                return;
            }
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                longArrayList.addLong(this.input.readSFixed64());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int readUInt322 = this.input.readUInt32();
            verifyPackedFixed64Length(readUInt322);
            int totalBytesRead2 = this.input.getTotalBytesRead();
            do {
                longArrayList.addLong(this.input.readSFixed64());
            } while (this.input.getTotalBytesRead() < totalBytesRead2 + readUInt322);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final int readSInt32() throws IOException {
        requireWireType(0);
        return this.input.readSInt32();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readSInt32List(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Integer.valueOf(this.input.readSInt32()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Integer.valueOf(this.input.readSInt32()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                intArrayList.addInt(this.input.readSInt32());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                intArrayList.addInt(this.input.readSInt32());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final long readSInt64() throws IOException {
        requireWireType(0);
        return this.input.readSInt64();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readSInt64List(List<Long> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof LongArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Long.valueOf(this.input.readSInt64()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Long.valueOf(this.input.readSInt64()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                longArrayList.addLong(this.input.readSInt64());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                longArrayList.addLong(this.input.readSInt64());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final String readString() throws IOException {
        requireWireType(2);
        return this.input.readString();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readStringList(List<String> list) throws IOException {
        readStringListInternal(list, false);
    }

    public final void readStringListInternal(List<String> list, boolean z) throws IOException {
        int readTag;
        int readTag2;
        if (WireFormat.getTagWireType(this.tag) == 2) {
            if (!(list instanceof LazyStringList) || z) {
                do {
                    list.add(z ? readStringRequireUtf8() : readString());
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            }
            LazyStringList lazyStringList = (LazyStringList) list;
            do {
                lazyStringList.add(readBytes());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
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
        requireWireType(2);
        return this.input.readStringRequireUtf8();
    }

    @Override // com.explorestack.protobuf.Reader
    public final int readUInt32() throws IOException {
        requireWireType(0);
        return this.input.readUInt32();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readUInt32List(List<Integer> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof IntArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Integer.valueOf(this.input.readUInt32()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Integer.valueOf(this.input.readUInt32()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                intArrayList.addInt(this.input.readUInt32());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                intArrayList.addInt(this.input.readUInt32());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final long readUInt64() throws IOException {
        requireWireType(0);
        return this.input.readUInt64();
    }

    @Override // com.explorestack.protobuf.Reader
    public final void readUInt64List(List<Long> list) throws IOException {
        int readTag;
        int readTag2;
        if (!(list instanceof LongArrayList)) {
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                do {
                    list.add(Long.valueOf(this.input.readUInt64()));
                    if (this.input.isAtEnd()) {
                        return;
                    }
                    readTag = this.input.readTag();
                } while (readTag == this.tag);
                this.nextTag = readTag;
                return;
            } else if (tagWireType != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
                do {
                    list.add(Long.valueOf(this.input.readUInt64()));
                } while (this.input.getTotalBytesRead() < totalBytesRead);
                requirePosition(totalBytesRead);
                return;
            }
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                longArrayList.addLong(this.input.readUInt64());
                if (this.input.isAtEnd()) {
                    return;
                }
                readTag2 = this.input.readTag();
            } while (readTag2 == this.tag);
            this.nextTag = readTag2;
        } else if (tagWireType2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            int totalBytesRead2 = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                longArrayList.addLong(this.input.readUInt64());
            } while (this.input.getTotalBytesRead() < totalBytesRead2);
            requirePosition(totalBytesRead2);
        }
    }

    @Override // com.explorestack.protobuf.Reader
    public final boolean shouldDiscardUnknownFields() {
        return this.input.shouldDiscardUnknownFields();
    }

    @Override // com.explorestack.protobuf.Reader
    public final boolean skipField() throws IOException {
        int i;
        if (this.input.isAtEnd() || (i = this.tag) == this.endGroupTag) {
            return false;
        }
        return this.input.skipField(i);
    }
}
