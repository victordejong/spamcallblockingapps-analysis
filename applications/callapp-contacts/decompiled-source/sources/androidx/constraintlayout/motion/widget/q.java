package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q.class */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    protected androidx.constraintlayout.motion.a.b f1542a;

    /* renamed from: b  reason: collision with root package name */
    protected int[] f1543b = new int[10];

    /* renamed from: c  reason: collision with root package name */
    protected float[] f1544c = new float[10];

    /* renamed from: d  reason: collision with root package name */
    String f1545d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$a.class */
    public static final class a extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setAlpha(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b.class */
    public static final class b extends q {
        String e;
        SparseArray<androidx.constraintlayout.widget.a> f;
        float[] g;

        public b(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
            this.e = str.split(",")[1];
            this.f = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(int i) {
            int size = this.f.size();
            int a2 = this.f.valueAt(0).a();
            double[] dArr = new double[size];
            this.g = new float[a2];
            double[][] dArr2 = new double[size][a2];
            for (int i2 = 0; i2 < size; i2++) {
                dArr[i2] = this.f.keyAt(i2) * 0.01d;
                this.f.valueAt(i2).a(this.g);
                int i3 = 0;
                while (true) {
                    float[] fArr = this.g;
                    if (i3 < fArr.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f1542a = androidx.constraintlayout.motion.a.b.a(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        public final void a(int i, androidx.constraintlayout.widget.a aVar) {
            this.f.append(i, aVar);
        }

        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            this.f1542a.a(f, this.g);
            this.f.valueAt(0).a(view, this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$c.class */
    public static final class c extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$d.class */
    public static final class d extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$e.class */
    public static final class e extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setPivotX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$f.class */
    public static final class f extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setPivotY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$g.class */
    public static final class g extends q {
        boolean e = false;

        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f));
            } else if (!this.e) {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.e = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(a(f)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$h.class */
    public static final class h extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setRotation(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$i.class */
    public static final class i extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setRotationX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$j.class */
    public static final class j extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setRotationY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$k.class */
    public static final class k extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setScaleX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$l.class */
    public static final class l extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setScaleY(a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$m.class */
    static final class m {
        private m() {
        }

        static void a(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$n.class */
    public static final class n extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setTranslationX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$o.class */
    public static final class o extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            view.setTranslationY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$p.class */
    public static final class p extends q {
        @Override // androidx.constraintlayout.motion.widget.q
        public final void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f));
            }
        }
    }

    public final float a(float f2) {
        return (float) this.f1542a.a(f2);
    }

    public void a(int i2) {
        int i3 = this.e;
        if (i3 != 0) {
            int[] iArr = this.f1543b;
            float[] fArr = this.f1544c;
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i3 - 1;
            iArr2[1] = 0;
            int i4 = 2;
            while (i4 > 0) {
                int i5 = i4 - 1;
                int i6 = iArr2[i5];
                int i7 = i5 - 1;
                int i8 = iArr2[i7];
                i4 = i7;
                if (i6 < i8) {
                    int i9 = iArr[i8];
                    int i10 = i6;
                    int i11 = i10;
                    while (i10 < i8) {
                        i11 = i11;
                        if (iArr[i10] <= i9) {
                            m.a(iArr, fArr, i11, i10);
                            i11++;
                        }
                        i10++;
                    }
                    m.a(iArr, fArr, i11, i8);
                    int i12 = i7 + 1;
                    iArr2[i7] = i11 - 1;
                    int i13 = i12 + 1;
                    iArr2[i12] = i6;
                    int i14 = i13 + 1;
                    iArr2[i13] = i8;
                    i4 = i14 + 1;
                    iArr2[i14] = i11 + 1;
                }
            }
            int i15 = 1;
            for (int i16 = 1; i16 < this.e; i16++) {
                int[] iArr3 = this.f1543b;
                i15 = i15;
                if (iArr3[i16 - 1] != iArr3[i16]) {
                    i15++;
                }
            }
            double[] dArr = new double[i15];
            double[][] dArr2 = new double[i15][1];
            int i17 = 0;
            for (int i18 = 0; i18 < this.e; i18++) {
                if (i18 > 0) {
                    int[] iArr4 = this.f1543b;
                    i17 = i17;
                    if (iArr4[i18] == iArr4[i18 - 1]) {
                    }
                }
                dArr[i17] = this.f1543b[i18] * 0.01d;
                dArr2[i17][0] = this.f1544c[i18];
                i17++;
            }
            this.f1542a = androidx.constraintlayout.motion.a.b.a(i2, dArr, dArr2);
        }
    }

    public void a(int i2, float f2) {
        int[] iArr = this.f1543b;
        if (iArr.length < this.e + 1) {
            this.f1543b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f1544c;
            this.f1544c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f1543b;
        int i3 = this.e;
        iArr2[i3] = i2;
        this.f1544c[i3] = f2;
        this.e = i3 + 1;
    }

    public abstract void a(View view, float f2);

    public final float b(float f2) {
        return (float) this.f1542a.b(f2);
    }

    public String toString() {
        String str = this.f1545d;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.e; i2++) {
            str = str + "[" + this.f1543b[i2] + " , " + decimalFormat.format(this.f1544c[i2]) + "] ";
        }
        return str;
    }
}
