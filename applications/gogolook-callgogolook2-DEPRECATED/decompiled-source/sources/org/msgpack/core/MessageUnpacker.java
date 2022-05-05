package org.msgpack.core;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.HashMap;
import org.msgpack.core.MessagePack;
import org.msgpack.core.buffer.MessageBuffer;
import org.msgpack.core.buffer.MessageBufferInput;
import org.msgpack.value.ImmutableValue;
import org.msgpack.value.Value;
import org.msgpack.value.ValueFactory;
import org.msgpack.value.ValueType;
import org.msgpack.value.Variable;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessageUnpacker.class */
public class MessageUnpacker implements Closeable {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final MessageBuffer EMPTY_BUFFER = MessageBuffer.wrap(new byte[0]);
    public static final String EMPTY_STRING = "";
    public final CodingErrorAction actionOnMalformedString;
    public final CodingErrorAction actionOnUnmappableString;
    public final boolean allowReadingBinaryAsString;
    public final boolean allowReadingStringAsBinary;
    public CharBuffer decodeBuffer;
    public StringBuilder decodeStringBuffer;
    public CharsetDecoder decoder;

    /* renamed from: in */
    public MessageBufferInput f33437in;
    public int nextReadPosition;
    public int position;
    public final int stringDecoderBufferSize;
    public final int stringSizeLimit;
    public long totalReadBytes;
    public MessageBuffer buffer = EMPTY_BUFFER;
    public final MessageBuffer numberBuffer = MessageBuffer.allocate(8);

    /* renamed from: org.msgpack.core.MessageUnpacker$1 */
    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessageUnpacker$1.class */
    public static /* synthetic */ class C153721 {
        public static final /* synthetic */ int[] $SwitchMap$org$msgpack$core$MessageFormat;
        public static final /* synthetic */ int[] $SwitchMap$org$msgpack$value$ValueType = new int[ValueType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x023d -> B:227:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0241 -> B:221:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0245 -> B:20:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x0249 -> B:143:0x0084). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x024d -> B:161:0x008f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0251 -> B:155:0x009a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0255 -> B:169:0x00a5). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0259 -> B:165:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x025d -> B:179:0x00bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0261 -> B:173:0x00c8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0265 -> B:189:0x00d4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0269 -> B:183:0x00e0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x026d -> B:201:0x00ec). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0271 -> B:195:0x00f8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x0275 -> B:213:0x0104). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0279 -> B:207:0x0110). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x027d -> B:225:0x011c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x0281 -> B:219:0x0128). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0285 -> B:147:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x0289 -> B:141:0x0140). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x028d -> B:159:0x014c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x0291 -> B:153:0x0158). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0295 -> B:167:0x0164). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x0299 -> B:163:0x0170). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x029d -> B:177:0x017c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x02a1 -> B:171:0x0188). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x02a5 -> B:187:0x0194). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x02a9 -> B:181:0x01a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:128:0x02ad -> B:199:0x01ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:129:0x02b1 -> B:193:0x01b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:130:0x02b5 -> B:211:0x01c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x02b9 -> B:205:0x01d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:132:0x02bd -> B:223:0x01dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:133:0x02c1 -> B:217:0x01e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x02c5 -> B:145:0x01f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:135:0x02c9 -> B:139:0x0200). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:136:0x02cd -> B:157:0x020c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:137:0x02d1 -> B:151:0x0218). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0225 -> B:191:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x0229 -> B:185:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x022d -> B:203:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0231 -> B:197:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0235 -> B:215:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0239 -> B:209:0x004c). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.NIL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.MAP.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$msgpack$value$ValueType[ValueType.EXTENSION.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            $SwitchMap$org$msgpack$core$MessageFormat = new int[MessageFormat.values().length];
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.POSFIXINT.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.NEGFIXINT.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.NIL.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXMAP.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXARRAY.ordinal()] = 6;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXSTR.ordinal()] = 7;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.INT8.ordinal()] = 8;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.UINT8.ordinal()] = 9;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.INT16.ordinal()] = 10;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.UINT16.ordinal()] = 11;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.INT32.ordinal()] = 12;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FLOAT32.ordinal()] = 14;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.INT64.ordinal()] = 15;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.UINT64.ordinal()] = 16;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FLOAT64.ordinal()] = 17;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.BIN8.ordinal()] = 18;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.STR8.ordinal()] = 19;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.BIN16.ordinal()] = 20;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.STR16.ordinal()] = 21;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.BIN32.ordinal()] = 22;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.STR32.ordinal()] = 23;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXEXT1.ordinal()] = 24;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXEXT2.ordinal()] = 25;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXEXT4.ordinal()] = 26;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXEXT8.ordinal()] = 27;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.FIXEXT16.ordinal()] = 28;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.EXT8.ordinal()] = 29;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.EXT16.ordinal()] = 30;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.EXT32.ordinal()] = 31;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.ARRAY16.ordinal()] = 32;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.ARRAY32.ordinal()] = 33;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.MAP16.ordinal()] = 34;
            } catch (NoSuchFieldError e43) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.MAP32.ordinal()] = 35;
            } catch (NoSuchFieldError e44) {
            }
            try {
                $SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.NEVER_USED.ordinal()] = 36;
            } catch (NoSuchFieldError e45) {
            }
        }
    }

    public MessageUnpacker(MessageBufferInput messageBufferInput, MessagePack.UnpackerConfig unpackerConfig) {
        this.f33437in = (MessageBufferInput) Preconditions.checkNotNull(messageBufferInput, "MessageBufferInput is null");
        this.allowReadingStringAsBinary = unpackerConfig.getAllowReadingStringAsBinary();
        this.allowReadingBinaryAsString = unpackerConfig.getAllowReadingBinaryAsString();
        this.actionOnMalformedString = unpackerConfig.getActionOnMalformedString();
        this.actionOnUnmappableString = unpackerConfig.getActionOnUnmappableString();
        this.stringSizeLimit = unpackerConfig.getStringSizeLimit();
        this.stringDecoderBufferSize = unpackerConfig.getStringDecoderBufferSize();
    }

    private String decodeStringFastPath(int i) {
        CodingErrorAction codingErrorAction = this.actionOnMalformedString;
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPLACE;
        if (codingErrorAction == codingErrorAction2 && this.actionOnUnmappableString == codingErrorAction2) {
            String str = new String(this.buffer.array(), this.buffer.arrayOffset() + this.position, i, MessagePack.UTF8);
            this.position += i;
            return str;
        }
        resetDecoder();
        ByteBuffer sliceAsByteBuffer = this.buffer.sliceAsByteBuffer();
        sliceAsByteBuffer.limit(this.position + i);
        sliceAsByteBuffer.position(this.position);
        try {
            CharBuffer decode = this.decoder.decode(sliceAsByteBuffer);
            this.position += i;
            return decode.toString();
        } catch (CharacterCodingException e) {
            throw new MessageStringCodingException(e);
        }
    }

    private MessageBuffer getNextBuffer() throws IOException {
        MessageBuffer next = this.f33437in.next();
        if (next != null) {
            this.totalReadBytes += this.buffer.size();
            return next;
        }
        throw new MessageInsufficientBufferException();
    }

    private void handleCoderError(CoderResult coderResult) throws CharacterCodingException {
        if ((coderResult.isMalformed() && this.actionOnMalformedString == CodingErrorAction.REPORT) || (coderResult.isUnmappable() && this.actionOnUnmappableString == CodingErrorAction.REPORT)) {
            coderResult.throwException();
        }
    }

    private void nextBuffer() throws IOException {
        this.buffer = getNextBuffer();
        this.position = 0;
    }

    public static MessageIntegerOverflowException overflowI16(short s) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(s));
    }

    public static MessageIntegerOverflowException overflowI32(int i) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(i));
    }

    public static MessageIntegerOverflowException overflowI64(long j) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(j));
    }

    public static MessageIntegerOverflowException overflowU16(short s) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(s & 65535));
    }

    public static MessageIntegerOverflowException overflowU32(int i) {
        return new MessageIntegerOverflowException(BigInteger.valueOf((i & Integer.MAX_VALUE) + 2147483648L));
    }

    public static MessageSizeException overflowU32Size(int i) {
        return new MessageSizeException((i & Integer.MAX_VALUE) + 2147483648L);
    }

    public static MessageIntegerOverflowException overflowU64(long j) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(j + Long.MAX_VALUE + 1).setBit(63));
    }

    public static MessageIntegerOverflowException overflowU8(byte b) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(b & 255));
    }

    private MessageBuffer prepareNumberBuffer(int i) throws IOException {
        int size = this.buffer.size();
        int i2 = this.position;
        int i3 = size - i2;
        if (i3 >= i) {
            this.nextReadPosition = i2;
            this.position = i2 + i;
            return this.buffer;
        } else if (i3 == 0) {
            this.buffer = getNextBuffer();
            this.position = i;
            this.nextReadPosition = 0;
            return this.buffer;
        } else {
            this.numberBuffer.putBytes(0, this.buffer.array(), this.buffer.arrayOffset() + this.position, i3);
            MessageBuffer nextBuffer = getNextBuffer();
            MessageBuffer messageBuffer = this.numberBuffer;
            byte[] array = nextBuffer.array();
            int arrayOffset = nextBuffer.arrayOffset();
            int i4 = i - i3;
            messageBuffer.putBytes(i3, array, arrayOffset, i4);
            this.buffer = nextBuffer;
            this.position = i4;
            this.nextReadPosition = 0;
            return this.numberBuffer;
        }
    }

    private byte readByte() throws IOException {
        int size = this.buffer.size();
        int i = this.position;
        if (size > i) {
            byte b = this.buffer.getByte(i);
            this.position++;
            return b;
        }
        nextBuffer();
        if (this.buffer.size() <= 0) {
            return readByte();
        }
        byte b2 = this.buffer.getByte(0);
        this.position = 1;
        return b2;
    }

    private double readDouble() throws IOException {
        return prepareNumberBuffer(8).getDouble(this.nextReadPosition);
    }

    private float readFloat() throws IOException {
        return prepareNumberBuffer(4).getFloat(this.nextReadPosition);
    }

    private int readInt() throws IOException {
        return prepareNumberBuffer(4).getInt(this.nextReadPosition);
    }

    private long readLong() throws IOException {
        return prepareNumberBuffer(8).getLong(this.nextReadPosition);
    }

    private int readNextLength16() throws IOException {
        return readShort() & 65535;
    }

    private int readNextLength32() throws IOException {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        throw overflowU32Size(readInt);
    }

    private int readNextLength8() throws IOException {
        return readByte() & 255;
    }

    private short readShort() throws IOException {
        return prepareNumberBuffer(2).getShort(this.nextReadPosition);
    }

    private void resetDecoder() {
        CharsetDecoder charsetDecoder = this.decoder;
        if (charsetDecoder == null) {
            this.decodeBuffer = CharBuffer.allocate(this.stringDecoderBufferSize);
            this.decoder = MessagePack.UTF8.newDecoder().onMalformedInput(this.actionOnMalformedString).onUnmappableCharacter(this.actionOnUnmappableString);
        } else {
            charsetDecoder.reset();
        }
        StringBuilder sb = this.decodeStringBuffer;
        if (sb == null) {
            this.decodeStringBuffer = new StringBuilder();
        } else {
            sb.setLength(0);
        }
    }

    private void skipPayload(int i) throws IOException {
        while (true) {
            int size = this.buffer.size();
            int i2 = this.position;
            int i3 = size - i2;
            if (i3 >= i) {
                this.position = i2 + i;
                return;
            }
            this.position = i2 + i3;
            i -= i3;
            nextBuffer();
        }
    }

    private int tryReadBinaryHeader(byte b) throws IOException {
        switch (b) {
            case MessagePack.Code.BIN8 /* -60 */:
                return readNextLength8();
            case -59:
                return readNextLength16();
            case -58:
                return readNextLength32();
            default:
                return -1;
        }
    }

    private int tryReadStringHeader(byte b) throws IOException {
        switch (b) {
            case -39:
                return readNextLength8();
            case -38:
                return readNextLength16();
            case MessagePack.Code.STR32 /* -37 */:
                return readNextLength32();
            default:
                return -1;
        }
    }

    public static MessagePackException unexpected(String str, byte b) {
        MessageFormat valueOf = MessageFormat.valueOf(b);
        if (valueOf == MessageFormat.NEVER_USED) {
            return new MessageNeverUsedFormatException(String.format("Expected %s, but encountered 0xC1 \"NEVER_USED\" byte", str));
        }
        String name = valueOf.getValueType().name();
        return new MessageTypeException(String.format("Expected %s, but got %s (%02x)", str, name.substring(0, 1) + name.substring(1).toLowerCase(), Byte.valueOf(b)));
    }

    public static int utf8MultibyteCharacterSize(byte b) {
        return Integer.numberOfLeadingZeros(((b & 255) ^ (-1)) << 24);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.buffer = EMPTY_BUFFER;
        this.position = 0;
        this.f33437in.close();
    }

    public MessageFormat getNextFormat() throws IOException {
        if (hasNext()) {
            return MessageFormat.valueOf(this.buffer.getByte(this.position));
        }
        throw new MessageInsufficientBufferException();
    }

    public long getTotalReadBytes() {
        return this.totalReadBytes + this.position;
    }

    public boolean hasNext() throws IOException {
        while (this.buffer.size() <= this.position) {
            MessageBuffer next = this.f33437in.next();
            if (next == null) {
                return false;
            }
            this.totalReadBytes += this.buffer.size();
            this.buffer = next;
            this.position = 0;
        }
        return true;
    }

    public void readPayload(ByteBuffer byteBuffer) throws IOException {
        while (true) {
            int remaining = byteBuffer.remaining();
            int size = this.buffer.size();
            int i = this.position;
            int i2 = size - i;
            if (i2 >= remaining) {
                this.buffer.getBytes(i, remaining, byteBuffer);
                this.position += remaining;
                return;
            }
            this.buffer.getBytes(i, i2, byteBuffer);
            this.position += i2;
            nextBuffer();
        }
    }

    public void readPayload(byte[] bArr) throws IOException {
        readPayload(bArr, 0, bArr.length);
    }

    public void readPayload(byte[] bArr, int i, int i2) throws IOException {
        readPayload(ByteBuffer.wrap(bArr, i, i2));
    }

    public byte[] readPayload(int i) throws IOException {
        byte[] bArr = new byte[i];
        readPayload(bArr);
        return bArr;
    }

    public MessageBuffer readPayloadAsReference(int i) throws IOException {
        int size = this.buffer.size();
        int i2 = this.position;
        if (size - i2 >= i) {
            MessageBuffer slice = this.buffer.slice(i2, i);
            this.position += i;
            return slice;
        }
        MessageBuffer allocate = MessageBuffer.allocate(i);
        readPayload(allocate.sliceAsByteBuffer());
        return allocate;
    }

    public MessageBufferInput reset(MessageBufferInput messageBufferInput) throws IOException {
        MessageBufferInput messageBufferInput2 = (MessageBufferInput) Preconditions.checkNotNull(messageBufferInput, "MessageBufferInput is null");
        MessageBufferInput messageBufferInput3 = this.f33437in;
        this.f33437in = messageBufferInput2;
        this.buffer = EMPTY_BUFFER;
        this.position = 0;
        this.totalReadBytes = 0L;
        return messageBufferInput3;
    }

    public void skipValue() throws IOException {
        int i;
        int i2;
        int i3 = 1;
        while (i3 > 0) {
            byte readByte = readByte();
            int i4 = i3;
            switch (C153721.$SwitchMap$org$msgpack$core$MessageFormat[MessageFormat.valueOf(readByte).ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    i3 = i4 - 1;
                case 5:
                    i2 = readByte & 15;
                    i = i2 * 2;
                    break;
                case 6:
                    i = readByte & 15;
                    break;
                case 7:
                    skipPayload(readByte & 31);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 8:
                case 9:
                    skipPayload(1);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 10:
                case 11:
                    skipPayload(2);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 12:
                case 13:
                case 14:
                    skipPayload(4);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 15:
                case 16:
                case 17:
                    skipPayload(8);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 18:
                case 19:
                    skipPayload(readNextLength8());
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 20:
                case 21:
                    skipPayload(readNextLength16());
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 22:
                case 23:
                    skipPayload(readNextLength32());
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 24:
                    skipPayload(2);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 25:
                    skipPayload(3);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 26:
                    skipPayload(5);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 27:
                    skipPayload(9);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 28:
                    skipPayload(17);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 29:
                    skipPayload(readNextLength8() + 1);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 30:
                    skipPayload(readNextLength16() + 1);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 31:
                    skipPayload(readNextLength32() + 1);
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
                case 32:
                    i = readNextLength16();
                    break;
                case 33:
                    i = readNextLength32();
                    break;
                case 34:
                    i2 = readNextLength16();
                    i = i2 * 2;
                    break;
                case 35:
                    i2 = readNextLength32();
                    i = i2 * 2;
                    break;
                case 36:
                    throw new MessageNeverUsedFormatException("Encountered 0xC1 \"NEVER_USED\" byte");
                default:
                    i4 = i3;
                    continue;
                    i3 = i4 - 1;
            }
            i4 = i3 + i;
            i3 = i4 - 1;
        }
    }

    public int unpackArrayHeader() throws IOException {
        byte readByte = readByte();
        if (MessagePack.Code.isFixedArray(readByte)) {
            return readByte & 15;
        }
        if (readByte == -36) {
            return readNextLength16();
        }
        if (readByte == -35) {
            return readNextLength32();
        }
        throw unexpected("Array", readByte);
    }

    public BigInteger unpackBigInteger() throws IOException {
        byte readByte = readByte();
        if (MessagePack.Code.isFixInt(readByte)) {
            return BigInteger.valueOf(readByte);
        }
        switch (readByte) {
            case MessagePack.Code.UINT8 /* -52 */:
                return BigInteger.valueOf(readByte() & 255);
            case -51:
                return BigInteger.valueOf(readShort() & 65535);
            case -50:
                int readInt = readInt();
                return readInt < 0 ? BigInteger.valueOf((readInt & Integer.MAX_VALUE) + 2147483648L) : BigInteger.valueOf(readInt);
            case -49:
                long readLong = readLong();
                return readLong < 0 ? BigInteger.valueOf(readLong + Long.MAX_VALUE + 1).setBit(63) : BigInteger.valueOf(readLong);
            case MessagePack.Code.INT8 /* -48 */:
                return BigInteger.valueOf(readByte());
            case MessagePack.Code.INT16 /* -47 */:
                return BigInteger.valueOf(readShort());
            case MessagePack.Code.INT32 /* -46 */:
                return BigInteger.valueOf(readInt());
            case MessagePack.Code.INT64 /* -45 */:
                return BigInteger.valueOf(readLong());
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public int unpackBinaryHeader() throws IOException {
        int tryReadStringHeader;
        byte readByte = readByte();
        if (MessagePack.Code.isFixedRaw(readByte)) {
            return readByte & 31;
        }
        int tryReadBinaryHeader = tryReadBinaryHeader(readByte);
        if (tryReadBinaryHeader >= 0) {
            return tryReadBinaryHeader;
        }
        if (this.allowReadingStringAsBinary && (tryReadStringHeader = tryReadStringHeader(readByte)) >= 0) {
            return tryReadStringHeader;
        }
        throw unexpected("Binary", readByte);
    }

    public boolean unpackBoolean() throws IOException {
        byte readByte = readByte();
        if (readByte == -62) {
            return false;
        }
        if (readByte == -61) {
            return true;
        }
        throw unexpected("boolean", readByte);
    }

    public byte unpackByte() throws IOException {
        long readLong;
        byte readByte = readByte();
        if (MessagePack.Code.isFixInt(readByte)) {
            return readByte;
        }
        switch (readByte) {
            case MessagePack.Code.UINT8 /* -52 */:
                byte readByte2 = readByte();
                if (readByte2 >= 0) {
                    return readByte2;
                }
                throw overflowU8(readByte2);
            case -51:
                short readShort = readShort();
                if (readShort >= 0 && readShort <= 127) {
                    return (byte) readShort;
                }
                throw overflowU16(readShort);
            case -50:
                int readInt = readInt();
                if (readInt >= 0 && readInt <= 127) {
                    return (byte) readInt;
                }
                throw overflowU32(readInt);
            case -49:
                readLong = readLong();
                if (readLong < 0 || readLong > 127) {
                    throw overflowU64(readLong);
                }
                break;
            case MessagePack.Code.INT8 /* -48 */:
                return readByte();
            case MessagePack.Code.INT16 /* -47 */:
                short readShort2 = readShort();
                if (readShort2 >= -128 && readShort2 <= 127) {
                    return (byte) readShort2;
                }
                throw overflowI16(readShort2);
            case MessagePack.Code.INT32 /* -46 */:
                int readInt2 = readInt();
                if (readInt2 >= -128 && readInt2 <= 127) {
                    return (byte) readInt2;
                }
                throw overflowI32(readInt2);
            case MessagePack.Code.INT64 /* -45 */:
                readLong = readLong();
                if (readLong < -128 || readLong > 127) {
                    throw overflowI64(readLong);
                }
                break;
            default:
                throw unexpected("Integer", readByte);
        }
        return (byte) readLong;
    }

    public double unpackDouble() throws IOException {
        byte readByte = readByte();
        if (readByte == -54) {
            return readFloat();
        }
        if (readByte == -53) {
            return readDouble();
        }
        throw unexpected("Float", readByte);
    }

    public ExtensionTypeHeader unpackExtensionTypeHeader() throws IOException {
        byte readByte = readByte();
        switch (readByte) {
            case -57:
                MessageBuffer prepareNumberBuffer = prepareNumberBuffer(2);
                return new ExtensionTypeHeader(prepareNumberBuffer.getByte(this.nextReadPosition + 1), prepareNumberBuffer.getByte(this.nextReadPosition) & 255);
            case MessagePack.Code.EXT16 /* -56 */:
                MessageBuffer prepareNumberBuffer2 = prepareNumberBuffer(3);
                return new ExtensionTypeHeader(prepareNumberBuffer2.getByte(this.nextReadPosition + 2), prepareNumberBuffer2.getShort(this.nextReadPosition) & 65535);
            case -55:
                MessageBuffer prepareNumberBuffer3 = prepareNumberBuffer(5);
                int i = prepareNumberBuffer3.getInt(this.nextReadPosition);
                if (i >= 0) {
                    return new ExtensionTypeHeader(prepareNumberBuffer3.getByte(this.nextReadPosition + 4), i);
                }
                throw overflowU32Size(i);
            default:
                switch (readByte) {
                    case MessagePack.Code.FIXEXT1 /* -44 */:
                        return new ExtensionTypeHeader(readByte(), 1);
                    case MessagePack.Code.FIXEXT2 /* -43 */:
                        return new ExtensionTypeHeader(readByte(), 2);
                    case MessagePack.Code.FIXEXT4 /* -42 */:
                        return new ExtensionTypeHeader(readByte(), 4);
                    case MessagePack.Code.FIXEXT8 /* -41 */:
                        return new ExtensionTypeHeader(readByte(), 8);
                    case -40:
                        return new ExtensionTypeHeader(readByte(), 16);
                    default:
                        throw unexpected("Ext", readByte);
                }
        }
    }

    public float unpackFloat() throws IOException {
        byte readByte = readByte();
        if (readByte == -54) {
            return readFloat();
        }
        if (readByte == -53) {
            return (float) readDouble();
        }
        throw unexpected("Float", readByte);
    }

    public int unpackInt() throws IOException {
        byte readByte = readByte();
        if (MessagePack.Code.isFixInt(readByte)) {
            return readByte;
        }
        switch (readByte) {
            case MessagePack.Code.UINT8 /* -52 */:
                return readByte() & 255;
            case -51:
                return readShort() & 65535;
            case -50:
                int readInt = readInt();
                if (readInt >= 0) {
                    return readInt;
                }
                throw overflowU32(readInt);
            case -49:
                long readLong = readLong();
                if (readLong >= 0 && readLong <= 2147483647L) {
                    return (int) readLong;
                }
                throw overflowU64(readLong);
            case MessagePack.Code.INT8 /* -48 */:
                return readByte();
            case MessagePack.Code.INT16 /* -47 */:
                return readShort();
            case MessagePack.Code.INT32 /* -46 */:
                return readInt();
            case MessagePack.Code.INT64 /* -45 */:
                long readLong2 = readLong();
                if (readLong2 >= -2147483648L && readLong2 <= 2147483647L) {
                    return (int) readLong2;
                }
                throw overflowI64(readLong2);
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public long unpackLong() throws IOException {
        byte readByte = readByte();
        if (MessagePack.Code.isFixInt(readByte)) {
            return readByte;
        }
        switch (readByte) {
            case MessagePack.Code.UINT8 /* -52 */:
                return readByte() & 255;
            case -51:
                return readShort() & 65535;
            case -50:
                int readInt = readInt();
                return readInt < 0 ? (readInt & Integer.MAX_VALUE) + 2147483648L : readInt;
            case -49:
                long readLong = readLong();
                if (readLong >= 0) {
                    return readLong;
                }
                throw overflowU64(readLong);
            case MessagePack.Code.INT8 /* -48 */:
                return readByte();
            case MessagePack.Code.INT16 /* -47 */:
                return readShort();
            case MessagePack.Code.INT32 /* -46 */:
                return readInt();
            case MessagePack.Code.INT64 /* -45 */:
                return readLong();
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public int unpackMapHeader() throws IOException {
        byte readByte = readByte();
        if (MessagePack.Code.isFixedMap(readByte)) {
            return readByte & 15;
        }
        if (readByte == -34) {
            return readNextLength16();
        }
        if (readByte == -33) {
            return readNextLength32();
        }
        throw unexpected("Map", readByte);
    }

    public void unpackNil() throws IOException {
        byte readByte = readByte();
        if (readByte != -64) {
            throw unexpected("Nil", readByte);
        }
    }

    public int unpackRawStringHeader() throws IOException {
        int tryReadBinaryHeader;
        byte readByte = readByte();
        if (MessagePack.Code.isFixedRaw(readByte)) {
            return readByte & 31;
        }
        int tryReadStringHeader = tryReadStringHeader(readByte);
        if (tryReadStringHeader >= 0) {
            return tryReadStringHeader;
        }
        if (this.allowReadingBinaryAsString && (tryReadBinaryHeader = tryReadBinaryHeader(readByte)) >= 0) {
            return tryReadBinaryHeader;
        }
        throw unexpected("String", readByte);
    }

    public short unpackShort() throws IOException {
        int readByte;
        long readLong;
        byte readByte2 = readByte();
        if (MessagePack.Code.isFixInt(readByte2)) {
            return readByte2;
        }
        switch (readByte2) {
            case MessagePack.Code.UINT8 /* -52 */:
                readByte = readByte() & 255;
                break;
            case -51:
                short readShort = readShort();
                if (readShort >= 0) {
                    return readShort;
                }
                throw overflowU16(readShort);
            case -50:
                int readInt = readInt();
                if (readInt >= 0 && readInt <= 32767) {
                    return (short) readInt;
                }
                throw overflowU32(readInt);
            case -49:
                readLong = readLong();
                if (readLong < 0 || readLong > 32767) {
                    throw overflowU64(readLong);
                }
                readByte = (int) readLong;
                break;
            case MessagePack.Code.INT8 /* -48 */:
                readByte = readByte();
                break;
            case MessagePack.Code.INT16 /* -47 */:
                return readShort();
            case MessagePack.Code.INT32 /* -46 */:
                int readInt2 = readInt();
                if (readInt2 >= -32768 && readInt2 <= 32767) {
                    return (short) readInt2;
                }
                throw overflowI32(readInt2);
            case MessagePack.Code.INT64 /* -45 */:
                readLong = readLong();
                if (readLong < -32768 || readLong > 32767) {
                    throw overflowI64(readLong);
                }
                readByte = (int) readLong;
                break;
            default:
                throw unexpected("Integer", readByte2);
        }
        return (short) readByte;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x018a, code lost:
        r0.throwException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x019e, code lost:
        throw new org.msgpack.core.MessageFormatException("Unexpected UTF-8 multibyte sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01dd, code lost:
        return r8.decodeStringBuffer.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String unpackString() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.msgpack.core.MessageUnpacker.unpackString():java.lang.String");
    }

    public ImmutableValue unpackValue() throws IOException {
        MessageFormat nextFormat = getNextFormat();
        int i = 0;
        switch (C153721.$SwitchMap$org$msgpack$value$ValueType[nextFormat.getValueType().ordinal()]) {
            case 1:
                readByte();
                return ValueFactory.newNil();
            case 2:
                return ValueFactory.newBoolean(unpackBoolean());
            case 3:
                return C153721.$SwitchMap$org$msgpack$core$MessageFormat[nextFormat.ordinal()] != 16 ? ValueFactory.newInteger(unpackLong()) : ValueFactory.newInteger(unpackBigInteger());
            case 4:
                return ValueFactory.newFloat(unpackDouble());
            case 5:
                return ValueFactory.newString(readPayload(unpackRawStringHeader()), true);
            case 6:
                return ValueFactory.newBinary(readPayload(unpackBinaryHeader()), true);
            case 7:
                int unpackArrayHeader = unpackArrayHeader();
                Value[] valueArr = new Value[unpackArrayHeader];
                for (int i2 = 0; i2 < unpackArrayHeader; i2++) {
                    valueArr[i2] = unpackValue();
                }
                return ValueFactory.newArray(valueArr, true);
            case 8:
                int unpackMapHeader = unpackMapHeader() * 2;
                Value[] valueArr2 = new Value[unpackMapHeader];
                while (i < unpackMapHeader) {
                    valueArr2[i] = unpackValue();
                    int i3 = i + 1;
                    valueArr2[i3] = unpackValue();
                    i = i3 + 1;
                }
                return ValueFactory.newMap(valueArr2, true);
            case 9:
                ExtensionTypeHeader unpackExtensionTypeHeader = unpackExtensionTypeHeader();
                return ValueFactory.newExtension(unpackExtensionTypeHeader.getType(), readPayload(unpackExtensionTypeHeader.getLength()));
            default:
                throw new MessageNeverUsedFormatException("Unknown value type");
        }
    }

    public Variable unpackValue(Variable variable) throws IOException {
        MessageFormat nextFormat = getNextFormat();
        switch (C153721.$SwitchMap$org$msgpack$value$ValueType[nextFormat.getValueType().ordinal()]) {
            case 1:
                readByte();
                variable.setNilValue();
                return variable;
            case 2:
                variable.setBooleanValue(unpackBoolean());
                return variable;
            case 3:
                if (C153721.$SwitchMap$org$msgpack$core$MessageFormat[nextFormat.ordinal()] != 16) {
                    variable.setIntegerValue(unpackLong());
                    return variable;
                }
                variable.setIntegerValue(unpackBigInteger());
                return variable;
            case 4:
                variable.setFloatValue(unpackDouble());
                return variable;
            case 5:
                variable.setStringValue(readPayload(unpackRawStringHeader()));
                return variable;
            case 6:
                variable.setBinaryValue(readPayload(unpackBinaryHeader()));
                return variable;
            case 7:
                int unpackArrayHeader = unpackArrayHeader();
                ArrayList arrayList = new ArrayList(unpackArrayHeader);
                for (int i = 0; i < unpackArrayHeader; i++) {
                    arrayList.add(unpackValue());
                }
                variable.setArrayValue(arrayList);
                return variable;
            case 8:
                int unpackMapHeader = unpackMapHeader();
                HashMap hashMap = new HashMap();
                for (int i2 = 0; i2 < unpackMapHeader; i2++) {
                    hashMap.put(unpackValue(), unpackValue());
                }
                variable.setMapValue(hashMap);
                return variable;
            case 9:
                ExtensionTypeHeader unpackExtensionTypeHeader = unpackExtensionTypeHeader();
                variable.setExtensionValue(unpackExtensionTypeHeader.getType(), readPayload(unpackExtensionTypeHeader.getLength()));
                return variable;
            default:
                throw new MessageFormatException("Unknown value type");
        }
    }
}
