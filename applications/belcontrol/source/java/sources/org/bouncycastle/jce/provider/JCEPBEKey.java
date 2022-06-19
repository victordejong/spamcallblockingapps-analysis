package org.bouncycastle.jce.provider;

import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEPBEKey.class */
public class JCEPBEKey implements PBEKey {
    public String algorithm;
    public int digest;
    public int ivSize;
    public int keySize;
    public DERObjectIdentifier oid;
    public CipherParameters param;
    public PBEKeySpec pbeKeySpec;
    public boolean tryWrong = false;
    public int type;

    public JCEPBEKey(String str, DERObjectIdentifier dERObjectIdentifier, int i, int i2, int i3, int i4, PBEKeySpec pBEKeySpec, CipherParameters cipherParameters) {
        this.algorithm = str;
        this.oid = dERObjectIdentifier;
        this.type = i;
        this.digest = i2;
        this.keySize = i3;
        this.ivSize = i4;
        this.pbeKeySpec = pBEKeySpec;
        this.param = cipherParameters;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    public int getDigest() {
        return this.digest;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        CipherParameters cipherParameters = this.param;
        if (cipherParameters == null) {
            return this.type == 2 ? PBEParametersGenerator.PKCS12PasswordToBytes(this.pbeKeySpec.getPassword()) : PBEParametersGenerator.PKCS5PasswordToBytes(this.pbeKeySpec.getPassword());
        }
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithIV) {
            cipherParameters2 = ((ParametersWithIV) cipherParameters).getParameters();
        }
        return ((KeyParameter) cipherParameters2).getKey();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "RAW";
    }

    @Override // javax.crypto.interfaces.PBEKey
    public int getIterationCount() {
        return this.pbeKeySpec.getIterationCount();
    }

    public int getIvSize() {
        return this.ivSize;
    }

    public int getKeySize() {
        return this.keySize;
    }

    public DERObjectIdentifier getOID() {
        return this.oid;
    }

    public CipherParameters getParam() {
        return this.param;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public char[] getPassword() {
        return this.pbeKeySpec.getPassword();
    }

    @Override // javax.crypto.interfaces.PBEKey
    public byte[] getSalt() {
        return this.pbeKeySpec.getSalt();
    }

    public int getType() {
        return this.type;
    }

    public void setTryWrongPKCS12Zero(boolean z) {
        this.tryWrong = z;
    }

    public boolean shouldTryWrongPKCS12() {
        return this.tryWrong;
    }
}
