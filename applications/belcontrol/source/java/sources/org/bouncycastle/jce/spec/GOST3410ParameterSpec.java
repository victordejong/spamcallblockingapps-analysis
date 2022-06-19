package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.GOST3410NamedParameters;
import org.bouncycastle.asn1.cryptopro.GOST3410ParamSetParameters;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.jce.interfaces.GOST3410Params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/GOST3410ParameterSpec.class */
public class GOST3410ParameterSpec implements AlgorithmParameterSpec, GOST3410Params {
    private String digestParamSetOID;
    private String encryptionParamSetOID;
    private String keyParamSetOID;
    private GOST3410PublicKeyParameterSetSpec keyParameters;

    public GOST3410ParameterSpec(String str) {
        this(str, CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet.getId(), null);
    }

    public GOST3410ParameterSpec(String str, String str2) {
        this(str, str2, null);
    }

    public GOST3410ParameterSpec(String str, String str2, String str3) {
        GOST3410ParamSetParameters gOST3410ParamSetParameters;
        try {
            gOST3410ParamSetParameters = GOST3410NamedParameters.getByOID(new DERObjectIdentifier(str));
        } catch (IllegalArgumentException e) {
            DERObjectIdentifier oid = GOST3410NamedParameters.getOID(str);
            if (oid != null) {
                str = oid.getId();
                gOST3410ParamSetParameters = GOST3410NamedParameters.getByOID(oid);
            } else {
                gOST3410ParamSetParameters = null;
            }
        }
        if (gOST3410ParamSetParameters != null) {
            this.keyParameters = new GOST3410PublicKeyParameterSetSpec(gOST3410ParamSetParameters.getP(), gOST3410ParamSetParameters.getQ(), gOST3410ParamSetParameters.getA());
            this.keyParamSetOID = str;
            this.digestParamSetOID = str2;
            this.encryptionParamSetOID = str3;
            return;
        }
        throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
    }

    public GOST3410ParameterSpec(GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec) {
        this.keyParameters = gOST3410PublicKeyParameterSetSpec;
        this.digestParamSetOID = CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet.getId();
        this.encryptionParamSetOID = null;
    }

    public static GOST3410ParameterSpec fromPublicKeyAlg(GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters) {
        return gOST3410PublicKeyAlgParameters.getEncryptionParamSet() != null ? new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.getPublicKeyParamSet().getId(), gOST3410PublicKeyAlgParameters.getDigestParamSet().getId(), gOST3410PublicKeyAlgParameters.getEncryptionParamSet().getId()) : new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.getPublicKeyParamSet().getId(), gOST3410PublicKeyAlgParameters.getDigestParamSet().getId());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        if (r0.equals(r0) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof org.bouncycastle.jce.spec.GOST3410ParameterSpec
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L60
            r0 = r4
            org.bouncycastle.jce.spec.GOST3410ParameterSpec r0 = (org.bouncycastle.jce.spec.GOST3410ParameterSpec) r0
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r3
            org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec r0 = r0.keyParameters
            r1 = r8
            org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec r1 = r1.keyParameters
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L60
            r0 = r6
            r7 = r0
            r0 = r3
            java.lang.String r0 = r0.digestParamSetOID
            r1 = r8
            java.lang.String r1 = r1.digestParamSetOID
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L60
            r0 = r3
            java.lang.String r0 = r0.encryptionParamSetOID
            r4 = r0
            r0 = r8
            java.lang.String r0 = r0.encryptionParamSetOID
            r8 = r0
            r0 = r4
            r1 = r8
            if (r0 == r1) goto L5d
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L60
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L60
        L5d:
            r0 = 1
            r7 = r0
        L60:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.spec.GOST3410ParameterSpec.equals(java.lang.Object):boolean");
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getDigestParamSetOID() {
        return this.digestParamSetOID;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getEncryptionParamSetOID() {
        return this.encryptionParamSetOID;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getPublicKeyParamSetOID() {
        return this.keyParamSetOID;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public GOST3410PublicKeyParameterSetSpec getPublicKeyParameters() {
        return this.keyParameters;
    }

    public int hashCode() {
        int hashCode = this.keyParameters.hashCode();
        int hashCode2 = this.digestParamSetOID.hashCode();
        String str = this.encryptionParamSetOID;
        return (hashCode ^ hashCode2) ^ (str != null ? str.hashCode() : 0);
    }
}
