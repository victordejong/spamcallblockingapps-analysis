package com.google.flatbuffers;

import com.google.flatbuffers.AbstractC15945i;
import java.nio.ByteBuffer;
/* renamed from: com.google.flatbuffers.j */
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/j.class */
public final class C15947j extends AbstractC15945i {

    /* renamed from: com.google.flatbuffers.j$a */
    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/j$a.class */
    public static final class C15948a extends IllegalArgumentException {
        C15948a(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: b */
    private static String m7993b(ByteBuffer byteBuffer, int i, int i2) {
        byte b;
        byte b2;
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                if (!(byteBuffer.get(i) >= 0)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b2;
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte b3 = byteBuffer.get(i6);
                if (b3 >= 0) {
                    cArr[i7] = (char) b3;
                    i7++;
                    i6 = i8;
                    while (i6 < i3) {
                        if (byteBuffer.get(i6) >= 0) {
                            i6++;
                            cArr[i7] = (char) b;
                            i7++;
                        }
                    }
                } else if (AbstractC15945i.C15946a.m8003a(b3)) {
                    if (i8 >= i3) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    AbstractC15945i.C15946a.m8000a(b3, byteBuffer.get(i8), cArr, i7);
                    i6 = i8 + 1;
                    i7++;
                } else if (AbstractC15945i.C15946a.m7999b(b3)) {
                    if (i8 >= i3 - 1) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    int i9 = i8 + 1;
                    AbstractC15945i.C15946a.m8001a(b3, byteBuffer.get(i8), byteBuffer.get(i9), cArr, i7);
                    i6 = i9 + 1;
                    i7++;
                } else if (i8 >= i3 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                } else {
                    int i10 = i8 + 1;
                    byte b4 = byteBuffer.get(i8);
                    int i11 = i10 + 1;
                    AbstractC15945i.C15946a.m8002a(b3, b4, byteBuffer.get(i10), byteBuffer.get(i11), cArr, i7);
                    i6 = i11 + 1;
                    i7 = i7 + 1 + 1;
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: b */
    private static void m7994b(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                C15948a c15948a = new C15948a(i2, length);
                int i12 = i3;
                throw c15948a;
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

    @Override // com.google.flatbuffers.AbstractC15945i
    /* renamed from: a */
    public final int mo7997a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (55296 <= charAt2) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new C15948a(i3, length2);
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + 4294967296L));
    }

    @Override // com.google.flatbuffers.AbstractC15945i
    /* renamed from: a */
    public final String mo7995a(ByteBuffer byteBuffer, int i, int i2) throws IllegalArgumentException {
        byte b;
        byte b2;
        if (byteBuffer.hasArray()) {
            byte[] array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + i;
            if ((arrayOffset | i2 | ((array.length - arrayOffset) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(array.length), Integer.valueOf(arrayOffset), Integer.valueOf(i2)));
            }
            int i3 = arrayOffset + i2;
            char[] cArr = new char[i2];
            int i4 = arrayOffset;
            int i5 = 0;
            while (i4 < i3) {
                if (!(array[i4] >= 0)) {
                    break;
                }
                i4++;
                cArr[i5] = (char) b2;
                i5++;
            }
            while (i4 < i3) {
                int i6 = i4 + 1;
                byte b3 = array[i4];
                if (b3 >= 0) {
                    cArr[i5] = (char) b3;
                    i5++;
                    i4 = i6;
                    while (i4 < i3) {
                        if (array[i4] >= 0) {
                            i4++;
                            cArr[i5] = (char) b;
                            i5++;
                        }
                    }
                } else if (AbstractC15945i.C15946a.m8003a(b3)) {
                    if (i6 >= i3) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    AbstractC15945i.C15946a.m8000a(b3, array[i6], cArr, i5);
                    i4 = i6 + 1;
                    i5++;
                } else if (AbstractC15945i.C15946a.m7999b(b3)) {
                    if (i6 >= i3 - 1) {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                    int i7 = i6 + 1;
                    AbstractC15945i.C15946a.m8001a(b3, array[i6], array[i7], cArr, i5);
                    i4 = i7 + 1;
                    i5++;
                } else if (i6 >= i3 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                } else {
                    int i8 = i6 + 1;
                    byte b4 = array[i6];
                    int i9 = i8 + 1;
                    AbstractC15945i.C15946a.m8002a(b3, b4, array[i8], array[i9], cArr, i5);
                    i4 = i9 + 1;
                    i5 = i5 + 1 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }
        return m7993b(byteBuffer, i, i2);
    }

    @Override // com.google.flatbuffers.AbstractC15945i
    /* renamed from: a */
    public final void mo7996a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3;
        char charAt;
        if (!byteBuffer.hasArray()) {
            m7994b(charSequence, byteBuffer);
            return;
        }
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
        if (i4 != length) {
            int i6 = position + i4;
            while (true) {
                i = i6;
                if (i4 >= length) {
                    break;
                }
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < 128 && i6 < i5) {
                    array[i6] = (byte) charAt2;
                    i6++;
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
                } else if (i6 > i5 - 4) {
                    if (55296 <= charAt2 && charAt2 <= 57343 && ((i2 = i4 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i2)))) {
                        throw new C15948a(i4, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i6);
                } else {
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
                }
                i4++;
            }
            throw new C15948a(i4 - 1, length);
        }
        i = position + length;
        byteBuffer.position(i - arrayOffset);
    }
}
