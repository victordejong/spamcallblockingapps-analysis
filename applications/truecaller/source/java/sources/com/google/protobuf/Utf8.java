package com.google.protobuf;

import io.agora.rtc.Constants;
import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/Utf8.class */
public final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    public static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor;

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/Utf8$DecodeUtil.class */
    public static class DecodeUtil {
        private DecodeUtil() {
        }

        public static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b2) || (((b2 + 112) + (b << 28)) >> 30) != 0 || isNotTrailingByte(b3) || isNotTrailingByte(b4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int trailingByteValue = ((b & 7) << 18) | (trailingByteValue(b2) << 12) | (trailingByteValue(b3) << 6) | trailingByteValue(b4);
            cArr[i] = highSurrogate(trailingByteValue);
            cArr[i + 1] = lowSurrogate(trailingByteValue);
        }

        public static void handleOneByte(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        public static void handleThreeBytes(byte b, byte b2, byte b3, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || isNotTrailingByte(b3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | (trailingByteValue(b2) << 6) | trailingByteValue(b3));
        }

        public static void handleTwoBytes(byte b, byte b2, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (b < -62 || isNotTrailingByte(b2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 31) << 6) | trailingByteValue(b2));
        }

        private static char highSurrogate(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b) {
            return b > -65;
        }

        public static boolean isOneByte(byte b) {
            return b >= 0;
        }

        public static boolean isThreeBytes(byte b) {
            return b < -16;
        }

        public static boolean isTwoBytes(byte b) {
            return b < -32;
        }

        private static char lowSurrogate(int i) {
            return (char) ((i & 1023) + 56320);
        }

        private static int trailingByteValue(byte b) {
            return b & 63;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/Utf8$Processor.class */
    public static abstract class Processor {
        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            int estimateConsecutiveAscii = Utf8.estimateConsecutiveAscii(byteBuffer, i, i2) + i;
            while (estimateConsecutiveAscii < i2) {
                int i3 = estimateConsecutiveAscii + 1;
                byte b = byteBuffer.get(estimateConsecutiveAscii);
                estimateConsecutiveAscii = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i3 + 1;
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(byteBuffer, b, i3, i2 - i3);
                        }
                        int i4 = i3 + 1;
                        byte b2 = byteBuffer.get(i3);
                        if (b2 > -65) {
                            return -1;
                        }
                        if (b == -32 && b2 < -96) {
                            return -1;
                        }
                        if ((b == -19 && b2 >= -96) || byteBuffer.get(i4) > -65) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i4 + 1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.incompleteStateFor(byteBuffer, b, i3, i2 - i3);
                    } else {
                        int i5 = i3 + 1;
                        byte b3 = byteBuffer.get(i3);
                        if (b3 > -65 || (((b3 + 112) + (b << 28)) >> 30) != 0) {
                            return -1;
                        }
                        int i6 = i5 + 1;
                        if (byteBuffer.get(i5) > -65) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i6 + 1;
                        if (byteBuffer.get(i6) > -65) {
                            return -1;
                        }
                    }
                }
            }
            return 0;
        }

        public final String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
            }
            return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i, i2) : decodeUtf8Default(byteBuffer, i, i2);
        }

        public abstract String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        public final String decodeUtf8Default(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = byteBuffer.get(i);
                    if (!DecodeUtil.isOneByte(b)) {
                        break;
                    }
                    i++;
                    DecodeUtil.handleOneByte(b, cArr, i4);
                    i4++;
                }
                int i5 = i4;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    byte b2 = byteBuffer.get(i6);
                    if (DecodeUtil.isOneByte(b2)) {
                        DecodeUtil.handleOneByte(b2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte b3 = byteBuffer.get(i6);
                            if (!DecodeUtil.isOneByte(b3)) {
                                break;
                            }
                            i6++;
                            DecodeUtil.handleOneByte(b3, cArr, i7);
                            i7++;
                        }
                    } else if (DecodeUtil.isTwoBytes(b2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        DecodeUtil.handleTwoBytes(b2, byteBuffer.get(i8), cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (DecodeUtil.isThreeBytes(b2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        DecodeUtil.handleThreeBytes(b2, byteBuffer.get(i8), byteBuffer.get(i9), cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        byte b4 = byteBuffer.get(i8);
                        int i11 = i10 + 1;
                        DecodeUtil.handleFourBytes(b2, b4, byteBuffer.get(i10), byteBuffer.get(i11), cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        public abstract String decodeUtf8Direct(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException;

        public abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2);

        public final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        public final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
            int i;
            int length = charSequence.length();
            int position = byteBuffer.position();
            int i2 = 0;
            while (i2 < length) {
                i = position;
                try {
                    char charAt = charSequence.charAt(i2);
                    if (charAt >= 128) {
                        break;
                    }
                    byteBuffer.put(position + i2, (byte) charAt);
                    i2++;
                } catch (IndexOutOfBoundsException e) {
                    i2 = i2;
                    int position2 = byteBuffer.position();
                    int max = Math.max(i2, (i - byteBuffer.position()) + 1);
                    StringBuilder m8728C = C22128a.m8728C("Failed writing ");
                    m8728C.append(charSequence.charAt(i2));
                    m8728C.append(" at index ");
                    m8728C.append(max + position2);
                    throw new ArrayIndexOutOfBoundsException(m8728C.toString());
                }
            }
            if (i2 == length) {
                byteBuffer.position(position + i2);
                return;
            }
            int i3 = position + i2;
            while (i2 < length) {
                char charAt2 = charSequence.charAt(i2);
                if (charAt2 < 128) {
                    byteBuffer.put(i3, (byte) charAt2);
                } else if (charAt2 < 2048) {
                    int i4 = i3 + 1;
                    try {
                        byteBuffer.put(i3, (byte) ((charAt2 >>> 6) | 192));
                        byteBuffer.put(i4, (byte) ((charAt2 & '?') | 128));
                        i3 = i4;
                    } catch (IndexOutOfBoundsException e2) {
                        i = i4;
                        int position22 = byteBuffer.position();
                        int max2 = Math.max(i2, (i - byteBuffer.position()) + 1);
                        StringBuilder m8728C2 = C22128a.m8728C("Failed writing ");
                        m8728C2.append(charSequence.charAt(i2));
                        m8728C2.append(" at index ");
                        m8728C2.append(max2 + position22);
                        throw new ArrayIndexOutOfBoundsException(m8728C2.toString());
                    }
                } else if (charAt2 >= 55296 && 57343 >= charAt2) {
                    int i5 = i2 + 1;
                    if (i5 != length) {
                        int i6 = i3;
                        try {
                            char charAt3 = charSequence.charAt(i5);
                            int i7 = i3;
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int i8 = i3;
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i9 = i3 + 1;
                                i6 = i9;
                                try {
                                    byteBuffer.put(i3, (byte) ((codePoint >>> 18) | 240));
                                    int i10 = i9 + 1;
                                    byteBuffer.put(i9, (byte) (((codePoint >>> 12) & 63) | 128));
                                    i3 = i10 + 1;
                                    byteBuffer.put(i10, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(i3, (byte) ((codePoint & 63) | 128));
                                    i2 = i5;
                                } catch (IndexOutOfBoundsException e3) {
                                    i = i6;
                                    i2 = i5;
                                    int position222 = byteBuffer.position();
                                    int max22 = Math.max(i2, (i - byteBuffer.position()) + 1);
                                    StringBuilder m8728C22 = C22128a.m8728C("Failed writing ");
                                    m8728C22.append(charSequence.charAt(i2));
                                    m8728C22.append(" at index ");
                                    m8728C22.append(max22 + position222);
                                    throw new ArrayIndexOutOfBoundsException(m8728C22.toString());
                                }
                            } else {
                                i2 = i5;
                            }
                        } catch (IndexOutOfBoundsException e4) {
                        }
                    }
                    int i11 = i3;
                    UnpairedSurrogateException unpairedSurrogateException = new UnpairedSurrogateException(i2, length);
                    int i12 = i3;
                    throw unpairedSurrogateException;
                } else {
                    int i13 = i3 + 1;
                    byteBuffer.put(i3, (byte) ((charAt2 >>> '\f') | 224));
                    i3 = i13 + 1;
                    byteBuffer.put(i13, (byte) (((charAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(i3, (byte) ((charAt2 & '?') | 128));
                }
                i2++;
                i3++;
            }
            byteBuffer.position(i3);
        }

        public abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        public final boolean isValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            boolean z = false;
            if (partialIsValidUtf8(0, byteBuffer, i, i2) == 0) {
                z = true;
            }
            return z;
        }

        public final boolean isValidUtf8(byte[] bArr, int i, int i2) {
            boolean z = false;
            if (partialIsValidUtf8(0, bArr, i, i2) == 0) {
                z = true;
            }
            return z;
        }

        public final int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i, byteBuffer, i2, i3) : partialIsValidUtf8Default(i, byteBuffer, i2, i3);
            }
            int arrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i, byteBuffer.array(), i2 + arrayOffset, arrayOffset + i3);
        }

        public abstract int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3);

        public final int partialIsValidUtf8Default(int i, ByteBuffer byteBuffer, int i2, int i3) {
            byte b;
            int i4;
            int i5 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (byteBuffer.get(i2) > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    int i6 = i2;
                    if (b3 == 0) {
                        i6 = i2 + 1;
                        b4 = byteBuffer.get(i2);
                        if (i6 >= i3) {
                            return Utf8.incompleteStateFor(b2, b4);
                        }
                    }
                    if (b4 > -65) {
                        return -1;
                    }
                    if (b2 == -32 && b4 < -96) {
                        return -1;
                    }
                    if (b2 == -19 && b4 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (byteBuffer.get(i6) > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        int i7 = i2 + 1;
                        b5 = byteBuffer.get(i2);
                        if (i7 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5);
                        }
                        i2 = i7;
                        b = 0;
                    } else {
                        b = (byte) (i >> 16);
                    }
                    byte b6 = b;
                    int i8 = i2;
                    if (b == 0) {
                        i8 = i2 + 1;
                        b6 = byteBuffer.get(i2);
                        if (i8 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5, b6);
                        }
                    }
                    if (b5 > -65 || (((b5 + 112) + (b2 << 28)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (byteBuffer.get(i8) > -65) {
                        return -1;
                    }
                }
                i5 = i4;
            }
            return partialIsValidUtf8(byteBuffer, i5, i3);
        }

        public abstract int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super(C22128a.m8595m2("Unpaired surrogate at index ", i, " of ", i2));
        }
    }

    static {
        processor = (!UnsafeProcessor.isAvailable() || Android.isOnAndroidDevice()) ? new SafeProcessor() : new UnsafeProcessor();
    }

    private Utf8() {
    }

    public static String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(byteBuffer, i, i2);
    }

    public static String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bArr, i, i2);
    }

    public static int encode(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return processor.encodeUtf8(charSequence, bArr, i, i2);
    }

    public static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    public static int encodedLength(CharSequence charSequence) {
        int i;
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            i = i3;
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i = i3 + encodedLengthGeneral(charSequence, i2);
                    break;
                }
                i3 += (Constants.ERR_WATERMARKR_INFO - charAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder m8728C = C22128a.m8728C("UTF-8 length does not fit in int: ");
        m8728C.append(i + 4294967296L);
        throw new IllegalArgumentException(m8728C.toString());
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i3 += (Constants.ERR_WATERMARKR_INFO - charAt) >>> 31;
                i2 = i;
            } else {
                int i4 = i3 + 2;
                i3 = i4;
                i2 = i;
                if (55296 <= charAt) {
                    i3 = i4;
                    i2 = i;
                    if (charAt > 57343) {
                        continue;
                    } else if (Character.codePointAt(charSequence, i) < 65536) {
                        throw new UnpairedSurrogateException(i, length);
                    } else {
                        i2 = i + 1;
                        i3 = i4;
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 7 && (byteBuffer.getLong(i3) & ASCII_MASK_LONG) == 0) {
            i3 += 8;
        }
        return i3 - i;
    }

    public static int incompleteStateFor(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    public static int incompleteStateFor(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    public static int incompleteStateFor(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static int incompleteStateFor(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == 1) {
                return incompleteStateFor(i, byteBuffer.get(i2));
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return incompleteStateFor(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        return incompleteStateFor(i);
    }

    public static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                return incompleteStateFor(b, bArr[i]);
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return incompleteStateFor(b, bArr[i], bArr[i + 1]);
        }
        return incompleteStateFor(b);
    }

    public static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    public static boolean isValidUtf8(byte[] bArr, int i, int i2) {
        return processor.isValidUtf8(bArr, i, i2);
    }

    public static int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return processor.partialIsValidUtf8(i, byteBuffer, i2, i3);
    }

    public static int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
        return processor.partialIsValidUtf8(i, bArr, i2, i3);
    }
}
