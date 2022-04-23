package org.spongycastle.crypto.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.p022x9.DHPublicKey;
import org.spongycastle.asn1.p022x9.DomainParameters;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.ValidationParams;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.p022x9.X9ECPoint;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSAPublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.DHValidationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECNamedDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/PublicKeyFactory.class */
public class PublicKeyFactory {
    public static AsymmetricKeyParameter createKey(InputStream inputStream) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(new ASN1InputStream(inputStream).readObject()));
    }

    public static AsymmetricKeyParameter createKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        X9ECParameters x9ECParameters;
        ECDomainParameters eCDomainParameters;
        AlgorithmIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm();
        int i = 0;
        if (algorithm.getAlgorithm().equals(PKCSObjectIdentifiers.rsaEncryption) || algorithm.getAlgorithm().equals(X509ObjectIdentifiers.id_ea_rsa)) {
            RSAPublicKey instance = RSAPublicKey.getInstance(subjectPublicKeyInfo.parsePublicKey());
            return new RSAKeyParameters(false, instance.getModulus(), instance.getPublicExponent());
        }
        DSAParameters dSAParameters = null;
        DHValidationParameters dHValidationParameters = null;
        if (algorithm.getAlgorithm().equals(X9ObjectIdentifiers.dhpublicnumber)) {
            BigInteger y = DHPublicKey.getInstance(subjectPublicKeyInfo.parsePublicKey()).getY();
            DomainParameters instance2 = DomainParameters.getInstance(algorithm.getParameters());
            BigInteger p = instance2.getP();
            BigInteger g = instance2.getG();
            BigInteger q = instance2.getQ();
            BigInteger j = instance2.getJ() != null ? instance2.getJ() : null;
            ValidationParams validationParams = instance2.getValidationParams();
            if (validationParams != null) {
                dHValidationParameters = new DHValidationParameters(validationParams.getSeed(), validationParams.getPgenCounter().intValue());
            }
            return new DHPublicKeyParameters(y, new DHParameters(p, g, q, j, dHValidationParameters));
        } else if (algorithm.getAlgorithm().equals(PKCSObjectIdentifiers.dhKeyAgreement)) {
            DHParameter instance3 = DHParameter.getInstance(algorithm.getParameters());
            ASN1Integer aSN1Integer = (ASN1Integer) subjectPublicKeyInfo.parsePublicKey();
            BigInteger l = instance3.getL();
            if (l != null) {
                i = l.intValue();
            }
            return new DHPublicKeyParameters(aSN1Integer.getValue(), new DHParameters(instance3.getP(), instance3.getG(), null, i));
        } else if (algorithm.getAlgorithm().equals(OIWObjectIdentifiers.elGamalAlgorithm)) {
            ElGamalParameter instance4 = ElGamalParameter.getInstance(algorithm.getParameters());
            return new ElGamalPublicKeyParameters(((ASN1Integer) subjectPublicKeyInfo.parsePublicKey()).getValue(), new ElGamalParameters(instance4.getP(), instance4.getG()));
        } else if (algorithm.getAlgorithm().equals(X9ObjectIdentifiers.id_dsa) || algorithm.getAlgorithm().equals(OIWObjectIdentifiers.dsaWithSHA1)) {
            ASN1Integer aSN1Integer2 = (ASN1Integer) subjectPublicKeyInfo.parsePublicKey();
            ASN1Encodable parameters = algorithm.getParameters();
            if (parameters != null) {
                DSAParameter instance5 = DSAParameter.getInstance(parameters.toASN1Primitive());
                dSAParameters = new DSAParameters(instance5.getP(), instance5.getQ(), instance5.getG());
            }
            return new DSAPublicKeyParameters(aSN1Integer2.getValue(), dSAParameters);
        } else if (algorithm.getAlgorithm().equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            X962Parameters instance6 = X962Parameters.getInstance(algorithm.getParameters());
            if (instance6.isNamedCurve()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) instance6.getParameters();
                X9ECParameters byOID = CustomNamedCurves.getByOID(aSN1ObjectIdentifier);
                x9ECParameters = byOID;
                if (byOID == null) {
                    x9ECParameters = ECNamedCurveTable.getByOID(aSN1ObjectIdentifier);
                }
                eCDomainParameters = new ECNamedDomainParameters(aSN1ObjectIdentifier, x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), x9ECParameters.getSeed());
            } else {
                x9ECParameters = X9ECParameters.getInstance(instance6.getParameters());
                eCDomainParameters = new ECDomainParameters(x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), x9ECParameters.getSeed());
            }
            return new ECPublicKeyParameters(new X9ECPoint(x9ECParameters.getCurve(), new DEROctetString(subjectPublicKeyInfo.getPublicKeyData().getBytes())).getPoint(), eCDomainParameters);
        } else {
            throw new RuntimeException("algorithm identifier in key not recognised");
        }
    }

    public static AsymmetricKeyParameter createKey(byte[] bArr) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray(bArr)));
    }
}
