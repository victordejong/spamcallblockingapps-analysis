package org.bouncycastle.crypto.modes.gcm;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/GCMMultiplier.class */
public interface GCMMultiplier {
    void init(byte[] bArr);

    void multiplyH(byte[] bArr);
}
