package com.amazonaws.services.s3.internal.crypto;

import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/GCMCipherLite.class */
final class GCMCipherLite extends CipherLite {
    private static final int f = ContentCryptoScheme.f6855b.f() / 8;
    private final int g;
    private long h;
    private boolean i;
    private long j;
    private long k;
    private CipherLite l;
    private byte[] m;
    private boolean n;
    private boolean o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GCMCipherLite(Cipher cipher, SecretKey secretKey, int i) {
        super(cipher, ContentCryptoScheme.f6855b, secretKey, i);
        this.g = i == 1 ? f : 0;
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
    }

    private int a(int i) {
        if (this.h + i <= 68719476704L) {
            return i;
        }
        this.o = true;
        throw new SecurityException("Number of bytes processed has exceeded the maximum allowed by AES/GCM; [outputByteCount=" + this.h + ", delta=" + i + "]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
    public final byte[] a() throws IllegalBlockSizeException, BadPaddingException {
        if (!this.n) {
            this.n = true;
            byte[] a2 = super.a();
            this.m = a2;
            if (a2 == null) {
                return null;
            }
            this.h += a(a2.length - this.g);
            return (byte[]) this.m.clone();
        } else if (!this.o) {
            byte[] bArr = this.m;
            if (bArr == null) {
                return null;
            }
            return (byte[]) bArr.clone();
        } else {
            throw new SecurityException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
    public final byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        CipherLite cipherLite = this.l;
        boolean z = true;
        boolean z2 = true;
        int i3 = 0;
        if (cipherLite == null) {
            byte[] a2 = super.a(bArr, i, i2);
            if (a2 == null) {
                if (bArr.length <= 0) {
                    z2 = false;
                }
                this.i = z2;
                return null;
            }
            this.h += a(a2.length);
            if (a2.length != 0 || i2 <= 0) {
                z = false;
            }
            this.i = z;
            bArr2 = a2;
        } else {
            byte[] a3 = cipherLite.a(bArr, i, i2);
            if (a3 == null) {
                return null;
            }
            long length = this.j + a3.length;
            this.j = length;
            long j = this.h;
            if (length == j) {
                this.l = null;
                bArr2 = a3;
            } else {
                bArr2 = a3;
                if (length > j) {
                    if (1 != this.e) {
                        byte[] bArr3 = this.m;
                        if (bArr3 != null) {
                            i3 = bArr3.length;
                        }
                        long j2 = this.h;
                        long j3 = this.j;
                        long length2 = a3.length;
                        long j4 = i3;
                        this.j = j2 - j4;
                        this.l = null;
                        return Arrays.copyOf(a3, (int) ((j2 - (j3 - length2)) - j4));
                    }
                    throw new IllegalStateException("currentCount=" + this.j + " > outputByteCount=" + this.h);
                }
            }
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
    public final boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
    public final long c() {
        long j = this.l == null ? this.h : this.j;
        this.k = j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.CipherLite
    public final void d() {
        long j = this.k;
        if (j < this.h || this.i) {
            try {
                this.l = a(j);
                this.j = this.k;
            } catch (Exception e) {
                throw (e instanceof RuntimeException ? (RuntimeException) e : new IllegalStateException(e));
            }
        }
    }
}
