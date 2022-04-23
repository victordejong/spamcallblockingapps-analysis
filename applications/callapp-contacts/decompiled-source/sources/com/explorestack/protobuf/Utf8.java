package com.explorestack.protobuf;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8.class */
public final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$DecodeUtil.class */
    public static class DecodeUtil {
        private DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleFourBytes(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b3) || (((b2 << 28) + (b3 + 112)) >> 30) != 0 || isNotTrailingByte(b4) || isNotTrailingByte(b5)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int trailingByteValue = ((b2 & 7) << 18) | (trailingByteValue(b3) << 12) | (trailingByteValue(b4) << 6) | trailingByteValue(b5);
            cArr[i] = highSurrogate(trailingByteValue);
            cArr[i + 1] = lowSurrogate(trailingByteValue);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleOneByte(byte b2, char[] cArr, int i) {
            cArr[i] = (char) b2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleThreeBytes(byte b2, byte b3, byte b4, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || isNotTrailingByte(b4)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b2 & 15) << 12) | (trailingByteValue(b3) << 6) | trailingByteValue(b4));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleTwoBytes(byte b2, byte b3, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (b2 < -62 || isNotTrailingByte(b3)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b2 & 31) << 6) | trailingByteValue(b3));
        }

        private static char highSurrogate(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b2) {
            return b2 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isOneByte(byte b2) {
            return b2 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isThreeBytes(byte b2) {
            return b2 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isTwoBytes(byte b2) {
            return b2 < -32;
        }

        private static char lowSurrogate(int i) {
            return (char) ((i & 1023) + GeneratorBase.SURR2_FIRST);
        }

        private static int trailingByteValue(byte b2) {
            return b2 & 63;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$Processor.class */
    public static abstract class Processor {
        Processor() {
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i, int i2) {
            int estimateConsecutiveAscii = i + Utf8.estimateConsecutiveAscii(byteBuffer, i, i2);
            while (estimateConsecutiveAscii < i2) {
                int i3 = estimateConsecutiveAscii + 1;
                byte b2 = byteBuffer.get(estimateConsecutiveAscii);
                estimateConsecutiveAscii = i3;
                if (b2 < 0) {
                    if (b2 < -32) {
                        if (i3 >= i2) {
                            return b2;
                        }
                        if (b2 < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i3 + 1;
                    } else if (b2 < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(byteBuffer, b2, i3, i2 - i3);
                        }
                        int i4 = i3 + 1;
                        byte b3 = byteBuffer.get(i3);
                        if (b3 > -65) {
                            return -1;
                        }
                        if (b2 == -32 && b3 < -96) {
                            return -1;
                        }
                        if ((b2 == -19 && b3 >= -96) || byteBuffer.get(i4) > -65) {
                            return -1;
                        }
                        estimateConsecutiveAscii = i4 + 1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.incompleteStateFor(byteBuffer, b2, i3, i2 - i3);
                    } else {
                        int i5 = i3 + 1;
                        byte b4 = byteBuffer.get(i3);
                        if (b4 > -65 || (((b2 << 28) + (b4 + 112)) >> 30) != 0) {
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
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i, i2) : decodeUtf8Default(byteBuffer, i, i2);
            }
            return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        }

        abstract String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        final String decodeUtf8Default(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b2 = byteBuffer.get(i);
                    if (!DecodeUtil.isOneByte(b2)) {
                        break;
                    }
                    i++;
                    DecodeUtil.handleOneByte(b2, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b3 = byteBuffer.get(i5);
                    if (DecodeUtil.isOneByte(b3)) {
                        i6++;
                        DecodeUtil.handleOneByte(b3, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b4 = byteBuffer.get(i5);
                            if (DecodeUtil.isOneByte(b4)) {
                                i5++;
                                DecodeUtil.handleOneByte(b4, cArr, i6);
                                i6++;
                            }
                        }
                    } else if (DecodeUtil.isTwoBytes(b3)) {
                        if (i7 < i3) {
                            DecodeUtil.handleTwoBytes(b3, byteBuffer.get(i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (DecodeUtil.isThreeBytes(b3)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            DecodeUtil.handleThreeBytes(b3, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b5 = byteBuffer.get(i7);
                        int i10 = i9 + 1;
                        DecodeUtil.handleFourBytes(b3, b5, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
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
                } else if (charAt2 < 55296 || 57343 < charAt2) {
                    int i5 = i3 + 1;
                    byteBuffer.put(i3, (byte) ((charAt2 >>> '\f') | 224));
                    i3 = i5 + 1;
                    byteBuffer.put(i5, (byte) (((charAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(i3, (byte) ((charAt2 & '?') | 128));
                } else {
                    int i6 = i2 + 1;
                    if (i6 != length) {
                        i = i3;
                        try {
                            char charAt3 = charSequence.charAt(i6);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i7 = i3 + 1;
                                i = i7;
                                try {
                                    byteBuffer.put(i3, (byte) ((codePoint >>> 18) | 240));
                                    int i8 = i7 + 1;
                                    byteBuffer.put(i7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    i3 = i8 + 1;
                                    byteBuffer.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(i3, (byte) ((codePoint & 63) | 128));
                                    i2 = i6;
                                } catch (IndexOutOfBoundsException e3) {
                                    i2 = i6;
                                    int position222 = byteBuffer.position();
                                    int max22 = Math.max(i2, (i - byteBuffer.position()) + 1);
                                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i2) + " at index " + (position222 + max22));
                                }
                            } else {
                                i2 = i6;
                            }
                        } catch (IndexOutOfBoundsException e4) {
                        }
                    }
                    throw new UnpairedSurrogateException(i2, length);
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
            int i4 = i2;
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
                    int i5 = i2;
                    if (b3 == 0) {
                        i5 = i2 + 1;
                        b4 = byteBuffer.get(i2);
                        if (i5 >= i3) {
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
                    i4 = i5 + 1;
                    if (byteBuffer.get(i5) > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    byte b6 = 0;
                    if (b5 == 0) {
                        int i6 = i2 + 1;
                        b5 = byteBuffer.get(i2);
                        if (i6 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5);
                        }
                        i2 = i6;
                    } else {
                        b6 = (byte) (i >> 16);
                    }
                    byte b7 = b6;
                    int i7 = i2;
                    if (b6 == 0) {
                        i7 = i2 + 1;
                        b7 = byteBuffer.get(i2);
                        if (i7 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5, b7);
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b7 > -65) {
                        return -1;
                    }
                    i4 = i7 + 1;
                    if (byteBuffer.get(i7) > -65) {
                        return -1;
                    }
                }
            }
            return partialIsValidUtf8(byteBuffer, i4, i3);
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
                byte b2 = bArr[i];
                i = i3;
                if (b2 < 0) {
                    if (b2 < -32) {
                        if (i3 >= i2) {
                            return b2;
                        }
                        if (b2 < -62) {
                            return -1;
                        }
                        i = i3 + 1;
                        if (bArr[i3] > -65) {
                            return -1;
                        }
                    } else if (b2 < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.incompleteStateFor(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 > -65) {
                            return -1;
                        }
                        if (b2 == -32 && b3 < -96) {
                            return -1;
                        }
                        if (b2 == -19 && b3 >= -96) {
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
                        byte b4 = bArr[i3];
                        if (b4 > -65 || (((b2 << 28) + (b4 + 112)) >> 30) != 0) {
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
                    byte b2 = bArr[i];
                    if (!DecodeUtil.isOneByte(b2)) {
                        break;
                    }
                    i++;
                    DecodeUtil.handleOneByte(b2, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b3 = bArr[i5];
                    if (DecodeUtil.isOneByte(b3)) {
                        i6++;
                        DecodeUtil.handleOneByte(b3, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b4 = bArr[i5];
                            if (DecodeUtil.isOneByte(b4)) {
                                i5++;
                                DecodeUtil.handleOneByte(b4, cArr, i6);
                                i6++;
                            }
                        }
                    } else if (DecodeUtil.isTwoBytes(b3)) {
                        if (i7 < i3) {
                            DecodeUtil.handleTwoBytes(b3, bArr[i7], cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (DecodeUtil.isThreeBytes(b3)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            DecodeUtil.handleThreeBytes(b3, bArr[i7], bArr[i8], cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b5 = bArr[i7];
                        int i10 = i9 + 1;
                        DecodeUtil.handleFourBytes(b3, b5, bArr[i9], bArr[i10], cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
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
            char charAt;
            int length = charSequence.length();
            int i5 = i2 + i;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (charAt = charSequence.charAt(i6)) < 128) {
                bArr[i4] = (byte) charAt;
                i6++;
            }
            if (i6 == length) {
                return i + length;
            }
            int i7 = i + i6;
            int i8 = i6;
            while (i8 < length) {
                char charAt2 = charSequence.charAt(i8);
                if (charAt2 < 128 && i7 < i5) {
                    i7++;
                    bArr[i7] = (byte) charAt2;
                } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                    int i9 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                    i7 = i9 + 1;
                    bArr[i9] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                    int i10 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                    int i11 = i10 + 1;
                    bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i7 = i11 + 1;
                    bArr[i11] = (byte) ((charAt2 & '?') | 128);
                } else if (i7 <= i5 - 4) {
                    int i12 = i8 + 1;
                    if (i12 != charSequence.length()) {
                        char charAt3 = charSequence.charAt(i12);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i13 = i7 + 1;
                            bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i15 = i14 + 1;
                            bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 = i15 + 1;
                            bArr[i15] = (byte) ((codePoint & 63) | 128);
                            i8 = i12;
                        } else {
                            i8 = i12;
                        }
                    }
                    throw new UnpairedSurrogateException(i8 - 1, length);
                } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                } else {
                    throw new UnpairedSurrogateException(i8, length);
                }
                i8++;
            }
            return i7;
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
            int i4 = i2;
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
                    int i5 = i2;
                    if (b3 == 0) {
                        i5 = i2 + 1;
                        b4 = bArr[i2];
                        if (i5 >= i3) {
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
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    byte b6 = 0;
                    if (b5 == 0) {
                        int i6 = i2 + 1;
                        b5 = bArr[i2];
                        if (i6 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5);
                        }
                        i2 = i6;
                    } else {
                        b6 = (byte) (i >> 16);
                    }
                    byte b7 = b6;
                    int i7 = i2;
                    if (b6 == 0) {
                        i7 = i2 + 1;
                        b7 = bArr[i2];
                        if (i7 >= i3) {
                            return Utf8.incompleteStateFor(b2, b5, b7);
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b7 > -65) {
                        return -1;
                    }
                    i4 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                }
            }
            return partialIsValidUtf8(bArr, i4, i3);
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final int partialIsValidUtf8Direct(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return partialIsValidUtf8Default(i, byteBuffer, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        /* JADX INFO: Access modifiers changed from: package-private */
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v14 */
        /* JADX WARN: Type inference failed for: r5v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int partialIsValidUtf8(long r5, int r7) {
            /*
                Method dump skipped, instructions count: 279
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(long, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int partialIsValidUtf8(byte[] r6, long r7, int r9) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(byte[], long, int):int");
        }

        private static int unsafeEstimateConsecutiveAscii(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            while (i3 > 0) {
                if (UnsafeUtil.getByte(j) < 0) {
                    return i2 - i3;
                }
                i3--;
                j = 1 + j;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (UnsafeUtil.getLong(j) & Utf8.ASCII_MASK_LONG) == 0) {
                j += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (UnsafeUtil.getByte(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = 1 + j;
            }
            return i;
        }

        private static int unsafeIncompleteStateFor(long j, int i, int i2) {
            if (i2 == 0) {
                return Utf8.incompleteStateFor(i);
            }
            if (i2 == 1) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(j));
            }
            if (i2 == 2) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(j), UnsafeUtil.getByte(j + 1));
            }
            throw new AssertionError();
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return Utf8.incompleteStateFor(i);
            }
            if (i2 == 1) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j));
            }
            if (i2 == 2) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j), UnsafeUtil.getByte(bArr, j + 1));
            }
            throw new AssertionError();
        }

        @Override // com.explorestack.protobuf.Utf8.Processor
        final String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b2 = UnsafeUtil.getByte(bArr, i);
                    if (!DecodeUtil.isOneByte(b2)) {
                        break;
                    }
                    i++;
                    DecodeUtil.handleOneByte(b2, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b3 = UnsafeUtil.getByte(bArr, i5);
                    if (DecodeUtil.isOneByte(b3)) {
                        i6++;
                        DecodeUtil.handleOneByte(b3, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b4 = UnsafeUtil.getByte(bArr, i5);
                            if (DecodeUtil.isOneByte(b4)) {
                                i5++;
                                DecodeUtil.handleOneByte(b4, cArr, i6);
                                i6++;
                            }
                        }
                    } else if (DecodeUtil.isTwoBytes(b3)) {
                        if (i7 < i3) {
                            DecodeUtil.handleTwoBytes(b3, UnsafeUtil.getByte(bArr, i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (DecodeUtil.isThreeBytes(b3)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            DecodeUtil.handleThreeBytes(b3, UnsafeUtil.getByte(bArr, i7), UnsafeUtil.getByte(bArr, i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        int i10 = i9 + 1;
                        DecodeUtil.handleFourBytes(b3, UnsafeUtil.getByte(bArr, i7), UnsafeUtil.getByte(bArr, i9), UnsafeUtil.getByte(bArr, i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v13 */
        /* JADX WARN: Type inference failed for: r12v14 */
        /* JADX WARN: Type inference failed for: r12v15 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v6, types: [long] */
        /* JADX WARN: Type inference failed for: r12v8, types: [long] */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.explorestack.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final java.lang.String decodeUtf8Direct(java.nio.ByteBuffer r9, int r10, int r11) throws com.explorestack.protobuf.InvalidProtocolBufferException {
            /*
                Method dump skipped, instructions count: 414
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.decodeUtf8Direct(java.nio.ByteBuffer, int, int):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v37, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [long] */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v4 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // com.explorestack.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int encodeUtf8(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 660
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.encodeUtf8(java.lang.CharSequence, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v95, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v8 */
        /* JADX WARN: Type inference failed for: r12v9 */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.explorestack.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void encodeUtf8Direct(java.lang.CharSequence r8, java.nio.ByteBuffer r9) {
            /*
                Method dump skipped, instructions count: 674
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.encodeUtf8Direct(java.lang.CharSequence, java.nio.ByteBuffer):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v11 */
        /* JADX WARN: Type inference failed for: r19v12 */
        /* JADX WARN: Type inference failed for: r19v13 */
        /* JADX WARN: Type inference failed for: r19v14 */
        /* JADX WARN: Type inference failed for: r19v3, types: [long] */
        /* JADX WARN: Type inference failed for: r19v7 */
        /* JADX WARN: Type inference failed for: r19v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.explorestack.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int partialIsValidUtf8(int r9, byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8(int, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v11 */
        /* JADX WARN: Type inference failed for: r19v12 */
        /* JADX WARN: Type inference failed for: r19v13 */
        /* JADX WARN: Type inference failed for: r19v14 */
        /* JADX WARN: Type inference failed for: r19v3, types: [long] */
        /* JADX WARN: Type inference failed for: r19v7 */
        /* JADX WARN: Type inference failed for: r19v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.explorestack.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int partialIsValidUtf8Direct(int r9, java.nio.ByteBuffer r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 410
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Utf8.UnsafeProcessor.partialIsValidUtf8Direct(int, java.nio.ByteBuffer, int, int):int");
        }
    }

    static {
        processor = (!UnsafeProcessor.isAvailable() || Android.isOnAndroidDevice()) ? new SafeProcessor() : new UnsafeProcessor();
    }

    private Utf8() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(byteBuffer, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decodeUtf8(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encode(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return processor.encodeUtf8(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                    } else if (Character.codePointAt(charSequence, i) >= 65536) {
                        i2 = i + 1;
                        i3 = i4;
                    } else {
                        throw new UnpairedSurrogateException(i, length);
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 7 && (byteBuffer.getLong(i3) & ASCII_MASK_LONG) == 0) {
            i3 += 8;
        }
        return i3 - i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 == 0) {
            return incompleteStateFor(i);
        }
        if (i3 == 1) {
            return incompleteStateFor(i, byteBuffer.get(i2));
        }
        if (i3 == 2) {
            return incompleteStateFor(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return incompleteStateFor(b2);
        }
        if (i3 == 1) {
            return incompleteStateFor(b2, bArr[i]);
        }
        if (i3 == 2) {
            return incompleteStateFor(b2, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    public static boolean isValidUtf8(byte[] bArr, int i, int i2) {
        return processor.isValidUtf8(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int partialIsValidUtf8(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return processor.partialIsValidUtf8(i, byteBuffer, i2, i3);
    }

    public static int partialIsValidUtf8(int i, byte[] bArr, int i2, int i3) {
        return processor.partialIsValidUtf8(i, bArr, i2, i3);
    }
}
