package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410NamedParameters;
import org.spongycastle.asn1.cryptopro.GOST3410ParamSetParameters;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.jce.interfaces.GOST3410Params;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/GOST3410ParameterSpec.class */
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
            gOST3410ParamSetParameters = GOST3410NamedParameters.getByOID(new ASN1ObjectIdentifier(str));
        } catch (IllegalArgumentException e) {
            ASN1ObjectIdentifier oid = GOST3410NamedParameters.getOID(str);
            if (oid != null) {
                str = oid.getId();
                gOST3410ParamSetParameters = GOST3410NamedParameters.getByOID(oid);
            } else {
                gOST3410ParamSetParameters = null;
            }
        }
        if (gOST3410ParamSetParameters == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.keyParameters = new GOST3410PublicKeyParameterSetSpec(gOST3410ParamSetParameters.getP(), gOST3410ParamSetParameters.getQ(), gOST3410ParamSetParameters.getA());
        this.keyParamSetOID = str;
        this.digestParamSetOID = str2;
        this.encryptionParamSetOID = str3;
    }

    public GOST3410ParameterSpec(GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec) {
        this.keyParameters = gOST3410PublicKeyParameterSetSpec;
        this.digestParamSetOID = CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet.getId();
        this.encryptionParamSetOID = null;
    }

    public static GOST3410ParameterSpec fromPublicKeyAlg(GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters) {
        return gOST3410PublicKeyAlgParameters.getEncryptionParamSet() != null ? new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.getPublicKeyParamSet().getId(), gOST3410PublicKeyAlgParameters.getDigestParamSet().getId(), gOST3410PublicKeyAlgParameters.getEncryptionParamSet().getId()) : new GOST3410ParameterSpec(gOST3410PublicKeyAlgParameters.getPublicKeyParamSet().getId(), gOST3410PublicKeyAlgParameters.getDigestParamSet().getId());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
        if (r3.encryptionParamSetOID.equals(r0.encryptionParamSetOID) != false) goto L_0x0054;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof org.spongycastle.jce.spec.GOST3410ParameterSpec
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0058
            r0 = r4
            org.spongycastle.jce.spec.GOST3410ParameterSpec r0 = (org.spongycastle.jce.spec.GOST3410ParameterSpec) r0
            r4 = r0
            r0 = r6
            r5 = r0
            r0 = r3
            org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec r0 = r0.keyParameters
            r1 = r4
            org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec r1 = r1.keyParameters
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0056
            r0 = r6
            r5 = r0
            r0 = r3
            java.lang.String r0 = r0.digestParamSetOID
            r1 = r4
            java.lang.String r1 = r1.digestParamSetOID
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0056
            r0 = r3
            java.lang.String r0 = r0.encryptionParamSetOID
            r1 = r4
            java.lang.String r1 = r1.encryptionParamSetOID
            if (r0 == r1) goto L_0x0054
            r0 = r6
            r5 = r0
            r0 = r3
            java.lang.String r0 = r0.encryptionParamSetOID
            if (r0 == 0) goto L_0x0056
            r0 = r6
            r5 = r0
            r0 = r3
            java.lang.String r0 = r0.encryptionParamSetOID
            r1 = r4
            java.lang.String r1 = r1.encryptionParamSetOID
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0056
        L_0x0054:
            r0 = 1
            r5 = r0
        L_0x0056:
            r0 = r5
            return r0
        L_0x0058:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.spec.GOST3410ParameterSpec.equals(java.lang.Object):boolean");
    }

    @Override // org.spongycastle.jce.interfaces.GOST3410Params
    public String getDigestParamSetOID() {
        return this.digestParamSetOID;
    }

    @Override // org.spongycastle.jce.interfaces.GOST3410Params
    public String getEncryptionParamSetOID() {
        return this.encryptionParamSetOID;
    }

    @Override // org.spongycastle.jce.interfaces.GOST3410Params
    public String getPublicKeyParamSetOID() {
        return this.keyParamSetOID;
    }

    @Override // org.spongycastle.jce.interfaces.GOST3410Params
    public GOST3410PublicKeyParameterSetSpec getPublicKeyParameters() {
        return this.keyParameters;
    }

    public int hashCode() {
        return (this.keyParameters.hashCode() ^ this.digestParamSetOID.hashCode()) ^ (this.encryptionParamSetOID != null ? this.encryptionParamSetOID.hashCode() : 0);
    }
}
