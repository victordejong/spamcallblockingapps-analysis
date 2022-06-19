package p1727n3.p1795i.p1796a.p1798b;

import java.util.LinkedHashMap;
import p1727n3.p1795i.p1796a.p1797a.C26273c;
import p1727n3.p1795i.p1802c.C26383a;
import p1727n3.p1795i.p1802c.C26389d;
/* renamed from: n3.i.a.b.p */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/p.class */
public class C26313p implements Comparable<C26313p> {

    /* renamed from: o */
    public static String[] f73458o = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: a */
    public C26273c f73459a;

    /* renamed from: b */
    public int f73460b;

    /* renamed from: c */
    public float f73461c;

    /* renamed from: d */
    public float f73462d;

    /* renamed from: e */
    public float f73463e;

    /* renamed from: f */
    public float f73464f;

    /* renamed from: g */
    public float f73465g;

    /* renamed from: h */
    public float f73466h;

    /* renamed from: i */
    public float f73467i;

    /* renamed from: j */
    public int f73468j;

    /* renamed from: k */
    public LinkedHashMap<String, C26383a> f73469k;

    /* renamed from: l */
    public int f73470l;

    /* renamed from: m */
    public double[] f73471m;

    /* renamed from: n */
    public double[] f73472n;

    public C26313p() {
        this.f73460b = 0;
        this.f73467i = Float.NaN;
        this.f73468j = -1;
        this.f73469k = new LinkedHashMap<>();
        this.f73470l = 0;
        this.f73471m = new double[18];
        this.f73472n = new double[18];
    }

    public C26313p(int i, int i2, h hVar, C26313p c26313p, C26313p c26313p2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        this.f73460b = 0;
        this.f73467i = Float.NaN;
        this.f73468j = -1;
        this.f73469k = new LinkedHashMap<>();
        this.f73470l = 0;
        this.f73471m = new double[18];
        this.f73472n = new double[18];
        int i3 = hVar.m;
        if (i3 == 1) {
            float f7 = hVar.f73311a / 100.0f;
            this.f73461c = f7;
            this.f73460b = hVar.h;
            float f8 = Float.isNaN(hVar.i) ? f7 : hVar.i;
            float f9 = Float.isNaN(hVar.j) ? f7 : hVar.j;
            float f10 = c26313p2.f73465g;
            float f11 = c26313p.f73465g;
            float f12 = c26313p2.f73466h;
            float f13 = c26313p.f73466h;
            this.f73462d = this.f73461c;
            f7 = !Float.isNaN(hVar.k) ? hVar.k : f7;
            float f14 = c26313p.f73463e;
            float f15 = c26313p.f73465g / 2.0f;
            float f16 = c26313p.f73464f;
            float f17 = c26313p.f73466h / 2.0f;
            float f18 = ((c26313p2.f73465g / 2.0f) + c26313p2.f73463e) - (f15 + f14);
            float f19 = ((c26313p2.f73466h / 2.0f) + c26313p2.f73464f) - (f17 + f16);
            float f20 = f18 * f7;
            float f21 = ((f10 - f11) * f8) / 2.0f;
            this.f73463e = (int) ((f14 + f20) - f21);
            float f22 = f7 * f19;
            float f23 = ((f12 - f13) * f9) / 2.0f;
            this.f73464f = (int) ((f16 + f22) - f23);
            this.f73465g = (int) (f + f3);
            this.f73466h = (int) (f2 + f4);
            float f24 = Float.isNaN(hVar.l) ? 0.0f : hVar.l;
            float f25 = -f19;
            this.f73470l = 1;
            float f26 = (int) ((c26313p.f73463e + f20) - f21);
            this.f73463e = f26;
            float f27 = (int) ((c26313p.f73464f + f22) - f23);
            this.f73464f = f27;
            this.f73463e = f26 + (f25 * f24);
            this.f73464f = f27 + (f18 * f24);
            this.f73459a = C26273c.m2233c(hVar.f);
            this.f73468j = hVar.g;
        } else if (i3 == 2) {
            float f28 = hVar.f73311a / 100.0f;
            this.f73461c = f28;
            this.f73460b = hVar.h;
            float f29 = Float.isNaN(hVar.i) ? f28 : hVar.i;
            float f30 = Float.isNaN(hVar.j) ? f28 : hVar.j;
            float f31 = c26313p2.f73465g;
            float f32 = c26313p.f73465g;
            float f33 = c26313p2.f73466h;
            float f34 = c26313p.f73466h;
            this.f73462d = this.f73461c;
            float f35 = c26313p.f73463e;
            float f36 = f32 / 2.0f;
            float f37 = c26313p.f73464f;
            float f38 = f34 / 2.0f;
            float f39 = c26313p2.f73463e;
            float f40 = f31 / 2.0f;
            float f41 = c26313p2.f73464f;
            float f42 = f33 / 2.0f;
            float f43 = (f31 - f32) * f29;
            this.f73463e = (int) (((((f40 + f39) - (f36 + f35)) * f28) + f35) - (f43 / 2.0f));
            float f44 = (f33 - f34) * f30;
            this.f73464f = (int) (((((f42 + f41) - (f38 + f37)) * f28) + f37) - (f44 / 2.0f));
            this.f73465g = (int) (f32 + f43);
            this.f73466h = (int) (f34 + f44);
            this.f73470l = 3;
            if (!Float.isNaN(hVar.k)) {
                this.f73463e = (int) (hVar.k * ((int) (i - this.f73465g)));
            }
            if (!Float.isNaN(hVar.l)) {
                this.f73464f = (int) (hVar.l * ((int) (i2 - this.f73466h)));
            }
            this.f73459a = C26273c.m2233c(hVar.f);
            this.f73468j = hVar.g;
        } else {
            float f45 = hVar.f73311a / 100.0f;
            this.f73461c = f45;
            this.f73460b = hVar.h;
            float f46 = Float.isNaN(hVar.i) ? f45 : hVar.i;
            float f47 = Float.isNaN(hVar.j) ? f45 : hVar.j;
            float f48 = c26313p2.f73465g;
            float f49 = c26313p.f73465g;
            float f50 = c26313p2.f73466h;
            float f51 = c26313p.f73466h;
            this.f73462d = this.f73461c;
            float f52 = c26313p.f73463e;
            float f53 = f49 / 2.0f;
            float f54 = c26313p.f73464f;
            float f55 = f51 / 2.0f;
            float f56 = f48 / 2.0f;
            float f57 = f50 / 2.0f;
            float f58 = (f56 + c26313p2.f73463e) - (f53 + f52);
            float f59 = (f57 + c26313p2.f73464f) - (f55 + f54);
            float f60 = ((f48 - f49) * f46) / 2.0f;
            this.f73463e = (int) (((f58 * f45) + f52) - f60);
            float f61 = ((f50 - f51) * f47) / 2.0f;
            this.f73464f = (int) (((f59 * f45) + f54) - f61);
            this.f73465g = (int) (f49 + f5);
            this.f73466h = (int) (f51 + f6);
            float f62 = Float.isNaN(hVar.k) ? f45 : hVar.k;
            float f63 = Float.isNaN(Float.NaN) ? 0.0f : Float.NaN;
            f45 = !Float.isNaN(hVar.l) ? hVar.l : f45;
            float f64 = Float.isNaN(Float.NaN) ? 0.0f : Float.NaN;
            this.f73470l = 2;
            this.f73463e = (int) (((f64 * f59) + ((f62 * f58) + c26313p.f73463e)) - f60);
            this.f73464f = (int) (((f59 * f45) + ((f58 * f63) + c26313p.f73464f)) - f61);
            this.f73459a = C26273c.m2233c(hVar.f);
            this.f73468j = hVar.g;
        }
    }

    /* renamed from: a */
    public void m2193a(C26389d.C26390a c26390a) {
        this.f73459a = C26273c.m2233c(c26390a.f73890c.f73960c);
        C26389d.C26392c c26392c = c26390a.f73890c;
        this.f73468j = c26392c.f73961d;
        this.f73467i = c26392c.f73964g;
        this.f73460b = c26392c.f73962e;
        float f = c26390a.f73889b.f73969e;
        for (String str : c26390a.f73893f.keySet()) {
            C26383a c26383a = c26390a.f73893f.get(str);
            if (c26383a.f73846b != C26383a.EnumC26384a.STRING_TYPE) {
                this.f73469k.put(str, c26383a);
            }
        }
    }

    /* renamed from: c */
    public final boolean m2192c(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Comparable
    public int compareTo(C26313p c26313p) {
        return Float.compare(this.f73462d, c26313p.f73462d);
    }

    /* renamed from: d */
    public void m2191d(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f73463e;
        float f2 = this.f73464f;
        float f3 = this.f73465g;
        float f4 = this.f73466h;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    /* renamed from: e */
    public void m2190e(float f, float f2, float f3, float f4) {
        this.f73463e = f;
        this.f73464f = f2;
        this.f73465g = f3;
        this.f73466h = f4;
    }

    /* renamed from: f */
    public void m2189f(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f6 = f7;
            } else if (i2 == 4) {
                f4 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f6) / 2.0f);
        float f9 = f5 - ((0.0f * f4) / 2.0f);
        fArr[0] = (((f6 * 1.0f) + f8) * f) + ((1.0f - f) * f8) + 0.0f;
        fArr[1] = (((f4 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
    }
}
