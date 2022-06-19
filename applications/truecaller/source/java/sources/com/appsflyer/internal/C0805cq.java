package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.cq */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cq.class */
public final class C0805cq extends FilterInputStream {
    private final int AFInAppEventParameterName;
    private int getLevel;
    private C0802cn valueOf;
    private byte[] values;
    private int AFVersionDeclaration = Integer.MAX_VALUE;
    private byte[] AFInAppEventType = new byte[8];
    private byte[] AFKeystoreWrapper = new byte[8];
    private int[] AFLogger$LogLevel = new int[2];
    private int init = 8;
    private int AppsFlyer2dXConversionCallback = 8;

    public C0805cq(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        int min = Math.min(Math.max(i, 3), 16);
        this.AFInAppEventParameterName = min;
        byte[] bArr2 = new byte[8];
        this.values = bArr2;
        this.getLevel = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.valueOf = new C0802cn(iArr, min, true, false);
    }

    private int AFInAppEventType() throws IOException {
        int i;
        if (this.AFVersionDeclaration == Integer.MAX_VALUE) {
            this.AFVersionDeclaration = ((FilterInputStream) this).in.read();
        }
        if (this.init == 8) {
            byte[] bArr = this.AFInAppEventType;
            int i2 = this.AFVersionDeclaration;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i3 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.AFInAppEventType, i3, 8 - i3);
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
            AFKeystoreWrapper();
            int read2 = ((FilterInputStream) this).in.read();
            this.AFVersionDeclaration = read2;
            this.init = 0;
            int i4 = 8;
            if (read2 < 0) {
                i4 = 8 - (this.AFInAppEventType[7] & 255);
            }
            this.AppsFlyer2dXConversionCallback = i4;
        }
        return this.AppsFlyer2dXConversionCallback;
    }

    private void AFKeystoreWrapper() {
        byte[] bArr;
        if (this.getLevel == 2) {
            byte[] bArr2 = this.AFInAppEventType;
            System.arraycopy(bArr2, 0, this.AFKeystoreWrapper, 0, bArr2.length);
        }
        byte[] bArr3 = this.AFInAppEventType;
        byte b = bArr3[0];
        byte b2 = bArr3[1];
        byte b3 = bArr3[2];
        byte b4 = bArr3[3];
        byte b5 = bArr3[4];
        byte b6 = bArr3[5];
        byte b7 = bArr3[6];
        byte b8 = bArr3[7];
        int i = this.AFInAppEventParameterName;
        C0802cn c0802cn = this.valueOf;
        C0808cv.AFInAppEventParameterName(((b << 24) & (-16777216)) + ((b2 << 16) & 16711680) + ((b3 << 8) & 65280) + (b4 & 255), ((-16777216) & (b5 << 24)) + (16711680 & (b6 << 16)) + (65280 & (b7 << 8)) + (b8 & 255), false, i, c0802cn.valueOf, c0802cn.values, this.AFLogger$LogLevel);
        int[] iArr = this.AFLogger$LogLevel;
        int i2 = iArr[0];
        int i3 = iArr[1];
        byte[] bArr4 = this.AFInAppEventType;
        bArr4[0] = (byte) (i2 >> 24);
        bArr4[1] = (byte) (i2 >> 16);
        bArr4[2] = (byte) (i2 >> 8);
        bArr4[3] = (byte) i2;
        bArr4[4] = (byte) (i3 >> 24);
        bArr4[5] = (byte) (i3 >> 16);
        bArr4[6] = (byte) (i3 >> 8);
        bArr4[7] = (byte) i3;
        if (this.getLevel == 2) {
            for (int i4 = 0; i4 < 8; i4++) {
                this.AFInAppEventType[i4] = (byte) (bArr[i4] ^ this.values[i4]);
            }
            byte[] bArr5 = this.AFKeystoreWrapper;
            System.arraycopy(bArr5, 0, this.values, 0, bArr5.length);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        AFInAppEventType();
        return this.AppsFlyer2dXConversionCallback - this.init;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        AFInAppEventType();
        int i = this.init;
        if (i >= this.AppsFlyer2dXConversionCallback) {
            return -1;
        }
        byte[] bArr = this.AFInAppEventType;
        this.init = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            AFInAppEventType();
            int i5 = this.init;
            if (i5 >= this.AppsFlyer2dXConversionCallback) {
                if (i4 != i) {
                    return i2 - (i3 - i4);
                }
                return -1;
            }
            byte[] bArr2 = this.AFInAppEventType;
            this.init = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
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
