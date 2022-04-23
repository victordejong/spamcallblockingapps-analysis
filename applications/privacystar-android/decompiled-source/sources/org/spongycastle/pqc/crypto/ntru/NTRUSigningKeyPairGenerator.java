package org.spongycastle.pqc.crypto.ntru;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.ntru.NTRUSigningPrivateKeyParameters;
import org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean;
import org.spongycastle.pqc.math.ntru.polynomial.BigDecimalPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.BigIntPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Resultant;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator.class */
public class NTRUSigningKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NTRUSigningKeyGenerationParameters params;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask.class */
    private class BasisGenerationTask implements Callable<NTRUSigningPrivateKeyParameters.Basis> {
        private BasisGenerationTask() {
        }

        @Override // java.util.concurrent.Callable
        public NTRUSigningPrivateKeyParameters.Basis call() throws Exception {
            return NTRUSigningKeyPairGenerator.this.generateBoundedBasis();
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis.class */
    public class FGBasis extends NTRUSigningPrivateKeyParameters.Basis {

        /* renamed from: F */
        public IntegerPolynomial f1754F;

        /* renamed from: G */
        public IntegerPolynomial f1755G;

        FGBasis(Polynomial polynomial, Polynomial polynomial2, IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) {
            super(polynomial, polynomial2, integerPolynomial, nTRUSigningKeyGenerationParameters);
            this.f1754F = integerPolynomial2;
            this.f1755G = integerPolynomial3;
        }

        boolean isNormOk() {
            double d = this.params.keyNormBoundSq;
            int i = this.params.f1753q;
            return ((double) this.f1754F.centeredNormSq(i)) < d && ((double) this.f1755G.centeredNormSq(i)) < d;
        }
    }

    private FGBasis generateBasis() {
        Polynomial generateRandom;
        IntegerPolynomial integerPolynomial;
        IntegerPolynomial invertFq;
        Polynomial generateRandom2;
        IntegerPolynomial integerPolynomial2;
        Resultant resultant;
        BigIntEuclidean calculate;
        BigIntPolynomial bigIntPolynomial;
        IntegerPolynomial integerPolynomial3;
        int i = this.params.f1748N;
        int i2 = this.params.f1753q;
        int i3 = this.params.f1749d;
        int i4 = this.params.f1750d1;
        int i5 = this.params.f1751d2;
        int i6 = this.params.f1752d3;
        int i7 = this.params.basisType;
        int i8 = (i * 2) + 1;
        boolean z = this.params.primeCheck;
        while (true) {
            generateRandom = this.params.polyType == 0 ? DenseTernaryPolynomial.generateRandom(i, i3 + 1, i3, new SecureRandom()) : ProductFormPolynomial.generateRandom(i, i4, i5, i6 + 1, i6, new SecureRandom());
            integerPolynomial = generateRandom.toIntegerPolynomial();
            if (!z || !integerPolynomial.resultant(i8).res.equals(BigInteger.ZERO)) {
                invertFq = integerPolynomial.invertFq(i2);
                if (invertFq != null) {
                    break;
                }
            }
        }
        Resultant resultant2 = integerPolynomial.resultant();
        while (true) {
            generateRandom2 = this.params.polyType == 0 ? DenseTernaryPolynomial.generateRandom(i, i3 + 1, i3, new SecureRandom()) : ProductFormPolynomial.generateRandom(i, i4, i5, i6 + 1, i6, new SecureRandom());
            integerPolynomial2 = generateRandom2.toIntegerPolynomial();
            if (!z || !integerPolynomial2.resultant(i8).res.equals(BigInteger.ZERO)) {
                if (integerPolynomial2.invertFq(i2) != null) {
                    resultant = integerPolynomial2.resultant();
                    calculate = BigIntEuclidean.calculate(resultant2.res, resultant.res);
                    if (calculate.gcd.equals(BigInteger.ONE)) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        BigIntPolynomial bigIntPolynomial2 = (BigIntPolynomial) resultant2.rho.clone();
        bigIntPolynomial2.mult(calculate.f1806x.multiply(BigInteger.valueOf(i2)));
        BigIntPolynomial bigIntPolynomial3 = (BigIntPolynomial) resultant.rho.clone();
        bigIntPolynomial3.mult(calculate.f1807y.multiply(BigInteger.valueOf(-i2)));
        int i9 = 0;
        if (this.params.keyGenAlg == 0) {
            int[] iArr = new int[i];
            int[] iArr2 = new int[i];
            iArr[0] = integerPolynomial.coeffs[0];
            iArr2[0] = integerPolynomial2.coeffs[0];
            for (int i10 = 1; i10 < i; i10++) {
                int[] iArr3 = integerPolynomial.coeffs;
                int i11 = i - i10;
                iArr[i10] = iArr3[i11];
                iArr2[i10] = integerPolynomial2.coeffs[i11];
            }
            IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(iArr);
            IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(iArr2);
            IntegerPolynomial mult = generateRandom.mult(integerPolynomial4);
            mult.add(generateRandom2.mult(integerPolynomial5));
            Resultant resultant3 = mult.resultant();
            BigIntPolynomial mult2 = integerPolynomial4.mult(bigIntPolynomial3);
            mult2.add(integerPolynomial5.mult(bigIntPolynomial2));
            bigIntPolynomial = mult2.mult(resultant3.rho);
            bigIntPolynomial.div(resultant3.res);
        } else {
            for (int i12 = 1; i12 < i; i12 *= 10) {
                i9++;
            }
            BigDecimalPolynomial div = resultant2.rho.div(new BigDecimal(resultant2.res), bigIntPolynomial3.getMaxCoeffLength() + 1 + i9);
            BigDecimalPolynomial div2 = resultant.rho.div(new BigDecimal(resultant.res), bigIntPolynomial2.getMaxCoeffLength() + 1 + i9);
            BigDecimalPolynomial mult3 = div.mult(bigIntPolynomial3);
            mult3.add(div2.mult(bigIntPolynomial2));
            mult3.halve();
            bigIntPolynomial = mult3.round();
        }
        BigIntPolynomial bigIntPolynomial4 = (BigIntPolynomial) bigIntPolynomial3.clone();
        bigIntPolynomial4.sub(generateRandom.mult(bigIntPolynomial));
        BigIntPolynomial bigIntPolynomial5 = (BigIntPolynomial) bigIntPolynomial2.clone();
        bigIntPolynomial5.sub(generateRandom2.mult(bigIntPolynomial));
        IntegerPolynomial integerPolynomial6 = new IntegerPolynomial(bigIntPolynomial4);
        IntegerPolynomial integerPolynomial7 = new IntegerPolynomial(bigIntPolynomial5);
        minimizeFG(integerPolynomial, integerPolynomial2, integerPolynomial6, integerPolynomial7, i);
        if (i7 == 0) {
            integerPolynomial3 = generateRandom2.mult(invertFq, i2);
            generateRandom2 = integerPolynomial6;
        } else {
            integerPolynomial3 = integerPolynomial6.mult(invertFq, i2);
        }
        integerPolynomial3.modPositive(i2);
        return new FGBasis(generateRandom, generateRandom2, integerPolynomial3, integerPolynomial6, integerPolynomial7, this.params);
    }

    private void minimizeFG(IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3, IntegerPolynomial integerPolynomial4, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += i * 2 * ((integerPolynomial.coeffs[i3] * integerPolynomial.coeffs[i3]) + (integerPolynomial2.coeffs[i3] * integerPolynomial2.coeffs[i3]));
        }
        int i4 = i2 - 4;
        IntegerPolynomial integerPolynomial5 = (IntegerPolynomial) integerPolynomial.clone();
        IntegerPolynomial integerPolynomial6 = (IntegerPolynomial) integerPolynomial2.clone();
        int i5 = 0;
        int i6 = 0;
        while (i5 < i && i6 < i) {
            int i7 = 0;
            for (int i8 = 0; i8 < i; i8++) {
                i7 += i * 4 * ((integerPolynomial3.coeffs[i8] * integerPolynomial.coeffs[i8]) + (integerPolynomial4.coeffs[i8] * integerPolynomial2.coeffs[i8]));
            }
            int sumCoeffs = i7 - ((integerPolynomial3.sumCoeffs() + integerPolynomial4.sumCoeffs()) * 4);
            if (sumCoeffs > i4) {
                integerPolynomial3.sub(integerPolynomial5);
                integerPolynomial4.sub(integerPolynomial6);
                i5++;
            } else {
                i5 = i5;
                if (sumCoeffs < (-i4)) {
                    integerPolynomial3.add(integerPolynomial5);
                    integerPolynomial4.add(integerPolynomial6);
                    i5++;
                } else {
                    i6++;
                    integerPolynomial5.rotate1();
                    integerPolynomial6.rotate1();
                }
            }
            i6 = 0;
            i6++;
            integerPolynomial5.rotate1();
            integerPolynomial6.rotate1();
        }
    }

    public NTRUSigningPrivateKeyParameters.Basis generateBoundedBasis() {
        FGBasis generateBasis;
        do {
            generateBasis = generateBasis();
        } while (!generateBasis.isNormOk());
        return generateBasis;
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        int i = this.params.f1747B;
        while (true) {
            nTRUSigningPublicKeyParameters = null;
            if (i < 0) {
                break;
            }
            arrayList.add(newCachedThreadPool.submit(new BasisGenerationTask()));
            i--;
        }
        newCachedThreadPool.shutdown();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = this.params.f1747B; i2 >= 0; i2--) {
            Future future = (Future) arrayList.get(i2);
            try {
                arrayList2.add(future.get());
                if (i2 == this.params.f1747B) {
                    nTRUSigningPublicKeyParameters = new NTRUSigningPublicKeyParameters(((NTRUSigningPrivateKeyParameters.Basis) future.get()).f1764h, this.params.getSigningParameters());
                }
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) nTRUSigningPublicKeyParameters, (AsymmetricKeyParameter) new NTRUSigningPrivateKeyParameters(arrayList2, nTRUSigningPublicKeyParameters));
    }

    public AsymmetricCipherKeyPair generateKeyPairSingleThread() {
        ArrayList arrayList = new ArrayList();
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters = null;
        for (int i = this.params.f1747B; i >= 0; i--) {
            NTRUSigningPrivateKeyParameters.Basis generateBoundedBasis = generateBoundedBasis();
            arrayList.add(generateBoundedBasis);
            if (i == 0) {
                nTRUSigningPublicKeyParameters = new NTRUSigningPublicKeyParameters(generateBoundedBasis.f1764h, this.params.getSigningParameters());
            }
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) nTRUSigningPublicKeyParameters, (AsymmetricKeyParameter) new NTRUSigningPrivateKeyParameters(arrayList, nTRUSigningPublicKeyParameters));
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.params = (NTRUSigningKeyGenerationParameters) keyGenerationParameters;
    }
}
