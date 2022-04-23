package com.google.flatbuffers;

import com.google.flatbuffers.i;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/j.class */
public final class j extends i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/j$a.class */
    public static final class a extends IllegalArgumentException {
        a(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    private static String b(ByteBuffer byteBuffer, int i, int i2) {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b2 = byteBuffer.get(i);
                if (!(b2 >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b2;
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b3 = byteBuffer.get(i5);
                if (b3 >= 0) {
                    i6++;
                    cArr[i6] = (char) b3;
                    i5 = i7;
                    while (i5 < i3) {
                        byte b4 = byteBuffer.get(i5);
                        if (b4 >= 0) {
                            i5++;
                            cArr[i6] = (char) b4;
                            i6++;
                        }
                    }
                } else if (i.a.a(b3)) {
                    if (i7 < i3) {
                        i.a.a(b3, byteBuffer.get(i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i.a.b(b3)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        i.a.a(b3, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    byte b5 = byteBuffer.get(i7);
                    int i10 = i9 + 1;
                    i.a.a(b3, b5, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                throw new a(i2, length);
            }
            i2++;
            i3++;
        }
        byteBuffer.position(i3);
    }

    @Override // com.google.flatbuffers.i
    public final int a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new a(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + 4294967296L));
    }

    @Override // com.google.flatbuffers.i
    public final String a(ByteBuffer byteBuffer, int i, int i2) throws IllegalArgumentException {
        if (!byteBuffer.hasArray()) {
            return b(byteBuffer, i, i2);
        }
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset() + i;
        if ((arrayOffset | i2 | ((array.length - arrayOffset) - i2)) >= 0) {
            int i3 = arrayOffset + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            int i5 = arrayOffset;
            while (i5 < i3) {
                byte b2 = array[i5];
                if (!(b2 >= 0)) {
                    break;
                }
                i5++;
                cArr[i4] = (char) b2;
                i4++;
            }
            while (i5 < i3) {
                int i6 = i5 + 1;
                byte b3 = array[i5];
                if (b3 >= 0) {
                    i4++;
                    cArr[i4] = (char) b3;
                    i5 = i6;
                    while (i5 < i3) {
                        byte b4 = array[i5];
                        if (b4 >= 0) {
                            i5++;
                            cArr[i4] = (char) b4;
                            i4++;
                        }
                    }
                } else if (i.a.a(b3)) {
                    if (i6 < i3) {
                        i.a.a(b3, array[i6], cArr, i4);
                        i5 = i6 + 1;
                        i4++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i.a.b(b3)) {
                    if (i6 < i3 - 1) {
                        int i7 = i6 + 1;
                        i.a.a(b3, array[i6], array[i7], cArr, i4);
                        i5 = i7 + 1;
                        i4++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i6 < i3 - 2) {
                    int i8 = i6 + 1;
                    byte b5 = array[i6];
                    int i9 = i8 + 1;
                    i.a.a(b3, b5, array[i8], array[i9], cArr, i4);
                    i5 = i9 + 1;
                    i4 = i4 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i4);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(array.length), Integer.valueOf(arrayOffset), Integer.valueOf(i2)));
    }

    @Override // com.google.flatbuffers.i
    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3;
        char charAt;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byte[] array = byteBuffer.array();
            int position = byteBuffer.position() + arrayOffset;
            int remaining = byteBuffer.remaining();
            int length = charSequence.length();
            int i4 = 0;
            int i5 = remaining + position;
            while (i4 < length && (i3 = i4 + position) < i5 && (charAt = charSequence.charAt(i4)) < 128) {
                array[i3] = (byte) charAt;
                i4++;
            }
            if (i4 == length) {
                i = position + length;
            } else {
                int i6 = position + i4;
                while (true) {
                    i = i6;
                    if (i4 >= length) {
                        break;
                    }
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 128 && i6 < i5) {
                        i6++;
                        array[i6] = (byte) charAt2;
                    } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                        int i7 = i6 + 1;
                        array[i6] = (byte) ((charAt2 >>> 6) | 960);
                        i6 = i7 + 1;
                        array[i7] = (byte) ((charAt2 & '?') | 128);
                    } else if ((charAt2 < 55296 || 57343 < charAt2) && i6 <= i5 - 3) {
                        int i8 = i6 + 1;
                        array[i6] = (byte) ((charAt2 >>> '\f') | 480);
                        int i9 = i8 + 1;
                        array[i8] = (byte) (((charAt2 >>> 6) & 63) | 128);
                        i6 = i9 + 1;
                        array[i9] = (byte) ((charAt2 & '?') | 128);
                    } else if (i6 <= i5 - 4) {
                        int i10 = i4 + 1;
                        if (i10 == charSequence.length()) {
                            break;
                        }
                        char charAt3 = charSequence.charAt(i10);
                        if (!Character.isSurrogatePair(charAt2, charAt3)) {
                            i4 = i10;
                            break;
                        }
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i11 = i6 + 1;
                        array[i6] = (byte) ((codePoint >>> 18) | 240);
                        int i12 = i11 + 1;
                        array[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i13 = i12 + 1;
                        array[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i6 = i13 + 1;
                        array[i13] = (byte) ((codePoint & 63) | 128);
                        i4 = i10;
                    } else if (55296 > charAt2 || charAt2 > 57343 || ((i2 = i4 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i2)))) {
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i6);
                    } else {
                        throw new a(i4, length);
                    }
                    i4++;
                }
                throw new a(i4 - 1, length);
            }
            byteBuffer.position(i - arrayOffset);
            return;
        }
        b(charSequence, byteBuffer);
    }
}
