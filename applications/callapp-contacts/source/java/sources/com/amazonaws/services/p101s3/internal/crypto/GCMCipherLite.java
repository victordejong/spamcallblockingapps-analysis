package com.amazonaws.services.p101s3.internal.crypto;

import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.GCMCipherLite */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/GCMCipherLite.class */
final class GCMCipherLite extends CipherLite {

    /* renamed from: f */
    private static final int f12413f = ContentCryptoScheme.f12406b.mo38359f() / 8;

    /* renamed from: g */
    private final int f12414g;

    /* renamed from: h */
    private long f12415h;

    /* renamed from: i */
    private boolean f12416i;

    /* renamed from: j */
    private long f12417j;

    /* renamed from: k */
    private long f12418k;

    /* renamed from: l */
    private CipherLite f12419l;

    /* renamed from: m */
    private byte[] f12420m;

    /* renamed from: n */
    private boolean f12421n;

    /* renamed from: o */
    private boolean f12422o;

    public GCMCipherLite(Cipher cipher, SecretKey secretKey, int i) {
        super(cipher, ContentCryptoScheme.f12406b, secretKey, i);
        this.f12414g = i == 1 ? f12413f : 0;
        if (i == 1 || i == 2) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    private int m38347a(int i) {
        if (this.f12415h + i <= 68719476704L) {
            return i;
        }
        this.f12422o = true;
        throw new SecurityException("Number of bytes processed has exceeded the maximum allowed by AES/GCM; [outputByteCount=" + this.f12415h + ", delta=" + i + "]");
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
    /* renamed from: a */
    public final byte[] mo38348a() throws IllegalBlockSizeException, BadPaddingException {
        if (this.f12421n) {
            if (this.f12422o) {
                throw new SecurityException();
            }
            byte[] bArr = this.f12420m;
            if (bArr != null) {
                return (byte[]) bArr.clone();
            }
            return null;
        }
        this.f12421n = true;
        byte[] mo38348a = super.mo38348a();
        this.f12420m = mo38348a;
        if (mo38348a == null) {
            return null;
        }
        this.f12415h += m38347a(mo38348a.length - this.f12414g);
        return (byte[]) this.f12420m.clone();
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
    /* renamed from: a */
    public final byte[] mo38346a(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        CipherLite cipherLite = this.f12419l;
        boolean z = true;
        if (cipherLite == null) {
            byte[] mo38346a = super.mo38346a(bArr, i, i2);
            if (mo38346a == null) {
                if (bArr.length <= 0) {
                    z = false;
                }
                this.f12416i = z;
                return null;
            }
            this.f12415h += m38347a(mo38346a.length);
            this.f12416i = mo38346a.length == 0 && i2 > 0;
            bArr2 = mo38346a;
        } else {
            byte[] mo38346a2 = cipherLite.mo38346a(bArr, i, i2);
            if (mo38346a2 == null) {
                return null;
            }
            long length = this.f12417j + mo38346a2.length;
            this.f12417j = length;
            long j = this.f12415h;
            if (length == j) {
                this.f12419l = null;
                bArr2 = mo38346a2;
            } else {
                bArr2 = mo38346a2;
                if (length > j) {
                    if (1 == this.f12392e) {
                        throw new IllegalStateException("currentCount=" + this.f12417j + " > outputByteCount=" + this.f12415h);
                    }
                    byte[] bArr3 = this.f12420m;
                    int length2 = bArr3 == null ? 0 : bArr3.length;
                    long j2 = this.f12415h;
                    long j3 = this.f12417j;
                    long length3 = mo38346a2.length;
                    long j4 = length2;
                    this.f12417j = j2 - j4;
                    this.f12419l = null;
                    return Arrays.copyOf(mo38346a2, (int) ((j2 - (j3 - length3)) - j4));
                }
            }
        }
        return bArr2;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
    /* renamed from: b */
    public final boolean mo38345b() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
    /* renamed from: c */
    public final long mo38344c() {
        char c = this.f12419l == null ? this.f12415h : this.f12417j;
        this.f12418k = c;
        return c;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLite
    /* renamed from: d */
    public final void mo38343d() {
        long j = this.f12418k;
        if (j < this.f12415h || this.f12416i) {
            try {
                this.f12419l = mo38388a(j);
                this.f12417j = this.f12418k;
            } catch (Exception e) {
                throw (e instanceof RuntimeException ? (RuntimeException) e : new IllegalStateException(e));
            }
        }
    }
}
