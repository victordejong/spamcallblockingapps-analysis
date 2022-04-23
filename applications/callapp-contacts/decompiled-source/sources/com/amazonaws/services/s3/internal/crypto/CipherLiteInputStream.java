package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CipherLiteInputStream.class */
public class CipherLiteInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private CipherLite f6846a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6847b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f6848c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6849d;
    private final byte[] e;
    private byte[] f;
    private int g;
    private int h;

    /* JADX INFO: Access modifiers changed from: protected */
    public CipherLiteInputStream(InputStream inputStream) {
        this(inputStream, CipherLite.f6842a, 512, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite) {
        this(inputStream, cipherLite, 512, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i) {
        this(inputStream, cipherLite, i, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i, boolean z, boolean z2) {
        super(inputStream);
        this.f6849d = false;
        this.g = 0;
        this.h = 0;
        if (!z2 || z) {
            this.f6847b = z;
            this.f6848c = z2;
            this.f6846a = cipherLite;
            if (i <= 0 || i % 512 != 0) {
                throw new IllegalArgumentException("buffsize (" + i + ") must be a positive multiple of 512");
            }
            this.e = new byte[i];
            return;
        }
        throw new IllegalArgumentException("lastMultiPart can only be true if multipart is true");
    }

    private int c() throws IOException {
        abortIfNeeded();
        if (this.f6849d) {
            return -1;
        }
        this.f = null;
        int read = this.in.read(this.e);
        int i = 0;
        if (read == -1) {
            this.f6849d = true;
            if (this.f6847b && !this.f6848c) {
                return -1;
            }
            try {
                byte[] a2 = this.f6846a.a();
                this.f = a2;
                if (a2 == null) {
                    return -1;
                }
                this.g = 0;
                int length = a2.length;
                this.h = length;
                return length;
            } catch (BadPaddingException e) {
                if (!S3CryptoScheme.a(this.f6846a.f6843b.getAlgorithm())) {
                    return -1;
                }
                throw new SecurityException(e);
            } catch (IllegalBlockSizeException e2) {
                return -1;
            }
        } else {
            byte[] a3 = this.f6846a.a(this.e, 0, read);
            this.f = a3;
            this.g = 0;
            if (a3 != null) {
                i = a3.length;
            }
            this.h = i;
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (markSupported()) {
            this.g = 0;
            this.h = 0;
            this.f6849d = false;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        abortIfNeeded();
        return this.h - this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        CipherLite cipherLite = this.f6846a;
        this.f6846a = cipherLite.f6844c.a(cipherLite.f6845d, cipherLite.f6843b.getIV(), cipherLite.e, cipherLite.f6843b.getProvider());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
        if (!this.f6847b && !S3CryptoScheme.a(this.f6846a.f6843b.getAlgorithm())) {
            try {
                this.f6846a.a();
            } catch (BadPaddingException | IllegalBlockSizeException e) {
            }
        }
        this.g = 0;
        this.h = 0;
        abortIfNeeded();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        abortIfNeeded();
        this.in.mark(i);
        this.f6846a.c();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        abortIfNeeded();
        return this.in.markSupported() && this.f6846a.b();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.g >= this.h) {
            if (this.f6849d) {
                return -1;
            }
            int i = 0;
            while (i <= 1000) {
                int c2 = c();
                i++;
                if (c2 != 0) {
                    if (c2 == -1) {
                        return -1;
                    }
                }
            }
            throw new IOException("exceeded maximum number of attempts to read next chunk of data");
        }
        byte[] bArr = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.g >= this.h) {
            if (this.f6849d) {
                return -1;
            }
            int i3 = 0;
            while (i3 <= 1000) {
                int c2 = c();
                i3++;
                if (c2 != 0) {
                    if (c2 == -1) {
                        return -1;
                    }
                }
            }
            throw new IOException("exceeded maximum number of attempts to read next chunk of data");
        }
        if (i2 <= 0) {
            return 0;
        }
        int i4 = this.h;
        int i5 = this.g;
        int i6 = i4 - i5;
        if (i2 >= i6) {
            i2 = i6;
        }
        System.arraycopy(this.f, i5, bArr, i, i2);
        this.g += i2;
        return i2;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        abortIfNeeded();
        this.in.reset();
        this.f6846a.d();
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            r0.abortIfNeeded()
            r0 = r6
            int r0 = r0.h
            r9 = r0
            r0 = r6
            int r0 = r0.g
            r10 = r0
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            long r0 = (long) r0
            r11 = r0
            r0 = r7
            r13 = r0
            r0 = r7
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0024
            r0 = r11
            r13 = r0
        L_0x0024:
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002d
            r0 = 0
            return r0
        L_0x002d:
            r0 = r6
            r1 = r10
            long r1 = (long) r1
            r2 = r13
            long r1 = r1 + r2
            int r1 = (int) r1
            r0.g = r1
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.s3.internal.crypto.CipherLiteInputStream.skip(long):long");
    }
}
