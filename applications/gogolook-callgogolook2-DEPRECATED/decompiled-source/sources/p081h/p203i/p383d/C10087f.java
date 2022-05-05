package p081h.p203i.p383d;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.nio.ByteBuffer;
import p081h.p203i.p383d.AbstractC10085e;
/* renamed from: h.i.d.f */
/* loaded from: classes2-dex2jar.jar:h/i/d/f.class */
public final class C10087f extends AbstractC10085e {

    /* renamed from: h.i.d.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/d/f$a.class */
    public static class C10088a extends IllegalArgumentException {
        public C10088a(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: a */
    public static int m13399a(CharSequence charSequence, int i) {
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
                        throw new C10088a(i, length);
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m13397a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                throw new C10088a(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
            } else {
                throw new C10088a(i8, length);
            }
            i8++;
        }
        return i7;
    }

    /* renamed from: a */
    public static String m13395a(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!AbstractC10085e.C10086a.m13405b(b)) {
                    break;
                }
                i++;
                AbstractC10085e.C10086a.m13407a(b, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b2 = bArr[i5];
                if (AbstractC10085e.C10086a.m13405b(b2)) {
                    i6++;
                    AbstractC10085e.C10086a.m13407a(b2, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte b3 = bArr[i5];
                        if (!AbstractC10085e.C10086a.m13405b(b3)) {
                            break;
                        }
                        i5++;
                        AbstractC10085e.C10086a.m13407a(b3, cArr, i6);
                        i6++;
                    }
                } else if (AbstractC10085e.C10086a.m13402d(b2)) {
                    if (i7 < i3) {
                        AbstractC10085e.C10086a.m13408a(b2, bArr[i7], cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (AbstractC10085e.C10086a.m13403c(b2)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        AbstractC10085e.C10086a.m13409a(b2, bArr[i7], bArr[i8], cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    byte b4 = bArr[i7];
                    int i10 = i9 + 1;
                    AbstractC10085e.C10086a.m13410a(b2, b4, bArr[i9], bArr[i10], cArr, i6);
                    i5 = i10 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: b */
    public static int m13394b(CharSequence charSequence) {
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
                    i = i3 + m13399a(charSequence, i2);
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
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT));
    }

    /* renamed from: b */
    public static String m13392b(ByteBuffer byteBuffer, int i, int i2) {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = byteBuffer.get(i);
                if (!AbstractC10085e.C10086a.m13405b(b)) {
                    break;
                }
                i++;
                AbstractC10085e.C10086a.m13407a(b, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b2 = byteBuffer.get(i5);
                if (AbstractC10085e.C10086a.m13405b(b2)) {
                    i6++;
                    AbstractC10085e.C10086a.m13407a(b2, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte b3 = byteBuffer.get(i5);
                        if (!AbstractC10085e.C10086a.m13405b(b3)) {
                            break;
                        }
                        i5++;
                        AbstractC10085e.C10086a.m13407a(b3, cArr, i6);
                        i6++;
                    }
                } else if (AbstractC10085e.C10086a.m13402d(b2)) {
                    if (i7 < i3) {
                        AbstractC10085e.C10086a.m13408a(b2, byteBuffer.get(i7), cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (AbstractC10085e.C10086a.m13403c(b2)) {
                    if (i7 < i3 - 1) {
                        int i8 = i7 + 1;
                        AbstractC10085e.C10086a.m13409a(b2, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i7 < i3 - 2) {
                    int i9 = i7 + 1;
                    byte b4 = byteBuffer.get(i7);
                    int i10 = i9 + 1;
                    AbstractC10085e.C10086a.m13410a(b2, b4, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i6);
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

    /* renamed from: b */
    public static void m13393b(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                    byteBuffer.put(i3, (byte) ((charAt2 >>> 6) | PsExtractor.AUDIO_STREAM));
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
                throw new C10088a(i2, length);
            }
            i2++;
            i3++;
        }
        byteBuffer.position(i3);
    }

    @Override // p081h.p203i.p383d.AbstractC10085e
    /* renamed from: a */
    public int mo13400a(CharSequence charSequence) {
        return m13394b(charSequence);
    }

    @Override // p081h.p203i.p383d.AbstractC10085e
    /* renamed from: a */
    public String mo13396a(ByteBuffer byteBuffer, int i, int i2) throws IllegalArgumentException {
        return byteBuffer.hasArray() ? m13395a(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2) : m13392b(byteBuffer, i, i2);
    }

    @Override // p081h.p203i.p383d.AbstractC10085e
    /* renamed from: a */
    public void mo13398a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(m13397a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            return;
        }
        m13393b(charSequence, byteBuffer);
    }
}
