package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.CipherLiteInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CipherLiteInputStream.class */
public class CipherLiteInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    private CipherLite f12393a;

    /* renamed from: b */
    private final boolean f12394b;

    /* renamed from: c */
    private final boolean f12395c;

    /* renamed from: d */
    private boolean f12396d;

    /* renamed from: e */
    private final byte[] f12397e;

    /* renamed from: f */
    private byte[] f12398f;

    /* renamed from: g */
    private int f12399g;

    /* renamed from: h */
    private int f12400h;

    public CipherLiteInputStream(InputStream inputStream) {
        this(inputStream, CipherLite.f12388a, 512, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite) {
        this(inputStream, cipherLite, 512, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i) {
        this(inputStream, cipherLite, i, false, false);
    }

    public CipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i, boolean z, boolean z2) {
        super(inputStream);
        this.f12396d = false;
        this.f12399g = 0;
        this.f12400h = 0;
        if (!z2 || z) {
            this.f12394b = z;
            this.f12395c = z2;
            this.f12393a = cipherLite;
            if (i > 0 && i % 512 == 0) {
                this.f12397e = new byte[i];
                return;
            }
            throw new IllegalArgumentException("buffsize (" + i + ") must be a positive multiple of 512");
        }
        throw new IllegalArgumentException("lastMultiPart can only be true if multipart is true");
    }

    /* renamed from: c */
    private int m38385c() throws IOException {
        abortIfNeeded();
        if (this.f12396d) {
            return -1;
        }
        this.f12398f = null;
        int read = this.in.read(this.f12397e);
        int i = 0;
        if (read != -1) {
            byte[] mo38346a = this.f12393a.mo38346a(this.f12397e, 0, read);
            this.f12398f = mo38346a;
            this.f12399g = 0;
            if (mo38346a != null) {
                i = mo38346a.length;
            }
            this.f12400h = i;
            return i;
        }
        this.f12396d = true;
        if (this.f12394b && !this.f12395c) {
            return -1;
        }
        try {
            byte[] mo38348a = this.f12393a.mo38348a();
            this.f12398f = mo38348a;
            if (mo38348a == null) {
                return -1;
            }
            this.f12399g = 0;
            int length = mo38348a.length;
            this.f12400h = length;
            return length;
        } catch (BadPaddingException e) {
            if (S3CryptoScheme.m38306a(this.f12393a.f12389b.getAlgorithm())) {
                throw new SecurityException(e);
            }
            return -1;
        } catch (IllegalBlockSizeException e2) {
            return -1;
        }
    }

    /* renamed from: a */
    public final void m38387a() {
        if (markSupported()) {
            this.f12399g = 0;
            this.f12400h = 0;
            this.f12396d = false;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        abortIfNeeded();
        return this.f12400h - this.f12399g;
    }

    /* renamed from: b */
    public final void m38386b() {
        CipherLite cipherLite = this.f12393a;
        this.f12393a = cipherLite.f12390c.m38367a(cipherLite.f12391d, cipherLite.f12389b.getIV(), cipherLite.f12392e, cipherLite.f12389b.getProvider());
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
        if (!this.f12394b && !S3CryptoScheme.m38306a(this.f12393a.f12389b.getAlgorithm())) {
            try {
                this.f12393a.mo38348a();
            } catch (BadPaddingException | IllegalBlockSizeException e) {
            }
        }
        this.f12399g = 0;
        this.f12400h = 0;
        abortIfNeeded();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        abortIfNeeded();
        this.in.mark(i);
        this.f12393a.mo38344c();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        abortIfNeeded();
        return this.in.markSupported() && this.f12393a.mo38345b();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f12399g >= this.f12400h) {
            if (this.f12396d) {
                return -1;
            }
            int i = 0;
            while (i <= 1000) {
                int m38385c = m38385c();
                i++;
                if (m38385c != 0) {
                    if (m38385c == -1) {
                        return -1;
                    }
                }
            }
            throw new IOException("exceeded maximum number of attempts to read next chunk of data");
        }
        byte[] bArr = this.f12398f;
        int i2 = this.f12399g;
        this.f12399g = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f12399g >= this.f12400h) {
            if (this.f12396d) {
                return -1;
            }
            int i3 = 0;
            while (i3 <= 1000) {
                int m38385c = m38385c();
                i3++;
                if (m38385c != 0) {
                    if (m38385c == -1) {
                        return -1;
                    }
                }
            }
            throw new IOException("exceeded maximum number of attempts to read next chunk of data");
        }
        if (i2 <= 0) {
            return 0;
        }
        int i4 = this.f12400h;
        int i5 = this.f12399g;
        int i6 = i4 - i5;
        if (i2 >= i6) {
            i2 = i6;
        }
        System.arraycopy(this.f12398f, i5, bArr, i, i2);
        this.f12399g += i2;
        return i2;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        abortIfNeeded();
        this.in.reset();
        this.f12393a.mo38343d();
        m38387a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        abortIfNeeded();
        int i = this.f12400h;
        int i2 = this.f12399g;
        ?? r0 = i - i2;
        char c = j;
        if (j > r0) {
            c = r0;
        }
        if (c < 0) {
            return 0L;
        }
        this.f12399g = (int) (i2 + c);
        return c;
    }
}
