package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f.class */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    protected androidx.constraintlayout.widget.a f1499a;

    /* renamed from: b  reason: collision with root package name */
    String f1500b;

    /* renamed from: c  reason: collision with root package name */
    int f1501c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f1502d = 0;
    ArrayList<o> e = new ArrayList<>();
    private androidx.constraintlayout.motion.a.b f;
    private c g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$a.class */
    public static final class a extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setAlpha(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$b.class */
    public static final class b extends f {
        float[] f = new float[1];

        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            this.f[0] = a(f);
            this.f1499a.a(view, this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$c.class */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        float[] f1505b;

        /* renamed from: c  reason: collision with root package name */
        double[] f1506c;

        /* renamed from: d  reason: collision with root package name */
        float[] f1507d;
        float[] e;
        float[] f;
        int g;
        androidx.constraintlayout.motion.a.b h;
        double[] i;
        double[] j;
        float k;
        private final int m;

        /* renamed from: a  reason: collision with root package name */
        androidx.constraintlayout.motion.a.f f1504a = new androidx.constraintlayout.motion.a.f();
        public HashMap<String, androidx.constraintlayout.widget.a> l = new HashMap<>();

        c(int i, int i2, int i3) {
            this.g = i;
            this.m = i2;
            this.f1504a.e = i;
            this.f1505b = new float[i3];
            this.f1506c = new double[i3];
            this.f1507d = new float[i3];
            this.e = new float[i3];
            this.f = new float[i3];
        }

        public final double a(float f) {
            androidx.constraintlayout.motion.a.b bVar = this.h;
            if (bVar != null) {
                double d2 = f;
                bVar.b(d2, this.j);
                this.h.a(d2, this.i);
            } else {
                double[] dArr = this.j;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d3 = f;
            double a2 = this.f1504a.a(d3);
            double b2 = this.f1504a.b(d3);
            double[] dArr2 = this.j;
            return dArr2[0] + (a2 * dArr2[1]) + (b2 * this.i[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$d.class */
    public static final class d extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$e.class */
    public static final class e extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.f$f  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$f.class */
    public static final class C0034f extends f {
        boolean f = false;

        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f));
            } else if (!this.f) {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(a(f)));
                    } catch (IllegalAccessException e2) {
                        Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("KeyCycleOscillator", "unable to setProgress", e3);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$g.class */
    public static final class g extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setRotation(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$h.class */
    public static final class h extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setRotationX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$i.class */
    public static final class i extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setRotationY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$j.class */
    public static final class j extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setScaleX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$k.class */
    public static final class k extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setScaleY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$l.class */
    public static final class l extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setTranslationX(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$m.class */
    public static final class m extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            view.setTranslationY(a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$n.class */
    public static final class n extends f {
        @Override // androidx.constraintlayout.motion.widget.f
        public final void a(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/f$o.class */
    static final class o {

        /* renamed from: a  reason: collision with root package name */
        int f1508a;

        /* renamed from: b  reason: collision with root package name */
        float f1509b;

        /* renamed from: c  reason: collision with root package name */
        float f1510c;

        /* renamed from: d  reason: collision with root package name */
        float f1511d;

        public o(int i, float f, float f2, float f3) {
            this.f1508a = i;
            this.f1509b = f3;
            this.f1510c = f2;
            this.f1511d = f;
        }
    }

    public final float a(float f) {
        c cVar = this.g;
        if (cVar.h != null) {
            cVar.h.a(f, cVar.i);
        } else {
            cVar.i[0] = cVar.e[0];
            cVar.i[1] = cVar.f1505b[0];
        }
        return (float) (cVar.i[0] + (cVar.f1504a.a(f) * cVar.i[1]));
    }

    public final void a(int i2, int i3, int i4, float f, float f2, float f3, androidx.constraintlayout.widget.a aVar) {
        this.e.add(new o(i2, f, f2, f3));
        if (i4 != -1) {
            this.f1502d = i4;
        }
        this.f1501c = i3;
        this.f1499a = aVar;
    }

    public abstract void a(View view, float f);

    public final float b(float f) {
        return (float) this.g.a(f);
    }

    public final void c(float f) {
        int size = this.e.size();
        if (size != 0) {
            Collections.sort(this.e, new Comparator<o>() { // from class: androidx.constraintlayout.motion.widget.f.1
                @Override // java.util.Comparator
                public final /* bridge */ /* synthetic */ int compare(o oVar, o oVar2) {
                    return Integer.compare(oVar.f1508a, oVar2.f1508a);
                }
            });
            double[] dArr = new double[size];
            double[][] dArr2 = new double[size][2];
            this.g = new c(this.f1501c, this.f1502d, size);
            Iterator<o> it2 = this.e.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                o next = it2.next();
                dArr[i2] = next.f1511d * 0.01d;
                dArr2[i2][0] = next.f1509b;
                dArr2[i2][1] = next.f1510c;
                c cVar = this.g;
                int i3 = next.f1508a;
                float f2 = next.f1511d;
                float f3 = next.f1510c;
                float f4 = next.f1509b;
                cVar.f1506c[i2] = i3 / 100.0d;
                cVar.f1507d[i2] = f2;
                cVar.e[i2] = f3;
                cVar.f1505b[i2] = f4;
                i2++;
            }
            c cVar2 = this.g;
            cVar2.k = f;
            double[][] dArr3 = new double[cVar2.f1506c.length][2];
            cVar2.i = new double[cVar2.f1505b.length + 1];
            cVar2.j = new double[cVar2.f1505b.length + 1];
            if (cVar2.f1506c[0] > 0.0d) {
                cVar2.f1504a.a(0.0d, cVar2.f1507d[0]);
            }
            int length = cVar2.f1506c.length - 1;
            if (cVar2.f1506c[length] < 1.0d) {
                cVar2.f1504a.a(1.0d, cVar2.f1507d[length]);
            }
            for (int i4 = 0; i4 < dArr3.length; i4++) {
                dArr3[i4][0] = cVar2.e[i4];
                for (int i5 = 0; i5 < cVar2.f1505b.length; i5++) {
                    dArr3[i5][1] = cVar2.f1505b[i5];
                }
                cVar2.f1504a.a(cVar2.f1506c[i4], cVar2.f1507d[i4]);
            }
            androidx.constraintlayout.motion.a.f fVar = cVar2.f1504a;
            double d2 = 0.0d;
            for (int i6 = 0; i6 < fVar.f1448b.length; i6++) {
                d2 += fVar.f1448b[i6];
            }
            double d3 = 0.0d;
            for (int i7 = 1; i7 < fVar.f1448b.length; i7++) {
                float[] fArr = fVar.f1448b;
                int i8 = i7 - 1;
                d3 += (fVar.f1449c[i7] - fVar.f1449c[i8]) * ((fArr[i8] + fVar.f1448b[i7]) / 2.0f);
            }
            for (int i9 = 0; i9 < fVar.f1448b.length; i9++) {
                float[] fArr2 = fVar.f1448b;
                fArr2[i9] = (float) (fArr2[i9] * (d2 / d3));
            }
            fVar.f1450d[0] = 0.0d;
            for (int i10 = 1; i10 < fVar.f1448b.length; i10++) {
                float[] fArr3 = fVar.f1448b;
                int i11 = i10 - 1;
                float f5 = (fArr3[i11] + fVar.f1448b[i10]) / 2.0f;
                double d4 = fVar.f1449c[i10];
                double d5 = fVar.f1449c[i11];
                double[] dArr4 = fVar.f1450d;
                dArr4[i10] = dArr4[i11] + ((d4 - d5) * f5);
            }
            fVar.g = true;
            if (cVar2.f1506c.length > 1) {
                cVar2.h = androidx.constraintlayout.motion.a.b.a(0, cVar2.f1506c, dArr3);
            } else {
                cVar2.h = null;
            }
            this.f = androidx.constraintlayout.motion.a.b.a(0, dArr, dArr2);
        }
    }

    public String toString() {
        String str = this.f1500b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<o> it2 = this.e.iterator();
        while (it2.hasNext()) {
            o next = it2.next();
            str = str + "[" + next.f1508a + " , " + decimalFormat.format(next.f1509b) + "] ";
        }
        return str;
    }
}
