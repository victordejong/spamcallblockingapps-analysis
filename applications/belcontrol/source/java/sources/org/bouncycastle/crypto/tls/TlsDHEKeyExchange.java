package org.bouncycastle.crypto.tls;

import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.p010io.SignerInputStream;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsDHEKeyExchange.class */
public class TlsDHEKeyExchange extends TlsDHKeyExchange {
    public TlsDHEKeyExchange(TlsClientContext tlsClientContext, int i) {
        super(tlsClientContext, i);
    }

    public Signer initSigner(TlsSigner tlsSigner, SecurityParameters securityParameters) {
        Signer createVerifyer = tlsSigner.createVerifyer(this.serverPublicKey);
        byte[] bArr = securityParameters.clientRandom;
        createVerifyer.update(bArr, 0, bArr.length);
        byte[] bArr2 = securityParameters.serverRandom;
        createVerifyer.update(bArr2, 0, bArr2.length);
        return createVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.TlsDHKeyExchange, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) {
        Signer initSigner = initSigner(this.tlsSigner, this.context.getSecurityParameters());
        SignerInputStream signerInputStream = new SignerInputStream(inputStream, initSigner);
        byte[] readOpaque16 = TlsUtils.readOpaque16(signerInputStream);
        byte[] readOpaque162 = TlsUtils.readOpaque16(signerInputStream);
        byte[] readOpaque163 = TlsUtils.readOpaque16(signerInputStream);
        if (initSigner.verifySignature(TlsUtils.readOpaque16(inputStream))) {
            this.dhAgreeServerPublicKey = validateDHPublicKey(new DHPublicKeyParameters(new BigInteger(1, readOpaque163), new DHParameters(new BigInteger(1, readOpaque16), new BigInteger(1, readOpaque162))));
            return;
        }
        throw new TlsFatalAlert((short) 42);
    }

    @Override // org.bouncycastle.crypto.tls.TlsDHKeyExchange, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerKeyExchange() {
        throw new TlsFatalAlert((short) 10);
    }
}
