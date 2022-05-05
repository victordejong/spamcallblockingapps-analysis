package org.spongycastle.crypto.prng.drbg;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/SP80090DRBG.class */
public interface SP80090DRBG {
    int generate(byte[] bArr, byte[] bArr2, boolean z);

    int getBlockSize();

    void reseed(byte[] bArr);
}
