package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory.class */
public interface PublicKeyDataDecryptorFactory extends PGPDataDecryptorFactory {
    byte[] recoverSessionData(int i, byte[][] bArr) throws PGPException;
}
