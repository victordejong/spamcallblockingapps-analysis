package org.spongycastle.jcajce.provider.asymmetric.p029dh;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.p022x9.DomainParameters;
import org.spongycastle.asn1.p022x9.ValidationParams;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.DHValidationParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.dh.BCDHPublicKey */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey.class */
public class BCDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private transient DHPublicKeyParameters dhPublicKey;
    private transient DHParameterSpec dhSpec;
    private transient SubjectPublicKeyInfo info;

    /* renamed from: y */
    private BigInteger f1473y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.f1473y = bigInteger;
        this.dhSpec = dHParameterSpec;
        this.dhPublicKey = new DHPublicKeyParameters(bigInteger, new DHParameters(dHParameterSpec.getP(), dHParameterSpec.getG()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCDHPublicKey(DHPublicKey dHPublicKey) {
        this.f1473y = dHPublicKey.getY();
        this.dhSpec = dHPublicKey.getParams();
        this.dhPublicKey = new DHPublicKeyParameters(this.f1473y, new DHParameters(this.dhSpec.getP(), this.dhSpec.getG()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.f1473y = dHPublicKeySpec.getY();
        this.dhSpec = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
        this.dhPublicKey = new DHPublicKeyParameters(this.f1473y, new DHParameters(dHPublicKeySpec.getP(), dHPublicKeySpec.getG()));
    }

    public BCDHPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.info = subjectPublicKeyInfo;
        try {
            this.f1473y = ((ASN1Integer) subjectPublicKeyInfo.parsePublicKey()).getValue();
            ASN1Sequence instance = ASN1Sequence.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            ASN1ObjectIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm().getAlgorithm();
            if (algorithm.equals(PKCSObjectIdentifiers.dhKeyAgreement) || isPKCSParam(instance)) {
                DHParameter instance2 = DHParameter.getInstance(instance);
                if (instance2.getL() != null) {
                    this.dhSpec = new DHParameterSpec(instance2.getP(), instance2.getG(), instance2.getL().intValue());
                } else {
                    this.dhSpec = new DHParameterSpec(instance2.getP(), instance2.getG());
                }
                this.dhPublicKey = new DHPublicKeyParameters(this.f1473y, new DHParameters(this.dhSpec.getP(), this.dhSpec.getG()));
            } else if (algorithm.equals(X9ObjectIdentifiers.dhpublicnumber)) {
                DomainParameters instance3 = DomainParameters.getInstance(instance);
                this.dhSpec = new DHParameterSpec(instance3.getP(), instance3.getG());
                ValidationParams validationParams = instance3.getValidationParams();
                if (validationParams != null) {
                    this.dhPublicKey = new DHPublicKeyParameters(this.f1473y, new DHParameters(instance3.getP(), instance3.getG(), instance3.getQ(), instance3.getJ(), new DHValidationParameters(validationParams.getSeed(), validationParams.getPgenCounter().intValue())));
                } else {
                    this.dhPublicKey = new DHPublicKeyParameters(this.f1473y, new DHParameters(instance3.getP(), instance3.getG(), instance3.getQ(), instance3.getJ(), (DHValidationParameters) null));
                }
            } else {
                throw new IllegalArgumentException("unknown algorithm type: " + algorithm);
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCDHPublicKey(DHPublicKeyParameters dHPublicKeyParameters) {
        this.f1473y = dHPublicKeyParameters.getY();
        this.dhSpec = new DHParameterSpec(dHPublicKeyParameters.getParameters().getP(), dHPublicKeyParameters.getParameters().getG(), dHPublicKeyParameters.getParameters().getL());
        this.dhPublicKey = dHPublicKeyParameters;
    }

    private boolean isPKCSParam(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() == 2) {
            return true;
        }
        if (aSN1Sequence.size() > 3) {
            return false;
        }
        return ASN1Integer.getInstance(aSN1Sequence.getObjectAt(2)).getValue().compareTo(BigInteger.valueOf((long) ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).getValue().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.info = null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    public DHPublicKeyParameters engineGetKeyParameters() {
        return this.dhPublicKey;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        boolean z = false;
        if (getY().equals(dHPublicKey.getY())) {
            z = false;
            if (getParams().getG().equals(dHPublicKey.getParams().getG())) {
                z = false;
                if (getParams().getP().equals(dHPublicKey.getParams().getP())) {
                    z = false;
                    if (getParams().getL() == dHPublicKey.getParams().getL()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return this.info != null ? KeyUtil.getEncodedSubjectPublicKeyInfo(this.info) : KeyUtil.getEncodedSubjectPublicKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.dhKeyAgreement, new DHParameter(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL()).toASN1Primitive()), new ASN1Integer(this.f1473y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.f1473y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }
}
