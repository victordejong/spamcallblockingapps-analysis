package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.an */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/an.class */
public class C1835an extends FilterInputStream {

    /* renamed from: ɩ */
    public C1832ak f1821;

    /* renamed from: ι */
    public final int f1824;

    /* renamed from: І */
    public int f1825;

    /* renamed from: і */
    public int f1826 = Integer.MAX_VALUE;

    /* renamed from: ǃ */
    public byte[] f1820 = new byte[8];

    /* renamed from: Ι */
    public byte[] f1823 = new byte[8];

    /* renamed from: ı */
    public byte[] f1818 = new byte[8];

    /* renamed from: ɹ */
    public int[] f1822 = new int[2];

    /* renamed from: Ɩ */
    public int f1819 = 8;

    /* renamed from: Ӏ */
    public int f1827 = 8;

    public C1835an(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        this.f1824 = Math.min(Math.max(i, 3), 16);
        this.f1825 = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, this.f1823, 0, 8);
        }
        this.f1821 = new C1832ak(iArr, this.f1824, true, z);
    }

    /* renamed from: ǃ */
    private int m36154() throws IOException {
        int i;
        if (this.f1826 == Integer.MAX_VALUE) {
            this.f1826 = ((FilterInputStream) this).in.read();
        }
        int i2 = 8;
        if (this.f1819 == 8) {
            byte[] bArr = this.f1820;
            int i3 = this.f1826;
            bArr[0] = (byte) i3;
            if (i3 >= 0) {
                int i4 = 1;
                do {
                    int read = ((FilterInputStream) this).in.read(this.f1820, i4, 8 - i4);
                    i = i4;
                    if (read <= 0) {
                        break;
                    }
                    i = i4 + read;
                    i4 = i;
                } while (i < 8);
                if (i >= 8) {
                    m36153();
                    this.f1826 = ((FilterInputStream) this).in.read();
                    this.f1819 = 0;
                    if (this.f1826 < 0) {
                        i2 = 8 - (this.f1820[7] & 255);
                    }
                    this.f1827 = i2;
                } else {
                    throw new IllegalStateException("unexpected block size");
                }
            } else {
                throw new IllegalStateException("unexpected block size");
            }
        }
        return this.f1827;
    }

    /* renamed from: Ι */
    private void m36153() {
        if (this.f1825 == 2) {
            byte[] bArr = this.f1820;
            System.arraycopy(bArr, 0, this.f1818, 0, bArr.length);
        }
        byte[] bArr2 = this.f1820;
        byte b = bArr2[0];
        byte b2 = bArr2[1];
        byte b3 = bArr2[2];
        byte b4 = bArr2[3];
        byte b5 = bArr2[4];
        byte b6 = bArr2[5];
        byte b7 = bArr2[6];
        byte b8 = bArr2[7];
        int i = this.f1824;
        C1832ak akVar = this.f1821;
        C1831aj.m36159(((b << 24) & (-16777216)) + ((b2 << 16) & 16711680) + ((b3 << 8) & 65280) + (b4 & 255), ((-16777216) & (b5 << 24)) + (16711680 & (b6 << 16)) + (65280 & (b7 << 8)) + (b8 & 255), false, i, akVar.f1802, akVar.f1803, this.f1822);
        int[] iArr = this.f1822;
        int i2 = iArr[0];
        int i3 = iArr[1];
        byte[] bArr3 = this.f1820;
        bArr3[0] = (byte) (i2 >> 24);
        bArr3[1] = (byte) (i2 >> 16);
        bArr3[2] = (byte) (i2 >> 8);
        bArr3[3] = (byte) i2;
        bArr3[4] = (byte) (i3 >> 24);
        bArr3[5] = (byte) (i3 >> 16);
        bArr3[6] = (byte) (i3 >> 8);
        bArr3[7] = (byte) i3;
        if (this.f1825 == 2) {
            for (int i4 = 0; i4 < 8; i4++) {
                byte[] bArr4 = this.f1820;
                bArr4[i4] = (byte) (bArr4[i4] ^ this.f1823[i4]);
            }
            byte[] bArr5 = this.f1818;
            System.arraycopy(bArr5, 0, this.f1823, 0, bArr5.length);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m36154();
        return this.f1827 - this.f1819;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m36154();
        int i = this.f1819;
        if (i >= this.f1827) {
            return -1;
        }
        byte[] bArr = this.f1820;
        this.f1819 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m36154();
            int i5 = this.f1819;
            if (i5 < this.f1827) {
                byte[] bArr2 = this.f1820;
                this.f1819 = i5 + 1;
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
