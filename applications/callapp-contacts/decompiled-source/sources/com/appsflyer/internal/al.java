package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/al.class */
public class al extends FilterInputStream {

    /* renamed from: ı  reason: contains not printable characters */
    private an f219;

    /* renamed from: ɩ  reason: contains not printable characters */
    private byte[] f222;

    /* renamed from: ι  reason: contains not printable characters */
    private final int f225;

    /* renamed from: і  reason: contains not printable characters */
    private int f227;

    /* renamed from: ɹ  reason: contains not printable characters */
    private int f223 = Integer.MAX_VALUE;

    /* renamed from: ǃ  reason: contains not printable characters */
    private byte[] f221 = new byte[8];

    /* renamed from: Ι  reason: contains not printable characters */
    private byte[] f224 = new byte[8];

    /* renamed from: І  reason: contains not printable characters */
    private int[] f226 = new int[2];

    /* renamed from: Ӏ  reason: contains not printable characters */
    private int f228 = 8;

    /* renamed from: Ɩ  reason: contains not printable characters */
    private int f220 = 8;

    public al(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        int min = Math.min(Math.max(i, 3), 16);
        this.f225 = min;
        byte[] bArr2 = new byte[8];
        this.f222 = bArr2;
        this.f227 = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.f219 = new an(iArr, min, true, z);
    }

    /* renamed from: ı  reason: contains not printable characters */
    private void m966() {
        if (this.f227 == 2) {
            byte[] bArr = this.f221;
            System.arraycopy(bArr, 0, this.f224, 0, bArr.length);
        }
        byte[] bArr2 = this.f221;
        am.m968(((bArr2[0] << 24) & (-16777216)) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & 65280) + (bArr2[3] & 255), ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & 255), false, this.f225, this.f219.f230, this.f219.f231, this.f226);
        int[] iArr = this.f226;
        int i = iArr[0];
        int i2 = iArr[1];
        byte[] bArr3 = this.f221;
        bArr3[0] = (byte) (i >> 24);
        bArr3[1] = (byte) (i >> 16);
        bArr3[2] = (byte) (i >> 8);
        bArr3[3] = (byte) i;
        bArr3[4] = (byte) (i2 >> 24);
        bArr3[5] = (byte) (i2 >> 16);
        bArr3[6] = (byte) (i2 >> 8);
        bArr3[7] = (byte) i2;
        if (this.f227 == 2) {
            for (int i3 = 0; i3 < 8; i3++) {
                byte[] bArr4 = this.f221;
                bArr4[i3] = (byte) (bArr4[i3] ^ this.f222[i3]);
            }
            byte[] bArr5 = this.f224;
            System.arraycopy(bArr5, 0, this.f222, 0, bArr5.length);
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private int m967() throws IOException {
        int i;
        if (this.f223 == Integer.MAX_VALUE) {
            this.f223 = ((FilterInputStream) this).in.read();
        }
        int i2 = 8;
        if (this.f228 == 8) {
            byte[] bArr = this.f221;
            int i3 = this.f223;
            bArr[0] = (byte) i3;
            if (i3 >= 0) {
                int i4 = 1;
                do {
                    int read = ((FilterInputStream) this).in.read(this.f221, i4, 8 - i4);
                    i = i4;
                    if (read <= 0) {
                        break;
                    }
                    i = i4 + read;
                    i4 = i;
                } while (i < 8);
                if (i >= 8) {
                    m966();
                    int read2 = ((FilterInputStream) this).in.read();
                    this.f223 = read2;
                    this.f228 = 0;
                    if (read2 < 0) {
                        i2 = 8 - (this.f221[7] & 255);
                    }
                    this.f220 = i2;
                } else {
                    throw new IllegalStateException("unexpected block size");
                }
            } else {
                throw new IllegalStateException("unexpected block size");
            }
        }
        return this.f220;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m967();
        return this.f220 - this.f228;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m967();
        int i = this.f228;
        if (i >= this.f220) {
            return -1;
        }
        byte[] bArr = this.f221;
        this.f228 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m967();
            int i5 = this.f228;
            if (i5 < this.f220) {
                byte[] bArr2 = this.f221;
                this.f228 = i5 + 1;
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
