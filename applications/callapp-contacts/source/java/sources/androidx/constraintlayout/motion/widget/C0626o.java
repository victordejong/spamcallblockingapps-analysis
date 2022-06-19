package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.widget.C0674a;
import androidx.constraintlayout.widget.C0680c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.LinkedHashMap;
/* renamed from: androidx.constraintlayout.motion.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/o.class */
public final class C0626o implements Comparable<C0626o> {

    /* renamed from: a */
    static String[] f2738a = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: b */
    C0574c f2739b;

    /* renamed from: c */
    int f2740c;

    /* renamed from: d */
    float f2741d;

    /* renamed from: e */
    float f2742e;

    /* renamed from: f */
    public float f2743f;

    /* renamed from: g */
    public float f2744g;

    /* renamed from: h */
    public float f2745h;

    /* renamed from: i */
    public float f2746i;

    /* renamed from: j */
    float f2747j;

    /* renamed from: k */
    float f2748k;

    /* renamed from: l */
    int f2749l;

    /* renamed from: m */
    LinkedHashMap<String, C0674a> f2750m;

    /* renamed from: n */
    int f2751n;

    /* renamed from: o */
    double[] f2752o;

    /* renamed from: p */
    double[] f2753p;

    public C0626o() {
        this.f2740c = 0;
        this.f2747j = Float.NaN;
        this.f2748k = Float.NaN;
        this.f2749l = AbstractC0592b.f2555a;
        this.f2750m = new LinkedHashMap<>();
        this.f2751n = 0;
        this.f2752o = new double[18];
        this.f2753p = new double[18];
    }

    public C0626o(int i, int i2, C0616h c0616h, C0626o c0626o, C0626o c0626o2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        this.f2740c = 0;
        this.f2747j = Float.NaN;
        this.f2748k = Float.NaN;
        this.f2749l = AbstractC0592b.f2555a;
        this.f2750m = new LinkedHashMap<>();
        this.f2751n = 0;
        this.f2752o = new double[18];
        this.f2753p = new double[18];
        int i3 = c0616h.f2637p;
        if (i3 == 1) {
            float f7 = c0616h.f2556b / 100.0f;
            this.f2741d = f7;
            this.f2740c = c0616h.f2630i;
            float f8 = Float.isNaN(c0616h.f2631j) ? f7 : c0616h.f2631j;
            float f9 = Float.isNaN(c0616h.f2632k) ? f7 : c0616h.f2632k;
            float f10 = c0626o2.f2745h;
            float f11 = c0626o.f2745h;
            float f12 = c0626o2.f2746i;
            float f13 = c0626o.f2746i;
            this.f2742e = this.f2741d;
            f7 = !Float.isNaN(c0616h.f2633l) ? c0616h.f2633l : f7;
            float f14 = c0626o.f2743f;
            float f15 = c0626o.f2745h / 2.0f;
            float f16 = c0626o.f2744g;
            float f17 = c0626o.f2746i / 2.0f;
            float f18 = (c0626o2.f2743f + (c0626o2.f2745h / 2.0f)) - (f15 + f14);
            float f19 = (c0626o2.f2744g + (c0626o2.f2746i / 2.0f)) - (f16 + f17);
            float f20 = f18 * f7;
            float f21 = ((f10 - f11) * f8) / 2.0f;
            this.f2743f = (int) ((f14 + f20) - f21);
            float f22 = f7 * f19;
            float f23 = ((f12 - f13) * f9) / 2.0f;
            this.f2744g = (int) ((f16 + f22) - f23);
            this.f2745h = (int) (f + f3);
            this.f2746i = (int) (f2 + f4);
            float f24 = Float.isNaN(c0616h.f2634m) ? 0.0f : c0616h.f2634m;
            float f25 = -f19;
            this.f2751n = 1;
            float f26 = (int) ((c0626o.f2743f + f20) - f21);
            this.f2743f = f26;
            float f27 = (int) ((c0626o.f2744g + f22) - f23);
            this.f2744g = f27;
            this.f2743f = f26 + (f25 * f24);
            this.f2744g = f27 + (f18 * f24);
            this.f2739b = C0574c.m45078a(c0616h.f2628g);
            this.f2749l = c0616h.f2629h;
        } else if (i3 == 2) {
            float f28 = c0616h.f2556b / 100.0f;
            this.f2741d = f28;
            this.f2740c = c0616h.f2630i;
            float f29 = Float.isNaN(c0616h.f2631j) ? f28 : c0616h.f2631j;
            float f30 = Float.isNaN(c0616h.f2632k) ? f28 : c0616h.f2632k;
            float f31 = c0626o2.f2745h;
            float f32 = c0626o.f2745h;
            float f33 = c0626o2.f2746i;
            float f34 = c0626o.f2746i;
            this.f2742e = this.f2741d;
            float f35 = c0626o.f2743f;
            float f36 = f32 / 2.0f;
            float f37 = c0626o.f2744g;
            float f38 = f34 / 2.0f;
            float f39 = c0626o2.f2743f;
            float f40 = f31 / 2.0f;
            float f41 = c0626o2.f2744g;
            float f42 = f33 / 2.0f;
            float f43 = (f31 - f32) * f29;
            this.f2743f = (int) ((f35 + (((f39 + f40) - (f36 + f35)) * f28)) - (f43 / 2.0f));
            float f44 = (f33 - f34) * f30;
            this.f2744g = (int) ((f37 + (((f41 + f42) - (f37 + f38)) * f28)) - (f44 / 2.0f));
            this.f2745h = (int) (f32 + f43);
            this.f2746i = (int) (f34 + f44);
            this.f2751n = 3;
            if (!Float.isNaN(c0616h.f2633l)) {
                this.f2743f = (int) (c0616h.f2633l * ((int) (i - this.f2745h)));
            }
            if (!Float.isNaN(c0616h.f2634m)) {
                this.f2744g = (int) (c0616h.f2634m * ((int) (i2 - this.f2746i)));
            }
            this.f2739b = C0574c.m45078a(c0616h.f2628g);
            this.f2749l = c0616h.f2629h;
        } else {
            float f45 = c0616h.f2556b / 100.0f;
            this.f2741d = f45;
            this.f2740c = c0616h.f2630i;
            float f46 = Float.isNaN(c0616h.f2631j) ? f45 : c0616h.f2631j;
            float f47 = Float.isNaN(c0616h.f2632k) ? f45 : c0616h.f2632k;
            float f48 = c0626o2.f2745h;
            float f49 = c0626o.f2745h;
            float f50 = c0626o2.f2746i;
            float f51 = c0626o.f2746i;
            this.f2742e = this.f2741d;
            float f52 = c0626o.f2743f;
            float f53 = f49 / 2.0f;
            float f54 = c0626o.f2744g;
            float f55 = f51 / 2.0f;
            float f56 = f48 / 2.0f;
            float f57 = f50 / 2.0f;
            float f58 = (c0626o2.f2743f + f56) - (f52 + f53);
            float f59 = (c0626o2.f2744g + f57) - (f54 + f55);
            float f60 = ((f48 - f49) * f46) / 2.0f;
            this.f2743f = (int) ((f52 + (f58 * f45)) - f60);
            float f61 = ((f50 - f51) * f47) / 2.0f;
            this.f2744g = (int) ((f54 + (f59 * f45)) - f61);
            this.f2745h = (int) (f49 + f5);
            this.f2746i = (int) (f51 + f6);
            float f62 = Float.isNaN(c0616h.f2633l) ? f45 : c0616h.f2633l;
            float f63 = Float.isNaN(c0616h.f2636o) ? 0.0f : c0616h.f2636o;
            f45 = !Float.isNaN(c0616h.f2634m) ? c0616h.f2634m : f45;
            float f64 = Float.isNaN(c0616h.f2635n) ? 0.0f : c0616h.f2635n;
            this.f2751n = 2;
            this.f2743f = (int) (((c0626o.f2743f + (f62 * f58)) + (f64 * f59)) - f60);
            this.f2744g = (int) (((c0626o.f2744g + (f58 * f63)) + (f59 * f45)) - f61);
            this.f2739b = C0574c.m45078a(c0616h.f2628g);
            this.f2749l = c0616h.f2629h;
        }
    }

    /* renamed from: a */
    public static void m44830a(float f, float f2, float[] fArr, int[] iArr, double[] dArr) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
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

    /* renamed from: a */
    public static boolean m44832a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* renamed from: a */
    public final int m44828a(String str, double[] dArr, int i) {
        float[] fArr;
        C0674a c0674a = this.f2750m.get(str);
        int i2 = 0;
        if (c0674a.m44727a() == 1) {
            dArr[0] = c0674a.m44719b();
            return 1;
        }
        int m44727a = c0674a.m44727a();
        c0674a.m44720a(new float[m44727a]);
        while (i2 < m44727a) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return m44727a;
    }

    /* renamed from: a */
    public final void m44831a(float f, float f2, float f3, float f4) {
        this.f2743f = f;
        this.f2744g = f2;
        this.f2745h = f3;
        this.f2746i = f4;
    }

    /* renamed from: a */
    public final void m44829a(C0680c.C0681a c0681a) {
        this.f2739b = C0574c.m45078a(c0681a.f3062c.f3132c);
        this.f2749l = c0681a.f3062c.f3133d;
        this.f2747j = c0681a.f3062c.f3136g;
        this.f2740c = c0681a.f3062c.f3134e;
        this.f2748k = c0681a.f3061b.f3141e;
        for (String str : c0681a.f3065f.keySet()) {
            C0674a c0674a = c0681a.f3065f.get(str);
            if (c0674a.f3030b != C0674a.EnumC0676a.STRING_TYPE) {
                this.f2750m.put(str, c0674a);
            }
        }
    }

    /* renamed from: a */
    public final void m44827a(double[] dArr, int[] iArr) {
        float f = this.f2742e;
        int i = 0;
        float f2 = this.f2743f;
        float f3 = this.f2744g;
        float f4 = this.f2745h;
        float f5 = this.f2746i;
        float f6 = this.f2747j;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < iArr.length) {
                int i4 = i3;
                if (iArr[i] < 6) {
                    dArr[i3] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i]];
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m44826a(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f2743f;
        float f2 = this.f2744g;
        float f3 = this.f2745h;
        float f4 = this.f2746i;
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
    public final /* synthetic */ int compareTo(C0626o c0626o) {
        return Float.compare(this.f2742e, c0626o.f2742e);
    }
}
