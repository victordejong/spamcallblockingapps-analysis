package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/SkippingCipher.class */
public interface SkippingCipher {
    long getPosition();

    long seekTo(long j);

    long skip(long j);
}
