package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.aj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aj.class */
public class C3414aj extends FilterInputStream {

    /* renamed from: ι */
    private static final short f12882 = (short) ((Math.sqrt(5.0d) - 1.0d) * Math.pow(2.0d, 15.0d));

    /* renamed from: Ɩ */
    private int f12884;

    /* renamed from: ȷ */
    private int f12886;

    /* renamed from: ɪ */
    private int f12888;

    /* renamed from: ɾ */
    private int f12890;

    /* renamed from: І */
    private int f12892;

    /* renamed from: і */
    private int f12893;

    /* renamed from: Ӏ */
    private int f12894 = Integer.MAX_VALUE;

    /* renamed from: Ι */
    private byte[] f12891 = new byte[8];

    /* renamed from: ǃ */
    private byte[] f12885 = new byte[8];

    /* renamed from: ı */
    private byte[] f12883 = new byte[8];

    /* renamed from: ɩ */
    private int f12887 = 8;

    /* renamed from: ɹ */
    private int f12889 = 8;

    public C3414aj(InputStream inputStream, int[] iArr, int i, byte[] bArr, int i2, int i3) throws IOException {
        super(inputStream);
        this.f12892 = Math.min(Math.max(i2, 5), 16);
        this.f12884 = i3;
        if (i3 == 3) {
            System.arraycopy(bArr, 0, this.f12885, 0, 8);
        }
        long j = ((iArr[0] & 4294967295L) << 32) | (4294967295L & iArr[1]);
        if (i != 0) {
            int i4 = (int) j;
            this.f12893 = i4;
            this.f12888 = i4 * i;
            this.f12890 = i4 ^ i;
            this.f12886 = (int) (j >> 32);
            return;
        }
        this.f12893 = (int) j;
        long j2 = j >> 3;
        short s = f12882;
        this.f12888 = (int) ((s * j2) >> 32);
        this.f12890 = (int) (j >> 32);
        this.f12886 = (int) (j2 + s);
    }

    /* renamed from: ı */
    private void m37997() {
        byte[] bArr;
        if (this.f12884 == 3) {
            byte[] bArr2 = this.f12891;
            System.arraycopy(bArr2, 0, this.f12883, 0, bArr2.length);
        }
        byte[] bArr3 = this.f12891;
        int i = ((bArr3[0] << 24) & (-16777216)) + ((bArr3[1] << 16) & 16711680) + ((bArr3[2] << 8) & 65280) + (bArr3[3] & 255);
        int i2 = ((-16777216) & (bArr3[4] << 24)) + (16711680 & (bArr3[5] << 16)) + (65280 & (bArr3[6] << 8)) + (bArr3[7] & 255);
        int i3 = 0;
        while (true) {
            int i4 = this.f12892;
            if (i3 >= i4) {
                break;
            }
            short s = f12882;
            i2 -= ((((i4 - i3) * s) + i) ^ ((i << 4) + this.f12890)) ^ ((i >>> 5) + this.f12886);
            i -= (((i2 << 4) + this.f12893) ^ ((s * (i4 - i3)) + i2)) ^ ((i2 >>> 5) + this.f12888);
            i3++;
        }
        byte[] bArr4 = this.f12891;
        bArr4[0] = (byte) (i >> 24);
        bArr4[1] = (byte) (i >> 16);
        bArr4[2] = (byte) (i >> 8);
        bArr4[3] = (byte) i;
        bArr4[4] = (byte) (i2 >> 24);
        bArr4[5] = (byte) (i2 >> 16);
        bArr4[6] = (byte) (i2 >> 8);
        bArr4[7] = (byte) i2;
        if (this.f12884 == 3) {
            for (int i5 = 0; i5 < 8; i5++) {
                this.f12891[i5] = (byte) (bArr[i5] ^ this.f12885[i5]);
            }
            byte[] bArr5 = this.f12883;
            System.arraycopy(bArr5, 0, this.f12885, 0, bArr5.length);
        }
    }

    /* renamed from: ǃ */
    private int m37996() throws IOException {
        int i;
        if (this.f12894 == Integer.MAX_VALUE) {
            this.f12894 = ((FilterInputStream) this).in.read();
        }
        if (this.f12887 == 8) {
            byte[] bArr = this.f12891;
            int i2 = this.f12894;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i3 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.f12891, i3, 8 - i3);
                i = i3;
                if (read <= 0) {
                    break;
                }
                i = i3 + read;
                i3 = i;
            } while (i < 8);
            if (i < 8) {
                throw new IllegalStateException("unexpected block size");
            }
            m37997();
            int read2 = ((FilterInputStream) this).in.read();
            this.f12894 = read2;
            this.f12887 = 0;
            int i4 = 8;
            if (read2 < 0) {
                i4 = 8 - (this.f12891[7] & 255);
            }
            this.f12889 = i4;
        }
        return this.f12889;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m37996();
        return this.f12889 - this.f12887;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m37996();
        int i = this.f12887;
        if (i >= this.f12889) {
            return -1;
        }
        byte[] bArr = this.f12891;
        this.f12887 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m37996();
            int i5 = this.f12887;
            if (i5 >= this.f12889) {
                if (i4 != i) {
                    return i2 - (i3 - i4);
                }
                return -1;
            }
            byte[] bArr2 = this.f12891;
            this.f12887 = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        char c;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (c >= j || read() == -1) {
                break;
            }
            r0 = c + 1;
        }
        return c;
    }
}
