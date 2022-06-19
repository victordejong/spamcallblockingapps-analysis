package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.p029a.AbstractC0572b;
import androidx.constraintlayout.motion.p029a.C0578f;
import androidx.constraintlayout.widget.C0674a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.motion.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f.class */
public abstract class AbstractC0598f {

    /* renamed from: a */
    protected C0674a f2599a;

    /* renamed from: b */
    String f2600b;

    /* renamed from: c */
    int f2601c = 0;

    /* renamed from: d */
    public int f2602d = 0;

    /* renamed from: e */
    ArrayList<C0614o> f2603e = new ArrayList<>();

    /* renamed from: f */
    private AbstractC0572b f2604f;

    /* renamed from: g */
    private C0602c f2605g;

    /* renamed from: androidx.constraintlayout.motion.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$a.class */
    public static final class C0600a extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setAlpha(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$b.class */
    public static final class C0601b extends AbstractC0598f {

        /* renamed from: f */
        float[] f2607f = new float[1];

        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            this.f2607f[0] = m44910a(f);
            this.f2599a.m44723a(view, this.f2607f);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$c.class */
    public static final class C0602c {

        /* renamed from: b */
        float[] f2609b;

        /* renamed from: c */
        double[] f2610c;

        /* renamed from: d */
        float[] f2611d;

        /* renamed from: e */
        float[] f2612e;

        /* renamed from: f */
        float[] f2613f;

        /* renamed from: g */
        int f2614g;

        /* renamed from: h */
        AbstractC0572b f2615h;

        /* renamed from: i */
        double[] f2616i;

        /* renamed from: j */
        double[] f2617j;

        /* renamed from: k */
        float f2618k;

        /* renamed from: m */
        private final int f2620m;

        /* renamed from: a */
        C0578f f2608a = new C0578f();

        /* renamed from: l */
        public HashMap<String, C0674a> f2619l = new HashMap<>();

        C0602c(int i, int i2, int i3) {
            this.f2614g = i;
            this.f2620m = i2;
            this.f2608a.f2411e = i;
            this.f2609b = new float[i3];
            this.f2610c = new double[i3];
            this.f2611d = new float[i3];
            this.f2612e = new float[i3];
            this.f2613f = new float[i3];
        }

        /* renamed from: a */
        public final double m44906a(float f) {
            AbstractC0572b abstractC0572b = this.f2615h;
            if (abstractC0572b != null) {
                double d = f;
                abstractC0572b.mo45066b(d, this.f2617j);
                this.f2615h.mo45070a(d, this.f2616i);
            } else {
                double[] dArr = this.f2617j;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double m45065a = this.f2608a.m45065a(d2);
            double m45063b = this.f2608a.m45063b(d2);
            double[] dArr2 = this.f2617j;
            return dArr2[0] + (m45065a * dArr2[1]) + (m45063b * this.f2616i[1]);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$d.class */
    public static final class C0603d extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m44910a(f));
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$e.class */
    public static final class C0604e extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$f.class */
    public static final class C0605f extends AbstractC0598f {

        /* renamed from: f */
        boolean f2621f = false;

        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m44910a(f));
            } else if (this.f2621f) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f2621f = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(m44910a(f)));
                } catch (IllegalAccessException e2) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e3);
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$g.class */
    public static final class C0606g extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setRotation(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$h.class */
    public static final class C0607h extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setRotationX(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$i.class */
    public static final class C0608i extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setRotationY(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$j.class */
    public static final class C0609j extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setScaleX(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$k.class */
    public static final class C0610k extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setScaleY(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$l.class */
    public static final class C0611l extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setTranslationX(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$m.class */
    public static final class C0612m extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            view.setTranslationY(m44910a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.f$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$n.class */
    public static final class C0613n extends AbstractC0598f {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0598f
        /* renamed from: a */
        public final void mo44905a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m44910a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.f$o */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$o.class */
    public static final class C0614o {

        /* renamed from: a */
        int f2622a;

        /* renamed from: b */
        float f2623b;

        /* renamed from: c */
        float f2624c;

        /* renamed from: d */
        float f2625d;

        public C0614o(int i, float f, float f2, float f3) {
            this.f2622a = i;
            this.f2623b = f3;
            this.f2624c = f2;
            this.f2625d = f;
        }
    }

    /* renamed from: a */
    public final float m44910a(float f) {
        C0602c c0602c = this.f2605g;
        if (c0602c.f2615h != null) {
            c0602c.f2615h.mo45070a(f, c0602c.f2616i);
        } else {
            c0602c.f2616i[0] = c0602c.f2612e[0];
            c0602c.f2616i[1] = c0602c.f2609b[0];
        }
        return (float) (c0602c.f2616i[0] + (c0602c.f2608a.m45065a(f) * c0602c.f2616i[1]));
    }

    /* renamed from: a */
    public final void m44909a(int i, int i2, int i3, float f, float f2, float f3, C0674a c0674a) {
        this.f2603e.add(new C0614o(i, f, f2, f3));
        if (i3 != -1) {
            this.f2602d = i3;
        }
        this.f2601c = i2;
        this.f2599a = c0674a;
    }

    /* renamed from: a */
    public abstract void mo44905a(View view, float f);

    /* renamed from: b */
    public final float m44908b(float f) {
        return (float) this.f2605g.m44906a(f);
    }

    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v92, types: [double] */
    /* renamed from: c */
    public final void m44907c(float f) {
        float[] fArr;
        int i;
        int size = this.f2603e.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f2603e, new Comparator<C0614o>() { // from class: androidx.constraintlayout.motion.widget.f.1
            @Override // java.util.Comparator
            public final /* bridge */ /* synthetic */ int compare(C0614o c0614o, C0614o c0614o2) {
                return Integer.compare(c0614o.f2622a, c0614o2.f2622a);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = new double[size][2];
        this.f2605g = new C0602c(this.f2601c, this.f2602d, size);
        Iterator<C0614o> it2 = this.f2603e.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            C0614o next = it2.next();
            dArr[i2] = next.f2625d * 0.01d;
            dArr2[i2][0] = next.f2623b;
            dArr2[i2][1] = next.f2624c;
            C0602c c0602c = this.f2605g;
            int i3 = next.f2622a;
            float f2 = next.f2625d;
            float f3 = next.f2624c;
            float f4 = next.f2623b;
            c0602c.f2610c[i2] = i3 / 100.0d;
            c0602c.f2611d[i2] = f2;
            c0602c.f2612e[i2] = f3;
            c0602c.f2609b[i2] = f4;
            i2++;
        }
        C0602c c0602c2 = this.f2605g;
        c0602c2.f2618k = f;
        double[][] dArr3 = new double[c0602c2.f2610c.length][2];
        c0602c2.f2616i = new double[c0602c2.f2609b.length + 1];
        c0602c2.f2617j = new double[c0602c2.f2609b.length + 1];
        if (c0602c2.f2610c[0] > 0.0d) {
            c0602c2.f2608a.m45064a(0.0d, c0602c2.f2611d[0]);
        }
        int length = c0602c2.f2610c.length - 1;
        if (c0602c2.f2610c[length] < 1.0d) {
            c0602c2.f2608a.m45064a(1.0d, c0602c2.f2611d[length]);
        }
        for (int i4 = 0; i4 < dArr3.length; i4++) {
            dArr3[i4][0] = c0602c2.f2612e[i4];
            for (int i5 = 0; i5 < c0602c2.f2609b.length; i5++) {
                dArr3[i5][1] = c0602c2.f2609b[i5];
            }
            c0602c2.f2608a.m45064a(c0602c2.f2610c[i4], c0602c2.f2611d[i4]);
        }
        C0578f c0578f = c0602c2.f2608a;
        char c = 0;
        for (int i6 = 0; i6 < c0578f.f2408b.length; i6++) {
            c += c0578f.f2408b[i6];
        }
        char c2 = 0;
        for (int i7 = 1; i7 < c0578f.f2408b.length; i7++) {
            float[] fArr2 = c0578f.f2408b;
            c2 += (c0578f.f2409c[i7] - c0578f.f2409c[i7 - 1]) * ((fArr2[i] + c0578f.f2408b[i7]) / 2.0f);
        }
        for (int i8 = 0; i8 < c0578f.f2408b.length; i8++) {
            c0578f.f2408b[i8] = (float) (fArr[i8] * (c / c2));
        }
        c0578f.f2410d[0] = 0.0d;
        for (int i9 = 1; i9 < c0578f.f2408b.length; i9++) {
            float[] fArr3 = c0578f.f2408b;
            int i10 = i9 - 1;
            float f5 = (fArr3[i10] + c0578f.f2408b[i9]) / 2.0f;
            double d = c0578f.f2409c[i9];
            double d2 = c0578f.f2409c[i10];
            double[] dArr4 = c0578f.f2410d;
            dArr4[i9] = dArr4[i10] + ((d - d2) * f5);
        }
        c0578f.f2413g = true;
        if (c0602c2.f2610c.length > 1) {
            c0602c2.f2615h = AbstractC0572b.m45079a(0, c0602c2.f2610c, dArr3);
        } else {
            c0602c2.f2615h = null;
        }
        this.f2604f = AbstractC0572b.m45079a(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.f2600b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<C0614o> it2 = this.f2603e.iterator();
        while (it2.hasNext()) {
            C0614o next = it2.next();
            str = str + "[" + next.f2622a + " , " + decimalFormat.format(next.f2623b) + "] ";
        }
        return str;
    }
}
