package org.spongycastle.crypto.prng;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/EntropySource.class */
public interface EntropySource {
    int entropySize();

    byte[] getEntropy();

    boolean isPredictionResistant();
}
