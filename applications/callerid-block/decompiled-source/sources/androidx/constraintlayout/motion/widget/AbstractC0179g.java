package androidx.constraintlayout.motion.widget;

import android.annotation.TargetApi;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import d.f.a.a.b;
import d.f.a.a.f;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.motion.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g.class */
public abstract class AbstractC0179g {

    /* renamed from: a */
    private C0181d f846a;

    /* renamed from: b */
    protected ConstraintAttribute f847b;

    /* renamed from: c */
    private String f848c;

    /* renamed from: d */
    private int f849d = 0;

    /* renamed from: e */
    public int f850e = 0;

    /* renamed from: f */
    ArrayList<C0182p> f851f = new ArrayList<>();

    /* renamed from: androidx.constraintlayout.motion.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$a.class */
    class C0180a implements Comparator<C0182p> {
        C0180a(AbstractC0179g gVar) {
        }

        /* renamed from: a */
        public int compare(C0182p pVar, C0182p pVar2) {
            return C0000a.m15247a(pVar.f860a, pVar2.f860a);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$d.class */
    static class C0181d {

        /* renamed from: a */
        f f852a = new f();

        /* renamed from: b */
        float[] f853b;

        /* renamed from: c */
        double[] f854c;

        /* renamed from: d */
        float[] f855d;

        /* renamed from: e */
        float[] f856e;

        /* renamed from: f */
        b f857f;

        /* renamed from: g */
        double[] f858g;

        /* renamed from: h */
        double[] f859h;

        C0181d(int i, int i2, int i3) {
            new HashMap();
            this.f852a.g(i);
            this.f853b = new float[i3];
            this.f854c = new double[i3];
            this.f855d = new float[i3];
            this.f856e = new float[i3];
            float[] fArr = new float[i3];
        }

        /* renamed from: a */
        public double m14259a(float f) {
            b bVar = this.f857f;
            if (bVar != null) {
                double d = f;
                bVar.g(d, this.f859h);
                this.f857f.d(d, this.f858g);
            } else {
                double[] dArr = this.f859h;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double e = this.f852a.e(d2);
            double d3 = this.f852a.d(d2);
            double[] dArr2 = this.f859h;
            return dArr2[0] + (e * dArr2[1]) + (d3 * this.f858g[1]);
        }

        /* renamed from: b */
        public double m14258b(float f) {
            b bVar = this.f857f;
            if (bVar != null) {
                bVar.d(f, this.f858g);
            } else {
                double[] dArr = this.f858g;
                dArr[0] = this.f856e[0];
                dArr[1] = this.f853b[0];
            }
            return this.f858g[0] + (this.f852a.e(f) * this.f858g[1]);
        }

        /* renamed from: c */
        public void m14257c(int i, int i2, float f, float f2, float f3) {
            double[] dArr = this.f854c;
            double d = i2;
            Double.isNaN(d);
            dArr[i] = d / 100.0d;
            this.f855d[i] = f;
            this.f856e[i] = f2;
            this.f853b[i] = f3;
        }

        /* renamed from: d */
        public void m14256d(float f) {
            double[][] dArr = new double[this.f854c.length][2];
            float[] fArr = this.f853b;
            this.f858g = new double[fArr.length + 1];
            this.f859h = new double[fArr.length + 1];
            if (this.f854c[0] > 0.0d) {
                this.f852a.a(0.0d, this.f855d[0]);
            }
            double[] dArr2 = this.f854c;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f852a.a(1.0d, this.f855d[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.f856e[i];
                int i2 = 0;
                while (true) {
                    float[] fArr2 = this.f853b;
                    if (i2 < fArr2.length) {
                        dArr[i2][1] = fArr2[i2];
                        i2++;
                    }
                }
                this.f852a.a(this.f854c[i], this.f855d[i]);
            }
            this.f852a.f();
            double[] dArr3 = this.f854c;
            this.f857f = dArr3.length > 1 ? b.a(0, dArr3, dArr) : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.g$p */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g$p.class */
    public static class C0182p {

        /* renamed from: a */
        int f860a;

        /* renamed from: b */
        float f861b;

        /* renamed from: c */
        float f862c;

        /* renamed from: d */
        float f863d;

        public C0182p(int i, float f, float f2, float f3) {
            this.f860a = i;
            this.f861b = f3;
            this.f862c = f2;
            this.f863d = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static AbstractC0179g m14267c(String str) {
        if (str.startsWith("CUSTOM")) {
            return new c();
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c = '\b';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new i();
            case 1:
                return new j();
            case 2:
                return new m();
            case 3:
                return new n();
            case 4:
                return new o();
            case 5:
                return new g();
            case 6:
                return new k();
            case 7:
                return new l();
            case '\b':
                return new b();
            case '\t':
                return new h();
            case '\n':
                return new e();
            case 11:
                return new f();
            case '\f':
                return new b();
            case '\r':
                return new b();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m14269a(float f) {
        return (float) this.f846a.m14258b(f);
    }

    /* renamed from: b */
    public float m14268b(float f) {
        return (float) this.f846a.m14259a(f);
    }

    /* renamed from: d */
    public void m14266d(int i, int i2, int i3, float f, float f2, float f3) {
        this.f851f.add(new C0182p(i, f, f2, f3));
        if (i3 != -1) {
            this.f850e = i3;
        }
        this.f849d = i2;
    }

    /* renamed from: e */
    public void m14265e(int i, int i2, int i3, float f, float f2, float f3, ConstraintAttribute constraintAttribute) {
        this.f851f.add(new C0182p(i, f, f2, f3));
        if (i3 != -1) {
            this.f850e = i3;
        }
        this.f849d = i2;
        this.f847b = constraintAttribute;
    }

    /* renamed from: f */
    public abstract void m14264f(View view, float f);

    /* renamed from: g */
    public void m14263g(String str) {
        this.f848c = str;
    }

    @TargetApi(19)
    /* renamed from: h */
    public void m14262h(float f) {
        int size = this.f851f.size();
        if (size != 0) {
            Collections.sort(this.f851f, new C0180a(this));
            double[] dArr = new double[size];
            double[][] dArr2 = new double[size][2];
            this.f846a = new C0181d(this.f849d, this.f850e, size);
            Iterator<C0182p> it = this.f851f.iterator();
            int i = 0;
            while (it.hasNext()) {
                C0182p next = it.next();
                float f2 = next.f863d;
                double d = f2;
                Double.isNaN(d);
                dArr[i] = d * 0.01d;
                double[] dArr3 = dArr2[i];
                float f3 = next.f861b;
                dArr3[0] = f3;
                double[] dArr4 = dArr2[i];
                float f4 = next.f862c;
                dArr4[1] = f4;
                this.f846a.m14257c(i, next.f860a, f2, f4, f3);
                i++;
            }
            this.f846a.m14256d(f);
            b.a(0, dArr, dArr2);
        }
    }

    /* renamed from: i */
    public boolean m14261i() {
        boolean z = true;
        if (this.f850e != 1) {
            z = false;
        }
        return z;
    }

    public String toString() {
        String str = this.f848c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<C0182p> it = this.f851f.iterator();
        while (it.hasNext()) {
            C0182p next = it.next();
            str = str + "[" + next.f860a + " , " + decimalFormat.format(next.f861b) + "] ";
        }
        return str;
    }
}
