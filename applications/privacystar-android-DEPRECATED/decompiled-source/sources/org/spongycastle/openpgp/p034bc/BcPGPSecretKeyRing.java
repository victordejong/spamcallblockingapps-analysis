package org.spongycastle.openpgp.p034bc;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPSecretKeyRing;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
/* renamed from: org.spongycastle.openpgp.bc.BcPGPSecretKeyRing */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/bc/BcPGPSecretKeyRing.class */
public class BcPGPSecretKeyRing extends PGPSecretKeyRing {
    private static KeyFingerPrintCalculator fingerPrintCalculator = new BcKeyFingerprintCalculator();

    public BcPGPSecretKeyRing(InputStream inputStream) throws IOException, PGPException {
        super(inputStream, fingerPrintCalculator);
    }

    public BcPGPSecretKeyRing(byte[] bArr) throws IOException, PGPException {
        super(bArr, fingerPrintCalculator);
    }
}
