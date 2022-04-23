package com.google.common.hash;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import p131c.p161d.p266c.p267a.C4916c;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5043b;
import p131c.p161d.p266c.p270d.AbstractC5044c;
import p131c.p161d.p266c.p270d.AbstractC5046e;
import p131c.p161d.p266c.p270d.AbstractC5047f;
import p131c.p161d.p266c.p273g.C5069b;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/Murmur3_32HashFunction.class */
public final class Murmur3_32HashFunction extends AbstractC5043b implements Serializable {

    /* renamed from: C1 */
    public static final int f30839C1 = -862048943;

    /* renamed from: C2 */
    public static final int f30840C2 = 461845907;
    public static final int CHUNK_SIZE = 4;
    public static final long serialVersionUID = 0;
    public final int seed;
    public static final AbstractC5046e MURMUR3_32 = new Murmur3_32HashFunction(0);
    public static final AbstractC5046e GOOD_FAST_HASH_32 = new Murmur3_32HashFunction(Hashing.f30831a);

    /* renamed from: com.google.common.hash.Murmur3_32HashFunction$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Murmur3_32HashFunction$a.class */
    public static final class C7695a extends AbstractC5044c {

        /* renamed from: a */
        public int f30841a;

        /* renamed from: b */
        public long f30842b;

        /* renamed from: c */
        public int f30843c;

        /* renamed from: d */
        public int f30844d = 0;

        /* renamed from: e */
        public boolean f30845e = false;

        public C7695a(int i) {
            this.f30841a = i;
        }

        /* renamed from: a */
        public AbstractC5047f m7933a(byte b) {
            m7930a(1, b & 255);
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5044c
        /* renamed from: a */
        public AbstractC5047f mo7932a(char c) {
            m7930a(2, c);
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
        /* renamed from: a */
        public AbstractC5047f mo7931a(int i) {
            m7930a(4, i);
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
        /* renamed from: a */
        public AbstractC5047f mo7929a(long j) {
            m7930a(4, (int) j);
            m7930a(4, j >>> 32);
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5044c, p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
        /* renamed from: a */
        public AbstractC5047f mo7928a(CharSequence charSequence, Charset charset) {
            int i;
            if (!C4916c.f17556b.equals(charset)) {
                return super.mo7928a(charSequence, charset);
            }
            int length = charSequence.length();
            int i2 = 0;
            while (true) {
                int i3 = i2 + 4;
                i = i2;
                if (i3 > length) {
                    break;
                }
                char charAt = charSequence.charAt(i2);
                char charAt2 = charSequence.charAt(i2 + 1);
                char charAt3 = charSequence.charAt(i2 + 2);
                char charAt4 = charSequence.charAt(i2 + 3);
                i = i2;
                if (charAt >= 128) {
                    break;
                }
                i = i2;
                if (charAt2 >= 128) {
                    break;
                }
                i = i2;
                if (charAt3 >= 128) {
                    break;
                }
                i = i2;
                if (charAt4 >= 128) {
                    break;
                }
                m7930a(4, (charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24));
                i2 = i3;
            }
            while (i < length) {
                char charAt5 = charSequence.charAt(i);
                if (charAt5 < 128) {
                    m7930a(1, charAt5);
                } else if (charAt5 < 2048) {
                    m7930a(2, Murmur3_32HashFunction.charToTwoUtf8Bytes(charAt5));
                } else if (charAt5 < 55296 || charAt5 > 57343) {
                    m7930a(3, Murmur3_32HashFunction.charToThreeUtf8Bytes(charAt5));
                } else {
                    int codePointAt = Character.codePointAt(charSequence, i);
                    if (codePointAt == charAt5) {
                        mo24601a(charSequence.subSequence(i, length).toString().getBytes(charset));
                        return this;
                    }
                    i++;
                    m7930a(4, Murmur3_32HashFunction.codePointToFourUtf8Bytes(codePointAt));
                }
                i++;
            }
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f
        /* renamed from: a */
        public AbstractC5047f mo7927a(ByteBuffer byteBuffer) {
            ByteOrder order = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                mo7931a(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                m7933a(byteBuffer.get());
            }
            byteBuffer.order(order);
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5044c, p131c.p161d.p266c.p270d.AbstractC5047f
        /* renamed from: a */
        public AbstractC5047f mo7926a(byte[] bArr, int i, int i2) {
            int i3;
            C4933n.m24778b(i, i + i2, bArr.length);
            int i4 = 0;
            while (true) {
                int i5 = i4 + 4;
                if (i5 <= i2) {
                    m7930a(4, Murmur3_32HashFunction.getIntLittleEndian(bArr, i4 + i));
                    i4 = i5;
                }
            }
            for (i3 = i4; i3 < i2; i3++) {
                m7933a(bArr[i + i3]);
            }
            return this;
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5047f
        /* renamed from: a */
        public HashCode mo7934a() {
            C4933n.m24776b(!this.f30845e);
            this.f30845e = true;
            int mixK1 = this.f30841a ^ Murmur3_32HashFunction.mixK1((int) this.f30842b);
            this.f30841a = mixK1;
            return Murmur3_32HashFunction.fmix(mixK1, this.f30844d);
        }

        /* renamed from: a */
        public final void m7930a(int i, long j) {
            long j2 = this.f30842b;
            int i2 = this.f30843c;
            long j3 = ((j & 4294967295L) << i2) | j2;
            this.f30842b = j3;
            int i3 = i2 + (i * 8);
            this.f30843c = i3;
            this.f30844d += i;
            if (i3 >= 32) {
                this.f30841a = Murmur3_32HashFunction.mixH1(this.f30841a, Murmur3_32HashFunction.mixK1((int) j3));
                this.f30842b >>>= 32;
                this.f30843c -= 32;
            }
        }
    }

    public Murmur3_32HashFunction(int i) {
        this.seed = i;
    }

    public static long charToThreeUtf8Bytes(char c) {
        return (((c & '?') | 128) << 16) | (((c >>> '\f') | 480) & 255) | ((((c >>> 6) & 63) | 128) << 8);
    }

    public static long charToTwoUtf8Bytes(char c) {
        return (((c & '?') | 128) << 8) | (((c >>> 6) | 960) & 255);
    }

    public static long codePointToFourUtf8Bytes(int i) {
        return (((i >>> 18) | 240) & 255) | ((((i >>> 12) & 63) | 128) << 8) | ((((i >>> 6) & 63) | 128) << 16) | (((i & 63) | 128) << 24);
    }

    public static HashCode fmix(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return HashCode.fromInt(i5 ^ (i5 >>> 16));
    }

    public static int getIntLittleEndian(byte[] bArr, int i) {
        return Ints.m7815a(bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
    }

    public static int mixH1(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) - 430675100;
    }

    public static int mixK1(int i) {
        return Integer.rotateLeft(i * f30839C1, 15) * f30840C2;
    }

    public int bits() {
        return 32;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Murmur3_32HashFunction) {
            z = false;
            if (this.seed == ((Murmur3_32HashFunction) obj).seed) {
                z = true;
            }
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5043b
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        C4933n.m24778b(i, i + i2, bArr.length);
        int i3 = this.seed;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5 + 4;
            if (i6 > i2) {
                break;
            }
            i3 = mixH1(i3, mixK1(getIntLittleEndian(bArr, i5 + i)));
            i5 = i6;
        }
        int i7 = 0;
        int i8 = i5;
        while (i8 < i2) {
            i4 ^= C5069b.m24560a(bArr[i + i8]) << i7;
            i8++;
            i7 += 8;
        }
        return fmix(mixK1(i4) ^ i3, i2);
    }

    public int hashCode() {
        return Murmur3_32HashFunction.class.hashCode() ^ this.seed;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5043b
    public HashCode hashInt(int i) {
        return fmix(mixH1(this.seed, mixK1(i)), 4);
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5043b
    public HashCode hashLong(long j) {
        int i = (int) (j >>> 32);
        return fmix(mixH1(mixH1(this.seed, mixK1((int) j)), mixK1(i)), 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4, types: [long] */
    /* JADX WARN: Type inference failed for: r22v0, types: [long] */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p266c.p270d.AbstractC5043b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.hash.HashCode hashString(java.lang.CharSequence r7, java.nio.charset.Charset r8) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.Murmur3_32HashFunction.hashString(java.lang.CharSequence, java.nio.charset.Charset):com.google.common.hash.HashCode");
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5043b
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int i = this.seed;
        for (int i2 = 1; i2 < charSequence.length(); i2 += 2) {
            i = mixH1(i, mixK1(charSequence.charAt(i2 - 1) | (charSequence.charAt(i2) << 16)));
        }
        int i3 = i;
        if ((charSequence.length() & 1) == 1) {
            i3 = i ^ mixK1(charSequence.charAt(charSequence.length() - 1));
        }
        return fmix(i3, charSequence.length() * 2);
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public AbstractC5047f newHasher() {
        return new C7695a(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_32(" + this.seed + ")";
    }
}
