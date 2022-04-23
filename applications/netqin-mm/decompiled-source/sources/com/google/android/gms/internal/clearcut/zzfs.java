package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfs.class */
public final class zzfs {

    /* renamed from: a */
    public final ByteBuffer f29277a;

    /* renamed from: b */
    public zzbn f29278b;

    /* renamed from: c */
    public int f29279c;

    public zzfs(ByteBuffer byteBuffer) {
        this.f29277a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    public zzfs(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    /* renamed from: a */
    public static int m10647a(CharSequence charSequence) {
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
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i4);
                                throw new IllegalArgumentException(sb.toString());
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
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* renamed from: a */
    public static int m10645a(String str) {
        int a = m10647a((CharSequence) str);
        return m10631e(a) + a;
    }

    /* renamed from: a */
    public static zzfs m10644a(byte[] bArr) {
        return m10643a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static zzfs m10643a(byte[] bArr, int i, int i2) {
        return new zzfs(bArr, 0, i2);
    }

    /* renamed from: a */
    public static void m10646a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3;
        int i4;
        if (!byteBuffer.isReadOnly()) {
            int i5 = 0;
            int i6 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i7 = remaining + arrayOffset;
                    while (i6 < length && (i2 = i6 + arrayOffset) < i7) {
                        char charAt = charSequence.charAt(i6);
                        if (charAt >= 128) {
                            break;
                        }
                        array[i2] = (byte) charAt;
                        i6++;
                    }
                    if (i6 == length) {
                        i = arrayOffset + length;
                    } else {
                        int i8 = arrayOffset + i6;
                        while (true) {
                            i = i8;
                            if (i6 >= length) {
                                break;
                            }
                            char charAt2 = charSequence.charAt(i6);
                            if (charAt2 < 128 && i8 < i7) {
                                i8++;
                                array[i8] = (byte) charAt2;
                            } else if (charAt2 < 2048 && i8 <= i7 - 2) {
                                int i9 = i8 + 1;
                                array[i8] = (byte) ((charAt2 >>> 6) | 960);
                                i8 = i9 + 1;
                                array[i9] = (byte) ((charAt2 & '?') | 128);
                            } else if ((charAt2 < 55296 || 57343 < charAt2) && i8 <= i7 - 3) {
                                int i10 = i8 + 1;
                                array[i8] = (byte) ((charAt2 >>> '\f') | 480);
                                int i11 = i10 + 1;
                                array[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                i8 = i11 + 1;
                                array[i11] = (byte) ((charAt2 & '?') | 128);
                            } else if (i8 <= i7 - 4) {
                                int i12 = i6 + 1;
                                if (i12 == charSequence.length()) {
                                    break;
                                }
                                char charAt3 = charSequence.charAt(i12);
                                if (!Character.isSurrogatePair(charAt2, charAt3)) {
                                    i6 = i12;
                                    break;
                                }
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i13 = i8 + 1;
                                array[i8] = (byte) ((codePoint >>> 18) | 240);
                                int i14 = i13 + 1;
                                array[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i15 = i14 + 1;
                                array[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i8 = i15 + 1;
                                array[i15] = (byte) ((codePoint & 63) | 128);
                                i6 = i12;
                            } else {
                                StringBuilder sb = new StringBuilder(37);
                                sb.append("Failed writing ");
                                sb.append(charAt2);
                                sb.append(" at index ");
                                sb.append(i8);
                                throw new ArrayIndexOutOfBoundsException(sb.toString());
                            }
                            i6++;
                        }
                        StringBuilder sb2 = new StringBuilder(39);
                        sb2.append("Unpaired surrogate at index ");
                        sb2.append(i6 - 1);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    byteBuffer.position(i - byteBuffer.arrayOffset());
                } catch (ArrayIndexOutOfBoundsException e) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e);
                    throw bufferOverflowException;
                }
            } else {
                int length2 = charSequence.length();
                while (i5 < length2) {
                    char charAt4 = charSequence.charAt(i5);
                    if (charAt4 < 128) {
                        i4 = charAt4;
                    } else {
                        if (charAt4 < 2048) {
                            i3 = (charAt4 >>> 6) | 960;
                        } else if (charAt4 < 55296 || 57343 < charAt4) {
                            byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                            i3 = ((charAt4 >>> 6) & 63) | 128;
                        } else {
                            int i16 = i5 + 1;
                            if (i16 != charSequence.length()) {
                                char charAt5 = charSequence.charAt(i16);
                                if (Character.isSurrogatePair(charAt4, charAt5)) {
                                    int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                    byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                    i5 = i16;
                                    i5++;
                                } else {
                                    i5 = i16;
                                }
                            }
                            StringBuilder sb3 = new StringBuilder(39);
                            sb3.append("Unpaired surrogate at index ");
                            sb3.append(i5 - 1);
                            throw new IllegalArgumentException(sb3.toString());
                        }
                        byteBuffer.put((byte) i3);
                        i4 = (charAt4 & '?') | 128;
                    }
                    byteBuffer.put((byte) i4);
                    i5++;
                }
            }
        } else {
            throw new ReadOnlyBufferException();
        }
    }

    /* renamed from: b */
    public static int m10640b(int i, long j) {
        return m10634c(i) + m10633c(j);
    }

    /* renamed from: b */
    public static int m10639b(int i, zzfz zzfzVar) {
        int c = m10634c(i);
        int c2 = zzfzVar.m10617c();
        return c + m10631e(c2) + c2;
    }

    /* renamed from: b */
    public static int m10638b(int i, String str) {
        return m10634c(i) + m10645a(str);
    }

    /* renamed from: b */
    public static int m10637b(int i, byte[] bArr) {
        return m10634c(i) + m10635b(bArr);
    }

    /* renamed from: b */
    public static int m10635b(byte[] bArr) {
        return m10631e(bArr.length) + bArr.length;
    }

    /* renamed from: b */
    public static long m10636b(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: c */
    public static int m10634c(int i) {
        return m10631e(i << 3);
    }

    /* renamed from: c */
    public static int m10633c(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    /* renamed from: d */
    public static int m10632d(int i) {
        if (i >= 0) {
            return m10631e(i);
        }
        return 10;
    }

    /* renamed from: e */
    public static int m10631e(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: a */
    public final void m10657a() {
        if (this.f29277a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f29277a.remaining())));
        }
    }

    /* renamed from: a */
    public final void m10656a(int i) throws IOException {
        byte b = (byte) i;
        if (this.f29277a.hasRemaining()) {
            this.f29277a.put(b);
            return;
        }
        throw new zzft(this.f29277a.position(), this.f29277a.limit());
    }

    /* renamed from: a */
    public final void m10655a(int i, int i2) throws IOException {
        m10642b((i << 3) | i2);
    }

    /* renamed from: a */
    public final void m10654a(int i, long j) throws IOException {
        m10655a(i, 0);
        m10648a(j);
    }

    /* renamed from: a */
    public final void m10653a(int i, zzdo zzdoVar) throws IOException {
        if (this.f29278b == null) {
            this.f29278b = zzbn.m10822a(this.f29277a);
        } else {
            if (this.f29279c != this.f29277a.position()) {
                this.f29278b.mo10745b(this.f29277a.array(), this.f29279c, this.f29277a.position() - this.f29279c);
            }
            zzbn zzbnVar = this.f29278b;
            zzbnVar.mo10760a(i, zzdoVar);
            zzbnVar.mo10766a();
            this.f29279c = this.f29277a.position();
        }
        this.f29279c = this.f29277a.position();
        zzbn zzbnVar2 = this.f29278b;
        zzbnVar2.mo10760a(i, zzdoVar);
        zzbnVar2.mo10766a();
        this.f29279c = this.f29277a.position();
    }

    /* renamed from: a */
    public final void m10652a(int i, zzfz zzfzVar) throws IOException {
        m10655a(i, 2);
        if (zzfzVar.f29286a < 0) {
            zzfzVar.m10617c();
        }
        m10642b(zzfzVar.f29286a);
        zzfzVar.mo10563a(this);
    }

    /* renamed from: a */
    public final void m10651a(int i, String str) throws IOException {
        m10655a(i, 2);
        try {
            int e = m10631e(str.length());
            if (e == m10631e(str.length() * 3)) {
                int position = this.f29277a.position();
                if (this.f29277a.remaining() >= e) {
                    this.f29277a.position(position + e);
                    m10646a(str, this.f29277a);
                    int position2 = this.f29277a.position();
                    this.f29277a.position(position);
                    m10642b((position2 - position) - e);
                    this.f29277a.position(position2);
                    return;
                }
                throw new zzft(position + e, this.f29277a.limit());
            }
            m10642b(m10647a((CharSequence) str));
            m10646a(str, this.f29277a);
        } catch (BufferOverflowException e2) {
            zzft zzftVar = new zzft(this.f29277a.position(), this.f29277a.limit());
            zzftVar.initCause(e2);
            throw zzftVar;
        }
    }

    /* renamed from: a */
    public final void m10650a(int i, boolean z) throws IOException {
        m10655a(25, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (this.f29277a.hasRemaining()) {
            this.f29277a.put(b);
            return;
        }
        throw new zzft(this.f29277a.position(), this.f29277a.limit());
    }

    /* renamed from: a */
    public final void m10649a(int i, byte[] bArr) throws IOException {
        m10655a(i, 2);
        m10642b(bArr.length);
        int length = bArr.length;
        if (this.f29277a.remaining() >= length) {
            this.f29277a.put(bArr, 0, length);
            return;
        }
        throw new zzft(this.f29277a.position(), this.f29277a.limit());
    }

    /* renamed from: a */
    public final void m10648a(long j) throws IOException {
        while (((-128) & j) != 0) {
            m10656a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m10656a((int) j);
    }

    /* renamed from: b */
    public final void m10642b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m10656a((i & 127) | 128);
            i >>>= 7;
        }
        m10656a(i);
    }

    /* renamed from: b */
    public final void m10641b(int i, int i2) throws IOException {
        m10655a(i, 0);
        if (i2 >= 0) {
            m10642b(i2);
        } else {
            m10648a(i2);
        }
    }
}
