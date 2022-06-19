package p1727n3.p1795i.p1796a.p1798b;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import p1727n3.p1795i.p1796a.p1797a.AbstractC26271b;
import p1727n3.p1795i.p1802c.C26383a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.b.r */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/r.class */
public abstract class AbstractC26318r {

    /* renamed from: a */
    public AbstractC26271b f73513a;

    /* renamed from: b */
    public int[] f73514b = new int[10];

    /* renamed from: c */
    public float[] f73515c = new float[10];

    /* renamed from: d */
    public int f73516d;

    /* renamed from: e */
    public String f73517e;

    /* renamed from: n3.i.a.b.r$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$a.class */
    public static class C26319a extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setAlpha((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$b */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$b.class */
    public static class C26320b extends AbstractC26318r {

        /* renamed from: f */
        public SparseArray<C26383a> f73518f;

        /* renamed from: g */
        public float[] f73519g;

        public C26320b(String str, SparseArray<C26383a> sparseArray) {
            String str2 = str.split(",")[1];
            this.f73518f = sparseArray;
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: b */
        public void mo2169b(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            this.f73513a.mo2226d(f, this.f73519g);
            this.f73518f.valueAt(0).m1991g(view, this.f73519g);
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: d */
        public void mo2168d(int i) {
            float[] fArr;
            int size = this.f73518f.size();
            int m1994d = this.f73518f.valueAt(0).m1994d();
            double[] dArr = new double[size];
            this.f73519g = new float[m1994d];
            double[][] dArr2 = new double[size][m1994d];
            for (int i2 = 0; i2 < size; i2++) {
                dArr[i2] = this.f73518f.keyAt(i2) * 0.01d;
                this.f73518f.valueAt(i2).m1995c(this.f73519g);
                int i3 = 0;
                while (true) {
                    if (i3 < this.f73519g.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f73513a = AbstractC26271b.m2234a(i, dArr, dArr2);
        }
    }

    /* renamed from: n3.i.a.b.r$c */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$c.class */
    public static class C26321c extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setElevation((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$d */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$d.class */
    public static class C26322d extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
        }
    }

    /* renamed from: n3.i.a.b.r$e */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$e.class */
    public static class C26323e extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setPivotX((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$f */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$f.class */
    public static class C26324f extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setPivotY((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$g */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$g.class */
    public static class C26325g extends AbstractC26318r {

        /* renamed from: f */
        public boolean f73520f = false;

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress((float) this.f73513a.mo2228b(f, 0));
            } else if (this.f73520f) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f73520f = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf((float) this.f73513a.mo2228b(f, 0)));
                } catch (IllegalAccessException | InvocationTargetException e2) {
                }
            }
        }
    }

    /* renamed from: n3.i.a.b.r$h */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$h.class */
    public static class C26326h extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setRotation((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$i */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$i.class */
    public static class C26327i extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setRotationX((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$j */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$j.class */
    public static class C26328j extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setRotationY((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$k */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$k.class */
    public static class C26329k extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setScaleX((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$l */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$l.class */
    public static class C26330l extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setScaleY((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$m */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$m.class */
    public static class C26331m extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setTranslationX((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$n */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$n.class */
    public static class C26332n extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setTranslationY((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: n3.i.a.b.r$o */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/r$o.class */
    public static class C26333o extends AbstractC26318r {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26318r
        /* renamed from: c */
        public void mo2167c(View view, float f) {
            view.setTranslationZ((float) this.f73513a.mo2228b(f, 0));
        }
    }

    /* renamed from: a */
    public float m2170a(float f) {
        return (float) this.f73513a.mo2228b(f, 0);
    }

    /* renamed from: b */
    public void mo2169b(int i, float f) {
        int[] iArr = this.f73514b;
        if (iArr.length < this.f73516d + 1) {
            this.f73514b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f73515c;
            this.f73515c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f73514b;
        int i2 = this.f73516d;
        iArr2[i2] = i;
        this.f73515c[i2] = f;
        this.f73516d = i2 + 1;
    }

    /* renamed from: c */
    public abstract void mo2167c(View view, float f);

    /* renamed from: d */
    public void mo2168d(int i) {
        int i2;
        int i3;
        int i4 = this.f73516d;
        if (i4 == 0) {
            return;
        }
        int[] iArr = this.f73514b;
        float[] fArr = this.f73515c;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i4 - 1;
        iArr2[1] = 0;
        int i5 = 2;
        while (i5 > 0) {
            int i6 = i5 - 1;
            int i7 = iArr2[i6];
            int i8 = i6 - 1;
            int i9 = iArr2[i8];
            i5 = i8;
            if (i7 < i9) {
                int i10 = iArr[i9];
                int i11 = i7;
                int i12 = i11;
                while (true) {
                    i3 = i12;
                    if (i11 >= i9) {
                        break;
                    }
                    int i13 = i3;
                    if (iArr[i11] <= i10) {
                        int i14 = iArr[i3];
                        iArr[i3] = iArr[i11];
                        iArr[i11] = i14;
                        float f = fArr[i3];
                        fArr[i3] = fArr[i11];
                        fArr[i11] = f;
                        i13 = i3 + 1;
                    }
                    i11++;
                    i12 = i13;
                }
                int i15 = iArr[i3];
                iArr[i3] = iArr[i9];
                iArr[i9] = i15;
                float f2 = fArr[i3];
                fArr[i3] = fArr[i9];
                fArr[i9] = f2;
                int i16 = i8 + 1;
                iArr2[i8] = i3 - 1;
                int i17 = i16 + 1;
                iArr2[i16] = i7;
                int i18 = i17 + 1;
                iArr2[i17] = i9;
                i5 = i18 + 1;
                iArr2[i18] = i3 + 1;
            }
        }
        int i19 = 1;
        int i20 = 1;
        while (true) {
            i2 = i20;
            if (i19 >= this.f73516d) {
                break;
            }
            int[] iArr3 = this.f73514b;
            int i21 = i2;
            if (iArr3[i19 - 1] != iArr3[i19]) {
                i21 = i2 + 1;
            }
            i19++;
            i20 = i21;
        }
        double[] dArr = new double[i2];
        double[][] dArr2 = new double[i2][1];
        int i22 = 0;
        for (int i23 = 0; i23 < this.f73516d; i23++) {
            if (i23 > 0) {
                int[] iArr4 = this.f73514b;
                if (iArr4[i23] == iArr4[i23 - 1]) {
                }
            }
            dArr[i22] = this.f73514b[i23] * 0.01d;
            dArr2[i22][0] = this.f73515c[i23];
            i22++;
        }
        this.f73513a = AbstractC26271b.m2234a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f73517e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f73516d; i++) {
            StringBuilder m8696K = C22128a.m8696K(str, "[");
            m8696K.append(this.f73514b[i]);
            m8696K.append(" , ");
            m8696K.append(decimalFormat.format(this.f73515c[i]));
            m8696K.append("] ");
            str = m8696K.toString();
        }
        return str;
    }
}
