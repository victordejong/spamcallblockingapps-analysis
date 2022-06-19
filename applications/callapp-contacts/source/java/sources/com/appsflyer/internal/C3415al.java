package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.al */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/al.class */
public class C3415al extends FilterInputStream {

    /* renamed from: ı */
    private C3417an f12895;

    /* renamed from: ɩ */
    private byte[] f12898;

    /* renamed from: ι */
    private final int f12901;

    /* renamed from: і */
    private int f12903;

    /* renamed from: ɹ */
    private int f12899 = Integer.MAX_VALUE;

    /* renamed from: ǃ */
    private byte[] f12897 = new byte[8];

    /* renamed from: Ι */
    private byte[] f12900 = new byte[8];

    /* renamed from: І */
    private int[] f12902 = new int[2];

    /* renamed from: Ӏ */
    private int f12904 = 8;

    /* renamed from: Ɩ */
    private int f12896 = 8;

    public C3415al(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        int min = Math.min(Math.max(i, 3), 16);
        this.f12901 = min;
        byte[] bArr2 = new byte[8];
        this.f12898 = bArr2;
        this.f12903 = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.f12895 = new C3417an(iArr, min, true, z);
    }

    /* renamed from: ı */
    private void m37995() {
        byte[] bArr;
        if (this.f12903 == 2) {
            byte[] bArr2 = this.f12897;
            System.arraycopy(bArr2, 0, this.f12900, 0, bArr2.length);
        }
        byte[] bArr3 = this.f12897;
        C3416am.m37993(((bArr3[0] << 24) & (-16777216)) + ((bArr3[1] << 16) & 16711680) + ((bArr3[2] << 8) & 65280) + (bArr3[3] & 255), ((-16777216) & (bArr3[4] << 24)) + (16711680 & (bArr3[5] << 16)) + (65280 & (bArr3[6] << 8)) + (bArr3[7] & 255), false, this.f12901, this.f12895.f12906, this.f12895.f12907, this.f12902);
        int[] iArr = this.f12902;
        int i = iArr[0];
        int i2 = iArr[1];
        byte[] bArr4 = this.f12897;
        bArr4[0] = (byte) (i >> 24);
        bArr4[1] = (byte) (i >> 16);
        bArr4[2] = (byte) (i >> 8);
        bArr4[3] = (byte) i;
        bArr4[4] = (byte) (i2 >> 24);
        bArr4[5] = (byte) (i2 >> 16);
        bArr4[6] = (byte) (i2 >> 8);
        bArr4[7] = (byte) i2;
        if (this.f12903 == 2) {
            for (int i3 = 0; i3 < 8; i3++) {
                this.f12897[i3] = (byte) (bArr[i3] ^ this.f12898[i3]);
            }
            byte[] bArr5 = this.f12900;
            System.arraycopy(bArr5, 0, this.f12898, 0, bArr5.length);
        }
    }

    /* renamed from: ɩ */
    private int m37994() throws IOException {
        int i;
        if (this.f12899 == Integer.MAX_VALUE) {
            this.f12899 = ((FilterInputStream) this).in.read();
        }
        if (this.f12904 == 8) {
            byte[] bArr = this.f12897;
            int i2 = this.f12899;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i3 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.f12897, i3, 8 - i3);
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
            m37995();
            int read2 = ((FilterInputStream) this).in.read();
            this.f12899 = read2;
            this.f12904 = 0;
            int i4 = 8;
            if (read2 < 0) {
                i4 = 8 - (this.f12897[7] & 255);
            }
            this.f12896 = i4;
        }
        return this.f12896;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m37994();
        return this.f12896 - this.f12904;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m37994();
        int i = this.f12904;
        if (i >= this.f12896) {
            return -1;
        }
        byte[] bArr = this.f12897;
        this.f12904 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m37994();
            int i5 = this.f12904;
            if (i5 >= this.f12896) {
                if (i4 != i) {
                    return i2 - (i3 - i4);
                }
                return -1;
            }
            byte[] bArr2 = this.f12897;
            this.f12904 = i5 + 1;
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
