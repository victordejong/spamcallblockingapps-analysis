package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import org.apache.commons.p018io.IOUtils;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.asn1.McElieceCCA2PublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey.class */
public class BCMcElieceCCA2PublicKey implements CipherParameters, PublicKey {
    private static final long serialVersionUID = 1;
    private McElieceCCA2PublicKeyParameters params;

    public BCMcElieceCCA2PublicKey(McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters) {
        this.params = mcElieceCCA2PublicKeyParameters;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCMcElieceCCA2PublicKey)) {
            return false;
        }
        BCMcElieceCCA2PublicKey bCMcElieceCCA2PublicKey = (BCMcElieceCCA2PublicKey) obj;
        boolean z = false;
        if (this.params.getN() == bCMcElieceCCA2PublicKey.getN()) {
            z = false;
            if (this.params.getT() == bCMcElieceCCA2PublicKey.getT()) {
                z = false;
                if (this.params.getG().equals(bCMcElieceCCA2PublicKey.getG())) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.mcElieceCca2), new McElieceCCA2PublicKey(this.params.getN(), this.params.getT(), this.params.getG(), Utils.getDigAlgId(this.params.getDigest()))).getEncoded();
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public GF2Matrix getG() {
        return this.params.getG();
    }

    public int getK() {
        return this.params.getK();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsymmetricKeyParameter getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.getN();
    }

    public int getT() {
        return this.params.getT();
    }

    public int hashCode() {
        return ((this.params.getN() + (this.params.getT() * 37)) * 37) + this.params.getG().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.getN() + IOUtils.LINE_SEPARATOR_UNIX) + " error correction capability: " + this.params.getT() + IOUtils.LINE_SEPARATOR_UNIX) + " generator matrix           : " + this.params.getG().toString();
    }
}
