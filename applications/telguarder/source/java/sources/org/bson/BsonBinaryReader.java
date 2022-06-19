package org.bson;

import java.nio.ByteBuffer;
import org.bson.AbstractBsonReader;
import org.bson.assertions.Assertions;
import org.bson.p028io.BsonInput;
import org.bson.p028io.BsonInputMark;
import org.bson.p028io.ByteBufferBsonInput;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BsonBinaryReader.class */
public class BsonBinaryReader extends AbstractBsonReader {
    private final BsonInput bsonInput;
    private Mark mark;

    /* renamed from: org.bson.BsonBinaryReader$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/BsonBinaryReader$1.class */
    public static /* synthetic */ class C25271 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonContextType;
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x012b -> B:80:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x012f -> B:98:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0133 -> B:92:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0137 -> B:110:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x013b -> B:104:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x013f -> B:122:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0143 -> B:116:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0147 -> B:84:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x014b -> B:78:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x014f -> B:96:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0153 -> B:90:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0157 -> B:108:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x015b -> B:102:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x015f -> B:120:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0163 -> B:114:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0167 -> B:82:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x016b -> B:76:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x016f -> B:94:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0173 -> B:88:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0177 -> B:106:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x017b -> B:44:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x017f -> B:118:0x0114). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0183 -> B:112:0x011f). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BINARY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DATE_TIME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOCUMENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOUBLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DECIMAL128.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MAX_KEY.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MIN_KEY.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.NULL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.OBJECT_ID.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.REGULAR_EXPRESSION.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.SYMBOL.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.TIMESTAMP.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.UNDEFINED.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DB_POINTER.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            int[] iArr2 = new int[BsonContextType.values().length];
            $SwitchMap$org$bson$BsonContextType = iArr2;
            try {
                iArr2[BsonContextType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.DOCUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.SCOPE_DOCUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e24) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/BsonBinaryReader$Context.class */
    public class Context extends AbstractBsonReader.Context {
        private final int size;
        private final int startPosition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Context(Context context, BsonContextType bsonContextType, int i, int i2) {
            super(context, bsonContextType);
            BsonBinaryReader.this = r6;
            this.startPosition = i;
            this.size = i2;
        }

        @Override // org.bson.AbstractBsonReader.Context
        public Context getParentContext() {
            return (Context) super.getParentContext();
        }

        Context popContext(int i) {
            int i2 = i - this.startPosition;
            if (i2 == this.size) {
                return getParentContext();
            }
            throw new BsonSerializationException(String.format("Expected size to be %d, not %d.", Integer.valueOf(this.size), Integer.valueOf(i2)));
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/BsonBinaryReader$Mark.class */
    public class Mark extends AbstractBsonReader.Mark {
        private final BsonInputMark bsonInputMark;
        private final int size;
        private final int startPosition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Mark() {
            super();
            BsonBinaryReader.this = r5;
            this.startPosition = r5.getContext().startPosition;
            this.size = r5.getContext().size;
            this.bsonInputMark = r5.bsonInput.getMark(Integer.MAX_VALUE);
        }

        @Override // org.bson.AbstractBsonReader.Mark, org.bson.BsonReaderMark
        public void reset() {
            super.reset();
            this.bsonInputMark.reset();
            BsonBinaryReader bsonBinaryReader = BsonBinaryReader.this;
            bsonBinaryReader.setContext(new Context((Context) getParentContext(), getContextType(), this.startPosition, this.size));
        }
    }

    public BsonBinaryReader(ByteBuffer byteBuffer) {
        this(new ByteBufferBsonInput(new ByteBufNIO((ByteBuffer) Assertions.notNull("byteBuffer", byteBuffer))));
    }

    public BsonBinaryReader(BsonInput bsonInput) {
        if (bsonInput != null) {
            this.bsonInput = bsonInput;
            setContext(new Context(null, BsonContextType.TOP_LEVEL, 0, 0));
            return;
        }
        throw new IllegalArgumentException("bsonInput is null");
    }

    private int readSize() {
        int readInt32 = this.bsonInput.readInt32();
        if (readInt32 >= 0) {
            return readInt32;
        }
        throw new BsonSerializationException(String.format("Size %s is not valid because it is negative.", Integer.valueOf(readInt32)));
    }

    @Override // org.bson.AbstractBsonReader, org.bson.BsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
    }

    @Override // org.bson.AbstractBsonReader
    protected int doPeekBinarySize() {
        mark();
        int readSize = readSize();
        reset();
        return readSize;
    }

    @Override // org.bson.AbstractBsonReader
    protected byte doPeekBinarySubType() {
        mark();
        readSize();
        byte readByte = this.bsonInput.readByte();
        reset();
        return readByte;
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonBinary doReadBinaryData() {
        int readSize = readSize();
        byte readByte = this.bsonInput.readByte();
        int i = readSize;
        if (readByte == BsonBinarySubType.OLD_BINARY.getValue()) {
            if (this.bsonInput.readInt32() != readSize - 4) {
                throw new BsonSerializationException("Binary sub type OldBinary has inconsistent sizes");
            }
            i = readSize - 4;
        }
        byte[] bArr = new byte[i];
        this.bsonInput.readBytes(bArr);
        return new BsonBinary(readByte, bArr);
    }

    @Override // org.bson.AbstractBsonReader
    protected boolean doReadBoolean() {
        byte readByte = this.bsonInput.readByte();
        boolean z = false;
        if (readByte == 0 || readByte == 1) {
            if (readByte == 1) {
                z = true;
            }
            return z;
        }
        throw new BsonSerializationException(String.format("Expected a boolean value but found %d", Byte.valueOf(readByte)));
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonDbPointer doReadDBPointer() {
        return new BsonDbPointer(this.bsonInput.readString(), this.bsonInput.readObjectId());
    }

    @Override // org.bson.AbstractBsonReader
    protected long doReadDateTime() {
        return this.bsonInput.readInt64();
    }

    @Override // org.bson.AbstractBsonReader
    public Decimal128 doReadDecimal128() {
        return Decimal128.fromIEEE754BIDEncoding(this.bsonInput.readInt64(), this.bsonInput.readInt64());
    }

    @Override // org.bson.AbstractBsonReader
    protected double doReadDouble() {
        return this.bsonInput.readDouble();
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadEndArray() {
        setContext(getContext().popContext(this.bsonInput.getPosition()));
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadEndDocument() {
        setContext(getContext().popContext(this.bsonInput.getPosition()));
        if (getContext().getContextType() == BsonContextType.JAVASCRIPT_WITH_SCOPE) {
            setContext(getContext().popContext(this.bsonInput.getPosition()));
        }
    }

    @Override // org.bson.AbstractBsonReader
    protected int doReadInt32() {
        return this.bsonInput.readInt32();
    }

    @Override // org.bson.AbstractBsonReader
    protected long doReadInt64() {
        return this.bsonInput.readInt64();
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadJavaScript() {
        return this.bsonInput.readString();
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadJavaScriptWithScope() {
        setContext(new Context(getContext(), BsonContextType.JAVASCRIPT_WITH_SCOPE, this.bsonInput.getPosition(), readSize()));
        return this.bsonInput.readString();
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadMaxKey() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadMinKey() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadNull() {
    }

    @Override // org.bson.AbstractBsonReader
    protected ObjectId doReadObjectId() {
        return this.bsonInput.readObjectId();
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonRegularExpression doReadRegularExpression() {
        return new BsonRegularExpression(this.bsonInput.readCString(), this.bsonInput.readCString());
    }

    @Override // org.bson.AbstractBsonReader
    public void doReadStartArray() {
        setContext(new Context(getContext(), BsonContextType.ARRAY, this.bsonInput.getPosition(), readSize()));
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadStartDocument() {
        setContext(new Context(getContext(), getState() == AbstractBsonReader.State.SCOPE_DOCUMENT ? BsonContextType.SCOPE_DOCUMENT : BsonContextType.DOCUMENT, this.bsonInput.getPosition(), readSize()));
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadString() {
        return this.bsonInput.readString();
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadSymbol() {
        return this.bsonInput.readString();
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonTimestamp doReadTimestamp() {
        return new BsonTimestamp(this.bsonInput.readInt64());
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadUndefined() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doSkipName() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.bson.AbstractBsonReader
    protected void doSkipValue() {
        int i;
        if (!isClosed()) {
            int i2 = 1;
            if (getState() != AbstractBsonReader.State.VALUE) {
                throwInvalidState("skipValue", AbstractBsonReader.State.VALUE);
            }
            switch (C25271.$SwitchMap$org$bson$BsonType[getCurrentBsonType().ordinal()]) {
                case 1:
                    i = readSize();
                    i2 = i - 4;
                    break;
                case 2:
                    i2 = 1 + readSize();
                    break;
                case 3:
                    break;
                case 4:
                case 6:
                case 8:
                case 19:
                    i2 = 8;
                    break;
                case 5:
                    i = readSize();
                    i2 = i - 4;
                    break;
                case 7:
                    i2 = 4;
                    break;
                case 9:
                    i2 = 16;
                    break;
                case 10:
                    i2 = readSize();
                    break;
                case 11:
                    i = readSize();
                    i2 = i - 4;
                    break;
                case 12:
                case 13:
                case 14:
                case 20:
                    i2 = 0;
                    break;
                case 15:
                    i2 = 12;
                    break;
                case 16:
                    this.bsonInput.skipCString();
                    this.bsonInput.skipCString();
                    i2 = 0;
                    break;
                case 17:
                    i2 = readSize();
                    break;
                case 18:
                    i2 = readSize();
                    break;
                case 21:
                    i2 = readSize() + 12;
                    break;
                default:
                    throw new BSONException("Unexpected BSON type: " + getCurrentBsonType());
            }
            this.bsonInput.skip(i2);
            setState(AbstractBsonReader.State.TYPE);
            return;
        }
        throw new IllegalStateException("BSONBinaryWriter");
    }

    public BsonInput getBsonInput() {
        return this.bsonInput;
    }

    @Override // org.bson.AbstractBsonReader
    public Context getContext() {
        return (Context) super.getContext();
    }

    @Override // org.bson.BsonReader
    public BsonReaderMark getMark() {
        return new Mark();
    }

    @Override // org.bson.BsonReader
    @Deprecated
    public void mark() {
        if (this.mark == null) {
            this.mark = new Mark();
            return;
        }
        throw new BSONException("A mark already exists; it needs to be reset before creating a new one");
    }

    @Override // org.bson.AbstractBsonReader, org.bson.BsonReader
    public BsonType readBsonType() {
        if (!isClosed()) {
            if (getState() == AbstractBsonReader.State.INITIAL || getState() == AbstractBsonReader.State.DONE || getState() == AbstractBsonReader.State.SCOPE_DOCUMENT) {
                setCurrentBsonType(BsonType.DOCUMENT);
                setState(AbstractBsonReader.State.VALUE);
                return getCurrentBsonType();
            }
            if (getState() != AbstractBsonReader.State.TYPE) {
                throwInvalidState("ReadBSONType", AbstractBsonReader.State.TYPE);
            }
            byte readByte = this.bsonInput.readByte();
            BsonType findByValue = BsonType.findByValue(readByte);
            if (findByValue == null) {
                throw new BsonSerializationException(String.format("Detected unknown BSON type \"\\x%x\" for fieldname \"%s\". Are you using the latest driver version?", Byte.valueOf(readByte), this.bsonInput.readCString()));
            }
            setCurrentBsonType(findByValue);
            if (getCurrentBsonType() == BsonType.END_OF_DOCUMENT) {
                int i = C25271.$SwitchMap$org$bson$BsonContextType[getContext().getContextType().ordinal()];
                if (i == 1) {
                    setState(AbstractBsonReader.State.END_OF_ARRAY);
                    return BsonType.END_OF_DOCUMENT;
                } else if (i != 2 && i != 3) {
                    throw new BsonSerializationException(String.format("BSONType EndOfDocument is not valid when ContextType is %s.", getContext().getContextType()));
                } else {
                    setState(AbstractBsonReader.State.END_OF_DOCUMENT);
                    return BsonType.END_OF_DOCUMENT;
                }
            }
            int i2 = C25271.$SwitchMap$org$bson$BsonContextType[getContext().getContextType().ordinal()];
            if (i2 == 1) {
                this.bsonInput.skipCString();
                setState(AbstractBsonReader.State.VALUE);
            } else if (i2 != 2 && i2 != 3) {
                throw new BSONException("Unexpected ContextType.");
            } else {
                setCurrentName(this.bsonInput.readCString());
                setState(AbstractBsonReader.State.NAME);
            }
            return getCurrentBsonType();
        }
        throw new IllegalStateException("BSONBinaryWriter");
    }

    @Override // org.bson.BsonReader
    @Deprecated
    public void reset() {
        Mark mark = this.mark;
        if (mark != null) {
            mark.reset();
            this.mark = null;
            return;
        }
        throw new BSONException("trying to reset a mark before creating it");
    }
}
