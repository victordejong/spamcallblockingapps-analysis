package com.google.zxing.pdf417.decoder.p010ec;
/* renamed from: com.google.zxing.pdf417.decoder.ec.ModulusPoly */
/* loaded from: classes2-dex2jar.jar:com/google/zxing/pdf417/decoder/ec/ModulusPoly.class */
public final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    public ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = modulusGF;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.coefficients = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.coefficients = new int[]{0};
                return;
            }
            int[] iArr2 = new int[length - i];
            this.coefficients = iArr2;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    public ModulusPoly add(ModulusPoly modulusPoly) {
        int[] iArr;
        if (this.field.equals(modulusPoly.field)) {
            if (isZero()) {
                return modulusPoly;
            }
            if (modulusPoly.isZero()) {
                return this;
            }
            int[] iArr2 = this.coefficients;
            int[] iArr3 = modulusPoly.coefficients;
            if (iArr2.length > iArr3.length) {
                iArr = iArr2;
                iArr2 = iArr3;
            } else {
                iArr = iArr3;
            }
            int[] iArr4 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr4, 0, length);
            for (int i = length; i < iArr.length; i++) {
                iArr4[i] = this.field.add(iArr2[i - length], iArr[i]);
            }
            return new ModulusPoly(this.field, iArr4);
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.coefficients) {
                i2 = this.field.add(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.coefficients;
        int i4 = iArr[0];
        int length = iArr.length;
        int i5 = i4;
        for (int i6 = 1; i6 < length; i6++) {
            ModulusGF modulusGF = this.field;
            i5 = modulusGF.add(modulusGF.multiply(i, i5), this.coefficients[i6]);
        }
        return i5;
    }

    public int getCoefficient(int i) {
        int[] iArr = this.coefficients;
        return iArr[(iArr.length - 1) - i];
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    public int getDegree() {
        return this.coefficients.length - 1;
    }

    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    public ModulusPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new ModulusPoly(this.field, iArr);
    }

    public ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (isZero() || modulusPoly.isZero()) {
                return this.field.getZero();
            }
            int[] iArr = this.coefficients;
            int length = iArr.length;
            int[] iArr2 = modulusPoly.coefficients;
            int length2 = iArr2.length;
            int[] iArr3 = new int[(length + length2) - 1];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i + i3;
                    ModulusGF modulusGF = this.field;
                    iArr3[i4] = modulusGF.add(iArr3[i4], modulusGF.multiply(i2, iArr2[i3]));
                }
            }
            return new ModulusPoly(this.field, iArr3);
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public ModulusPoly multiplyByMonomial(int i, int i2) {
        if (i >= 0) {
            if (i2 == 0) {
                return this.field.getZero();
            }
            int length = this.coefficients.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
            }
            return new ModulusPoly(this.field, iArr);
        }
        throw new IllegalArgumentException();
    }

    public ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.field.subtract(0, this.coefficients[i]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    public ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            return modulusPoly.isZero() ? this : add(modulusPoly.negative());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(" - ");
                    i = -coefficient;
                } else {
                    i = coefficient;
                    if (sb.length() > 0) {
                        sb.append(" + ");
                        i = coefficient;
                    }
                }
                if (degree == 0 || i != 1) {
                    sb.append(i);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
