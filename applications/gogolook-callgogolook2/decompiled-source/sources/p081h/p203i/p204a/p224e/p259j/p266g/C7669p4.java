package p081h.p203i.p204a.p224e.p259j.p266g;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
/* renamed from: h.i.a.e.j.g.p4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/p4.class */
public final class C7669p4 {

    /* renamed from: a */
    public final ByteBuffer f18015a;

    /* renamed from: b */
    public AbstractC7639m0 f18016b;

    /* renamed from: c */
    public int f18017c;

    public C7669p4(ByteBuffer byteBuffer) {
        this.f18015a = byteBuffer;
        this.f18015a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public C7669p4(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    /* renamed from: a */
    public static int m19846a(CharSequence charSequence) {
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
        sb2.append(i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* renamed from: a */
    public static int m19844a(String str) {
        int a = m19846a((CharSequence) str);
        return m19830e(a) + a;
    }

    /* renamed from: a */
    public static C7669p4 m19843a(byte[] bArr) {
        return m19842a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static C7669p4 m19842a(byte[] bArr, int i, int i2) {
        return new C7669p4(bArr, 0, i2);
    }

    /* renamed from: a */
    public static void m19845a(CharSequence charSequence, ByteBuffer byteBuffer) {
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
    public static int m19839b(int i, long j) {
        return m19833c(i) + m19832c(j);
    }

    /* renamed from: b */
    public static int m19838b(int i, C7718w4 w4Var) {
        int c = m19833c(i);
        int d = w4Var.m19695d();
        return c + m19830e(d) + d;
    }

    /* renamed from: b */
    public static int m19837b(int i, String str) {
        return m19833c(i) + m19844a(str);
    }

    /* renamed from: b */
    public static int m19836b(int i, byte[] bArr) {
        return m19833c(i) + m19834b(bArr);
    }

    /* renamed from: b */
    public static int m19834b(byte[] bArr) {
        return m19830e(bArr.length) + bArr.length;
    }

    /* renamed from: b */
    public static long m19835b(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: c */
    public static int m19833c(int i) {
        return m19830e(i << 3);
    }

    /* renamed from: c */
    public static int m19832c(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if ((CoroutineScheduler.PARKED_VERSION_MASK & j) == 0) {
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
    public static int m19831d(int i) {
        if (i >= 0) {
            return m19830e(i);
        }
        return 10;
    }

    /* renamed from: e */
    public static int m19830e(int i) {
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
    public final void m19856a() {
        if (this.f18015a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f18015a.remaining())));
        }
    }

    /* renamed from: a */
    public final void m19855a(int i) throws IOException {
        byte b = (byte) i;
        if (this.f18015a.hasRemaining()) {
            this.f18015a.put(b);
            return;
        }
        throw new C7676q4(this.f18015a.position(), this.f18015a.limit());
    }

    /* renamed from: a */
    public final void m19854a(int i, int i2) throws IOException {
        m19841b((i << 3) | i2);
    }

    /* renamed from: a */
    public final void m19853a(int i, long j) throws IOException {
        m19854a(i, 0);
        m19847a(j);
    }

    /* renamed from: a */
    public final void m19852a(int i, AbstractC7627k2 k2Var) throws IOException {
        if (this.f18016b == null) {
            this.f18016b = AbstractC7639m0.m20058a(this.f18015a);
        } else {
            if (this.f18017c != this.f18015a.position()) {
                this.f18016b.mo19980b(this.f18015a.array(), this.f18017c, this.f18015a.position() - this.f18017c);
            }
            AbstractC7639m0 m0Var = this.f18016b;
            m0Var.mo19993a(i, k2Var);
            m0Var.mo19999a();
            this.f18017c = this.f18015a.position();
        }
        this.f18017c = this.f18015a.position();
        AbstractC7639m0 m0Var2 = this.f18016b;
        m0Var2.mo19993a(i, k2Var);
        m0Var2.mo19999a();
        this.f18017c = this.f18015a.position();
    }

    /* renamed from: a */
    public final void m19851a(int i, C7718w4 w4Var) throws IOException {
        m19854a(i, 2);
        if (w4Var.f18071a < 0) {
            w4Var.m19695d();
        }
        m19841b(w4Var.f18071a);
        w4Var.mo19697a(this);
    }

    /* renamed from: a */
    public final void m19850a(int i, String str) throws IOException {
        m19854a(i, 2);
        try {
            int e = m19830e(str.length());
            if (e == m19830e(str.length() * 3)) {
                int position = this.f18015a.position();
                if (this.f18015a.remaining() >= e) {
                    this.f18015a.position(position + e);
                    m19845a(str, this.f18015a);
                    int position2 = this.f18015a.position();
                    this.f18015a.position(position);
                    m19841b((position2 - position) - e);
                    this.f18015a.position(position2);
                    return;
                }
                throw new C7676q4(position + e, this.f18015a.limit());
            }
            m19841b(m19846a((CharSequence) str));
            m19845a(str, this.f18015a);
        } catch (BufferOverflowException e2) {
            C7676q4 q4Var = new C7676q4(this.f18015a.position(), this.f18015a.limit());
            q4Var.initCause(e2);
            throw q4Var;
        }
    }

    /* renamed from: a */
    public final void m19849a(int i, boolean z) throws IOException {
        m19854a(25, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (this.f18015a.hasRemaining()) {
            this.f18015a.put(b);
            return;
        }
        throw new C7676q4(this.f18015a.position(), this.f18015a.limit());
    }

    /* renamed from: a */
    public final void m19848a(int i, byte[] bArr) throws IOException {
        m19854a(i, 2);
        m19841b(bArr.length);
        int length = bArr.length;
        if (this.f18015a.remaining() >= length) {
            this.f18015a.put(bArr, 0, length);
            return;
        }
        throw new C7676q4(this.f18015a.position(), this.f18015a.limit());
    }

    /* renamed from: a */
    public final void m19847a(long j) throws IOException {
        while (((-128) & j) != 0) {
            m19855a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m19855a((int) j);
    }

    /* renamed from: b */
    public final void m19841b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m19855a((i & 127) | 128);
            i >>>= 7;
        }
        m19855a(i);
    }

    /* renamed from: b */
    public final void m19840b(int i, int i2) throws IOException {
        m19854a(i, 0);
        if (i2 >= 0) {
            m19841b(i2);
        } else {
            m19847a(i2);
        }
    }
}
