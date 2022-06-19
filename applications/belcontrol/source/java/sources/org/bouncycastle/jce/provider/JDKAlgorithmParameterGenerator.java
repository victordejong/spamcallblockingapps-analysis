package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.crypto.generators.DHParametersGenerator;
import org.bouncycastle.crypto.generators.DSAParametersGenerator;
import org.bouncycastle.crypto.generators.ElGamalParametersGenerator;
import org.bouncycastle.crypto.generators.GOST3410ParametersGenerator;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator.class */
public abstract class JDKAlgorithmParameterGenerator extends AlgorithmParameterGeneratorSpi {
    public SecureRandom random;
    public int strength = 1024;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DES.class */
    public static class DES extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("DES", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new IvParameterSpec(bArr));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DES parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DH */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH.class */
    public static class C1597DH extends JDKAlgorithmParameterGenerator {

        /* renamed from: l */
        private int f7617l = 0;

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            DHParametersGenerator dHParametersGenerator = new DHParametersGenerator();
            SecureRandom secureRandom = this.random;
            if (secureRandom != null) {
                dHParametersGenerator.init(this.strength, 20, secureRandom);
            } else {
                dHParametersGenerator.init(this.strength, 20, new SecureRandom());
            }
            DHParameters generateParameters = dHParametersGenerator.generateParameters();
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("DH", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new DHParameterSpec(generateParameters.getP(), generateParameters.getG(), this.f7617l));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            if (algorithmParameterSpec instanceof DHGenParameterSpec) {
                DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
                this.strength = dHGenParameterSpec.getPrimeSize();
                this.f7617l = dHGenParameterSpec.getExponentSize();
                this.random = secureRandom;
                return;
            }
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA.class */
    public static class DSA extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            DSAParametersGenerator dSAParametersGenerator = new DSAParametersGenerator();
            SecureRandom secureRandom = this.random;
            if (secureRandom != null) {
                dSAParametersGenerator.init(this.strength, 20, secureRandom);
            } else {
                dSAParametersGenerator.init(this.strength, 20, new SecureRandom());
            }
            DSAParameters generateParameters = dSAParametersGenerator.generateParameters();
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("DSA", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new DSAParameterSpec(generateParameters.getP(), generateParameters.getQ(), generateParameters.getG()));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator, java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(int i, SecureRandom secureRandom) {
            if (i < 512 || i > 1024 || i % 64 != 0) {
                throw new InvalidParameterException("strength must be from 512 - 1024 and a multiple of 64");
            }
            this.strength = i;
            this.random = secureRandom;
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal.class */
    public static class ElGamal extends JDKAlgorithmParameterGenerator {

        /* renamed from: l */
        private int f7618l = 0;

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            ElGamalParametersGenerator elGamalParametersGenerator = new ElGamalParametersGenerator();
            SecureRandom secureRandom = this.random;
            if (secureRandom != null) {
                elGamalParametersGenerator.init(this.strength, 20, secureRandom);
            } else {
                elGamalParametersGenerator.init(this.strength, 20, new SecureRandom());
            }
            ElGamalParameters generateParameters = elGamalParametersGenerator.generateParameters();
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("ElGamal", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new DHParameterSpec(generateParameters.getP(), generateParameters.getG(), this.f7618l));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            if (algorithmParameterSpec instanceof DHGenParameterSpec) {
                DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
                this.strength = dHGenParameterSpec.getPrimeSize();
                this.f7618l = dHGenParameterSpec.getExponentSize();
                this.random = secureRandom;
                return;
            }
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$GOST3410.class */
    public static class GOST3410 extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            GOST3410ParametersGenerator gOST3410ParametersGenerator = new GOST3410ParametersGenerator();
            SecureRandom secureRandom = this.random;
            if (secureRandom != null) {
                gOST3410ParametersGenerator.init(this.strength, 2, secureRandom);
            } else {
                gOST3410ParametersGenerator.init(this.strength, 2, new SecureRandom());
            }
            GOST3410Parameters generateParameters = gOST3410ParametersGenerator.generateParameters();
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("GOST3410", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(generateParameters.getP(), generateParameters.getQ(), generateParameters.getA())));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for GOST3410 parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2.class */
    public static class RC2 extends JDKAlgorithmParameterGenerator {
        public RC2ParameterSpec spec = null;

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            AlgorithmParameters algorithmParameters;
            if (this.spec == null) {
                byte[] bArr = new byte[8];
                if (this.random == null) {
                    this.random = new SecureRandom();
                }
                this.random.nextBytes(bArr);
                try {
                    algorithmParameters = AlgorithmParameters.getInstance("RC2", BouncyCastleProvider.PROVIDER_NAME);
                    algorithmParameters.init(new IvParameterSpec(bArr));
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage());
                }
            } else {
                try {
                    algorithmParameters = AlgorithmParameters.getInstance("RC2", BouncyCastleProvider.PROVIDER_NAME);
                    algorithmParameters.init(this.spec);
                } catch (Exception e2) {
                    throw new RuntimeException(e2.getMessage());
                }
            }
            return algorithmParameters;
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            if (algorithmParameterSpec instanceof RC2ParameterSpec) {
                this.spec = (RC2ParameterSpec) algorithmParameterSpec;
                return;
            }
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC2 parameter generation.");
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        this.strength = i;
        this.random = secureRandom;
    }
}
