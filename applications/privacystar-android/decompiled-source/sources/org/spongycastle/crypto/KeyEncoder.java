package org.spongycastle.crypto;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/KeyEncoder.class */
public interface KeyEncoder {
    byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter);
}
