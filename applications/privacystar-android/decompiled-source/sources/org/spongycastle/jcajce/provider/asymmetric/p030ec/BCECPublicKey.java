package org.spongycastle.jcajce.provider.asymmetric.p030ec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.p022x9.X9ECPoint;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.BCECPublicKey */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey.class */
public class BCECPublicKey implements ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    static final long serialVersionUID = 2422789860422731812L;
    private String algorithm;
    private transient ProviderConfiguration configuration;
    private transient ECPublicKeyParameters ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private boolean withCompression;

    public BCECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.ecSpec = eCPublicKeySpec.getParams();
        this.ecPublicKey = new ECPublicKeyParameters(EC5Util.convertPoint(this.ecSpec, eCPublicKeySpec.getW(), false), EC5Util.getDomainParameters(providerConfiguration, eCPublicKeySpec.getParams()));
        this.configuration = providerConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCECPublicKey(String str, SubjectPublicKeyInfo subjectPublicKeyInfo, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.configuration = providerConfiguration;
        populateFromPubKeyInfo(subjectPublicKeyInfo);
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        this.ecPublicKey = eCPublicKeyParameters;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.configuration = providerConfiguration;
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.ecPublicKey = eCPublicKeyParameters;
        this.ecSpec = null;
        this.configuration = providerConfiguration;
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCParameterSpec.getCurve(), eCParameterSpec.getSeed()), eCParameterSpec);
        }
        this.ecPublicKey = eCPublicKeyParameters;
        this.configuration = providerConfiguration;
    }

    public BCECPublicKey(String str, BCECPublicKey bCECPublicKey) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.ecPublicKey = bCECPublicKey.ecPublicKey;
        this.ecSpec = bCECPublicKey.ecSpec;
        this.withCompression = bCECPublicKey.withCompression;
        this.configuration = bCECPublicKey.configuration;
    }

    public BCECPublicKey(String str, org.spongycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        if (eCPublicKeySpec.getParams() != null) {
            EllipticCurve convertCurve = EC5Util.convertCurve(eCPublicKeySpec.getParams().getCurve(), eCPublicKeySpec.getParams().getSeed());
            this.ecPublicKey = new ECPublicKeyParameters(eCPublicKeySpec.getQ(), ECUtil.getDomainParameters(providerConfiguration, eCPublicKeySpec.getParams()));
            this.ecSpec = EC5Util.convertSpec(convertCurve, eCPublicKeySpec.getParams());
        } else {
            this.ecPublicKey = new ECPublicKeyParameters(providerConfiguration.getEcImplicitlyCa().getCurve().createPoint(eCPublicKeySpec.getQ().getAffineXCoord().toBigInteger(), eCPublicKeySpec.getQ().getAffineYCoord().toBigInteger()), EC5Util.getDomainParameters(providerConfiguration, null));
            this.ecSpec = null;
        }
        this.configuration = providerConfiguration;
    }

    public BCECPublicKey(ECPublicKey eCPublicKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        this.ecSpec = eCPublicKey.getParams();
        this.ecPublicKey = new ECPublicKeyParameters(EC5Util.convertPoint(this.ecSpec, eCPublicKey.getW(), false), EC5Util.getDomainParameters(providerConfiguration, eCPublicKey.getParams()));
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new ECPoint(eCDomainParameters.getG().getAffineXCoord().toBigInteger(), eCDomainParameters.getG().getAffineYCoord().toBigInteger()), eCDomainParameters.getN(), eCDomainParameters.getH().intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005b, code lost:
        if (r0[2] == 3) goto L_0x005e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void populateFromPubKeyInfo(org.spongycastle.asn1.x509.SubjectPublicKeyInfo r9) {
        /*
            r8 = this;
            r0 = r9
            org.spongycastle.asn1.x509.AlgorithmIdentifier r0 = r0.getAlgorithm()
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getParameters()
            org.spongycastle.asn1.x9.X962Parameters r0 = org.spongycastle.asn1.p022x9.X962Parameters.getInstance(r0)
            r10 = r0
            r0 = r8
            org.spongycastle.jcajce.provider.config.ProviderConfiguration r0 = r0.configuration
            r1 = r10
            org.spongycastle.math.ec.ECCurve r0 = org.spongycastle.jcajce.provider.asymmetric.util.EC5Util.getCurve(r0, r1)
            r11 = r0
            r0 = r8
            r1 = r10
            r2 = r11
            java.security.spec.ECParameterSpec r1 = org.spongycastle.jcajce.provider.asymmetric.util.EC5Util.convertToSpec(r1, r2)
            r0.ecSpec = r1
            r0 = r9
            org.spongycastle.asn1.DERBitString r0 = r0.getPublicKeyData()
            byte[] r0 = r0.getBytes()
            r12 = r0
            org.spongycastle.asn1.DEROctetString r0 = new org.spongycastle.asn1.DEROctetString
            r1 = r0
            r2 = r12
            r1.<init>(r2)
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r12
            r1 = 0
            r0 = r0[r1]
            r1 = 4
            if (r0 != r1) goto L_0x008b
            r0 = r13
            r9 = r0
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            r1 = r12
            int r1 = r1.length
            r2 = 2
            int r1 = r1 - r2
            if (r0 != r1) goto L_0x008b
            r0 = r12
            r1 = 2
            r0 = r0[r1]
            r1 = 2
            if (r0 == r1) goto L_0x005e
            r0 = r13
            r9 = r0
            r0 = r12
            r1 = 2
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L_0x008b
        L_0x005e:
            r0 = r13
            r9 = r0
            org.spongycastle.asn1.x9.X9IntegerConverter r0 = new org.spongycastle.asn1.x9.X9IntegerConverter
            r1 = r0
            r1.<init>()
            r1 = r11
            int r0 = r0.getByteLength(r1)
            r1 = r12
            int r1 = r1.length
            r2 = 3
            int r1 = r1 - r2
            if (r0 < r1) goto L_0x008b
            r0 = r12
            org.spongycastle.asn1.ASN1Primitive r0 = org.spongycastle.asn1.ASN1Primitive.fromByteArray(r0)     // Catch: IOException -> 0x0080
            org.spongycastle.asn1.ASN1OctetString r0 = (org.spongycastle.asn1.ASN1OctetString) r0     // Catch: IOException -> 0x0080
            r9 = r0
            goto L_0x008b
        L_0x0080:
            r9 = move-exception
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "error recovering public key"
            r1.<init>(r2)
            throw r0
        L_0x008b:
            r0 = r8
            org.spongycastle.crypto.params.ECPublicKeyParameters r1 = new org.spongycastle.crypto.params.ECPublicKeyParameters
            r2 = r1
            org.spongycastle.asn1.x9.X9ECPoint r3 = new org.spongycastle.asn1.x9.X9ECPoint
            r4 = r3
            r5 = r11
            r6 = r9
            r4.<init>(r5, r6)
            org.spongycastle.math.ec.ECPoint r3 = r3.getPoint()
            r4 = r8
            org.spongycastle.jcajce.provider.config.ProviderConfiguration r4 = r4.configuration
            r5 = r10
            org.spongycastle.crypto.params.ECDomainParameters r4 = org.spongycastle.jcajce.provider.asymmetric.util.ECUtil.getDomainParameters(r4, r5)
            r2.<init>(r3, r4)
            r0.ecPublicKey = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jcajce.provider.asymmetric.p030ec.BCECPublicKey.populateFromPubKeyInfo(org.spongycastle.asn1.x509.SubjectPublicKeyInfo):void");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
        populateFromPubKeyInfo(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECPublicKeyParameters engineGetKeyParameters() {
        return this.ecPublicKey;
    }

    org.spongycastle.jce.spec.ECParameterSpec engineGetSpec() {
        return this.ecSpec != null ? EC5Util.convertSpec(this.ecSpec, this.withCompression) : this.configuration.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCECPublicKey)) {
            return false;
        }
        BCECPublicKey bCECPublicKey = (BCECPublicKey) obj;
        boolean z = false;
        if (this.ecPublicKey.getQ().equals(bCECPublicKey.ecPublicKey.getQ())) {
            z = false;
            if (engineGetSpec().equals(bCECPublicKey.engineGetSpec())) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return KeyUtil.getEncodedSubjectPublicKeyInfo(new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, ECUtils.getDomainParametersFromName(this.ecSpec, this.withCompression)), ASN1OctetString.getInstance(new X9ECPoint(this.ecPublicKey.getQ(), this.withCompression).toASN1Primitive()).getOctets()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.spongycastle.jce.interfaces.ECKey
    public org.spongycastle.jce.spec.ECParameterSpec getParameters() {
        if (this.ecSpec == null) {
            return null;
        }
        return EC5Util.convertSpec(this.ecSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override // org.spongycastle.jce.interfaces.ECPublicKey
    public org.spongycastle.math.p032ec.ECPoint getQ() {
        org.spongycastle.math.p032ec.ECPoint q = this.ecPublicKey.getQ();
        return this.ecSpec == null ? q.getDetachedPoint() : q;
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        org.spongycastle.math.p032ec.ECPoint q = this.ecPublicKey.getQ();
        return new ECPoint(q.getAffineXCoord().toBigInteger(), q.getAffineYCoord().toBigInteger());
    }

    public int hashCode() {
        return this.ecPublicKey.getQ().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.spongycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return ECUtil.publicKeyToString("EC", this.ecPublicKey.getQ(), engineGetSpec());
    }
}
