package p1727n3.p1795i.p1796a.p1798b;

import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import p1727n3.p1795i.p1796a.p1797a.AbstractC26271b;
import p1727n3.p1795i.p1796a.p1797a.C26277f;
import p1727n3.p1795i.p1802c.C26383a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.b.f */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/f.class */
public abstract class AbstractC26286f {

    /* renamed from: a */
    public C26290d f73350a;

    /* renamed from: b */
    public C26383a f73351b;

    /* renamed from: c */
    public String f73352c;

    /* renamed from: d */
    public int f73353d = 0;

    /* renamed from: e */
    public int f73354e = 0;

    /* renamed from: f */
    public ArrayList<C26302p> f73355f = new ArrayList<>();

    /* renamed from: n3.i.a.b.f$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$a.class */
    public class C26287a implements Comparator<C26302p> {
        public C26287a(AbstractC26286f abstractC26286f) {
        }

        @Override // java.util.Comparator
        public int compare(C26302p c26302p, C26302p c26302p2) {
            return Integer.compare(c26302p.f73365a, c26302p2.f73365a);
        }
    }

    /* renamed from: n3.i.a.b.f$b */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$b.class */
    public static class C26288b extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setAlpha(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$c */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$c.class */
    public static class C26289c extends AbstractC26286f {

        /* renamed from: g */
        public float[] f73356g = new float[1];

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            this.f73356g[0] = m2216a(f);
            this.f73351b.m1991g(view, this.f73356g);
        }
    }

    /* renamed from: n3.i.a.b.f$d */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$d.class */
    public static class C26290d {

        /* renamed from: a */
        public C26277f f73357a = new C26277f();

        /* renamed from: b */
        public float[] f73358b;

        /* renamed from: c */
        public double[] f73359c;

        /* renamed from: d */
        public float[] f73360d;

        /* renamed from: e */
        public float[] f73361e;

        /* renamed from: f */
        public AbstractC26271b f73362f;

        /* renamed from: g */
        public double[] f73363g;

        public C26290d(int i, int i2, int i3) {
            new HashMap();
            this.f73357a.f73295d = i;
            this.f73358b = new float[i3];
            this.f73359c = new double[i3];
            this.f73360d = new float[i3];
            this.f73361e = new float[i3];
            float[] fArr = new float[i3];
        }
    }

    /* renamed from: n3.i.a.b.f$e */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$e.class */
    public static class C26291e extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setElevation(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$f */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$f.class */
    public static class C26292f extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
        }
    }

    /* renamed from: n3.i.a.b.f$g */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$g.class */
    public static class C26293g extends AbstractC26286f {

        /* renamed from: g */
        public boolean f73364g = false;

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m2216a(f));
            } else if (this.f73364g) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f73364g = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(m2216a(f)));
                } catch (IllegalAccessException | InvocationTargetException e2) {
                }
            }
        }
    }

    /* renamed from: n3.i.a.b.f$h */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$h.class */
    public static class C26294h extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setRotation(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$i */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$i.class */
    public static class C26295i extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setRotationX(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$j */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$j.class */
    public static class C26296j extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setRotationY(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$k */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$k.class */
    public static class C26297k extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setScaleX(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$l */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$l.class */
    public static class C26298l extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setScaleY(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$m */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$m.class */
    public static class C26299m extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setTranslationX(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$n */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$n.class */
    public static class C26300n extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setTranslationY(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$o */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$o.class */
    public static class C26301o extends AbstractC26286f {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26286f
        /* renamed from: b */
        public void mo2214b(View view, float f) {
            view.setTranslationZ(m2216a(f));
        }
    }

    /* renamed from: n3.i.a.b.f$p */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/f$p.class */
    public static class C26302p {

        /* renamed from: a */
        public int f73365a;

        /* renamed from: b */
        public float f73366b;

        /* renamed from: c */
        public float f73367c;

        /* renamed from: d */
        public float f73368d;

        public C26302p(int i, float f, float f2, float f3) {
            this.f73365a = i;
            this.f73366b = f3;
            this.f73367c = f2;
            this.f73368d = f;
        }
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v44, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [double] */
    /* JADX WARN: Type inference failed for: r0v52, types: [double] */
    /* renamed from: a */
    public float m2216a(float f) {
        char c;
        char c2;
        C26290d c26290d = this.f73350a;
        AbstractC26271b abstractC26271b = c26290d.f73362f;
        if (abstractC26271b != null) {
            abstractC26271b.mo2227c(f, c26290d.f73363g);
        } else {
            double[] dArr = c26290d.f73363g;
            dArr[0] = c26290d.f73361e[0];
            dArr[1] = c26290d.f73358b[0];
        }
        double d = c26290d.f73363g[0];
        C26277f c26277f = c26290d.f73357a;
        double d2 = f;
        switch (c26277f.f73295d) {
            case 1:
                c = Math.signum(0.5d - (c26277f.m2221b(d2) % 1.0d));
                break;
            case 2:
                c2 = Math.abs((((c26277f.m2221b(d2) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                c = 0 - c2;
                break;
            case 3:
                c = (((c26277f.m2221b(d2) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
                break;
            case 4:
                c2 = ((c26277f.m2221b(d2) * 2.0d) + 1.0d) % 2.0d;
                c = 0 - c2;
                break;
            case 5:
                c = Math.cos(c26277f.m2221b(d2) * 6.283185307179586d);
                break;
            case 6:
                double abs = 1.0d - Math.abs(((c26277f.m2221b(d2) * 4.0d) % 4.0d) - 2.0d);
                c2 = abs * abs;
                c = 0 - c2;
                break;
            default:
                c = Math.sin(c26277f.m2221b(d2) * 6.283185307179586d);
                break;
        }
        return (float) ((c * c26290d.f73363g[1]) + d);
    }

    /* renamed from: b */
    public abstract void mo2214b(View view, float f);

    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v106, types: [double] */
    /* renamed from: c */
    public void m2215c(float f) {
        float[] fArr;
        float[] fArr2;
        int size = this.f73355f.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f73355f, new C26287a(this));
        double[] dArr = new double[size];
        double[][] dArr2 = new double[size][2];
        this.f73350a = new C26290d(this.f73353d, this.f73354e, size);
        Iterator<C26302p> it = this.f73355f.iterator();
        int i = 0;
        while (it.hasNext()) {
            C26302p next = it.next();
            float f2 = next.f73368d;
            dArr[i] = f2 * 0.01d;
            double[] dArr3 = dArr2[i];
            float f3 = next.f73366b;
            dArr3[0] = f3;
            double[] dArr4 = dArr2[i];
            float f4 = next.f73367c;
            dArr4[1] = f4;
            C26290d c26290d = this.f73350a;
            c26290d.f73359c[i] = next.f73365a / 100.0d;
            c26290d.f73360d[i] = f2;
            c26290d.f73361e[i] = f4;
            c26290d.f73358b[i] = f3;
            i++;
        }
        C26290d c26290d2 = this.f73350a;
        double[][] dArr5 = new double[c26290d2.f73359c.length][2];
        float[] fArr3 = c26290d2.f73358b;
        c26290d2.f73363g = new double[fArr3.length + 1];
        double[] dArr6 = new double[fArr3.length + 1];
        if (c26290d2.f73359c[0] > PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            c26290d2.f73357a.m2222a(PlaceLikelihood.LIKELIHOOD_MIN_VALUE, c26290d2.f73360d[0]);
        }
        double[] dArr7 = c26290d2.f73359c;
        int length = dArr7.length - 1;
        if (dArr7[length] < 1.0d) {
            c26290d2.f73357a.m2222a(1.0d, c26290d2.f73360d[length]);
        }
        for (int i2 = 0; i2 < dArr5.length; i2++) {
            dArr5[i2][0] = c26290d2.f73361e[i2];
            int i3 = 0;
            while (true) {
                if (i3 < c26290d2.f73358b.length) {
                    dArr5[i3][1] = fArr2[i3];
                    i3++;
                }
            }
            c26290d2.f73357a.m2222a(c26290d2.f73359c[i2], c26290d2.f73360d[i2]);
        }
        C26277f c26277f = c26290d2.f73357a;
        char c = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= c26277f.f73292a.length) {
                break;
            }
            c += fArr[i4];
            i4++;
        }
        char c2 = 0;
        int i5 = 1;
        while (true) {
            float[] fArr4 = c26277f.f73292a;
            if (i5 >= fArr4.length) {
                break;
            }
            int i6 = i5 - 1;
            float f5 = (fArr4[i6] + fArr4[i5]) / 2.0f;
            double[] dArr8 = c26277f.f73293b;
            c2 = ((dArr8[i5] - dArr8[i6]) * f5) + c2;
            i5++;
        }
        int i7 = 0;
        while (true) {
            float[] fArr5 = c26277f.f73292a;
            if (i7 >= fArr5.length) {
                break;
            }
            fArr5[i7] = (float) (fArr5[i7] * (c / c2));
            i7++;
        }
        c26277f.f73294c[0] = 0.0d;
        int i8 = 1;
        while (true) {
            float[] fArr6 = c26277f.f73292a;
            if (i8 >= fArr6.length) {
                break;
            }
            int i9 = i8 - 1;
            float f6 = (fArr6[i9] + fArr6[i8]) / 2.0f;
            double[] dArr9 = c26277f.f73293b;
            double d = dArr9[i8];
            double d2 = dArr9[i9];
            double[] dArr10 = c26277f.f73294c;
            dArr10[i8] = ((d - d2) * f6) + dArr10[i9];
            i8++;
        }
        double[] dArr11 = c26290d2.f73359c;
        if (dArr11.length > 1) {
            c26290d2.f73362f = AbstractC26271b.m2234a(0, dArr11, dArr5);
        } else {
            c26290d2.f73362f = null;
        }
        AbstractC26271b.m2234a(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.f73352c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<C26302p> it = this.f73355f.iterator();
        while (it.hasNext()) {
            C26302p next = it.next();
            StringBuilder m8696K = C22128a.m8696K(str, "[");
            m8696K.append(next.f73365a);
            m8696K.append(" , ");
            m8696K.append(decimalFormat.format(next.f73366b));
            m8696K.append("] ");
            str = m8696K.toString();
        }
        return str;
    }
}
