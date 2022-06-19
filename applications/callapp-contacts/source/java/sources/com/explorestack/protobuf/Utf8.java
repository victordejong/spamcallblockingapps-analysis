package com.explorestack.protobuf;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8.class */
public final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$DecodeUtil.class */
    public static class DecodeUtil {
        private DecodeUtil() {
        }

        public static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || isNotTrailingByte(b3) || isNotTrailingByte(b4)) {
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
            return (char) ((i & 1023) + GeneratorBase.SURR2_FIRST);
        }

        private static int trailingByteValue(byte b) {
            return b & 63;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$Processor.class */
    public static abstract class Processor {
        Processor() {
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            int estimateConsecutiveAscii = i + Utf8.estimateConsecutiveAscii(byteBuffer, i, i2);
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
                        if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
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

        final String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
            }
            return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i, i2) : decodeUtf8Default(byteBuffer, i, i2);
        }

        abstract String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        final String decodeUtf8Default(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
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
                            if (DecodeUtil.isOneByte(b3)) {
                                i6++;
                                DecodeUtil.handleOneByte(b3, cArr, i7);
                                i7++;
                            }
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

        abstract String decodeUtf8Direct(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException;

        abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2);

        final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (position2 + max));
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
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (position22 + max2));
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
                                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (position222 + max22));
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

        abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean isValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            return partialIsValidUtf8(0, byteBuffer, i, i2) == 0;
        }

        final boolean isValidUtf8(byte[] bArr, int i, int i2) {
            return partialIsValidUtf8(0, bArr, i, i2) == 0;
        }

        final int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i, byteBuffer, i2, i3) : partialIsValidUtf8Default(i, byteBuffer, i2, i3);
            }
            int arrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i, byteBuffer.array(), i2 + arrayOffset, arrayOffset + i3);
        }

        abstract int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3);

        final int partialIsValidUtf8Default(int i, ByteBuffer byteBuffer, int i2, int i3) {
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
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
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

        abstract int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3);
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$SafeProcessor.class */
    static final class SafeProcessor extends Processor {
        SafeProcessor() {
        }

        private static int partialIsValidUtf8(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i >= i2) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i, i2);
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i, int i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b = bArr[i];
                i = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62) {
                            return -1;
                        }
                        i = i3 + 1;
                        if (bArr[i3] > -65) {
                            return -1;
                        }
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b2 = bArr[i3];
                        if (b2 > -65) {
                            return -1;
                        }
                        if (b == -32 && b2 < -96) {
                            return -1;
                        }
                        if (b == -19 && b2 >= -96) {
                            return -1;
                        }
                        i = i4 + 1;
                        if (bArr[i4] > -65) {
                            return -1;
                        }
                    } else if (i3 >= i2 - 2) {
                        return Utf8.incompleteStateFor(bArr, i3, i2);
                    } else {
                        int i5 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                            return -1;
                        }
                        int i6 = i5 + 1;
                        if (bArr[i5] > -65) {
                            return -1;
                        }
                        i = i6 + 1;
                        if (bArr[i6] > -65) {
                            return -1;
                        }
                    }
                }
            }
            return 0;
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
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
                    byte b2 = bArr[i6];
                    if (DecodeUtil.isOneByte(b2)) {
                        DecodeUtil.handleOneByte(b2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte b3 = bArr[i6];
                            if (DecodeUtil.isOneByte(b3)) {
                                i6++;
                                DecodeUtil.handleOneByte(b3, cArr, i7);
                                i7++;
                            }
                        }
                    } else if (DecodeUtil.isTwoBytes(b2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        DecodeUtil.handleTwoBytes(b2, bArr[i8], cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (DecodeUtil.isThreeBytes(b2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        DecodeUtil.handleThreeBytes(b2, bArr[i8], bArr[i9], cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        byte b4 = bArr[i8];
                        int i11 = i10 + 1;
                        DecodeUtil.handleFourBytes(b2, b4, bArr[i10], bArr[i11], cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final String decodeUtf8Direct(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            return decodeUtf8Default(byteBuffer, i, i2);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5;
            char charAt;
            int length = charSequence.length();
            int i6 = i2 + i;
            int i7 = 0;
            while (i7 < length && (i5 = i7 + i) < i6 && (charAt = charSequence.charAt(i7)) < 128) {
                bArr[i5] = (byte) charAt;
                i7++;
            }
            if (i7 == length) {
                return i + length;
            }
            int i8 = i + i7;
            int i9 = i7;
            while (i9 < length) {
                char charAt2 = charSequence.charAt(i9);
                if (charAt2 < 128 && i8 < i6) {
                    i3 = i8 + 1;
                    bArr[i8] = (byte) charAt2;
                } else if (charAt2 < 2048 && i8 <= i6 - 2) {
                    int i10 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                    i3 = i10 + 1;
                    bArr[i10] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i8 > i6 - 3) {
                    if (i8 > i6 - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i4 = i9 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                            throw new UnpairedSurrogateException(i9, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i8);
                    }
                    int i11 = i9 + 1;
                    if (i11 != charSequence.length()) {
                        char charAt3 = charSequence.charAt(i11);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i12 = i8 + 1;
                            bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                            int i13 = i12 + 1;
                            bArr[i12] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((codePoint >>> 6) & 63) | 128);
                            bArr[i14] = (byte) ((codePoint & 63) | 128);
                            i9 = i11;
                            i3 = i14 + 1;
                        } else {
                            i9 = i11;
                        }
                    }
                    throw new UnpairedSurrogateException(i9 - 1, length);
                } else {
                    int i15 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> '\f') | 480);
                    int i16 = i15 + 1;
                    bArr[i15] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i3 = i16 + 1;
                    bArr[i16] = (byte) ((charAt2 & '?') | 128);
                }
                i9++;
                i8 = i3;
            }
            return i8;
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
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
                    if (bArr[i2] > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    int i6 = i2;
                    if (b3 == 0) {
                        i6 = i2 + 1;
                        b4 = bArr[i2];
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
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        int i7 = i2 + 1;
                        b5 = bArr[i2];
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
                        b6 = bArr[i2];
                        if (i8 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5, b6);
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
                i5 = i4;
            }
            return partialIsValidUtf8(bArr, i5, i3);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return partialIsValidUtf8Default(i, byteBuffer, i2, i3);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$UnsafeProcessor.class */
    static final class UnsafeProcessor extends Processor {
        UnsafeProcessor() {
        }

        static boolean isAvailable() {
            return UnsafeUtil.hasUnsafeArrayOperations() && UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        private static int partialIsValidUtf8(long j, int i) {
            char c;
            int unsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(j, i);
            char c2 = j + unsafeEstimateConsecutiveAscii;
            int i2 = i - unsafeEstimateConsecutiveAscii;
            while (true) {
                int i3 = i2;
                byte b = 0;
                while (true) {
                    c = c2;
                    if (i3 <= 0) {
                        break;
                    }
                    c = c2 + 1;
                    b = UnsafeUtil.getByte(c2);
                    if (b < 0) {
                        break;
                    }
                    i3--;
                    c2 = c;
                }
                if (i3 == 0) {
                    return 0;
                }
                int i4 = i3 - 1;
                if (b < -32) {
                    if (i4 == 0) {
                        return b;
                    }
                    int i5 = i4 - 1;
                    if (b < -62) {
                        return -1;
                    }
                    c2 = 1 + c;
                    i2 = i5;
                    if (UnsafeUtil.getByte(c) > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i4 < 2) {
                        return unsafeIncompleteStateFor(c, b, i4);
                    }
                    int i6 = i4 - 2;
                    long j2 = c + 1;
                    byte b2 = UnsafeUtil.getByte(c);
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    c2 = j2 + 1;
                    i2 = i6;
                    if (UnsafeUtil.getByte(j2) > -65) {
                        return -1;
                    }
                } else if (i4 < 3) {
                    return unsafeIncompleteStateFor(c, b, i4);
                } else {
                    int i7 = i4 - 3;
                    long j3 = c + 1;
                    byte b3 = UnsafeUtil.getByte(c);
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (UnsafeUtil.getByte(j3) > -65) {
                        return -1;
                    }
                    c2 = 1 + j4;
                    i2 = i7;
                    if (UnsafeUtil.getByte(j4) > -65) {
                        return -1;
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        private static int partialIsValidUtf8(byte[] bArr, long j, int i) {
            char c;
            int unsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(bArr, j, i);
            int i2 = i - unsafeEstimateConsecutiveAscii;
            char c2 = j + unsafeEstimateConsecutiveAscii;
            while (true) {
                int i3 = i2;
                byte b = 0;
                while (true) {
                    c = c2;
                    if (i3 <= 0) {
                        break;
                    }
                    c = c2 + 1;
                    b = UnsafeUtil.getByte(bArr, (long) c2);
                    if (b < 0) {
                        break;
                    }
                    i3--;
                    c2 = c;
                }
                if (i3 == 0) {
                    return 0;
                }
                int i4 = i3 - 1;
                if (b < -32) {
                    if (i4 == 0) {
                        return b;
                    }
                    int i5 = i4 - 1;
                    if (b < -62) {
                        return -1;
                    }
                    c2 = 1 + c;
                    i2 = i5;
                    if (UnsafeUtil.getByte(bArr, (long) c) > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i4 < 2) {
                        return unsafeIncompleteStateFor(bArr, b, c, i4);
                    }
                    int i6 = i4 - 2;
                    long j2 = c + 1;
                    byte b2 = UnsafeUtil.getByte(bArr, (long) c);
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    c2 = j2 + 1;
                    i2 = i6;
                    if (UnsafeUtil.getByte(bArr, j2) > -65) {
                        return -1;
                    }
                } else if (i4 < 3) {
                    return unsafeIncompleteStateFor(bArr, b, c, i4);
                } else {
                    int i7 = i4 - 3;
                    long j3 = c + 1;
                    byte b3 = UnsafeUtil.getByte(bArr, (long) c);
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (UnsafeUtil.getByte(bArr, j3) > -65) {
                        return -1;
                    }
                    c2 = 1 + j4;
                    i2 = i7;
                    if (UnsafeUtil.getByte(bArr, j4) > -65) {
                        return -1;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Type inference failed for: r5v7 */
        private static int unsafeEstimateConsecutiveAscii(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            ?? r5 = j;
            while (i3 > 0) {
                if (UnsafeUtil.getByte(r5 == true ? 1 : 0) < 0) {
                    return i2 - i3;
                }
                i3--;
                r5 = 1 + r5;
            }
            int i4 = i - i2;
            char c = r5;
            while (i4 >= 8 && (UnsafeUtil.getLong(c == 1 ? 1 : 0) & Utf8.ASCII_MASK_LONG) == 0) {
                c += '\b';
                i4 -= 8;
            }
            return i - i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j, int i) {
            int i2 = 0;
            ?? r6 = j;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (UnsafeUtil.getByte(bArr, (long) r6) < 0) {
                    return i2;
                }
                i2++;
                r6 = 1 + r6;
            }
            return i;
        }

        private static int unsafeIncompleteStateFor(long j, int i, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(j));
                }
                if (i2 != 2) {
                    throw new AssertionError();
                }
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(j), UnsafeUtil.getByte(j + 1));
            }
            return Utf8.incompleteStateFor(i);
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i, long j, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j));
                }
                if (i2 != 2) {
                    throw new AssertionError();
                }
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j), UnsafeUtil.getByte(bArr, j + 1));
            }
            return Utf8.incompleteStateFor(i);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = UnsafeUtil.getByte(bArr, i);
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
                    byte b2 = UnsafeUtil.getByte(bArr, i6);
                    if (DecodeUtil.isOneByte(b2)) {
                        DecodeUtil.handleOneByte(b2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte b3 = UnsafeUtil.getByte(bArr, i6);
                            if (DecodeUtil.isOneByte(b3)) {
                                i6++;
                                DecodeUtil.handleOneByte(b3, cArr, i7);
                                i7++;
                            }
                        }
                    } else if (DecodeUtil.isTwoBytes(b2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        DecodeUtil.handleTwoBytes(b2, UnsafeUtil.getByte(bArr, i8), cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (DecodeUtil.isThreeBytes(b2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        DecodeUtil.handleThreeBytes(b2, UnsafeUtil.getByte(bArr, i8), UnsafeUtil.getByte(bArr, i9), cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        int i11 = i10 + 1;
                        DecodeUtil.handleFourBytes(b2, UnsafeUtil.getByte(bArr, i8), UnsafeUtil.getByte(bArr, i10), UnsafeUtil.getByte(bArr, i11), cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        @Override // com.explorestack.protobuf.Utf8.Processor
        final String decodeUtf8Direct(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            int i3;
            char c;
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                char addressOffset = UnsafeUtil.addressOffset(byteBuffer) + i;
                long j = i2 + addressOffset;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (true) {
                    i3 = i4;
                    c = addressOffset;
                    if (addressOffset >= j) {
                        break;
                    }
                    byte b = UnsafeUtil.getByte(addressOffset);
                    i3 = i4;
                    c = addressOffset;
                    if (!DecodeUtil.isOneByte(b)) {
                        break;
                    }
                    addressOffset++;
                    DecodeUtil.handleOneByte(b, cArr, i4);
                    i4++;
                }
                while (true) {
                    int i5 = i3;
                    char c2 = c;
                    while (c2 < j) {
                        ?? r0 = c2 + 1;
                        byte b2 = UnsafeUtil.getByte(c2);
                        if (DecodeUtil.isOneByte(b2)) {
                            DecodeUtil.handleOneByte(b2, cArr, i5);
                            i5++;
                            c2 = r0;
                            while (c2 < j) {
                                byte b3 = UnsafeUtil.getByte(c2);
                                if (DecodeUtil.isOneByte(b3)) {
                                    c2++;
                                    DecodeUtil.handleOneByte(b3, cArr, i5);
                                    i5++;
                                }
                            }
                        } else if (DecodeUtil.isTwoBytes(b2)) {
                            if (r0 >= j) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            c2 = r0 + 1;
                            DecodeUtil.handleTwoBytes(b2, UnsafeUtil.getByte(r0), cArr, i5);
                            i5++;
                        } else if (DecodeUtil.isThreeBytes(b2)) {
                            if (r0 >= j - 1) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            long j2 = r0 + 1;
                            DecodeUtil.handleThreeBytes(b2, UnsafeUtil.getByte(r0), UnsafeUtil.getByte(j2), cArr, i5);
                            i5++;
                            c2 = j2 + 1;
                        } else if (r0 >= j - 2) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        } else {
                            long j3 = r0 + 1;
                            byte b4 = UnsafeUtil.getByte(r0);
                            long j4 = j3 + 1;
                            c = j4 + 1;
                            DecodeUtil.handleFourBytes(b2, b4, UnsafeUtil.getByte(j3), UnsafeUtil.getByte(j4), cArr, i5);
                            i3 = i5 + 1 + 1;
                        }
                    }
                    return new String(cArr, 0, i5);
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v103, types: [long] */
        /* JADX WARN: Type inference failed for: r0v112, types: [long] */
        /* JADX WARN: Type inference failed for: r0v74, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v97, types: [long] */
        @Override // com.explorestack.protobuf.Utf8.Processor
        final int encodeUtf8(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            char c2;
            int i3;
            char charAt;
            char c3 = i;
            long j = i2 + c3;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
            }
            int i4 = 0;
            while (true) {
                c = 1;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                UnsafeUtil.putByte(bArr, (long) c3, (byte) charAt);
                i4++;
                c3 = 1 + c3;
            }
            int i5 = i4;
            char c4 = c3;
            if (i4 == length) {
                return c3;
            }
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                if (charAt2 < 128 && c4 < j) {
                    UnsafeUtil.putByte(bArr, (long) c4, (byte) charAt2);
                    c2 = c4 + c;
                    c = c;
                } else if (charAt2 < 2048 && c4 <= j - 2) {
                    long j2 = c4 + c;
                    UnsafeUtil.putByte(bArr, (long) c4, (byte) ((charAt2 >>> 6) | 960));
                    UnsafeUtil.putByte(bArr, j2, (byte) ((charAt2 & '?') | 128));
                    c2 = j2 + c;
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c4 > j - 3) {
                    if (c4 > j - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                            throw new UnpairedSurrogateException(i5, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + ((long) c4));
                    }
                    int i6 = i5 + 1;
                    if (i6 != length) {
                        char charAt3 = charSequence.charAt(i6);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            long j3 = c4 + 1;
                            UnsafeUtil.putByte(bArr, (long) c4, (byte) ((codePoint >>> 18) | 240));
                            long j4 = j3 + 1;
                            UnsafeUtil.putByte(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j5 = j4 + 1;
                            UnsafeUtil.putByte(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                            c = 1;
                            c2 = j5 + 1;
                            UnsafeUtil.putByte(bArr, j5, (byte) ((codePoint & 63) | 128));
                            i5 = i6;
                        } else {
                            i5 = i6;
                        }
                    }
                    throw new UnpairedSurrogateException(i5 - 1, length);
                } else {
                    long j6 = c4 + c;
                    UnsafeUtil.putByte(bArr, (long) c4, (byte) ((charAt2 >>> '\f') | 480));
                    long j7 = j6 + c;
                    UnsafeUtil.putByte(bArr, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                    UnsafeUtil.putByte(bArr, j7, (byte) ((charAt2 & '?') | 128));
                    c2 = j7 + 1;
                    c = 1;
                }
                i5++;
                c4 = c2;
            }
            return c4;
        }

        /* JADX WARN: Type inference failed for: r0v110, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v95, types: [long] */
        @Override // com.explorestack.protobuf.Utf8.Processor
        final void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            char c;
            int i;
            char charAt;
            long addressOffset = UnsafeUtil.addressOffset(byteBuffer);
            char position = byteBuffer.position() + addressOffset;
            long limit = byteBuffer.limit() + addressOffset;
            int length = charSequence.length();
            if (length > limit - position) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + byteBuffer.limit());
            }
            int i2 = 0;
            while (i2 < length && (charAt = charSequence.charAt(i2)) < 128) {
                UnsafeUtil.putByte(position, (byte) charAt);
                i2++;
                position++;
            }
            char c2 = position;
            int i3 = i2;
            if (i2 == length) {
                byteBuffer.position((int) (position - addressOffset));
                return;
            }
            while (i3 < length) {
                char charAt2 = charSequence.charAt(i3);
                if (charAt2 < 128 && c2 < limit) {
                    UnsafeUtil.putByte(c2, (byte) charAt2);
                    c = c2;
                } else if (charAt2 < 2048 && c2 <= limit - 2) {
                    ?? r0 = c2 + 1;
                    UnsafeUtil.putByte(c2, (byte) ((charAt2 >>> 6) | 960));
                    UnsafeUtil.putByte(r0, (byte) ((charAt2 & '?') | 128));
                    c = r0;
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c2 > limit - 3) {
                    if (c2 > limit - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i = i3 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i)))) {
                            throw new UnpairedSurrogateException(i3, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + ((long) c2));
                    }
                    int i4 = i3 + 1;
                    if (i4 != length) {
                        char charAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            long j = c2 + 1;
                            UnsafeUtil.putByte(c2, (byte) ((codePoint >>> 18) | 240));
                            long j2 = j + 1;
                            UnsafeUtil.putByte(j, (byte) (((codePoint >>> 12) & 63) | 128));
                            ?? r02 = j2 + 1;
                            UnsafeUtil.putByte(j2, (byte) (((codePoint >>> 6) & 63) | 128));
                            UnsafeUtil.putByte(r02, (byte) ((codePoint & 63) | 128));
                            i3 = i4;
                            c = r02;
                        } else {
                            i3 = i4;
                        }
                    }
                    throw new UnpairedSurrogateException(i3 - 1, length);
                } else {
                    long j3 = c2 + 1;
                    UnsafeUtil.putByte(c2, (byte) ((charAt2 >>> '\f') | 480));
                    ?? r03 = j3 + 1;
                    UnsafeUtil.putByte(j3, (byte) (((charAt2 >>> 6) & 63) | 128));
                    UnsafeUtil.putByte(r03, (byte) ((charAt2 & '?') | 128));
                    c = r03;
                }
                i3++;
                c2 = c + 1;
            }
            byteBuffer.position((int) (c2 - addressOffset));
        }

        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* JADX WARN: Type inference failed for: r0v86, types: [long] */
        /* JADX WARN: Type inference failed for: r0v99, types: [long] */
        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
            byte b;
            char c;
            if ((i2 | i3 | (bArr.length - i3)) >= 0) {
                char c2 = i2;
                long j = i3;
                char c3 = c2;
                if (i != 0) {
                    if (c2 >= j) {
                        return i;
                    }
                    byte b2 = (byte) i;
                    if (b2 >= -32) {
                        if (b2 < -16) {
                            byte b3 = (byte) ((i >> 8) ^ (-1));
                            char c4 = c2;
                            byte b4 = b3;
                            if (b3 == 0) {
                                c4 = c2 + 1;
                                b4 = UnsafeUtil.getByte(bArr, (long) c2);
                                if (c4 >= j) {
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
                            c = c4 + 1;
                            if (UnsafeUtil.getByte(bArr, (long) c4) > -65) {
                                return -1;
                            }
                        } else {
                            byte b5 = (byte) ((i >> 8) ^ (-1));
                            if (b5 == 0) {
                                ?? r0 = c2 + 1;
                                b5 = UnsafeUtil.getByte(bArr, (long) c2);
                                if (r0 >= j) {
                                    return Utf8.incompleteStateFor(b2, b5);
                                }
                                c2 = r0;
                                b = 0;
                            } else {
                                b = (byte) (i >> 16);
                            }
                            byte b6 = b;
                            char c5 = c2;
                            if (b == 0) {
                                c5 = c2 + 1;
                                b6 = UnsafeUtil.getByte(bArr, (long) c2);
                                if (c5 >= j) {
                                    return Utf8.incompleteStateFor(b2, b5, b6);
                                }
                            }
                            if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                                return -1;
                            }
                            c = c5 + 1;
                            if (UnsafeUtil.getByte(bArr, (long) c5) > -65) {
                                return -1;
                            }
                        }
                        c3 = c;
                    } else if (b2 < -62 || UnsafeUtil.getByte(bArr, (long) c2) > -65) {
                        return -1;
                    } else {
                        c3 = 1 + c2;
                    }
                }
                return partialIsValidUtf8(bArr, c3, (int) (j - c3));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }

        /* JADX WARN: Type inference failed for: r0v102, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3) {
            byte b;
            char c;
            if ((i2 | i3 | (byteBuffer.limit() - i3)) >= 0) {
                char addressOffset = UnsafeUtil.addressOffset(byteBuffer) + i2;
                long j = (i3 - i2) + addressOffset;
                char c2 = addressOffset;
                if (i != 0) {
                    if (addressOffset >= j) {
                        return i;
                    }
                    byte b2 = (byte) i;
                    if (b2 >= -32) {
                        if (b2 < -16) {
                            byte b3 = (byte) ((i >> 8) ^ (-1));
                            char c3 = addressOffset;
                            byte b4 = b3;
                            if (b3 == 0) {
                                c3 = addressOffset + 1;
                                b4 = UnsafeUtil.getByte(addressOffset);
                                if (c3 >= j) {
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
                            c = c3 + 1;
                            if (UnsafeUtil.getByte(c3) > -65) {
                                return -1;
                            }
                        } else {
                            byte b5 = (byte) ((i >> 8) ^ (-1));
                            if (b5 == 0) {
                                ?? r0 = addressOffset + 1;
                                b5 = UnsafeUtil.getByte(addressOffset);
                                if (r0 >= j) {
                                    return Utf8.incompleteStateFor(b2, b5);
                                }
                                addressOffset = r0;
                                b = 0;
                            } else {
                                b = (byte) (i >> 16);
                            }
                            byte b6 = b;
                            char c4 = addressOffset;
                            if (b == 0) {
                                c4 = addressOffset + 1;
                                b6 = UnsafeUtil.getByte(addressOffset);
                                if (c4 >= j) {
                                    return Utf8.incompleteStateFor(b2, b5, b6);
                                }
                            }
                            if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                                return -1;
                            }
                            c = c4 + 1;
                            if (UnsafeUtil.getByte(c4) > -65) {
                                return -1;
                            }
                        }
                        c2 = c;
                    } else if (b2 < -62 || UnsafeUtil.getByte(addressOffset) > -65) {
                        return -1;
                    } else {
                        c2 = 1 + addressOffset;
                    }
                }
                return partialIsValidUtf8(c2, (int) (j - c2));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i3)));
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
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + 4294967296L));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
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
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
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
