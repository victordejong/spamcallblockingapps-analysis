package com.google.zxing.common.reedsolomon;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final a f32988a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f32989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, int[] iArr) {
        if (iArr.length != 0) {
            this.f32988a = aVar;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.f32989b = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f32989b = new int[]{0};
                return;
            }
            int[] iArr2 = new int[length - i];
            this.f32989b = iArr2;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    private int a(int i) {
        int[] iArr = this.f32989b;
        return iArr[(iArr.length - 1) - i];
    }

    private b b(b bVar) {
        int[] iArr;
        if (!this.f32988a.equals(bVar.f32988a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (a()) {
            return bVar;
        } else {
            if (bVar.a()) {
                return this;
            }
            int[] iArr2 = this.f32989b;
            int[] iArr3 = bVar.f32989b;
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
                iArr4[i] = a.a(iArr2[i - length], iArr[i]);
            }
            return new b(this.f32988a, iArr4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.f32988a.k;
        } else {
            int length = this.f32989b.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.f32988a.b(this.f32989b[i3], i2);
            }
            return new b(this.f32988a, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f32989b[0] == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b[] a(b bVar) {
        b bVar2;
        if (!this.f32988a.equals(bVar.f32988a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (!bVar.a()) {
            b bVar3 = this.f32988a.k;
            int a2 = bVar.a(bVar.f32989b.length - 1);
            a aVar = this.f32988a;
            if (a2 != 0) {
                int i = aVar.i[(aVar.l - aVar.j[a2]) - 1];
                b bVar4 = this;
                while (bVar4.f32989b.length - 1 >= bVar.f32989b.length - 1 && !bVar4.a()) {
                    int[] iArr = bVar4.f32989b;
                    int length = (iArr.length - 1) - (bVar.f32989b.length - 1);
                    int b2 = this.f32988a.b(bVar4.a(iArr.length - 1), i);
                    b a3 = bVar.a(length, b2);
                    a aVar2 = this.f32988a;
                    if (length >= 0) {
                        if (b2 == 0) {
                            bVar2 = aVar2.k;
                        } else {
                            int[] iArr2 = new int[length + 1];
                            iArr2[0] = b2;
                            bVar2 = new b(aVar2, iArr2);
                        }
                        bVar3 = bVar3.b(bVar2);
                        bVar4 = bVar4.b(a3);
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                return new b[]{bVar3, bVar4};
            }
            throw new ArithmeticException();
        } else {
            throw new IllegalArgumentException("Divide by 0");
        }
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder((this.f32989b.length - 1) * 8);
        for (int length = this.f32989b.length - 1; length >= 0; length--) {
            int a2 = a(length);
            if (a2 != 0) {
                if (a2 < 0) {
                    sb.append(" - ");
                    i = -a2;
                } else {
                    i = a2;
                    if (sb.length() > 0) {
                        sb.append(" + ");
                        i = a2;
                    }
                }
                if (length == 0 || i != 1) {
                    a aVar = this.f32988a;
                    if (i != 0) {
                        int i2 = aVar.j[i];
                        if (i2 == 0) {
                            sb.append('1');
                        } else if (i2 == 1) {
                            sb.append('a');
                        } else {
                            sb.append("a^");
                            sb.append(i2);
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
        return sb.toString();
    }
}
