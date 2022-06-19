package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.p029a.AbstractC0572b;
import androidx.constraintlayout.widget.C0674a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
/* renamed from: androidx.constraintlayout.motion.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q.class */
public abstract class AbstractC0631q {

    /* renamed from: a */
    protected AbstractC0572b f2797a;

    /* renamed from: b */
    protected int[] f2798b = new int[10];

    /* renamed from: c */
    protected float[] f2799c = new float[10];

    /* renamed from: d */
    String f2800d;

    /* renamed from: e */
    private int f2801e;

    /* renamed from: androidx.constraintlayout.motion.widget.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$a.class */
    public static final class C0632a extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setAlpha(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b.class */
    public static final class C0633b extends AbstractC0631q {

        /* renamed from: e */
        String f2802e;

        /* renamed from: f */
        SparseArray<C0674a> f2803f;

        /* renamed from: g */
        float[] f2804g;

        public C0633b(String str, SparseArray<C0674a> sparseArray) {
            this.f2802e = str.split(",")[1];
            this.f2803f = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44796a(int i) {
            float[] fArr;
            int size = this.f2803f.size();
            int m44727a = this.f2803f.valueAt(0).m44727a();
            double[] dArr = new double[size];
            this.f2804g = new float[m44727a];
            double[][] dArr2 = new double[size][m44727a];
            for (int i2 = 0; i2 < size; i2++) {
                dArr[i2] = this.f2803f.keyAt(i2) * 0.01d;
                this.f2803f.valueAt(i2).m44720a(this.f2804g);
                int i3 = 0;
                while (true) {
                    if (i3 < this.f2804g.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f2797a = AbstractC0572b.m45079a(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44795a(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        /* renamed from: a */
        public final void m44794a(int i, C0674a c0674a) {
            this.f2803f.append(i, c0674a);
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            this.f2797a.mo45069a(f, this.f2804g);
            this.f2803f.valueAt(0).m44723a(view, this.f2804g);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$c.class */
    public static final class C0634c extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m44798a(f));
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$d.class */
    public static final class C0635d extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$e.class */
    public static final class C0636e extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setPivotX(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$f.class */
    public static final class C0637f extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setPivotY(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$g.class */
    public static final class C0638g extends AbstractC0631q {

        /* renamed from: e */
        boolean f2805e = false;

        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m44798a(f));
            } else if (this.f2805e) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f2805e = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(m44798a(f)));
                } catch (IllegalAccessException e2) {
                    Log.e("SplineSet", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("SplineSet", "unable to setProgress", e3);
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$h.class */
    public static final class C0639h extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setRotation(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$i.class */
    public static final class C0640i extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setRotationX(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$j.class */
    public static final class C0641j extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setRotationY(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$k.class */
    public static final class C0642k extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setScaleX(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$l.class */
    public static final class C0643l extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setScaleY(m44798a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.q$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$m.class */
    public static final class C0644m {
        private C0644m() {
        }

        /* renamed from: a */
        static void m44793a(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$n.class */
    public static final class C0645n extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setTranslationX(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$o */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$o.class */
    public static final class C0646o extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            view.setTranslationY(m44798a(f));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$p */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$p.class */
    public static final class C0647p extends AbstractC0631q {
        @Override // androidx.constraintlayout.motion.widget.AbstractC0631q
        /* renamed from: a */
        public final void mo44792a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m44798a(f));
            }
        }
    }

    /* renamed from: a */
    public final float m44798a(float f) {
        return (float) this.f2797a.mo45072a(f);
    }

    /* renamed from: a */
    public void mo44796a(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = this.f2801e;
        if (i5 == 0) {
            return;
        }
        int[] iArr = this.f2798b;
        float[] fArr = this.f2799c;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i5 - 1;
        iArr2[1] = 0;
        int i6 = 2;
        while (i6 > 0) {
            int i7 = i6 - 1;
            int i8 = iArr2[i7];
            int i9 = i7 - 1;
            int i10 = iArr2[i9];
            i6 = i9;
            if (i8 < i10) {
                int i11 = iArr[i10];
                int i12 = i8;
                int i13 = i12;
                while (true) {
                    i4 = i13;
                    if (i12 >= i10) {
                        break;
                    }
                    int i14 = i4;
                    if (iArr[i12] <= i11) {
                        C0644m.m44793a(iArr, fArr, i4, i12);
                        i14 = i4 + 1;
                    }
                    i12++;
                    i13 = i14;
                }
                C0644m.m44793a(iArr, fArr, i4, i10);
                int i15 = i9 + 1;
                iArr2[i9] = i4 - 1;
                int i16 = i15 + 1;
                iArr2[i15] = i8;
                int i17 = i16 + 1;
                iArr2[i16] = i10;
                i6 = i17 + 1;
                iArr2[i17] = i4 + 1;
            }
        }
        int i18 = 1;
        int i19 = 1;
        while (true) {
            i2 = i19;
            if (i18 >= this.f2801e) {
                break;
            }
            int[] iArr3 = this.f2798b;
            int i20 = i2;
            if (iArr3[i18 - 1] != iArr3[i18]) {
                i20 = i2 + 1;
            }
            i18++;
            i19 = i20;
        }
        double[] dArr = new double[i2];
        double[][] dArr2 = new double[i2][1];
        int i21 = 0;
        int i22 = 0;
        while (true) {
            int i23 = i22;
            if (i21 >= this.f2801e) {
                this.f2797a = AbstractC0572b.m45079a(i, dArr, dArr2);
                return;
            }
            if (i21 > 0) {
                int[] iArr4 = this.f2798b;
                i3 = i23;
                if (iArr4[i21] == iArr4[i21 - 1]) {
                    i21++;
                    i22 = i3;
                }
            }
            dArr[i23] = this.f2798b[i21] * 0.01d;
            dArr2[i23][0] = this.f2799c[i21];
            i3 = i23 + 1;
            i21++;
            i22 = i3;
        }
    }

    /* renamed from: a */
    public void mo44795a(int i, float f) {
        int[] iArr = this.f2798b;
        if (iArr.length < this.f2801e + 1) {
            this.f2798b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f2799c;
            this.f2799c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f2798b;
        int i2 = this.f2801e;
        iArr2[i2] = i;
        this.f2799c[i2] = f;
        this.f2801e = i2 + 1;
    }

    /* renamed from: a */
    public abstract void mo44792a(View view, float f);

    /* renamed from: b */
    public final float m44797b(float f) {
        return (float) this.f2797a.mo45068b(f);
    }

    public String toString() {
        String str = this.f2800d;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f2801e; i++) {
            str = str + "[" + this.f2798b[i] + " , " + decimalFormat.format(this.f2799c[i]) + "] ";
        }
        return str;
    }
}
