package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.asn1.DEROctetString;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKECDSAAlgParameters.class */
public abstract class JDKECDSAAlgParameters extends AlgorithmParametersSpi {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters.class */
    public static class SigAlgParameters extends JDKAlgorithmParameters {
        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            return engineGetEncoded("ASN.1");
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (str == null) {
                return engineGetEncoded("ASN.1");
            }
            if (!str.equals("ASN.1")) {
                return null;
            }
            return new DEROctetString(engineGetEncoded("RAW")).getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            throw new InvalidParameterSpecException("unknown parameter spec passed to ECDSA parameters object.");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            throw new IOException("Unknown parameters format in IV parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "ECDSA Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            throw new InvalidParameterSpecException("unknown parameter spec passed to ECDSA parameters object.");
        }
    }
}
