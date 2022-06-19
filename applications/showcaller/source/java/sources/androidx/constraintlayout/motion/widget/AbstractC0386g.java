package androidx.constraintlayout.motion.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import p020b.p037f.p038a.p039a.AbstractC1506b;
import p020b.p037f.p038a.p039a.C1512f;
/* renamed from: androidx.constraintlayout.motion.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g.class */
public abstract class AbstractC0386g {

    /* renamed from: a */
    private AbstractC1506b f1719a;

    /* renamed from: b */
    private C0390d f1720b;

    /* renamed from: c */
    protected ConstraintAttribute f1721c;

    /* renamed from: d */
    private String f1722d;

    /* renamed from: e */
    private int f1723e = 0;

    /* renamed from: f */
    public int f1724f = 0;

    /* renamed from: g */
    ArrayList<C0402p> f1725g = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$a.class */
    public class C0387a implements Comparator<C0402p> {
        C0387a() {
            AbstractC0386g.this = r4;
        }

        /* renamed from: a */
        public int compare(C0402p c0402p, C0402p c0402p2) {
            return Integer.compare(c0402p.f1742a, c0402p2.f1742a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$b.class */
    public static class C0388b extends AbstractC0386g {
        C0388b() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setAlpha(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$c.class */
    public static class C0389c extends AbstractC0386g {

        /* renamed from: h */
        float[] f1727h = new float[1];

        C0389c() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            this.f1727h[0] = m34414a(f);
            this.f1721c.m33710i(view, this.f1727h);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$d.class */
    public static class C0390d {

        /* renamed from: a */
        private final int f1728a;

        /* renamed from: c */
        float[] f1730c;

        /* renamed from: d */
        double[] f1731d;

        /* renamed from: e */
        float[] f1732e;

        /* renamed from: f */
        float[] f1733f;

        /* renamed from: g */
        float[] f1734g;

        /* renamed from: h */
        int f1735h;

        /* renamed from: i */
        AbstractC1506b f1736i;

        /* renamed from: j */
        double[] f1737j;

        /* renamed from: k */
        double[] f1738k;

        /* renamed from: l */
        float f1739l;

        /* renamed from: b */
        C1512f f1729b = new C1512f();

        /* renamed from: m */
        public HashMap<String, ConstraintAttribute> f1740m = new HashMap<>();

        C0390d(int i, int i2, int i3) {
            this.f1735h = i;
            this.f1728a = i2;
            this.f1729b.m29865g(i);
            this.f1730c = new float[i3];
            this.f1731d = new double[i3];
            this.f1732e = new float[i3];
            this.f1733f = new float[i3];
            this.f1734g = new float[i3];
        }

        /* renamed from: a */
        public double m34405a(float f) {
            AbstractC1506b abstractC1506b = this.f1736i;
            if (abstractC1506b != null) {
                double d = f;
                abstractC1506b.mo29875g(d, this.f1738k);
                this.f1736i.mo29878d(d, this.f1737j);
            } else {
                double[] dArr = this.f1738k;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double m29867e = this.f1729b.m29867e(d2);
            double m29868d = this.f1729b.m29868d(d2);
            double[] dArr2 = this.f1738k;
            return dArr2[0] + (m29867e * dArr2[1]) + (m29868d * this.f1737j[1]);
        }

        /* renamed from: b */
        public double m34404b(float f) {
            AbstractC1506b abstractC1506b = this.f1736i;
            if (abstractC1506b != null) {
                abstractC1506b.mo29878d(f, this.f1737j);
            } else {
                double[] dArr = this.f1737j;
                dArr[0] = this.f1733f[0];
                dArr[1] = this.f1730c[0];
            }
            return this.f1737j[0] + (this.f1729b.m29867e(f) * this.f1737j[1]);
        }

        /* renamed from: c */
        public void m34403c(int i, int i2, float f, float f2, float f3) {
            this.f1731d[i] = i2 / 100.0d;
            this.f1732e[i] = f;
            this.f1733f[i] = f2;
            this.f1730c[i] = f3;
        }

        /* renamed from: d */
        public void m34402d(float f) {
            float[] fArr;
            this.f1739l = f;
            double[][] dArr = new double[this.f1731d.length][2];
            float[] fArr2 = this.f1730c;
            this.f1737j = new double[fArr2.length + 1];
            this.f1738k = new double[fArr2.length + 1];
            if (this.f1731d[0] > 0.0d) {
                this.f1729b.m29871a(0.0d, this.f1732e[0]);
            }
            double[] dArr2 = this.f1731d;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f1729b.m29871a(1.0d, this.f1732e[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.f1733f[i];
                int i2 = 0;
                while (true) {
                    if (i2 < this.f1730c.length) {
                        dArr[i2][1] = fArr[i2];
                        i2++;
                    }
                }
                this.f1729b.m29871a(this.f1731d[i], this.f1732e[i]);
            }
            this.f1729b.m29866f();
            double[] dArr3 = this.f1731d;
            if (dArr3.length > 1) {
                this.f1736i = AbstractC1506b.m29886a(0, dArr3, dArr);
            } else {
                this.f1736i = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$e.class */
    public static class C0391e extends AbstractC0386g {
        C0391e() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m34414a(f));
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.g$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$f.class */
    public static class C0392f extends AbstractC0386g {
        C0392f() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
        }

        /* renamed from: j */
        public void m34401j(View view, float f, double d, double d2) {
            view.setRotation(m34414a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$g.class */
    public static class C0393g extends AbstractC0386g {

        /* renamed from: h */
        boolean f1741h = false;

        C0393g() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m34414a(f));
            } else if (this.f1741h) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f1741h = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(m34414a(f)));
                } catch (IllegalAccessException e2) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$h.class */
    public static class C0394h extends AbstractC0386g {
        C0394h() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setRotation(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$i.class */
    public static class C0395i extends AbstractC0386g {
        C0395i() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setRotationX(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$j.class */
    public static class C0396j extends AbstractC0386g {
        C0396j() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setRotationY(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$k.class */
    public static class C0397k extends AbstractC0386g {
        C0397k() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setScaleX(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$l.class */
    public static class C0398l extends AbstractC0386g {
        C0398l() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setScaleY(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$m.class */
    public static class C0399m extends AbstractC0386g {
        C0399m() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setTranslationX(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$n.class */
    public static class C0400n extends AbstractC0386g {
        C0400n() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            view.setTranslationY(m34414a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$o */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$o.class */
    public static class C0401o extends AbstractC0386g {
        C0401o() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0386g
        /* renamed from: f */
        public void mo34400f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m34414a(f));
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.g$p */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$p.class */
    public static class C0402p {

        /* renamed from: a */
        int f1742a;

        /* renamed from: b */
        float f1743b;

        /* renamed from: c */
        float f1744c;

        /* renamed from: d */
        float f1745d;

        public C0402p(int i, float f, float f2, float f3) {
            this.f1742a = i;
            this.f1743b = f3;
            this.f1744c = f2;
            this.f1745d = f;
        }
    }

    /* renamed from: c */
    public static AbstractC0386g m34412c(String str) {
        if (str.startsWith("CUSTOM")) {
            return new C0389c();
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    z = false;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    z = true;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    z = true;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    z = true;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    z = true;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    z = true;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    z = true;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    z = true;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    z = true;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    z = true;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    z = true;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new C0395i();
            case true:
                return new C0396j();
            case true:
                return new C0399m();
            case true:
                return new C0400n();
            case true:
                return new C0401o();
            case true:
                return new C0393g();
            case true:
                return new C0397k();
            case true:
                return new C0398l();
            case true:
                return new C0388b();
            case true:
                return new C0394h();
            case true:
                return new C0391e();
            case true:
                return new C0392f();
            case true:
                return new C0388b();
            case true:
                return new C0388b();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m34414a(float f) {
        return (float) this.f1720b.m34404b(f);
    }

    /* renamed from: b */
    public float m34413b(float f) {
        return (float) this.f1720b.m34405a(f);
    }

    /* renamed from: d */
    public void m34411d(int i, int i2, int i3, float f, float f2, float f3) {
        this.f1725g.add(new C0402p(i, f, f2, f3));
        if (i3 != -1) {
            this.f1724f = i3;
        }
        this.f1723e = i2;
    }

    /* renamed from: e */
    public void m34410e(int i, int i2, int i3, float f, float f2, float f3, ConstraintAttribute constraintAttribute) {
        this.f1725g.add(new C0402p(i, f, f2, f3));
        if (i3 != -1) {
            this.f1724f = i3;
        }
        this.f1723e = i2;
        this.f1721c = constraintAttribute;
    }

    /* renamed from: f */
    public abstract void mo34400f(View view, float f);

    /* renamed from: g */
    public void m34409g(String str) {
        this.f1722d = str;
    }

    @TargetApi(19)
    /* renamed from: h */
    public void m34408h(float f) {
        int size = this.f1725g.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f1725g, new C0387a());
        double[] dArr = new double[size];
        double[][] dArr2 = new double[size][2];
        this.f1720b = new C0390d(this.f1723e, this.f1724f, size);
        Iterator<C0402p> it = this.f1725g.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0402p next = it.next();
            float f2 = next.f1745d;
            dArr[i] = f2 * 0.01d;
            double[] dArr3 = dArr2[i];
            float f3 = next.f1743b;
            dArr3[0] = f3;
            double[] dArr4 = dArr2[i];
            float f4 = next.f1744c;
            dArr4[1] = f4;
            this.f1720b.m34403c(i, next.f1742a, f2, f4, f3);
            i++;
        }
        this.f1720b.m34402d(f);
        this.f1719a = AbstractC1506b.m29886a(0, dArr, dArr2);
    }

    /* renamed from: i */
    public boolean m34407i() {
        boolean z = true;
        if (this.f1724f != 1) {
            z = false;
        }
        return z;
    }

    public String toString() {
        String str = this.f1722d;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<C0402p> it = this.f1725g.iterator();
        while (it.hasNext()) {
            C0402p next = it.next();
            str = str + "[" + next.f1742a + " , " + decimalFormat.format(next.f1743b) + "] ";
        }
        return str;
    }
}
