package p020b.p037f.p038a.p039a;
/* renamed from: b.f.a.a.d */
/* loaded from: classes-dex2jar.jar:b/f/a/a/d.class */
public class C1510d extends AbstractC1506b {

    /* renamed from: a */
    private double[] f6017a;

    /* renamed from: b */
    private double[][] f6018b;

    /* renamed from: c */
    private double f6019c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r2v0 */
    public C1510d(double[] dArr, double[][] dArr2) {
        this.f6019c = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f6017a = dArr;
        this.f6018b = dArr2;
        if (length2 > 2) {
            ?? r11 = false;
            ?? r13 = false;
            int i = 0;
            while (i < dArr.length) {
                ?? r0 = dArr2[i][0];
                ?? r02 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(r0 - (r11 == true ? 1.0d : 0.0d), r02 - (r13 == true ? 1.0d : 0.0d));
                }
                i++;
                r11 = r0;
                r13 = r02;
            }
            this.f6019c = 0.0d;
        }
    }

    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: c */
    public double mo29879c(double d, int i) {
        double[] dArr = this.f6017a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f6018b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f6018b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f6017a;
            if (d == dArr2[i2]) {
                return this.f6018b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i4] - dArr2[i2]);
                double[][] dArr3 = this.f6018b;
                return (dArr3[i2][i] * (1.0d - d2)) + (dArr3[i4][i] * d2);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: d */
    public void mo29878d(double d, double[] dArr) {
        double[] dArr2 = this.f6017a;
        int length = dArr2.length;
        int length2 = this.f6018b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f6018b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f6018b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f6017a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f6018b[i5][i6];
                }
            }
            double[] dArr3 = this.f6017a;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = (d - dArr3[i5]) / (dArr3[i7] - dArr3[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f6018b;
                    dArr[i8] = (dArr4[i5][i8] * (1.0d - d2)) + (dArr4[i7][i8] * d2);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: e */
    public void mo29877e(double d, float[] fArr) {
        double[] dArr = this.f6017a;
        int length = dArr.length;
        int length2 = this.f6018b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f6018b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f6018b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f6017a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f6018b[i5][i6];
                }
            }
            double[] dArr2 = this.f6017a;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = (d - dArr2[i5]) / (dArr2[i7] - dArr2[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f6018b;
                    fArr[i8] = (float) ((dArr3[i5][i8] * (1.0d - d2)) + (dArr3[i7][i8] * d2));
                }
                return;
            }
            i4 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v42 */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: f */
    public double mo29876f(double d, int i) {
        int i2;
        char c;
        double[] dArr = this.f6017a;
        int length = dArr.length;
        if (d < dArr[0]) {
            c = dArr[0];
            i2 = 0;
        } else {
            int i3 = length - 1;
            i2 = 0;
            c = d;
            if (d >= dArr[i3]) {
                c = dArr[i3];
                i2 = 0;
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f6017a;
            int i4 = i2 + 1;
            if (c <= dArr2[i4]) {
                double d2 = dArr2[i4];
                double d3 = dArr2[i2];
                double d4 = dArr2[i2];
                double[][] dArr3 = this.f6018b;
                return (dArr3[i4][i] - dArr3[i2][i]) / (d2 - d3);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43 */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: g */
    public void mo29875g(double d, double[] dArr) {
        char c;
        double[] dArr2 = this.f6017a;
        int length = dArr2.length;
        int length2 = this.f6018b[0].length;
        if (d <= dArr2[0]) {
            c = dArr2[0];
        } else {
            int i = length - 1;
            c = d;
            if (d >= dArr2[i]) {
                c = dArr2[i];
            }
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < length - 1) {
                double[] dArr3 = this.f6017a;
                int i4 = i3 + 1;
                if (c <= dArr3[i4]) {
                    double d2 = dArr3[i4];
                    double d3 = dArr3[i3];
                    double d4 = dArr3[i3];
                    for (int i5 = 0; i5 < length2; i5++) {
                        double[][] dArr4 = this.f6018b;
                        dArr[i5] = (dArr4[i4][i5] - dArr4[i3][i5]) / (d2 - d3);
                    }
                    return;
                }
                i2 = i4;
            } else {
                return;
            }
        }
    }

    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: h */
    public double[] mo29874h() {
        return this.f6017a;
    }
}
