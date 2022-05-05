package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.al */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/al.class */
public class C1833al extends FilterInputStream {

    /* renamed from: Ι */
    public static final short f1804 = (short) ((Math.sqrt(5.0d) - 1.0d) * Math.pow(2.0d, 15.0d));

    /* renamed from: Ɩ */
    public int f1806;

    /* renamed from: ȷ */
    public int f1808;

    /* renamed from: ɹ */
    public int f1810;

    /* renamed from: ɾ */
    public int f1811;

    /* renamed from: І */
    public int f1813;

    /* renamed from: ӏ */
    public int f1816;

    /* renamed from: Ӏ */
    public int f1815 = Integer.MAX_VALUE;

    /* renamed from: ı */
    public byte[] f1805 = new byte[8];

    /* renamed from: ι */
    public byte[] f1812 = new byte[8];

    /* renamed from: ɩ */
    public byte[] f1809 = new byte[8];

    /* renamed from: ǃ */
    public int f1807 = 8;

    /* renamed from: і */
    public int f1814 = 8;

    public C1833al(InputStream inputStream, int[] iArr, int i, byte[] bArr, int i2, int i3) throws IOException {
        super(inputStream);
        this.f1813 = Math.min(Math.max(i2, 5), 16);
        this.f1810 = i3;
        if (i3 == 3) {
            System.arraycopy(bArr, 0, this.f1812, 0, 8);
        }
        long j = ((iArr[0] & 4294967295L) << 32) | (4294967295L & iArr[1]);
        if (i == 0) {
            this.f1806 = (int) j;
            long j2 = j >> 3;
            short s = f1804;
            this.f1811 = (int) ((s * j2) >> 32);
            this.f1808 = (int) (j >> 32);
            this.f1816 = (int) (j2 + s);
            return;
        }
        int i4 = (int) j;
        this.f1806 = i4;
        this.f1811 = i4 * i;
        this.f1808 = i4 ^ i;
        this.f1816 = (int) (j >> 32);
    }

    /* renamed from: ɩ */
    private void m36156() {
        if (this.f1810 == 3) {
            byte[] bArr = this.f1805;
            System.arraycopy(bArr, 0, this.f1809, 0, bArr.length);
        }
        byte[] bArr2 = this.f1805;
        int i = ((bArr2[0] << 24) & (-16777216)) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & 65280) + (bArr2[3] & 255);
        int i2 = ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & 255);
        int i3 = 0;
        while (true) {
            int i4 = this.f1813;
            if (i3 >= i4) {
                break;
            }
            short s = f1804;
            i2 -= ((((i4 - i3) * s) + i) ^ ((i << 4) + this.f1808)) ^ ((i >>> 5) + this.f1816);
            i -= (((i2 << 4) + this.f1806) ^ ((s * (i4 - i3)) + i2)) ^ ((i2 >>> 5) + this.f1811);
            i3++;
        }
        byte[] bArr3 = this.f1805;
        bArr3[0] = (byte) (i >> 24);
        bArr3[1] = (byte) (i >> 16);
        bArr3[2] = (byte) (i >> 8);
        bArr3[3] = (byte) i;
        bArr3[4] = (byte) (i2 >> 24);
        bArr3[5] = (byte) (i2 >> 16);
        bArr3[6] = (byte) (i2 >> 8);
        bArr3[7] = (byte) i2;
        if (this.f1810 == 3) {
            for (int i5 = 0; i5 < 8; i5++) {
                byte[] bArr4 = this.f1805;
                bArr4[i5] = (byte) (bArr4[i5] ^ this.f1812[i5]);
            }
            byte[] bArr5 = this.f1809;
            System.arraycopy(bArr5, 0, this.f1812, 0, bArr5.length);
        }
    }

    /* renamed from: ι */
    private int m36155() throws IOException {
        int i;
        if (this.f1815 == Integer.MAX_VALUE) {
            this.f1815 = ((FilterInputStream) this).in.read();
        }
        int i2 = 8;
        if (this.f1807 == 8) {
            byte[] bArr = this.f1805;
            int i3 = this.f1815;
            bArr[0] = (byte) i3;
            if (i3 >= 0) {
                int i4 = 1;
                do {
                    int read = ((FilterInputStream) this).in.read(this.f1805, i4, 8 - i4);
                    i = i4;
                    if (read <= 0) {
                        break;
                    }
                    i = i4 + read;
                    i4 = i;
                } while (i < 8);
                if (i >= 8) {
                    m36156();
                    this.f1815 = ((FilterInputStream) this).in.read();
                    this.f1807 = 0;
                    if (this.f1815 < 0) {
                        i2 = 8 - (this.f1805[7] & 255);
                    }
                    this.f1814 = i2;
                } else {
                    throw new IllegalStateException("unexpected block size");
                }
            } else {
                throw new IllegalStateException("unexpected block size");
            }
        }
        return this.f1814;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m36155();
        return this.f1814 - this.f1807;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m36155();
        int i = this.f1807;
        if (i >= this.f1814) {
            return -1;
        }
        byte[] bArr = this.f1805;
        this.f1807 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m36155();
            int i5 = this.f1807;
            if (i5 < this.f1814) {
                byte[] bArr2 = this.f1805;
                this.f1807 = i5 + 1;
                bArr[i4] = bArr2[i5];
            } else if (i4 == i) {
                return -1;
            } else {
                return i2 - (i3 - i4);
            }
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        while (j2 < j && read() != -1) {
            j2++;
        }
        return j2;
    }
}
