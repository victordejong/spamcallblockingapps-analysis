package org.msgpack.jackson.dataformat;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.p049io.IOContext;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.LinkedList;
import org.msgpack.core.ExtensionTypeHeader;
import org.msgpack.core.MessageFormat;
import org.msgpack.core.MessagePack;
import org.msgpack.core.MessageUnpacker;
import org.msgpack.core.Preconditions;
import org.msgpack.core.buffer.ArrayBufferInput;
import org.msgpack.core.buffer.InputStreamBufferInput;
import org.msgpack.core.buffer.MessageBufferInput;
import org.msgpack.value.ValueType;
/* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser.class */
public class MessagePackParser extends ParserMinimalBase {
    public BigInteger biValue;
    public byte[] bytesValue;
    public ObjectCodec codec;
    public long currentPosition;
    public double doubleValue;
    public MessagePackExtensionType extensionTypeValue;
    public int intValue;
    public final IOContext ioContext;
    public boolean isClosed;
    public long longValue;
    public JsonReadContext parsingContext;
    public final LinkedList<StackItem> stack;
    public String stringValue;
    public long tokenPosition;
    public Type type;
    public static final ThreadLocal<Tuple<Object, MessageUnpacker>> messageUnpackerHolder = new ThreadLocal<>();
    public static final BigInteger LONG_MIN = BigInteger.valueOf(Long.MIN_VALUE);
    public static final BigInteger LONG_MAX = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: org.msgpack.jackson.dataformat.MessagePackParser$1 */
    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser$1.class */
    public static /* synthetic */ class C153751 {
        public static final /* synthetic */ int[] $SwitchMap$org$msgpack$core$MessageFormat;
        public static final /* synthetic */ int[] $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type = new int[Type.values().length];
        public static final /* synthetic */ int[] $SwitchMap$org$msgpack$value$ValueType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dd -> B:88:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e1 -> B:84:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e5 -> B:62:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e9 -> B:58:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ed -> B:70:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f1 -> B:66:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f5 -> B:16:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f9 -> B:74:0x006c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fd -> B:86:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0101 -> B:82:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0105 -> B:60:0x008d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0109 -> B:56:0x0098). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010d -> B:68:0x00a4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0111 -> B:64:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0115 -> B:78:0x00bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0119 -> B:35:0x00c8). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.INT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.BIG_INT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[Type.EXT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            $SwitchMap$org$msgpack$value$ValueType = new int[ValueType.values().length];
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.NIL.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.MAP.ordinal()] = 8;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.EXTENSION.ordinal()] = 9;
            } catch (NoSuchFieldError e16) {
            }
            $SwitchMap$org$msgpack$core$MessageFormat = new int[MessageFormat.values().length];
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.UINT64.ordinal()] = 1;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser$StackItem.class */
    public static abstract class StackItem {
        public long numOfElements;

        public StackItem(long j) {
            this.numOfElements = j;
        }

        public void consume() {
            this.numOfElements--;
        }

        public boolean isEmpty() {
            return this.numOfElements == 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser$StackItemForArray.class */
    public static class StackItemForArray extends StackItem {
        public StackItemForArray(long j) {
            super(j);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser$StackItemForObject.class */
    public static class StackItemForObject extends StackItem {
        public StackItemForObject(long j) {
            super(j);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackParser$Type.class */
    public enum Type {
        INT,
        LONG,
        DOUBLE,
        STRING,
        BYTES,
        BIG_INT,
        EXT
    }

    public MessagePackParser(IOContext iOContext, int i, ObjectCodec objectCodec, InputStream inputStream) throws IOException {
        this(iOContext, i, new InputStreamBufferInput(inputStream), objectCodec, inputStream);
    }

    public MessagePackParser(IOContext iOContext, int i, ObjectCodec objectCodec, byte[] bArr) throws IOException {
        this(iOContext, i, new ArrayBufferInput(bArr), objectCodec, bArr);
    }

    public MessagePackParser(IOContext iOContext, int i, MessageBufferInput messageBufferInput, ObjectCodec objectCodec, Object obj) throws IOException {
        super(i);
        MessageUnpacker messageUnpacker;
        this.stack = new LinkedList<>();
        this.codec = objectCodec;
        this.ioContext = iOContext;
        this.parsingContext = JsonReadContext.createRootContext(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector(this) : null);
        Tuple<Object, MessageUnpacker> tuple = messageUnpackerHolder.get();
        if (tuple == null) {
            messageUnpacker = MessagePack.newDefaultUnpacker(messageBufferInput);
        } else {
            if (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE) || tuple.first() != obj) {
                tuple.second().reset(messageBufferInput);
            }
            messageUnpacker = tuple.second();
        }
        messageUnpackerHolder.set(new Tuple<>(obj, messageUnpacker));
    }

    private MessageUnpacker getMessageUnpacker() {
        Tuple<Object, MessageUnpacker> tuple = messageUnpackerHolder.get();
        if (tuple != null) {
            return tuple.second();
        }
        throw new IllegalStateException("messageUnpacker is null");
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
    public void _handleEOF() throws JsonParseException {
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                getMessageUnpacker().close();
            }
        } finally {
            this.isClosed = true;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return BigInteger.valueOf(this.intValue);
        }
        if (i == 4) {
            return BigInteger.valueOf(this.longValue);
        }
        if (i == 5) {
            return BigInteger.valueOf((long) this.doubleValue);
        }
        if (i == 6) {
            return this.biValue;
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException, JsonParseException {
        Preconditions.checkArgument(this.type == Type.BYTES);
        return this.bytesValue;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public ObjectCodec getCodec() {
        return this.codec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getCurrentLocation() {
        Object sourceReference = this.ioContext.getSourceReference();
        long j = this.currentPosition;
        return new JsonLocation(sourceReference, j, -1L, -1, (int) j);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getCurrentName() throws IOException {
        JsonToken jsonToken = this._currToken;
        return (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) ? this.parsingContext.getParent().getCurrentName() : this.parsingContext.getCurrentName();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return BigDecimal.valueOf(this.intValue);
        }
        if (i == 4) {
            return BigDecimal.valueOf(this.longValue);
        }
        if (i == 5) {
            return BigDecimal.valueOf(this.doubleValue);
        }
        if (i == 6) {
            return new BigDecimal(this.biValue);
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double getDoubleValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return this.intValue;
        }
        if (i == 4) {
            return this.longValue;
        }
        if (i == 5) {
            return this.doubleValue;
        }
        if (i == 6) {
            return this.biValue.doubleValue();
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object getEmbeddedObject() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 2) {
            return this.bytesValue;
        }
        if (i == 7) {
            return this.extensionTypeValue;
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float getFloatValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return this.intValue;
        }
        if (i == 4) {
            return (float) this.longValue;
        }
        if (i == 5) {
            return (float) this.doubleValue;
        }
        if (i == 6) {
            return this.biValue.floatValue();
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int getIntValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return this.intValue;
        }
        if (i == 4) {
            return (int) this.longValue;
        }
        if (i == 5) {
            return (int) this.doubleValue;
        }
        if (i == 6) {
            return this.biValue.intValue();
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long getLongValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return this.intValue;
        }
        if (i == 4) {
            return this.longValue;
        }
        if (i == 5) {
            return (long) this.doubleValue;
        }
        if (i == 6) {
            return this.biValue.longValue();
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType getNumberType() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return JsonParser.NumberType.INT;
        }
        if (i == 4) {
            return JsonParser.NumberType.LONG;
        }
        if (i == 5) {
            return JsonParser.NumberType.DOUBLE;
        }
        if (i == 6) {
            return JsonParser.NumberType.BIG_INTEGER;
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number getNumberValue() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 3) {
            return Integer.valueOf(this.intValue);
        }
        if (i == 4) {
            return Long.valueOf(this.longValue);
        }
        if (i == 5) {
            return Double.valueOf(this.doubleValue);
        }
        if (i == 6) {
            return this.biValue;
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonStreamContext getParsingContext() {
        return this.parsingContext;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public String getText() throws IOException, JsonParseException {
        int i = C153751.$SwitchMap$org$msgpack$jackson$dataformat$MessagePackParser$Type[this.type.ordinal()];
        if (i == 1) {
            return this.stringValue;
        }
        if (i == 2) {
            return new String(this.bytesValue, MessagePack.UTF8);
        }
        throw new IllegalStateException("Invalid type=" + this.type);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public char[] getTextCharacters() throws IOException, JsonParseException {
        return getText().toCharArray();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextLength() throws IOException, JsonParseException {
        return getText().length();
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public int getTextOffset() throws IOException, JsonParseException {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation getTokenLocation() {
        Object sourceReference = this.ioContext.getSourceReference();
        long j = this.tokenPosition;
        return new JsonLocation(sourceReference, j, -1L, -1, (int) j);
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean hasTextCharacters() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this.isClosed;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public JsonToken nextToken() throws IOException, JsonParseException {
        JsonToken jsonToken;
        Object obj;
        MessageUnpacker messageUnpacker = getMessageUnpacker();
        this.tokenPosition = messageUnpacker.getTotalReadBytes();
        if ((this.parsingContext.inObject() || this.parsingContext.inArray()) && this.stack.getFirst().isEmpty()) {
            this.stack.pop();
            this._currToken = this.parsingContext.inObject() ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            this.parsingContext = this.parsingContext.getParent();
            return this._currToken;
        }
        StackItem stackItem = null;
        if (!messageUnpacker.hasNext()) {
            return null;
        }
        MessageFormat nextFormat = messageUnpacker.getNextFormat();
        switch (C153751.$SwitchMap$org$msgpack$value$ValueType[messageUnpacker.getNextFormat().getValueType().ordinal()]) {
            case 1:
                messageUnpacker.unpackNil();
                jsonToken = JsonToken.VALUE_NULL;
                break;
            case 2:
                boolean unpackBoolean = messageUnpacker.unpackBoolean();
                if (!this.parsingContext.inObject() || this._currToken == JsonToken.FIELD_NAME) {
                    if (!unpackBoolean) {
                        jsonToken = JsonToken.VALUE_FALSE;
                        break;
                    } else {
                        jsonToken = JsonToken.VALUE_TRUE;
                        break;
                    }
                } else {
                    this.parsingContext.setCurrentName(Boolean.toString(unpackBoolean));
                    jsonToken = JsonToken.FIELD_NAME;
                    break;
                }
                break;
            case 3:
                if (C153751.$SwitchMap$org$msgpack$core$MessageFormat[nextFormat.ordinal()] != 1) {
                    long unpackLong = messageUnpacker.unpackLong();
                    if (-2147483648L > unpackLong || unpackLong > 2147483647L) {
                        this.type = Type.LONG;
                        this.longValue = unpackLong;
                        obj = Long.valueOf(unpackLong);
                    } else {
                        this.type = Type.INT;
                        int i = (int) unpackLong;
                        this.intValue = i;
                        obj = Integer.valueOf(i);
                    }
                } else {
                    BigInteger unpackBigInteger = messageUnpacker.unpackBigInteger();
                    if (unpackBigInteger.compareTo(LONG_MIN) < 0 || unpackBigInteger.compareTo(LONG_MAX) > 0) {
                        this.type = Type.BIG_INT;
                        this.biValue = unpackBigInteger;
                        obj = this.biValue;
                    } else {
                        this.type = Type.LONG;
                        this.longValue = unpackBigInteger.longValue();
                        obj = Long.valueOf(this.longValue);
                    }
                }
                if (this.parsingContext.inObject() && this._currToken != JsonToken.FIELD_NAME) {
                    this.parsingContext.setCurrentName(String.valueOf(obj));
                    jsonToken = JsonToken.FIELD_NAME;
                    break;
                } else {
                    jsonToken = JsonToken.VALUE_NUMBER_INT;
                    break;
                }
                break;
            case 4:
                this.type = Type.DOUBLE;
                this.doubleValue = messageUnpacker.unpackDouble();
                if (this.parsingContext.inObject() && this._currToken != JsonToken.FIELD_NAME) {
                    this.parsingContext.setCurrentName(String.valueOf(this.doubleValue));
                    jsonToken = JsonToken.FIELD_NAME;
                    break;
                } else {
                    jsonToken = JsonToken.VALUE_NUMBER_FLOAT;
                    break;
                }
            case 5:
                this.type = Type.STRING;
                this.stringValue = messageUnpacker.unpackString();
                if (this.parsingContext.inObject() && this._currToken != JsonToken.FIELD_NAME) {
                    this.parsingContext.setCurrentName(this.stringValue);
                    jsonToken = JsonToken.FIELD_NAME;
                    break;
                } else {
                    jsonToken = JsonToken.VALUE_STRING;
                    break;
                }
                break;
            case 6:
                this.type = Type.BYTES;
                this.bytesValue = messageUnpacker.readPayload(messageUnpacker.unpackBinaryHeader());
                if (this.parsingContext.inObject() && this._currToken != JsonToken.FIELD_NAME) {
                    this.parsingContext.setCurrentName(new String(this.bytesValue, MessagePack.UTF8));
                    jsonToken = JsonToken.FIELD_NAME;
                    break;
                } else {
                    jsonToken = JsonToken.VALUE_EMBEDDED_OBJECT;
                    break;
                }
            case 7:
                stackItem = new StackItemForArray(messageUnpacker.unpackArrayHeader());
                jsonToken = null;
                break;
            case 8:
                stackItem = new StackItemForObject(messageUnpacker.unpackMapHeader());
                jsonToken = null;
                break;
            case 9:
                this.type = Type.EXT;
                ExtensionTypeHeader unpackExtensionTypeHeader = messageUnpacker.unpackExtensionTypeHeader();
                this.extensionTypeValue = new MessagePackExtensionType(unpackExtensionTypeHeader.getType(), messageUnpacker.readPayload(unpackExtensionTypeHeader.getLength()));
                jsonToken = JsonToken.VALUE_EMBEDDED_OBJECT;
                break;
            default:
                throw new IllegalStateException("Shouldn't reach here");
        }
        this.currentPosition = messageUnpacker.getTotalReadBytes();
        if ((this.parsingContext.inObject() && jsonToken != JsonToken.FIELD_NAME) || this.parsingContext.inArray()) {
            this.stack.getFirst().consume();
        }
        JsonToken jsonToken2 = jsonToken;
        if (stackItem != null) {
            this.stack.push(stackItem);
            if (stackItem instanceof StackItemForArray) {
                jsonToken2 = JsonToken.START_ARRAY;
                this.parsingContext = this.parsingContext.createChildArrayContext(-1, -1);
            } else {
                jsonToken2 = jsonToken;
                if (stackItem instanceof StackItemForObject) {
                    jsonToken2 = JsonToken.START_OBJECT;
                    this.parsingContext = this.parsingContext.createChildObjectContext(-1, -1);
                }
            }
        }
        this._currToken = jsonToken2;
        return jsonToken2;
    }

    @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
    public void overrideCurrentName(String str) {
        try {
            if (!(this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY)) {
                this.parsingContext.setCurrentName(str);
                return;
            }
            this.parsingContext.getParent().setCurrentName(str);
        } catch (JsonProcessingException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void setCodec(ObjectCodec objectCodec) {
        this.codec = objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return null;
    }
}
