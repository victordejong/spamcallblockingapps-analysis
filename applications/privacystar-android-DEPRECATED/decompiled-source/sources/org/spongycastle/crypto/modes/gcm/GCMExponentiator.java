package org.spongycastle.crypto.modes.gcm;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/gcm/GCMExponentiator.class */
public interface GCMExponentiator {
    void exponentiateX(long j, byte[] bArr);

    void init(byte[] bArr);
}
