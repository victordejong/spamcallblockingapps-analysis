package org.bouncycastle.jce.provider.asymmetric.p011ec;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.p009x9.X962NamedCurves;
import org.bouncycastle.asn1.p009x9.X9ECParameters;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.provider.JCEECPublicKey;
import org.bouncycastle.jce.provider.ProviderUtil;
import org.bouncycastle.jce.spec.ECParameterSpec;
/* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.ECUtil */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/ECUtil.class */
public class ECUtil {
    public static int[] convertMidTerms(int[] iArr) {
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else if (iArr.length != 3) {
            throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
        } else {
            if (iArr[0] < iArr[1] && iArr[0] < iArr[2]) {
                iArr2[0] = iArr[0];
                if (iArr[1] < iArr[2]) {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[1];
                }
            } else if (iArr[1] < iArr[2]) {
                iArr2[0] = iArr[1];
                if (iArr[0] < iArr[2]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[0];
                }
            } else {
                iArr2[0] = iArr[2];
                if (iArr[0] < iArr[1]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[1];
                } else {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[0];
                }
            }
        }
        return iArr2;
    }

    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privateKey) {
        if (privateKey instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
            ECParameterSpec parameters = eCPrivateKey.getParameters();
            ECParameterSpec eCParameterSpec = parameters;
            if (parameters == null) {
                eCParameterSpec = ProviderUtil.getEcImplicitlyCa();
            }
            return new ECPrivateKeyParameters(eCPrivateKey.getD(), new ECDomainParameters(eCParameterSpec.getCurve(), eCParameterSpec.getG(), eCParameterSpec.getN(), eCParameterSpec.getH(), eCParameterSpec.getSeed()));
        }
        throw new InvalidKeyException("can't identify EC private key.");
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publicKey) {
        if (!(publicKey instanceof ECPublicKey)) {
            if (!(publicKey instanceof java.security.interfaces.ECPublicKey)) {
                throw new InvalidKeyException("cannot identify EC public key.");
            }
            java.security.interfaces.ECPublicKey eCPublicKey = (java.security.interfaces.ECPublicKey) publicKey;
            ECParameterSpec convertSpec = EC5Util.convertSpec(eCPublicKey.getParams(), false);
            return new ECPublicKeyParameters(EC5Util.convertPoint(eCPublicKey.getParams(), eCPublicKey.getW(), false), new ECDomainParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
        }
        ECPublicKey eCPublicKey2 = (ECPublicKey) publicKey;
        ECParameterSpec parameters = eCPublicKey2.getParameters();
        if (parameters != null) {
            return new ECPublicKeyParameters(eCPublicKey2.getQ(), new ECDomainParameters(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH(), parameters.getSeed()));
        }
        ECParameterSpec ecImplicitlyCa = ProviderUtil.getEcImplicitlyCa();
        return new ECPublicKeyParameters(((JCEECPublicKey) eCPublicKey2).engineGetQ(), new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN(), ecImplicitlyCa.getH(), ecImplicitlyCa.getSeed()));
    }

    public static String getCurveName(DERObjectIdentifier dERObjectIdentifier) {
        String name = X962NamedCurves.getName(dERObjectIdentifier);
        String str = name;
        if (name == null) {
            String name2 = SECNamedCurves.getName(dERObjectIdentifier);
            String str2 = name2;
            if (name2 == null) {
                str2 = NISTNamedCurves.getName(dERObjectIdentifier);
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = TeleTrusTNamedCurves.getName(dERObjectIdentifier);
            }
            str = str3;
            if (str3 == null) {
                str = ECGOST3410NamedCurves.getName(dERObjectIdentifier);
            }
        }
        return str;
    }

    public static X9ECParameters getNamedCurveByOid(DERObjectIdentifier dERObjectIdentifier) {
        X9ECParameters byOID = X962NamedCurves.getByOID(dERObjectIdentifier);
        X9ECParameters x9ECParameters = byOID;
        if (byOID == null) {
            X9ECParameters byOID2 = SECNamedCurves.getByOID(dERObjectIdentifier);
            X9ECParameters x9ECParameters2 = byOID2;
            if (byOID2 == null) {
                x9ECParameters2 = NISTNamedCurves.getByOID(dERObjectIdentifier);
            }
            x9ECParameters = x9ECParameters2;
            if (x9ECParameters2 == null) {
                x9ECParameters = TeleTrusTNamedCurves.getByOID(dERObjectIdentifier);
            }
        }
        return x9ECParameters;
    }

    public static DERObjectIdentifier getNamedCurveOid(String str) {
        DERObjectIdentifier oid = X962NamedCurves.getOID(str);
        DERObjectIdentifier dERObjectIdentifier = oid;
        if (oid == null) {
            DERObjectIdentifier oid2 = SECNamedCurves.getOID(str);
            DERObjectIdentifier dERObjectIdentifier2 = oid2;
            if (oid2 == null) {
                dERObjectIdentifier2 = NISTNamedCurves.getOID(str);
            }
            DERObjectIdentifier dERObjectIdentifier3 = dERObjectIdentifier2;
            if (dERObjectIdentifier2 == null) {
                dERObjectIdentifier3 = TeleTrusTNamedCurves.getOID(str);
            }
            dERObjectIdentifier = dERObjectIdentifier3;
            if (dERObjectIdentifier3 == null) {
                dERObjectIdentifier = ECGOST3410NamedCurves.getOID(str);
            }
        }
        return dERObjectIdentifier;
    }
}
