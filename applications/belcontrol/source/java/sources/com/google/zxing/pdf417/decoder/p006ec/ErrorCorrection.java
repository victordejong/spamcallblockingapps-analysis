package com.google.zxing.pdf417.decoder.p006ec;

import com.google.zxing.ChecksumException;
/* renamed from: com.google.zxing.pdf417.decoder.ec.ErrorCorrection */
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/ec/ErrorCorrection.class */
public final class ErrorCorrection {
    private final ModulusGF field = ModulusGF.PDF417_GF;

    private int[] findErrorLocations(ModulusPoly modulusPoly) {
        int i;
        int degree = modulusPoly.getDegree();
        int[] iArr = new int[degree];
        int i2 = 1;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= this.field.getSize() || i >= degree) {
                break;
            }
            int i4 = i;
            if (modulusPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i == degree) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorMagnitudes(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int[] iArr) {
        int degree = modulusPoly2.getDegree();
        int[] iArr2 = new int[degree];
        for (int i = 1; i <= degree; i++) {
            iArr2[degree - i] = this.field.multiply(i, modulusPoly2.getCoefficient(i));
        }
        ModulusPoly modulusPoly3 = new ModulusPoly(this.field, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int inverse = this.field.inverse(iArr[i2]);
            iArr3[i2] = this.field.multiply(this.field.subtract(0, modulusPoly.evaluateAt(inverse)), this.field.inverse(modulusPoly3.evaluateAt(inverse)));
        }
        return iArr3;
    }

    private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int i) {
        ModulusPoly modulusPoly3 = modulusPoly;
        ModulusPoly modulusPoly4 = modulusPoly2;
        if (modulusPoly.getDegree() < modulusPoly2.getDegree()) {
            modulusPoly4 = modulusPoly;
            modulusPoly3 = modulusPoly2;
        }
        ModulusPoly zero = this.field.getZero();
        ModulusPoly one = this.field.getOne();
        ModulusPoly modulusPoly5 = modulusPoly4;
        ModulusPoly modulusPoly6 = zero;
        while (true) {
            ModulusPoly modulusPoly7 = modulusPoly6;
            ModulusPoly modulusPoly8 = modulusPoly3;
            modulusPoly3 = modulusPoly5;
            if (modulusPoly3.getDegree() < i / 2) {
                int coefficient = one.getCoefficient(0);
                if (coefficient == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int inverse = this.field.inverse(coefficient);
                return new ModulusPoly[]{one.multiply(inverse), modulusPoly3.multiply(inverse)};
            } else if (modulusPoly3.isZero()) {
                throw ChecksumException.getChecksumInstance();
            } else {
                ModulusPoly zero2 = this.field.getZero();
                int inverse2 = this.field.inverse(modulusPoly3.getCoefficient(modulusPoly3.getDegree()));
                modulusPoly5 = modulusPoly8;
                ModulusPoly modulusPoly9 = zero2;
                while (modulusPoly5.getDegree() >= modulusPoly3.getDegree() && !modulusPoly5.isZero()) {
                    int degree = modulusPoly5.getDegree() - modulusPoly3.getDegree();
                    int multiply = this.field.multiply(modulusPoly5.getCoefficient(modulusPoly5.getDegree()), inverse2);
                    modulusPoly9 = modulusPoly9.add(this.field.buildMonomial(degree, multiply));
                    modulusPoly5 = modulusPoly5.subtract(modulusPoly3.multiplyByMonomial(degree, multiply));
                }
                ModulusPoly negative = modulusPoly9.multiply(one).subtract(modulusPoly7).negative();
                modulusPoly6 = one;
                one = negative;
            }
        }
    }

    public int decode(int[] iArr, int i, int[] iArr2) {
        ModulusPoly modulusPoly = new ModulusPoly(this.field, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int evaluateAt = modulusPoly.evaluateAt(this.field.exp(i2));
            iArr3[i - i2] = evaluateAt;
            if (evaluateAt != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        ModulusPoly one = this.field.getOne();
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                int exp = this.field.exp((iArr.length - 1) - i3);
                ModulusGF modulusGF = this.field;
                one = one.multiply(new ModulusPoly(modulusGF, new int[]{modulusGF.subtract(0, exp), 1}));
            }
        }
        ModulusPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new ModulusPoly(this.field, iArr3), i);
        ModulusPoly modulusPoly2 = runEuclideanAlgorithm[0];
        ModulusPoly modulusPoly3 = runEuclideanAlgorithm[1];
        int[] findErrorLocations = findErrorLocations(modulusPoly2);
        int[] findErrorMagnitudes = findErrorMagnitudes(modulusPoly3, modulusPoly2, findErrorLocations);
        for (int i4 = 0; i4 < findErrorLocations.length; i4++) {
            int length = (iArr.length - 1) - this.field.log(findErrorLocations[i4]);
            if (length < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length] = this.field.subtract(iArr[length], findErrorMagnitudes[i4]);
        }
        return findErrorLocations.length;
    }
}
