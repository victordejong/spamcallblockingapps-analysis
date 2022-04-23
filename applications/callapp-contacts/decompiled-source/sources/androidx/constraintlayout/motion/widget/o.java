package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.motion.a.c;
import androidx.constraintlayout.widget.a;
import androidx.constraintlayout.widget.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/o.class */
public final class o implements Comparable<o> {

    /* renamed from: a  reason: collision with root package name */
    static String[] f1525a = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: b  reason: collision with root package name */
    c f1526b;

    /* renamed from: c  reason: collision with root package name */
    int f1527c;

    /* renamed from: d  reason: collision with root package name */
    float f1528d;
    float e;
    public float f;
    public float g;
    public float h;
    public float i;
    float j;
    float k;
    int l;
    LinkedHashMap<String, a> m;
    int n;
    double[] o;
    double[] p;

    public o() {
        this.f1527c = 0;
        this.j = Float.NaN;
        this.k = Float.NaN;
        this.l = b.f1492a;
        this.m = new LinkedHashMap<>();
        this.n = 0;
        this.o = new double[18];
        this.p = new double[18];
    }

    public o(int i, int i2, h hVar, o oVar, o oVar2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        this.f1527c = 0;
        this.j = Float.NaN;
        this.k = Float.NaN;
        this.l = b.f1492a;
        this.m = new LinkedHashMap<>();
        this.n = 0;
        this.o = new double[18];
        this.p = new double[18];
        int i3 = hVar.p;
        if (i3 == 1) {
            float f7 = hVar.f1493b / 100.0f;
            this.f1528d = f7;
            this.f1527c = hVar.i;
            float f8 = Float.isNaN(hVar.j) ? f7 : hVar.j;
            float f9 = Float.isNaN(hVar.k) ? f7 : hVar.k;
            float f10 = oVar2.h;
            float f11 = oVar.h;
            float f12 = oVar2.i;
            float f13 = oVar.i;
            this.e = this.f1528d;
            f7 = !Float.isNaN(hVar.l) ? hVar.l : f7;
            float f14 = oVar.f;
            float f15 = oVar.h / 2.0f;
            float f16 = oVar.g;
            float f17 = oVar.i / 2.0f;
            float f18 = (oVar2.f + (oVar2.h / 2.0f)) - (f15 + f14);
            float f19 = (oVar2.g + (oVar2.i / 2.0f)) - (f16 + f17);
            float f20 = f18 * f7;
            float f21 = ((f10 - f11) * f8) / 2.0f;
            this.f = (int) ((f14 + f20) - f21);
            float f22 = f7 * f19;
            float f23 = ((f12 - f13) * f9) / 2.0f;
            this.g = (int) ((f16 + f22) - f23);
            this.h = (int) (f + f3);
            this.i = (int) (f2 + f4);
            float f24 = Float.isNaN(hVar.m) ? BitmapDescriptorFactory.HUE_RED : hVar.m;
            float f25 = -f19;
            this.n = 1;
            float f26 = (int) ((oVar.f + f20) - f21);
            this.f = f26;
            float f27 = (int) ((oVar.g + f22) - f23);
            this.g = f27;
            this.f = f26 + (f25 * f24);
            this.g = f27 + (f18 * f24);
            this.f1526b = c.a(hVar.g);
            this.l = hVar.h;
        } else if (i3 != 2) {
            float f28 = hVar.f1493b / 100.0f;
            this.f1528d = f28;
            this.f1527c = hVar.i;
            float f29 = Float.isNaN(hVar.j) ? f28 : hVar.j;
            float f30 = Float.isNaN(hVar.k) ? f28 : hVar.k;
            float f31 = oVar2.h;
            float f32 = oVar.h;
            float f33 = oVar2.i;
            float f34 = oVar.i;
            this.e = this.f1528d;
            float f35 = oVar.f;
            float f36 = f32 / 2.0f;
            float f37 = oVar.g;
            float f38 = f34 / 2.0f;
            float f39 = f31 / 2.0f;
            float f40 = f33 / 2.0f;
            float f41 = (oVar2.f + f39) - (f35 + f36);
            float f42 = (oVar2.g + f40) - (f37 + f38);
            float f43 = ((f31 - f32) * f29) / 2.0f;
            this.f = (int) ((f35 + (f41 * f28)) - f43);
            float f44 = ((f33 - f34) * f30) / 2.0f;
            this.g = (int) ((f37 + (f42 * f28)) - f44);
            this.h = (int) (f32 + f5);
            this.i = (int) (f34 + f6);
            float f45 = Float.isNaN(hVar.l) ? f28 : hVar.l;
            float f46 = Float.isNaN(hVar.o) ? BitmapDescriptorFactory.HUE_RED : hVar.o;
            f28 = !Float.isNaN(hVar.m) ? hVar.m : f28;
            float f47 = Float.isNaN(hVar.n) ? BitmapDescriptorFactory.HUE_RED : hVar.n;
            this.n = 2;
            this.f = (int) (((oVar.f + (f45 * f41)) + (f47 * f42)) - f43);
            this.g = (int) (((oVar.g + (f41 * f46)) + (f42 * f28)) - f44);
            this.f1526b = c.a(hVar.g);
            this.l = hVar.h;
        } else {
            float f48 = hVar.f1493b / 100.0f;
            this.f1528d = f48;
            this.f1527c = hVar.i;
            float f49 = Float.isNaN(hVar.j) ? f48 : hVar.j;
            float f50 = Float.isNaN(hVar.k) ? f48 : hVar.k;
            float f51 = oVar2.h;
            float f52 = oVar.h;
            float f53 = oVar2.i;
            float f54 = oVar.i;
            this.e = this.f1528d;
            float f55 = oVar.f;
            float f56 = f52 / 2.0f;
            float f57 = oVar.g;
            float f58 = f54 / 2.0f;
            float f59 = oVar2.f;
            float f60 = f51 / 2.0f;
            float f61 = oVar2.g;
            float f62 = f53 / 2.0f;
            float f63 = (f51 - f52) * f49;
            this.f = (int) ((f55 + (((f59 + f60) - (f56 + f55)) * f48)) - (f63 / 2.0f));
            float f64 = (f53 - f54) * f50;
            this.g = (int) ((f57 + (((f61 + f62) - (f57 + f58)) * f48)) - (f64 / 2.0f));
            this.h = (int) (f52 + f63);
            this.i = (int) (f54 + f64);
            this.n = 3;
            if (!Float.isNaN(hVar.l)) {
                this.f = (int) (hVar.l * ((int) (i - this.h)));
            }
            if (!Float.isNaN(hVar.m)) {
                this.g = (int) (hVar.m * ((int) (i2 - this.i)));
            }
            this.f1526b = c.a(hVar.g);
            this.l = hVar.h;
        }
    }

    public static void a(float f, float f2, float[] fArr, int[] iArr, double[] dArr) {
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((f4 * BitmapDescriptorFactory.HUE_RED) / 2.0f);
        float f9 = f5 - ((f6 * BitmapDescriptorFactory.HUE_RED) / 2.0f);
        fArr[0] = (f8 * (1.0f - f)) + (((f4 * 1.0f) + f8) * f) + BitmapDescriptorFactory.HUE_RED;
        fArr[1] = (f9 * (1.0f - f2)) + (((f6 * 1.0f) + f9) * f2) + BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(String str, double[] dArr, int i) {
        a aVar = this.m.get(str);
        int i2 = 0;
        if (aVar.a() == 1) {
            dArr[0] = aVar.b();
            return 1;
        }
        int a2 = aVar.a();
        float[] fArr = new float[a2];
        aVar.a(fArr);
        while (i2 < a2) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3, float f4) {
        this.f = f;
        this.g = f2;
        this.h = f3;
        this.i = f4;
    }

    public final void a(c.a aVar) {
        this.f1526b = androidx.constraintlayout.motion.a.c.a(aVar.f1627c.f1635c);
        this.l = aVar.f1627c.f1636d;
        this.j = aVar.f1627c.g;
        this.f1527c = aVar.f1627c.e;
        this.k = aVar.f1626b.e;
        for (String str : aVar.f.keySet()) {
            a aVar2 = aVar.f.get(str);
            if (aVar2.f1605b != a.EnumC0036a.STRING_TYPE) {
                this.m.put(str, aVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(double[] dArr, int[] iArr) {
        float f = this.e;
        float f2 = this.f;
        float f3 = this.g;
        float f4 = this.h;
        float f5 = this.i;
        float f6 = this.j;
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = i;
            if (iArr[i2] < 6) {
                dArr[i] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i2]];
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f;
        float f2 = this.g;
        float f3 = this.h;
        float f4 = this.i;
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
        fArr[i] = f + (f3 / 2.0f) + BitmapDescriptorFactory.HUE_RED;
        fArr[i + 1] = f2 + (f4 / 2.0f) + BitmapDescriptorFactory.HUE_RED;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(o oVar) {
        return Float.compare(this.e, oVar.e);
    }
}
