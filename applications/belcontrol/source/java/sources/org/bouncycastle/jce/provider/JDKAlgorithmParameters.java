package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Objects;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.PSource;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RC2CBCParameter;
import org.bouncycastle.asn1.pkcs.RSAESOAEPparams;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters.class */
public abstract class JDKAlgorithmParameters extends AlgorithmParametersSpi {

    /* renamed from: org.bouncycastle.jce.provider.JDKAlgorithmParameters$DH */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$DH.class */
    public static class C1598DH extends JDKAlgorithmParameters {
        public DHParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return new DHParameter(this.currentSpec.getP(), this.currentSpec.getG(), this.currentSpec.getL()).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding DHParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof DHParameterSpec) {
                this.currentSpec = (DHParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                DHParameter dHParameter = new DHParameter((ASN1Sequence) ASN1Object.fromByteArray(bArr));
                this.currentSpec = dHParameter.getL() != null ? new DHParameterSpec(dHParameter.getP(), dHParameter.getG(), dHParameter.getL().intValue()) : new DHParameterSpec(dHParameter.getP(), dHParameter.getG());
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid DH Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid DH Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str)) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Diffie-Hellman Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == DHParameterSpec.class) {
                return this.currentSpec;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$DSA.class */
    public static class DSA extends JDKAlgorithmParameters {
        public DSAParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return new DSAParameter(this.currentSpec.getP(), this.currentSpec.getQ(), this.currentSpec.getG()).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding DSAParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof DSAParameterSpec) {
                this.currentSpec = (DSAParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("DSAParameterSpec required to initialise a DSA algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                DSAParameter dSAParameter = new DSAParameter((ASN1Sequence) ASN1Object.fromByteArray(bArr));
                this.currentSpec = new DSAParameterSpec(dSAParameter.getP(), dSAParameter.getQ(), dSAParameter.getG());
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid DSA Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid DSA Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "DSA Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == DSAParameterSpec.class) {
                return this.currentSpec;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to DSA parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal.class */
    public static class ElGamal extends JDKAlgorithmParameters {
        public ElGamalParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return new ElGamalParameter(this.currentSpec.getP(), this.currentSpec.getG()).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding ElGamalParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            boolean z = algorithmParameterSpec instanceof ElGamalParameterSpec;
            if (z || (algorithmParameterSpec instanceof DHParameterSpec)) {
                if (z) {
                    this.currentSpec = (ElGamalParameterSpec) algorithmParameterSpec;
                    return;
                }
                DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
                this.currentSpec = new ElGamalParameterSpec(dHParameterSpec.getP(), dHParameterSpec.getG());
                return;
            }
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a ElGamal algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                ElGamalParameter elGamalParameter = new ElGamalParameter((ASN1Sequence) ASN1Object.fromByteArray(bArr));
                this.currentSpec = new ElGamalParameterSpec(elGamalParameter.getP(), elGamalParameter.getG());
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid ElGamal Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid ElGamal Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "ElGamal Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == ElGamalParameterSpec.class) {
                return this.currentSpec;
            }
            if (cls != DHParameterSpec.class) {
                throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
            }
            return new DHParameterSpec(this.currentSpec.getP(), this.currentSpec.getG());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410.class */
    public static class GOST3410 extends JDKAlgorithmParameters {
        public GOST3410ParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return new GOST3410PublicKeyAlgParameters(new DERObjectIdentifier(this.currentSpec.getPublicKeyParamSetOID()), new DERObjectIdentifier(this.currentSpec.getDigestParamSetOID()), new DERObjectIdentifier(this.currentSpec.getEncryptionParamSetOID())).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding GOST3410Parameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof GOST3410ParameterSpec) {
                this.currentSpec = (GOST3410ParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                this.currentSpec = GOST3410ParameterSpec.fromPublicKeyAlg(new GOST3410PublicKeyAlgParameters((ASN1Sequence) ASN1Object.fromByteArray(bArr)));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid GOST3410 Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid GOST3410 Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "GOST3410 Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == GOST3410PublicKeyParameterSetSpec.class) {
                return this.currentSpec;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$IES.class */
    public static class IES extends JDKAlgorithmParameters {
        public IESParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                aSN1EncodableVector.add(new DEROctetString(this.currentSpec.getDerivationV()));
                aSN1EncodableVector.add(new DEROctetString(this.currentSpec.getEncodingV()));
                aSN1EncodableVector.add(new DERInteger(this.currentSpec.getMacKeySize()));
                return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding IESParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof IESParameterSpec) {
                this.currentSpec = (IESParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("IESParameterSpec required to initialise a IES algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Object.fromByteArray(bArr);
                this.currentSpec = new IESParameterSpec(((ASN1OctetString) aSN1Sequence.getObjectAt(0)).getOctets(), ((ASN1OctetString) aSN1Sequence.getObjectAt(0)).getOctets(), ((DERInteger) aSN1Sequence.getObjectAt(0)).getValue().intValue());
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid IES Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid IES Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "IES Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == IESParameterSpec.class) {
                return this.currentSpec;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters.class */
    public static class IVAlgorithmParameters extends JDKAlgorithmParameters {

        /* renamed from: iv */
        private byte[] f7619iv;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            return engineGetEncoded("ASN.1");
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                return new DEROctetString(engineGetEncoded("RAW")).getEncoded();
            }
            if (!str.equals("RAW")) {
                return null;
            }
            return Arrays.clone(this.f7619iv);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f7619iv = ((IvParameterSpec) algorithmParameterSpec).getIV();
                return;
            }
            throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            byte[] bArr2 = bArr;
            if (bArr.length % 8 != 0) {
                bArr2 = bArr;
                if (bArr[0] == 4) {
                    bArr2 = bArr;
                    if (bArr[1] == bArr.length - 2) {
                        bArr2 = ((ASN1OctetString) ASN1Object.fromByteArray(bArr)).getOctets();
                    }
                }
            }
            this.f7619iv = Arrays.clone(bArr2);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (!isASN1FormatString(str)) {
                if (!str.equals("RAW")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(bArr);
                return;
            }
            try {
                engineInit(((ASN1OctetString) ASN1Object.fromByteArray(bArr)).getOctets());
            } catch (Exception e) {
                throw new IOException("Exception decoding: " + e);
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "IV Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f7619iv);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP.class */
    public static class OAEP extends JDKAlgorithmParameters {
        public OAEPParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return new RSAESOAEPparams(new AlgorithmIdentifier(JCEDigestUtil.getOID(this.currentSpec.getDigestAlgorithm()), new DERNull()), new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(((MGF1ParameterSpec) this.currentSpec.getMGFParameters()).getDigestAlgorithm()), new DERNull())), new AlgorithmIdentifier(PKCSObjectIdentifiers.id_pSpecified, new DEROctetString(((PSource.PSpecified) this.currentSpec.getPSource()).getValue()))).getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Error encoding OAEPParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof OAEPParameterSpec) {
                this.currentSpec = (OAEPParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                RSAESOAEPparams rSAESOAEPparams = new RSAESOAEPparams((ASN1Sequence) ASN1Object.fromByteArray(bArr));
                this.currentSpec = new OAEPParameterSpec(rSAESOAEPparams.getHashAlgorithm().getObjectId().getId(), rSAESOAEPparams.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(rSAESOAEPparams.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), new PSource.PSpecified(ASN1OctetString.getInstance(rSAESOAEPparams.getPSourceAlgorithm().getParameters()).getOctets()));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "OAEP Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            OAEPParameterSpec oAEPParameterSpec;
            if (cls != OAEPParameterSpec.class || (oAEPParameterSpec = this.currentSpec) == null) {
                throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
            }
            return oAEPParameterSpec;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$PBKDF2.class */
    public static class PBKDF2 extends JDKAlgorithmParameters {
        public PBKDF2Params params;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return this.params.getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Oooops! " + e.toString());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                this.params = new PBKDF2Params(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
                return;
            }
            throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            this.params = PBKDF2Params.getInstance(ASN1Object.fromByteArray(bArr));
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str)) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameters format in PWRIKEK parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PBKDF2 Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == PBEParameterSpec.class) {
                return new PBEParameterSpec(this.params.getSalt(), this.params.getIterationCount().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE.class */
    public static class PKCS12PBE extends JDKAlgorithmParameters {
        public PKCS12PBEParams params;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return this.params.getEncoded(ASN1Encodable.DER);
            } catch (IOException e) {
                throw new RuntimeException("Oooops! " + e.toString());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                this.params = new PKCS12PBEParams(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
                return;
            }
            throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            this.params = PKCS12PBEParams.getInstance(ASN1Object.fromByteArray(bArr));
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str)) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameters format in PKCS12 PBE parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PKCS12 PBE Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            if (cls == PBEParameterSpec.class) {
                return new PBEParameterSpec(this.params.getIV(), this.params.getIterations().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS.class */
    public static class PSS extends JDKAlgorithmParameters {
        public PSSParameterSpec currentSpec;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            PSSParameterSpec pSSParameterSpec = this.currentSpec;
            return new RSASSAPSSparams(new AlgorithmIdentifier(JCEDigestUtil.getOID(pSSParameterSpec.getDigestAlgorithm()), new DERNull()), new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(((MGF1ParameterSpec) pSSParameterSpec.getMGFParameters()).getDigestAlgorithm()), new DERNull())), new DERInteger(pSSParameterSpec.getSaltLength()), new DERInteger(pSSParameterSpec.getTrailerField())).getEncoded(ASN1Encodable.DER);
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof PSSParameterSpec) {
                this.currentSpec = (PSSParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            try {
                RSASSAPSSparams rSASSAPSSparams = new RSASSAPSSparams((ASN1Sequence) ASN1Object.fromByteArray(bArr));
                this.currentSpec = new PSSParameterSpec(rSASSAPSSparams.getHashAlgorithm().getObjectId().getId(), rSASSAPSSparams.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(rSASSAPSSparams.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), rSASSAPSSparams.getSaltLength().getValue().intValue(), rSASSAPSSparams.getTrailerField().getValue().intValue());
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            } catch (ClassCastException e2) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (isASN1FormatString(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PSS Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            PSSParameterSpec pSSParameterSpec;
            if (cls != PSSParameterSpec.class || (pSSParameterSpec = this.currentSpec) == null) {
                throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
            }
            return pSSParameterSpec;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters.class */
    public static class RC2AlgorithmParameters extends JDKAlgorithmParameters {

        /* renamed from: iv */
        private byte[] f7620iv;
        private int parameterVersion = 58;
        private static final short[] table = {189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171};
        private static final short[] ekb = {93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253};

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            return Arrays.clone(this.f7620iv);
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (isASN1FormatString(str)) {
                int i = this.parameterVersion;
                return i == -1 ? new RC2CBCParameter(engineGetEncoded()).getEncoded() : new RC2CBCParameter(i, engineGetEncoded()).getEncoded();
            } else if (!str.equals("RAW")) {
                return null;
            } else {
                return engineGetEncoded();
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f7620iv = ((IvParameterSpec) algorithmParameterSpec).getIV();
            } else if (!(algorithmParameterSpec instanceof RC2ParameterSpec)) {
                throw new InvalidParameterSpecException("IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object");
            } else {
                RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
                int effectiveKeyBits = rC2ParameterSpec.getEffectiveKeyBits();
                if (effectiveKeyBits != -1) {
                    short s = effectiveKeyBits;
                    if (effectiveKeyBits < 256) {
                        s = table[effectiveKeyBits];
                    }
                    this.parameterVersion = s;
                }
                this.f7620iv = rC2ParameterSpec.getIV();
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) {
            this.f7620iv = Arrays.clone(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) {
            if (!isASN1FormatString(str)) {
                if (!str.equals("RAW")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(bArr);
                return;
            }
            RC2CBCParameter rC2CBCParameter = RC2CBCParameter.getInstance(ASN1Object.fromByteArray(bArr));
            if (rC2CBCParameter.getRC2ParameterVersion() != null) {
                this.parameterVersion = rC2CBCParameter.getRC2ParameterVersion().intValue();
            }
            this.f7620iv = rC2CBCParameter.getIV();
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "RC2 Parameters";
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters
        public AlgorithmParameterSpec localEngineGetParameterSpec(Class cls) {
            int i;
            if (cls == RC2ParameterSpec.class && (i = this.parameterVersion) != -1) {
                return i < 256 ? new RC2ParameterSpec(ekb[this.parameterVersion], this.f7620iv) : new RC2ParameterSpec(this.parameterVersion, this.f7620iv);
            } else if (cls != IvParameterSpec.class) {
                throw new InvalidParameterSpecException("unknown parameter spec passed to RC2 parameters object.");
            } else {
                return new IvParameterSpec(this.f7620iv);
            }
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return localEngineGetParameterSpec(cls);
    }

    public boolean isASN1FormatString(String str) {
        return str == null || str.equals("ASN.1");
    }

    public abstract AlgorithmParameterSpec localEngineGetParameterSpec(Class cls);
}
