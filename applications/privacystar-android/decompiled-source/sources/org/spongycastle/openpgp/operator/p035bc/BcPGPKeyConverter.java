package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.util.Date;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.p022x9.X9ECPoint;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.bcpg.BCPGKey;
import org.spongycastle.bcpg.DSAPublicBCPGKey;
import org.spongycastle.bcpg.DSASecretBCPGKey;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.ECDSAPublicBCPGKey;
import org.spongycastle.bcpg.ECPublicBCPGKey;
import org.spongycastle.bcpg.ECSecretBCPGKey;
import org.spongycastle.bcpg.ElGamalPublicBCPGKey;
import org.spongycastle.bcpg.ElGamalSecretBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.RSAPublicBCPGKey;
import org.spongycastle.bcpg.RSASecretBCPGKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECNamedDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.crypto.util.SubjectPublicKeyInfoFactory;
import org.spongycastle.openpgp.PGPAlgorithmParameters;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPKdfParameters;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPKeyConverter */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPKeyConverter.class */
public class BcPGPKeyConverter {
    public PGPPrivateKey getPGPPrivateKey(PGPPublicKey pGPPublicKey, AsymmetricKeyParameter asymmetricKeyParameter) throws PGPException {
        BCPGKey bCPGKey;
        int algorithm = pGPPublicKey.getAlgorithm();
        switch (algorithm) {
            case 1:
            case 2:
            case 3:
                RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) asymmetricKeyParameter;
                bCPGKey = new RSASecretBCPGKey(rSAPrivateCrtKeyParameters.getExponent(), rSAPrivateCrtKeyParameters.getP(), rSAPrivateCrtKeyParameters.getQ());
                break;
            default:
                switch (algorithm) {
                    case 16:
                    case 20:
                        bCPGKey = new ElGamalSecretBCPGKey(((ElGamalPrivateKeyParameters) asymmetricKeyParameter).getX());
                        break;
                    case 17:
                        bCPGKey = new DSASecretBCPGKey(((DSAPrivateKeyParameters) asymmetricKeyParameter).getX());
                        break;
                    case 18:
                    case 19:
                        bCPGKey = new ECSecretBCPGKey(((ECPrivateKeyParameters) asymmetricKeyParameter).getD());
                        break;
                    default:
                        throw new PGPException("unknown key class");
                }
        }
        return new PGPPrivateKey(pGPPublicKey.getKeyID(), pGPPublicKey.getPublicKeyPacket(), bCPGKey);
    }

    public PGPPublicKey getPGPPublicKey(int i, PGPAlgorithmParameters pGPAlgorithmParameters, AsymmetricKeyParameter asymmetricKeyParameter, Date date) throws PGPException {
        BCPGKey bCPGKey;
        if (asymmetricKeyParameter instanceof RSAKeyParameters) {
            RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) asymmetricKeyParameter;
            bCPGKey = new RSAPublicBCPGKey(rSAKeyParameters.getModulus(), rSAKeyParameters.getExponent());
        } else if (asymmetricKeyParameter instanceof DSAPublicKeyParameters) {
            DSAPublicKeyParameters dSAPublicKeyParameters = (DSAPublicKeyParameters) asymmetricKeyParameter;
            DSAParameters parameters = dSAPublicKeyParameters.getParameters();
            bCPGKey = new DSAPublicBCPGKey(parameters.getP(), parameters.getQ(), parameters.getG(), dSAPublicKeyParameters.getY());
        } else if (asymmetricKeyParameter instanceof ElGamalPublicKeyParameters) {
            ElGamalPublicKeyParameters elGamalPublicKeyParameters = (ElGamalPublicKeyParameters) asymmetricKeyParameter;
            ElGamalParameters parameters2 = elGamalPublicKeyParameters.getParameters();
            bCPGKey = new ElGamalPublicBCPGKey(parameters2.getP(), parameters2.getG(), elGamalPublicKeyParameters.getY());
        } else if (asymmetricKeyParameter instanceof ECPublicKeyParameters) {
            try {
                SubjectPublicKeyInfo createSubjectPublicKeyInfo = SubjectPublicKeyInfoFactory.createSubjectPublicKeyInfo(asymmetricKeyParameter);
                ASN1ObjectIdentifier instance = ASN1ObjectIdentifier.getInstance(createSubjectPublicKeyInfo.getAlgorithm().getParameters());
                X9ECParameters byOID = NISTNamedCurves.getByOID(instance);
                X9ECPoint x9ECPoint = new X9ECPoint(byOID.getCurve(), new DEROctetString(createSubjectPublicKeyInfo.getPublicKeyData().getBytes()));
                if (i == 18) {
                    PGPKdfParameters pGPKdfParameters = (PGPKdfParameters) pGPAlgorithmParameters;
                    PGPKdfParameters pGPKdfParameters2 = pGPKdfParameters;
                    if (pGPKdfParameters == null) {
                        pGPKdfParameters2 = new PGPKdfParameters(8, 7);
                    }
                    bCPGKey = new ECDHPublicBCPGKey(instance, x9ECPoint.getPoint(), pGPKdfParameters2.getHashAlgorithm(), pGPKdfParameters2.getSymmetricWrapAlgorithm());
                } else if (i == 19) {
                    bCPGKey = new ECDSAPublicBCPGKey(instance, x9ECPoint.getPoint());
                } else {
                    throw new PGPException("unknown EC algorithm");
                }
            } catch (IOException e) {
                throw new PGPException("Unable to encode key: " + e.getMessage(), e);
            }
        } else {
            throw new PGPException("unknown key class");
        }
        return new PGPPublicKey(new PublicKeyPacket(i, date, bCPGKey), new BcKeyFingerprintCalculator());
    }

    public AsymmetricKeyParameter getPrivateKey(PGPPrivateKey pGPPrivateKey) throws PGPException {
        PublicKeyPacket publicKeyPacket = pGPPrivateKey.getPublicKeyPacket();
        BCPGKey privateKeyDataPacket = pGPPrivateKey.getPrivateKeyDataPacket();
        try {
            int algorithm = publicKeyPacket.getAlgorithm();
            switch (algorithm) {
                case 1:
                case 2:
                case 3:
                    RSAPublicBCPGKey rSAPublicBCPGKey = (RSAPublicBCPGKey) publicKeyPacket.getKey();
                    RSASecretBCPGKey rSASecretBCPGKey = (RSASecretBCPGKey) privateKeyDataPacket;
                    return new RSAPrivateCrtKeyParameters(rSASecretBCPGKey.getModulus(), rSAPublicBCPGKey.getPublicExponent(), rSASecretBCPGKey.getPrivateExponent(), rSASecretBCPGKey.getPrimeP(), rSASecretBCPGKey.getPrimeQ(), rSASecretBCPGKey.getPrimeExponentP(), rSASecretBCPGKey.getPrimeExponentQ(), rSASecretBCPGKey.getCrtCoefficient());
                default:
                    switch (algorithm) {
                        case 16:
                        case 20:
                            ElGamalPublicBCPGKey elGamalPublicBCPGKey = (ElGamalPublicBCPGKey) publicKeyPacket.getKey();
                            return new ElGamalPrivateKeyParameters(((ElGamalSecretBCPGKey) privateKeyDataPacket).getX(), new ElGamalParameters(elGamalPublicBCPGKey.getP(), elGamalPublicBCPGKey.getG()));
                        case 17:
                            DSAPublicBCPGKey dSAPublicBCPGKey = (DSAPublicBCPGKey) publicKeyPacket.getKey();
                            return new DSAPrivateKeyParameters(((DSASecretBCPGKey) privateKeyDataPacket).getX(), new DSAParameters(dSAPublicBCPGKey.getP(), dSAPublicBCPGKey.getQ(), dSAPublicBCPGKey.getG()));
                        case 18:
                        case 19:
                            ECPublicBCPGKey eCPublicBCPGKey = (ECPublicBCPGKey) publicKeyPacket.getKey();
                            ECSecretBCPGKey eCSecretBCPGKey = (ECSecretBCPGKey) privateKeyDataPacket;
                            X9ECParameters x9Parameters = BcUtil.getX9Parameters(eCPublicBCPGKey.getCurveOID());
                            return new ECPrivateKeyParameters(eCSecretBCPGKey.getX(), new ECNamedDomainParameters(eCPublicBCPGKey.getCurveOID(), x9Parameters.getCurve(), x9Parameters.getG(), x9Parameters.getN(), x9Parameters.getH()));
                        default:
                            throw new PGPException("unknown public key algorithm encountered");
                    }
            }
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception constructing key", e2);
        }
    }

    public AsymmetricKeyParameter getPublicKey(PGPPublicKey pGPPublicKey) throws PGPException {
        PublicKeyPacket publicKeyPacket = pGPPublicKey.getPublicKeyPacket();
        try {
            int algorithm = publicKeyPacket.getAlgorithm();
            switch (algorithm) {
                case 1:
                case 2:
                case 3:
                    RSAPublicBCPGKey rSAPublicBCPGKey = (RSAPublicBCPGKey) publicKeyPacket.getKey();
                    return new RSAKeyParameters(false, rSAPublicBCPGKey.getModulus(), rSAPublicBCPGKey.getPublicExponent());
                default:
                    switch (algorithm) {
                        case 16:
                        case 20:
                            ElGamalPublicBCPGKey elGamalPublicBCPGKey = (ElGamalPublicBCPGKey) publicKeyPacket.getKey();
                            return new ElGamalPublicKeyParameters(elGamalPublicBCPGKey.getY(), new ElGamalParameters(elGamalPublicBCPGKey.getP(), elGamalPublicBCPGKey.getG()));
                        case 17:
                            DSAPublicBCPGKey dSAPublicBCPGKey = (DSAPublicBCPGKey) publicKeyPacket.getKey();
                            return new DSAPublicKeyParameters(dSAPublicBCPGKey.getY(), new DSAParameters(dSAPublicBCPGKey.getP(), dSAPublicBCPGKey.getQ(), dSAPublicBCPGKey.getG()));
                        case 18:
                        case 19:
                            ECPublicBCPGKey eCPublicBCPGKey = (ECPublicBCPGKey) publicKeyPacket.getKey();
                            X9ECParameters x9Parameters = BcUtil.getX9Parameters(eCPublicBCPGKey.getCurveOID());
                            return new ECPublicKeyParameters(BcUtil.decodePoint(eCPublicBCPGKey.getEncodedPoint(), x9Parameters.getCurve()), new ECNamedDomainParameters(eCPublicBCPGKey.getCurveOID(), x9Parameters.getCurve(), x9Parameters.getG(), x9Parameters.getN(), x9Parameters.getH()));
                        default:
                            throw new PGPException("unknown public key algorithm encountered");
                    }
            }
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("exception constructing public key", e2);
        }
    }
}
