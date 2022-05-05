package org.spongycastle.openpgp.operator;

import org.spongycastle.bcpg.S2K;
import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PBEDataDecryptorFactory.class */
public abstract class PBEDataDecryptorFactory implements PGPDataDecryptorFactory {
    private PGPDigestCalculatorProvider calculatorProvider;
    private char[] passPhrase;

    /* JADX INFO: Access modifiers changed from: protected */
    public PBEDataDecryptorFactory(char[] cArr, PGPDigestCalculatorProvider pGPDigestCalculatorProvider) {
        this.passPhrase = cArr;
        this.calculatorProvider = pGPDigestCalculatorProvider;
    }

    public byte[] makeKeyFromPassPhrase(int i, S2K s2k) throws PGPException {
        return PGPUtil.makeKeyFromPassPhrase(this.calculatorProvider, i, s2k, this.passPhrase);
    }

    public abstract byte[] recoverSessionData(int i, byte[] bArr, byte[] bArr2) throws PGPException;
}
