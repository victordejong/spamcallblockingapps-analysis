package p1727n3.p1795i.p1796a.p1797a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.a.f */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/f.class */
public class C26277f {

    /* renamed from: a */
    public float[] f73292a = new float[0];

    /* renamed from: b */
    public double[] f73293b = new double[0];

    /* renamed from: c */
    public double[] f73294c;

    /* renamed from: d */
    public int f73295d;

    /* renamed from: a */
    public void m2222a(double d, float f) {
        int length = this.f73292a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f73293b, d);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.f73293b = Arrays.copyOf(this.f73293b, length);
        this.f73292a = Arrays.copyOf(this.f73292a, length);
        this.f73294c = new double[length];
        double[] dArr = this.f73293b;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.f73293b[i] = d;
        this.f73292a[i] = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* renamed from: b */
    public double m2221b(double d) {
        char c;
        char c2;
        if (d < PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            c = 0;
        } else {
            c = d;
            if (d > 1.0d) {
                c = 0;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f73293b, c);
        if (binarySearch > 0) {
            c2 = 0;
        } else {
            c2 = 0;
            if (binarySearch != 0) {
                int i = (-binarySearch) - 1;
                float[] fArr = this.f73292a;
                float f = fArr[i];
                int i2 = i - 1;
                double d2 = f - fArr[i2];
                double[] dArr = this.f73293b;
                double d3 = d2 / (dArr[i] - dArr[i2]);
                c2 = ((((c * c) - (dArr[i2] * dArr[i2])) * d3) / 2.0d) + ((c - dArr[i2]) * (fArr[i2] - (dArr[i2] * d3))) + this.f73294c[i2];
            }
        }
        return c2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("pos =");
        m8728C.append(Arrays.toString(this.f73293b));
        m8728C.append(" period=");
        m8728C.append(Arrays.toString(this.f73292a));
        return m8728C.toString();
    }
}
