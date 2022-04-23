package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final ByteBuffer f4217a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/o$a.class */
    public static final class a extends IOException {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, int i2) {
            super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
        }
    }

    private o(ByteBuffer byteBuffer) {
        this.f4217a = byteBuffer;
        this.f4217a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private o(byte[] bArr, int i) {
        this(ByteBuffer.wrap(bArr, 0, i));
    }

    public static int a(int i) {
        return i >= 0 ? d(i) : 10;
    }

    private static int a(CharSequence charSequence) {
        int i;
        int i2 = 0;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                        i = i3;
                    } else {
                        int i5 = i2 + 2;
                        i2 = i5;
                        i = i3;
                        if (55296 <= charAt2) {
                            i2 = i5;
                            i = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                            } else {
                                i = i3 + 1;
                                i2 = i5;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i + 1;
                }
                i4 = i2 + i4;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i4 + 4294967296L).toString());
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        char charAt;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5 && (charAt = charSequence.charAt(i4)) < 128) {
            bArr[i + i4] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            i3 = i + length;
        } else {
            i3 = i + i4;
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < 128 && i3 < i5) {
                    i3++;
                    bArr[i3] = (byte) charAt2;
                } else if (charAt2 < 2048 && i3 <= i5 - 2) {
                    int i6 = i3 + 1;
                    bArr[i3] = (byte) ((charAt2 >>> 6) | 960);
                    i3 = i6 + 1;
                    bArr[i6] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && i3 <= i5 - 3) {
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) ((charAt2 >>> '\f') | 480);
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i3 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 & '?') | 128);
                } else if (i3 <= i5 - 4) {
                    int i9 = i4;
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char charAt3 = charSequence.charAt(i4);
                        if (!Character.isSurrogatePair(charAt2, charAt3)) {
                            i9 = i4;
                        } else {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i10 = i3 + 1;
                            bArr[i3] = (byte) ((codePoint >>> 18) | 240);
                            int i11 = i10 + 1;
                            bArr[i10] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i12 = i11 + 1;
                            bArr[i11] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i12 + 1;
                            bArr[i12] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i9 - 1).toString());
                } else {
                    throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i3).toString());
                }
                i4++;
            }
        }
        return i3;
    }

    public static int a(String str) {
        int a2 = a((CharSequence) str);
        return a2 + d(a2);
    }

    public static int a(byte[] bArr) {
        return d(bArr.length) + bArr.length;
    }

    public static o a(byte[] bArr, int i) {
        return new o(bArr, i);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            b(charSequence, byteBuffer);
        }
    }

    public static int b(int i) {
        return d(y.a(i, 0));
    }

    public static int b(int i, int i2) {
        return b(i) + a(i2);
    }

    public static int b(int i, long j) {
        return b(i) + b(j);
    }

    public static int b(int i, v vVar) {
        int b2 = b(i);
        int e = vVar.e();
        return b2 + e + d(e);
    }

    public static int b(int i, String str) {
        return b(i) + a(str);
    }

    public static int b(int i, byte[] bArr) {
        return b(i) + a(bArr);
    }

    public static int b(long j) {
        return ((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : ((-2097152) & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else if (charAt < 55296 || 57343 < charAt) {
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else {
                int i2 = i;
                if (i + 1 != charSequence.length()) {
                    i2 = i + 1;
                    char charAt2 = charSequence.charAt(i2);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int codePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint & 63) | 128));
                        i = i2;
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i2 - 1).toString());
            }
            i++;
        }
    }

    public static long c(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int d(int i) {
        return (i & (-128)) == 0 ? 1 : (i & (-16384)) == 0 ? 2 : ((-2097152) & i) == 0 ? 3 : ((-268435456) & i) == 0 ? 4 : 5;
    }

    private void e(int i) {
        byte b2 = (byte) i;
        if (!this.f4217a.hasRemaining()) {
            throw new a(this.f4217a.position(), this.f4217a.limit());
        }
        this.f4217a.put(b2);
    }

    public final void a(int i, int i2) {
        c(i, 0);
        if (i2 >= 0) {
            c(i2);
        } else {
            a(i2);
        }
    }

    public final void a(int i, long j) {
        c(i, 0);
        a(j);
    }

    public final void a(int i, v vVar) {
        c(i, 2);
        a(vVar);
    }

    public final void a(int i, String str) {
        c(i, 2);
        try {
            int d = d(str.length());
            if (d == d(str.length() * 3)) {
                int position = this.f4217a.position();
                if (this.f4217a.remaining() < d) {
                    throw new a(d + position, this.f4217a.limit());
                }
                this.f4217a.position(position + d);
                a(str, this.f4217a);
                int position2 = this.f4217a.position();
                this.f4217a.position(position);
                c((position2 - position) - d);
                this.f4217a.position(position2);
                return;
            }
            c(a((CharSequence) str));
            a(str, this.f4217a);
        } catch (BufferOverflowException e) {
            a aVar = new a(this.f4217a.position(), this.f4217a.limit());
            aVar.initCause(e);
            throw aVar;
        }
    }

    public final void a(int i, boolean z) {
        int i2 = 0;
        c(i, 0);
        if (z) {
            i2 = 1;
        }
        e(i2);
    }

    public final void a(int i, byte[] bArr) {
        c(i, 2);
        c(bArr.length);
        b(bArr);
    }

    public final void a(long j) {
        while (((-128) & j) != 0) {
            e((((int) j) & 127) | 128);
            j >>>= 7;
        }
        e((int) j);
    }

    public final void a(v vVar) {
        c(vVar.d());
        vVar.a(this);
    }

    public final void b(byte[] bArr) {
        int length = bArr.length;
        if (this.f4217a.remaining() >= length) {
            this.f4217a.put(bArr, 0, length);
            return;
        }
        throw new a(this.f4217a.position(), this.f4217a.limit());
    }

    public final void c(int i) {
        while ((i & (-128)) != 0) {
            e((i & 127) | 128);
            i >>>= 7;
        }
        e(i);
    }

    public final void c(int i, int i2) {
        c(y.a(i, i2));
    }
}
