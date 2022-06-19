package p000;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Build;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import android.util.Log;
import com.google.android.exoplayer2.C0515C;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import uh0;
import yh0;
import zh0;
/* renamed from: ai0 */
/* loaded from: classes-dex2jar.jar:ai0.class */
public class ai0 {

    /* renamed from: l */
    public static HashSet<String> f304l;

    /* renamed from: a */
    public Canvas f305a;

    /* renamed from: b */
    public zh0.b f306b;

    /* renamed from: c */
    public float f307c;

    /* renamed from: d */
    public boolean f308d;

    /* renamed from: e */
    public zh0 f309e;

    /* renamed from: f */
    public C0040h f310f;

    /* renamed from: g */
    public Stack<C0040h> f311g;

    /* renamed from: h */
    public Stack<zh0.j0> f312h;

    /* renamed from: i */
    public Stack<Matrix> f313i;

    /* renamed from: j */
    public Stack<Canvas> f314j;

    /* renamed from: k */
    public Stack<Bitmap> f315k;

    /* renamed from: ai0$a */
    /* loaded from: classes-dex2jar.jar:ai0$a.class */
    public static /* synthetic */ class C0038a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f316a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f317b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f318c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f319d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d8 -> B:72:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dc -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e0 -> B:80:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e4 -> B:60:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e8 -> B:13:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ec -> B:68:0x005d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f0 -> B:64:0x0068). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f4 -> B:20:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f8 -> B:70:0x0087). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fc -> B:82:0x0092). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0100 -> B:78:0x009d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0104 -> B:58:0x00a8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0108 -> B:54:0x00b3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010c -> B:66:0x00bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0110 -> B:62:0x00cb). Please submit an issue!!! */
        static {
            int[] iArr = new int[zh0.e0.a.values().length];
            f319d = iArr;
            try {
                iArr[zh0.e0.a.b.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f319d[zh0.e0.a.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[zh0.e0.d.values().length];
            f318c = iArr2;
            try {
                iArr2[zh0.e0.d.a.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f318c[zh0.e0.d.b.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f318c[zh0.e0.d.c.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr3 = new int[zh0.e0.c.values().length];
            f317b = iArr3;
            try {
                iArr3[zh0.e0.c.a.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f317b[zh0.e0.c.b.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f317b[zh0.e0.c.c.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            int[] iArr4 = new int[yh0.a.values().length];
            f316a = iArr4;
            try {
                iArr4[yh0.a.c.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f316a[yh0.a.g.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f316a[yh0.a.k.ordinal()] = 3;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f316a[yh0.a.d.ordinal()] = 4;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f316a[yh0.a.h.ordinal()] = 5;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f316a[yh0.a.l.ordinal()] = 6;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f316a[yh0.a.f.ordinal()] = 7;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f316a[yh0.a.j.ordinal()] = 8;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* renamed from: ai0$c */
    /* loaded from: classes-dex2jar.jar:ai0$c.class */
    public class C0039c {

        /* renamed from: a */
        public float f320a;

        /* renamed from: b */
        public float f321b;

        /* renamed from: c */
        public float f322c;

        /* renamed from: d */
        public float f323d;

        public C0039c(ai0 ai0Var, float f, float f2, float f3, float f4) {
            this.f322c = 0.0f;
            this.f323d = 0.0f;
            this.f320a = f;
            this.f321b = f2;
            double sqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (sqrt != 0.0d) {
                this.f322c = (float) (f3 / sqrt);
                this.f323d = (float) (f4 / sqrt);
            }
        }

        /* renamed from: a */
        public void m7107a(float f, float f2) {
            float f3 = f - this.f320a;
            float f4 = f2 - this.f321b;
            double sqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (sqrt != 0.0d) {
                this.f322c += (float) (f3 / sqrt);
                this.f323d += (float) (f4 / sqrt);
            }
        }

        /* renamed from: b */
        public void m7106b(C0039c c0039c) {
            this.f322c += c0039c.f322c;
            this.f323d += c0039c.f323d;
        }

        public String toString() {
            return "(" + this.f320a + "," + this.f321b + " " + this.f322c + "," + this.f323d + ")";
        }
    }

    /* renamed from: ai0$h */
    /* loaded from: classes-dex2jar.jar:ai0$h.class */
    public class C0040h implements Cloneable {

        /* renamed from: a */
        public zh0.e0 f324a = zh0.e0.b();

        /* renamed from: b */
        public boolean f325b;

        /* renamed from: c */
        public boolean f326c;

        /* renamed from: d */
        public Paint f327d;

        /* renamed from: f */
        public Paint f328f;

        /* renamed from: g */
        public zh0.b f329g;

        /* renamed from: h */
        public zh0.b f330h;

        /* renamed from: j */
        public boolean f331j;

        /* renamed from: k */
        public boolean f332k;

        public C0040h(ai0 ai0Var) {
            Paint paint = new Paint();
            this.f327d = paint;
            paint.setFlags(385);
            this.f327d.setStyle(Paint.Style.FILL);
            this.f327d.setTypeface(Typeface.DEFAULT);
            Paint paint2 = new Paint();
            this.f328f = paint2;
            paint2.setFlags(385);
            this.f328f.setStyle(Paint.Style.STROKE);
            this.f328f.setTypeface(Typeface.DEFAULT);
        }

        public Object clone() {
            try {
                C0040h c0040h = (C0040h) super.clone();
                c0040h.f324a = (zh0.e0) this.f324a.clone();
                c0040h.f327d = new Paint(this.f327d);
                c0040h.f328f = new Paint(this.f328f);
                return c0040h;
            } catch (CloneNotSupportedException e) {
                throw new InternalError(e.toString());
            }
        }
    }

    /* renamed from: ai0$j */
    /* loaded from: classes-dex2jar.jar:ai0$j.class */
    public abstract class AbstractC0041j {
        public AbstractC0041j(ai0 ai0Var) {
        }

        public /* synthetic */ AbstractC0041j(ai0 ai0Var, C0038a c0038a) {
            this(ai0Var);
        }

        /* renamed from: a */
        public boolean m7105a(zh0.y0 y0Var) {
            return true;
        }

        /* renamed from: b */
        public abstract void m7104b(String str);
    }

    public ai0(Canvas canvas, zh0.b bVar, float f) {
        this.f305a = canvas;
        this.f307c = f;
        this.f306b = bVar;
    }

    /* renamed from: C */
    public static void m7207C(String str, Object... objArr) {
    }

    /* renamed from: J */
    public static void m7193J(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    /* renamed from: Z */
    public static void m7161Z() {
        synchronized (ai0.class) {
            try {
                HashSet<String> hashSet = new HashSet<>();
                f304l = hashSet;
                hashSet.add("Structure");
                f304l.add("BasicStructure");
                f304l.add("ConditionalProcessing");
                f304l.add("Image");
                f304l.add("Style");
                f304l.add("ViewportAttribute");
                f304l.add("Shape");
                f304l.add("BasicText");
                f304l.add("PaintAttribute");
                f304l.add("BasicPaintAttribute");
                f304l.add("OpacityAttribute");
                f304l.add("BasicGraphicsAttribute");
                f304l.add("Marker");
                f304l.add("Gradient");
                f304l.add("Pattern");
                f304l.add("Clip");
                f304l.add("BasicClip");
                f304l.add("Mask");
                f304l.add("View");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: Z0 */
    public static void m7160Z0(String str, Object... objArr) {
        Log.w("SVGAndroidRenderer", String.format(str, objArr));
    }

    /* JADX WARN: Type inference failed for: r0v121, types: [double] */
    /* JADX WARN: Type inference failed for: r0v145, types: [double] */
    /* JADX WARN: Type inference failed for: r0v149, types: [double] */
    /* JADX WARN: Type inference failed for: r0v162, types: [double] */
    /* JADX WARN: Type inference failed for: r0v165, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* JADX WARN: Type inference failed for: r0v63, types: [double] */
    /* renamed from: m */
    public static void m7135m(float f, float f2, float f3, float f4, float f5, boolean z, boolean z2, float f6, float f7, zh0.x xVar) {
        char c;
        if (f == f6 && f2 == f7) {
            return;
        }
        if (f3 == 0.0f || f4 == 0.0f) {
            xVar.e(f6, f7);
            return;
        }
        float abs = Math.abs(f3);
        float abs2 = Math.abs(f4);
        double radians = (float) Math.toRadians(f5 % 360.0d);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d = (f - f6) / 2.0d;
        double d2 = (f2 - f7) / 2.0d;
        double d3 = (cos * d) + (sin * d2);
        double d4 = ((-sin) * d) + (d2 * cos);
        char c2 = abs * abs;
        char c3 = abs2 * abs2;
        double d5 = d3 * d3;
        double d6 = d4 * d4;
        double d7 = (d5 / c2) + (d6 / c3);
        float f8 = abs;
        float f9 = abs2;
        char c4 = c2;
        char c5 = c3;
        if (d7 > 1.0d) {
            f8 = abs * ((float) Math.sqrt(d7));
            f9 = abs2 * ((float) Math.sqrt(d7));
            c4 = f8 * f8;
            c5 = f9 * f9;
        }
        boolean z3 = z == z2 ? true : true;
        double d8 = c4 * d6;
        double d9 = c5 * d5;
        ?? r0 = (((c4 * c5) - d8) - d9) / (d8 + d9);
        char c6 = r0;
        if (r0 < 0.0d) {
            c6 = 0;
        }
        double sqrt = (z3 ? 1.0d : 0.0d) * Math.sqrt(c6);
        double d10 = f8;
        double d11 = f9;
        double d12 = ((d10 * d4) / d11) * sqrt;
        double d13 = sqrt * (-((d11 * d3) / d10));
        double d14 = (f + f6) / 2.0d;
        double d15 = (f2 + f7) / 2.0d;
        double d16 = (d3 - d12) / d10;
        double d17 = (d4 - d13) / d11;
        double d18 = ((-d3) - d12) / d10;
        double d19 = ((-d4) - d13) / d11;
        double d20 = (d16 * d16) + (d17 * d17);
        double degrees = Math.toDegrees(((d17 > 0.0d ? 1 : (d17 == 0.0d ? 0 : -1)) < 0 ? true : true ? 1.0d : 0.0d) * Math.acos(d16 / Math.sqrt(d20)));
        double sqrt2 = Math.sqrt(d20 * ((d18 * d18) + (d19 * d19)));
        boolean z4 = true;
        if ((d16 * d19) - (d17 * d18) < 0.0d) {
            z4 = true;
        }
        ?? degrees2 = Math.toDegrees((z4 ? 1.0d : 0.0d) * Math.acos(((d16 * d18) + (d17 * d19)) / sqrt2));
        if (z2 || degrees2 <= 0.0d) {
            c = degrees2;
            if (z2) {
                c = degrees2;
                if (degrees2 < 0.0d) {
                    c = degrees2 + 360.0d;
                }
            }
        } else {
            c = degrees2 - 360.0d;
        }
        float[] m7133n = m7133n(degrees % 360.0d, c % 0);
        Matrix matrix = new Matrix();
        matrix.postScale(f8, f9);
        matrix.postRotate(f5);
        matrix.postTranslate((float) (d14 + ((cos * d12) - (sin * d13))), (float) (d15 + (sin * d12) + (cos * d13)));
        matrix.mapPoints(m7133n);
        m7133n[m7133n.length - 2] = f6;
        m7133n[m7133n.length - 1] = f7;
        for (int i = 0; i < m7133n.length; i += 6) {
            xVar.c(m7133n[i], m7133n[i + 1], m7133n[i + 2], m7133n[i + 3], m7133n[i + 4], m7133n[i + 5]);
        }
    }

    /* renamed from: n */
    public static float[] m7133n(double d, double d2) {
        float radians;
        int ceil = (int) Math.ceil(Math.abs(d2) / 90.0d);
        double radians2 = Math.toRadians(d);
        double radians3 = (float) (Math.toRadians(d2) / ceil);
        double d3 = radians3 / 2.0d;
        double sin = (Math.sin(d3) * 1.3333333333333333d) / (Math.cos(d3) + 1.0d);
        float[] fArr = new float[ceil * 6];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < ceil) {
                double d4 = (i * radians) + radians2;
                double cos = Math.cos(d4);
                double sin2 = Math.sin(d4);
                int i4 = i3 + 1;
                fArr[i3] = (float) (cos - (sin * sin2));
                int i5 = i4 + 1;
                fArr[i4] = (float) (sin2 + (cos * sin));
                double d5 = d4 + radians3;
                double cos2 = Math.cos(d5);
                double sin3 = Math.sin(d5);
                int i6 = i5 + 1;
                fArr[i5] = (float) ((sin * sin3) + cos2);
                int i7 = i6 + 1;
                fArr[i6] = (float) (sin3 - (sin * cos2));
                int i8 = i7 + 1;
                fArr[i7] = (float) cos2;
                fArr[i8] = (float) sin3;
                i++;
                i2 = i8 + 1;
            } else {
                return fArr;
            }
        }
    }

    /* renamed from: A */
    public final void m7211A() {
        this.f305a.restore();
        this.f310f = this.f311g.pop();
    }

    /* renamed from: A0 */
    public final void m7210A0(zh0.n0 n0Var) {
        if (n0Var instanceof zh0.t) {
            return;
        }
        m7174S0();
        m7111y(n0Var);
        if (n0Var instanceof zh0.f0) {
            m7112x0((zh0.f0) n0Var);
        } else if (n0Var instanceof zh0.e1) {
            m7202E0((zh0.e1) n0Var);
        } else if (n0Var instanceof zh0.s0) {
            m7208B0((zh0.s0) n0Var);
        } else if (n0Var instanceof zh0.m) {
            m7126q0((zh0.m) n0Var);
        } else if (n0Var instanceof zh0.o) {
            m7124r0((zh0.o) n0Var);
        } else if (n0Var instanceof zh0.v) {
            m7120t0((zh0.v) n0Var);
        } else if (n0Var instanceof zh0.b0) {
            m7114w0((zh0.b0) n0Var);
        } else if (n0Var instanceof zh0.d) {
            m7130o0((zh0.d) n0Var);
        } else if (n0Var instanceof zh0.i) {
            m7128p0((zh0.i) n0Var);
        } else if (n0Var instanceof zh0.q) {
            m7122s0((zh0.q) n0Var);
        } else if (n0Var instanceof zh0.a0) {
            m7116v0((zh0.a0) n0Var);
        } else if (n0Var instanceof zh0.z) {
            m7118u0((zh0.z) n0Var);
        } else if (n0Var instanceof zh0.w0) {
            m7204D0((zh0.w0) n0Var);
        }
        m7176R0();
    }

    /* renamed from: B */
    public final void m7209B() {
        this.f305a.save(1);
        this.f311g.push(this.f310f);
        this.f310f = (C0040h) this.f310f.clone();
    }

    /* renamed from: B0 */
    public final void m7208B0(zh0.s0 s0Var) {
        m7207C("Switch render", new Object[0]);
        m7166W0(this.f310f, s0Var);
        if (!m7203E()) {
            return;
        }
        Matrix matrix = ((zh0.m) s0Var).n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        m7121t(s0Var);
        boolean m7132n0 = m7132n0();
        m7190K0(s0Var);
        if (m7132n0) {
            m7138k0(s0Var);
        }
        m7170U0(s0Var);
    }

    /* renamed from: C0 */
    public final void m7206C0(zh0.t0 t0Var, zh0.p pVar, zh0.p pVar2) {
        m7207C("Symbol render", new Object[0]);
        if (pVar == null || !pVar.j()) {
            if (pVar2 != null && pVar2.j()) {
                return;
            }
            yh0 yh0Var = ((zh0.p0) t0Var).n;
            if (yh0Var == null) {
                yh0Var = yh0.d;
            }
            m7166W0(this.f310f, t0Var);
            float g = pVar != null ? pVar.g(this) : this.f310f.f329g.c;
            float g2 = pVar2 != null ? pVar2.g(this) : this.f310f.f329g.d;
            C0040h c0040h = this.f310f;
            c0040h.f329g = new zh0.b(0.0f, 0.0f, g, g2);
            if (!c0040h.f324a.x.booleanValue()) {
                zh0.b bVar = this.f310f.f329g;
                m7182O0(bVar.a, bVar.b, bVar.c, bVar.d);
            }
            zh0.b bVar2 = ((zh0.r0) t0Var).o;
            if (bVar2 != null) {
                this.f305a.concat(m7123s(this.f310f.f329g, bVar2, yh0Var));
                this.f310f.f330h = ((zh0.r0) t0Var).o;
            }
            boolean m7132n0 = m7132n0();
            m7200F0(t0Var, true);
            if (m7132n0) {
                m7138k0(t0Var);
            }
            m7170U0(t0Var);
        }
    }

    /* renamed from: D */
    public final void m7205D(boolean z, zh0.b bVar, zh0.u uVar) {
        zh0.n0 m = this.f309e.m(uVar.a);
        if (m != null) {
            if (m instanceof zh0.m0) {
                m7156b0(z, bVar, (zh0.m0) m);
            }
            if (m instanceof zh0.q0) {
                m7144h0(z, bVar, (zh0.q0) m);
            }
            if (!(m instanceof zh0.c0)) {
                return;
            }
            m7178Q0(z, (zh0.c0) m);
            return;
        }
        m7193J("%s reference '%s' not found", z ? "Fill" : "Stroke", uVar.a);
        zh0.o0 o0Var = uVar.b;
        if (o0Var != null) {
            m7180P0(this.f310f, z, o0Var);
        } else if (z) {
            this.f310f.f325b = false;
        } else {
            this.f310f.f326c = false;
        }
    }

    /* renamed from: D0 */
    public final void m7204D0(zh0.w0 w0Var) {
        m7207C("Text render", new Object[0]);
        m7166W0(this.f310f, w0Var);
        if (!m7203E()) {
            return;
        }
        Matrix matrix = w0Var.r;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        List list = ((zh0.a1) w0Var).n;
        float g = (list == null || list.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).n.get(0)).g(this);
        List list2 = ((zh0.a1) w0Var).o;
        float h = (list2 == null || list2.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).o.get(0)).h(this);
        List list3 = ((zh0.a1) w0Var).p;
        float g2 = (list3 == null || list3.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).p.get(0)).g(this);
        List list4 = ((zh0.a1) w0Var).q;
        float f = 0.0f;
        if (list4 != null) {
            f = list4.size() == 0 ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).q.get(0)).h(this);
        }
        zh0.e0.e m7175S = m7175S();
        float f2 = g;
        if (m7175S != zh0.e0.e.a) {
            float m7125r = m7125r(w0Var);
            float f3 = m7125r;
            if (m7175S == zh0.e0.e.b) {
                f3 = m7125r / 2.0f;
            }
            f2 = g - f3;
        }
        if (((zh0.k0) w0Var).h == null) {
            i iVar = new i(this, f2, h);
            m7195I(w0Var, iVar);
            RectF rectF = iVar.c;
            ((zh0.k0) w0Var).h = new zh0.b(rectF.left, rectF.top, rectF.width(), iVar.c.height());
        }
        m7170U0(w0Var);
        m7117v(w0Var);
        m7121t(w0Var);
        boolean m7132n0 = m7132n0();
        m7195I(w0Var, new f(this, f2 + g2, h + f));
        if (!m7132n0) {
            return;
        }
        m7138k0(w0Var);
    }

    /* renamed from: E */
    public final boolean m7203E() {
        Boolean bool = this.f310f.f324a.C;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0169  */
    /* renamed from: E0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7202E0(zh0.e1 r7) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ai0.m7202E0(zh0$e1):void");
    }

    /* renamed from: F */
    public final void m7201F(zh0.k0 k0Var, Path path) {
        zh0.u uVar = this.f310f.f324a.b;
        if (uVar instanceof zh0.u) {
            zh0.n0 m = this.f309e.m(uVar.a);
            if (m instanceof zh0.y) {
                m7181P(k0Var, path, (zh0.y) m);
                return;
            }
        }
        this.f305a.drawPath(path, this.f310f.f327d);
    }

    /* renamed from: F0 */
    public final void m7200F0(zh0.j0 j0Var, boolean z) {
        if (z) {
            m7140j0(j0Var);
        }
        for (zh0.n0 n0Var : j0Var.getChildren()) {
            m7210A0(n0Var);
        }
        if (z) {
            m7142i0();
        }
    }

    /* renamed from: G */
    public final void m7199G(Path path) {
        C0040h c0040h = this.f310f;
        if (c0040h.f324a.N != zh0.e0.h.b) {
            this.f305a.drawPath(path, c0040h.f328f);
            return;
        }
        Matrix matrix = this.f305a.getMatrix();
        Path path2 = new Path();
        path.transform(matrix, path2);
        this.f305a.setMatrix(new Matrix());
        Shader shader = this.f310f.f328f.getShader();
        Matrix matrix2 = new Matrix();
        if (shader != null) {
            shader.getLocalMatrix(matrix2);
            Matrix matrix3 = new Matrix(matrix2);
            matrix3.postConcat(matrix);
            shader.setLocalMatrix(matrix3);
        }
        this.f305a.drawPath(path2, this.f310f.f328f);
        this.f305a.setMatrix(matrix);
        if (shader == null) {
            return;
        }
        shader.setLocalMatrix(matrix2);
    }

    /* renamed from: G0 */
    public void m7198G0(zh0 zh0Var, zh0.b bVar, yh0 yh0Var, boolean z) {
        this.f309e = zh0Var;
        this.f308d = z;
        zh0.f0 h = zh0Var.h();
        if (h == null) {
            m7160Z0("Nothing to render. Document is empty.", new Object[0]);
            return;
        }
        m7184N0();
        m7111y(h);
        zh0.p pVar = h.r;
        zh0.p pVar2 = h.s;
        if (bVar == null) {
            bVar = ((zh0.r0) h).o;
        }
        if (yh0Var == null) {
            yh0Var = ((zh0.p0) h).n;
        }
        m7108z0(h, pVar, pVar2, bVar, yh0Var);
    }

    /* renamed from: H */
    public final void m7197H() {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(this.f305a.getWidth(), this.f305a.getHeight(), Bitmap.Config.ARGB_8888);
            this.f315k.push(createBitmap);
            Canvas canvas = new Canvas(createBitmap);
            canvas.setMatrix(this.f305a.getMatrix());
            this.f305a = canvas;
        } catch (OutOfMemoryError e) {
            m7193J("Not enough memory to create temporary bitmaps for mask processing", new Object[0]);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02a8  */
    /* renamed from: H0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7196H0(zh0.r r7, p000.ai0.C0039c r8) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ai0.m7196H0(zh0$r, ai0$c):void");
    }

    /* renamed from: I */
    public final void m7195I(zh0.y0 y0Var, AbstractC0041j abstractC0041j) {
        if (!m7203E()) {
            return;
        }
        Iterator it = ((zh0.h0) y0Var).i.iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return;
            }
            zh0.c1 c1Var = (zh0.n0) it.next();
            if (c1Var instanceof zh0.c1) {
                abstractC0041j.m7104b(m7172T0(c1Var.c, z2, !it.hasNext()));
            } else {
                m7134m0(c1Var, abstractC0041j);
            }
            z = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0111 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* renamed from: I0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7194I0(zh0.l r7) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ai0.m7194I0(zh0$l):void");
    }

    /* renamed from: J0 */
    public final void m7192J0(zh0.s sVar, zh0.k0 k0Var) {
        float f;
        float f2;
        m7207C("Mask render", new Object[0]);
        Boolean bool = sVar.n;
        if (bool != null && bool.booleanValue()) {
            zh0.p pVar = sVar.r;
            f2 = pVar != null ? pVar.g(this) : k0Var.h.c;
            zh0.p pVar2 = sVar.s;
            f = pVar2 != null ? pVar2.h(this) : k0Var.h.d;
            zh0.p pVar3 = sVar.p;
            if (pVar3 != null) {
                pVar3.g(this);
            } else {
                zh0.b bVar = k0Var.h;
                float f3 = bVar.a;
                float f4 = bVar.c;
            }
            zh0.p pVar4 = sVar.q;
            if (pVar4 != null) {
                pVar4.h(this);
            } else {
                zh0.b bVar2 = k0Var.h;
                float f5 = bVar2.b;
                float f6 = bVar2.d;
            }
        } else {
            zh0.p pVar5 = sVar.p;
            if (pVar5 != null) {
                pVar5.f(this, 1.0f);
            }
            zh0.p pVar6 = sVar.q;
            if (pVar6 != null) {
                pVar6.f(this, 1.0f);
            }
            zh0.p pVar7 = sVar.r;
            float f7 = 1.2f;
            float f8 = pVar7 != null ? pVar7.f(this, 1.0f) : 1.2f;
            zh0.p pVar8 = sVar.s;
            if (pVar8 != null) {
                f7 = pVar8.f(this, 1.0f);
            }
            zh0.b bVar3 = k0Var.h;
            float f9 = bVar3.a;
            float f10 = bVar3.c;
            float f11 = bVar3.b;
            f2 = f8 * f10;
            f = f7 * bVar3.d;
        }
        if (f2 == 0.0f || f == 0.0f) {
            return;
        }
        m7174S0();
        C0040h m7179Q = m7179Q(sVar);
        this.f310f = m7179Q;
        m7179Q.f324a.o = 1.0f;
        Boolean bool2 = sVar.o;
        boolean z = true;
        if (bool2 != null) {
            z = bool2.booleanValue();
        }
        if (!z) {
            Canvas canvas = this.f305a;
            zh0.b bVar4 = k0Var.h;
            canvas.translate(bVar4.a, bVar4.b);
            Canvas canvas2 = this.f305a;
            zh0.b bVar5 = k0Var.h;
            canvas2.scale(bVar5.c, bVar5.d);
        }
        m7200F0(sVar, false);
        m7176R0();
    }

    /* renamed from: K */
    public final void m7191K(zh0.y0 y0Var, StringBuilder sb) {
        Iterator it = ((zh0.h0) y0Var).i.iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                zh0.c1 c1Var = (zh0.n0) it.next();
                if (c1Var instanceof zh0.y0) {
                    m7191K((zh0.y0) c1Var, sb);
                } else if (c1Var instanceof zh0.c1) {
                    sb.append(m7172T0(c1Var.c, z2, !it.hasNext()));
                }
                z = false;
            } else {
                return;
            }
        }
    }

    /* renamed from: K0 */
    public final void m7190K0(zh0.s0 s0Var) {
        Set systemLanguage;
        String language = Locale.getDefault().getLanguage();
        bi0 e = this.f309e.e();
        for (zh0.g0 g0Var : s0Var.getChildren()) {
            if (g0Var instanceof zh0.g0) {
                zh0.g0 g0Var2 = g0Var;
                if (g0Var2.a() == null && ((systemLanguage = g0Var2.getSystemLanguage()) == null || (!systemLanguage.isEmpty() && systemLanguage.contains(language)))) {
                    Set requiredFeatures = g0Var2.getRequiredFeatures();
                    if (requiredFeatures != null) {
                        if (f304l == null) {
                            m7161Z();
                        }
                        if (!requiredFeatures.isEmpty() && f304l.containsAll(requiredFeatures)) {
                        }
                    }
                    Set<String> j = g0Var2.j();
                    if (j != null) {
                        if (!j.isEmpty() && e != null) {
                            for (String str : j) {
                                if (!e.m5629a(str)) {
                                    break;
                                }
                            }
                        }
                    }
                    Set<String> k = g0Var2.k();
                    if (k != null) {
                        if (!k.isEmpty() && e != null) {
                            for (String str2 : k) {
                                if (e.m5628b(str2, this.f310f.f324a.s.intValue(), String.valueOf(this.f310f.f324a.t)) == null) {
                                    break;
                                }
                            }
                        }
                    }
                    m7210A0(g0Var);
                    return;
                }
            }
        }
    }

    /* renamed from: L */
    public final void m7189L(zh0.j jVar, String str) {
        zh0.j m = ((zh0.n0) jVar).a.m(str);
        if (m == null) {
            m7160Z0("Gradient reference '%s' not found", str);
        } else if (!(m instanceof zh0.j)) {
            m7193J("Gradient href attributes must point to other gradient elements", new Object[0]);
        } else if (m == jVar) {
            m7193J("Circular reference in gradient href attribute '%s'", str);
        } else {
            zh0.j jVar2 = m;
            if (jVar.i == null) {
                jVar.i = jVar2.i;
            }
            if (jVar.j == null) {
                jVar.j = jVar2.j;
            }
            if (jVar.k == null) {
                jVar.k = jVar2.k;
            }
            if (jVar.h.isEmpty()) {
                jVar.h = jVar2.h;
            }
            try {
                if (jVar instanceof zh0.m0) {
                    m7187M((zh0.m0) jVar, (zh0.m0) m);
                } else {
                    m7185N((zh0.q0) jVar, (zh0.q0) m);
                }
            } catch (ClassCastException e) {
            }
            String str2 = jVar2.l;
            if (str2 == null) {
                return;
            }
            m7189L(jVar, str2);
        }
    }

    /* renamed from: L0 */
    public final void m7188L0(zh0.z0 z0Var) {
        m7207C("TextPath render", new Object[0]);
        m7166W0(this.f310f, z0Var);
        if (m7203E() && m7162Y0()) {
            zh0.v m = ((zh0.n0) z0Var).a.m(z0Var.n);
            if (m == null) {
                m7193J("TextPath reference '%s' not found", z0Var.n);
                return;
            }
            zh0.v vVar = m;
            Path f = new d(this, vVar.o).f();
            Matrix matrix = ((zh0.l) vVar).n;
            if (matrix != null) {
                f.transform(matrix);
            }
            PathMeasure pathMeasure = new PathMeasure(f, false);
            zh0.p pVar = z0Var.o;
            float f2 = pVar != null ? pVar.f(this, pathMeasure.getLength()) : 0.0f;
            zh0.e0.e m7175S = m7175S();
            float f3 = f2;
            if (m7175S != zh0.e0.e.a) {
                float m7125r = m7125r(z0Var);
                float f4 = m7125r;
                if (m7175S == zh0.e0.e.b) {
                    f4 = m7125r / 2.0f;
                }
                f3 = f2 - f4;
            }
            m7117v((zh0.k0) z0Var.c());
            boolean m7132n0 = m7132n0();
            m7195I(z0Var, new e(this, f, f3, 0.0f));
            if (!m7132n0) {
                return;
            }
            m7138k0(z0Var);
        }
    }

    /* renamed from: M */
    public final void m7187M(zh0.m0 m0Var, zh0.m0 m0Var2) {
        if (m0Var.m == null) {
            m0Var.m = m0Var2.m;
        }
        if (m0Var.n == null) {
            m0Var.n = m0Var2.n;
        }
        if (m0Var.o == null) {
            m0Var.o = m0Var2.o;
        }
        if (m0Var.p == null) {
            m0Var.p = m0Var2.p;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
        if (r0.f332k != false) goto L13;
     */
    /* renamed from: M0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7186M0() {
        /*
            r3 = this;
            r0 = r3
            ai0$h r0 = r0.f310f
            r4 = r0
            r0 = r4
            zh0$e0 r0 = r0.f324a
            java.lang.String r0 = r0.I
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L24
            r0 = r4
            boolean r0 = r0.f332k
            if (r0 != 0) goto L24
            java.lang.String r0 = "Masks are not supported when using getPicture()"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            m7160Z0(r0, r1)
        L24:
            r0 = r3
            ai0$h r0 = r0.f310f
            r5 = r0
            r0 = r5
            zh0$e0 r0 = r0.f324a
            r4 = r0
            r0 = r4
            float r0 = r0.o
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L4b
            r0 = r6
            r7 = r0
            r0 = r4
            java.lang.String r0 = r0.I
            if (r0 == 0) goto L4e
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = r0.f332k
            if (r0 == 0) goto L4e
        L4b:
            r0 = 1
            r7 = r0
        L4e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ai0.m7186M0():boolean");
    }

    /* renamed from: N */
    public final void m7185N(zh0.q0 q0Var, zh0.q0 q0Var2) {
        if (q0Var.m == null) {
            q0Var.m = q0Var2.m;
        }
        if (q0Var.n == null) {
            q0Var.n = q0Var2.n;
        }
        if (q0Var.o == null) {
            q0Var.o = q0Var2.o;
        }
        if (q0Var.p == null) {
            q0Var.p = q0Var2.p;
        }
        if (q0Var.q == null) {
            q0Var.q = q0Var2.q;
        }
    }

    /* renamed from: N0 */
    public final void m7184N0() {
        this.f310f = new C0040h(this);
        this.f311g = new Stack<>();
        m7168V0(this.f310f, zh0.e0.b());
        C0040h c0040h = this.f310f;
        c0040h.f329g = this.f306b;
        c0040h.f331j = false;
        c0040h.f332k = this.f308d;
        this.f311g.push((C0040h) c0040h.clone());
        this.f314j = new Stack<>();
        this.f315k = new Stack<>();
        this.f313i = new Stack<>();
        this.f312h = new Stack<>();
    }

    /* renamed from: O */
    public final void m7183O(zh0.y yVar, String str) {
        zh0.y m = ((zh0.n0) yVar).a.m(str);
        if (m == null) {
            m7160Z0("Pattern reference '%s' not found", str);
        } else if (!(m instanceof zh0.y)) {
            m7193J("Pattern href attributes must point to other pattern elements", new Object[0]);
        } else if (m == yVar) {
            m7193J("Circular reference in pattern href attribute '%s'", str);
        } else {
            zh0.y yVar2 = m;
            if (yVar.p == null) {
                yVar.p = yVar2.p;
            }
            if (yVar.q == null) {
                yVar.q = yVar2.q;
            }
            if (yVar.r == null) {
                yVar.r = yVar2.r;
            }
            if (yVar.s == null) {
                yVar.s = yVar2.s;
            }
            if (yVar.t == null) {
                yVar.t = yVar2.t;
            }
            if (yVar.u == null) {
                yVar.u = yVar2.u;
            }
            if (yVar.v == null) {
                yVar.v = yVar2.v;
            }
            if (((zh0.h0) yVar).i.isEmpty()) {
                ((zh0.h0) yVar).i = ((zh0.h0) yVar2).i;
            }
            if (((zh0.r0) yVar).o == null) {
                ((zh0.r0) yVar).o = ((zh0.r0) yVar2).o;
            }
            if (((zh0.p0) yVar).n == null) {
                ((zh0.p0) yVar).n = ((zh0.p0) yVar2).n;
            }
            String str2 = yVar2.w;
            if (str2 == null) {
                return;
            }
            m7183O(yVar, str2);
        }
    }

    /* renamed from: O0 */
    public final void m7182O0(float f, float f2, float f3, float f4) {
        float f5 = f3 + f;
        float f6 = f4 + f2;
        zh0.c cVar = this.f310f.f324a.y;
        float f7 = f;
        float f8 = f2;
        float f9 = f5;
        float f10 = f6;
        if (cVar != null) {
            f7 = f + cVar.d.g(this);
            f8 = f2 + this.f310f.f324a.y.a.h(this);
            f9 = f5 - this.f310f.f324a.y.b.g(this);
            f10 = f6 - this.f310f.f324a.y.c.h(this);
        }
        this.f305a.clipRect(f7, f8, f9, f10);
    }

    /* renamed from: P */
    public final void m7181P(zh0.k0 k0Var, Path path, zh0.y yVar) {
        float f;
        float f2;
        float f3;
        float f4;
        Boolean bool = yVar.p;
        boolean z = bool != null && bool.booleanValue();
        String str = yVar.w;
        if (str != null) {
            m7183O(yVar, str);
        }
        if (z) {
            zh0.p pVar = yVar.s;
            float g = pVar != null ? pVar.g(this) : 0.0f;
            zh0.p pVar2 = yVar.t;
            f3 = pVar2 != null ? pVar2.h(this) : 0.0f;
            zh0.p pVar3 = yVar.u;
            f2 = pVar3 != null ? pVar3.g(this) : 0.0f;
            zh0.p pVar4 = yVar.v;
            if (pVar4 != null) {
                f = g;
                f4 = pVar4.h(this);
            } else {
                f = g;
                f4 = 0.0f;
            }
        } else {
            zh0.p pVar5 = yVar.s;
            float f5 = pVar5 != null ? pVar5.f(this, 1.0f) : 0.0f;
            zh0.p pVar6 = yVar.t;
            float f6 = pVar6 != null ? pVar6.f(this, 1.0f) : 0.0f;
            zh0.p pVar7 = yVar.u;
            float f7 = pVar7 != null ? pVar7.f(this, 1.0f) : 0.0f;
            zh0.p pVar8 = yVar.v;
            float f8 = pVar8 != null ? pVar8.f(this, 1.0f) : 0.0f;
            zh0.b bVar = k0Var.h;
            float f9 = bVar.a;
            float f10 = bVar.c;
            float f11 = (f5 * f10) + f9;
            float f12 = bVar.b;
            float f13 = bVar.d;
            float f14 = f8 * f13;
            float f15 = (f6 * f13) + f12;
            f4 = f14;
            f2 = f7 * f10;
            f3 = f15;
            f = f11;
        }
        if (f2 == 0.0f || f4 == 0.0f) {
            return;
        }
        yh0 yh0Var = ((zh0.p0) yVar).n;
        if (yh0Var == null) {
            yh0Var = yh0.d;
        }
        m7174S0();
        this.f305a.clipPath(path);
        C0040h c0040h = new C0040h(this);
        m7168V0(c0040h, zh0.e0.b());
        c0040h.f324a.x = Boolean.FALSE;
        m7177R(yVar, c0040h);
        this.f310f = c0040h;
        zh0.b bVar2 = k0Var.h;
        Matrix matrix = yVar.r;
        zh0.b bVar3 = bVar2;
        if (matrix != null) {
            this.f305a.concat(matrix);
            Matrix matrix2 = new Matrix();
            bVar3 = bVar2;
            if (yVar.r.invert(matrix2)) {
                zh0.b bVar4 = k0Var.h;
                zh0.b bVar5 = k0Var.h;
                zh0.b bVar6 = k0Var.h;
                float[] fArr = {bVar4.a, bVar4.b, bVar4.c(), bVar5.b, bVar5.c(), k0Var.h.d(), bVar6.a, bVar6.d()};
                matrix2.mapPoints(fArr);
                RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
                for (int i = 2; i <= 6; i += 2) {
                    if (fArr[i] < rectF.left) {
                        rectF.left = fArr[i];
                    }
                    if (fArr[i] > rectF.right) {
                        rectF.right = fArr[i];
                    }
                    int i2 = i + 1;
                    if (fArr[i2] < rectF.top) {
                        rectF.top = fArr[i2];
                    }
                    if (fArr[i2] > rectF.bottom) {
                        rectF.bottom = fArr[i2];
                    }
                }
                float f16 = rectF.left;
                float f17 = rectF.top;
                bVar3 = new zh0.b(f16, f17, rectF.right - f16, rectF.bottom - f17);
            }
        }
        float floor = (float) Math.floor((bVar3.a - f) / f2);
        float c = bVar3.c();
        float d = bVar3.d();
        zh0.b bVar7 = new zh0.b(0.0f, 0.0f, f2, f4);
        for (float floor2 = f3 + (((float) Math.floor((bVar3.b - f3) / f4)) * f4); floor2 < d; floor2 += f4) {
            float f18 = f;
            float f19 = floor * f2;
            while (true) {
                float f20 = f18 + f19;
                if (f20 < c) {
                    bVar7.a = f20;
                    bVar7.b = floor2;
                    m7174S0();
                    if (!this.f310f.f324a.x.booleanValue()) {
                        m7182O0(bVar7.a, bVar7.b, bVar7.c, bVar7.d);
                    }
                    zh0.b bVar8 = ((zh0.r0) yVar).o;
                    if (bVar8 != null) {
                        this.f305a.concat(m7123s(bVar7, bVar8, yh0Var));
                    } else {
                        Boolean bool2 = yVar.q;
                        boolean z2 = bool2 == null || bool2.booleanValue();
                        this.f305a.translate(f20, floor2);
                        if (!z2) {
                            Canvas canvas = this.f305a;
                            zh0.b bVar9 = k0Var.h;
                            canvas.scale(bVar9.c, bVar9.d);
                        }
                    }
                    boolean m7132n0 = m7132n0();
                    for (zh0.n0 n0Var : ((zh0.h0) yVar).i) {
                        m7210A0(n0Var);
                    }
                    if (m7132n0) {
                        m7138k0(yVar);
                    }
                    m7176R0();
                    f18 = f20;
                    f19 = f2;
                }
            }
        }
        m7176R0();
    }

    /* renamed from: P0 */
    public final void m7180P0(C0040h c0040h, boolean z, zh0.o0 o0Var) {
        zh0.f fVar;
        zh0.e0 e0Var = c0040h.f324a;
        float f = z ? e0Var.d : e0Var.g;
        if (o0Var instanceof zh0.f) {
            fVar = (zh0.f) o0Var;
        } else if (!(o0Var instanceof zh0.g)) {
            return;
        } else {
            fVar = c0040h.f324a.p;
        }
        (z ? c0040h.f327d : c0040h.f328f).setColor(fVar.a | (m7109z(f) << 24));
    }

    /* renamed from: Q */
    public final C0040h m7179Q(zh0.n0 n0Var) {
        C0040h c0040h = new C0040h(this);
        m7168V0(c0040h, zh0.e0.b());
        m7177R(n0Var, c0040h);
        return c0040h;
    }

    /* renamed from: Q0 */
    public final void m7178Q0(boolean z, zh0.c0 c0Var) {
        C0040h c0040h;
        zh0.o0 o0Var;
        boolean z2 = true;
        boolean m7158a0 = m7158a0(((zh0.l0) c0Var).e, 2147483648L);
        if (z) {
            if (m7158a0) {
                C0040h c0040h2 = this.f310f;
                zh0.e0 e0Var = c0040h2.f324a;
                zh0.o0 o0Var2 = ((zh0.l0) c0Var).e.J;
                e0Var.b = o0Var2;
                if (o0Var2 == null) {
                    z2 = false;
                }
                c0040h2.f325b = z2;
            }
            if (m7158a0(((zh0.l0) c0Var).e, 4294967296L)) {
                this.f310f.f324a.d = ((zh0.l0) c0Var).e.K;
            }
            if (!m7158a0(((zh0.l0) c0Var).e, 6442450944L)) {
                return;
            }
            c0040h = this.f310f;
            o0Var = c0040h.f324a.b;
        } else {
            if (m7158a0) {
                C0040h c0040h3 = this.f310f;
                zh0.e0 e0Var2 = c0040h3.f324a;
                zh0.o0 o0Var3 = ((zh0.l0) c0Var).e.J;
                e0Var2.f = o0Var3;
                c0040h3.f326c = o0Var3 != null;
            }
            if (m7158a0(((zh0.l0) c0Var).e, 4294967296L)) {
                this.f310f.f324a.g = ((zh0.l0) c0Var).e.K;
            }
            if (!m7158a0(((zh0.l0) c0Var).e, 6442450944L)) {
                return;
            }
            c0040h = this.f310f;
            o0Var = c0040h.f324a.f;
        }
        m7180P0(c0040h, z, o0Var);
    }

    /* renamed from: R */
    public final C0040h m7177R(zh0.n0 n0Var, C0040h c0040h) {
        ArrayList<zh0.l0> arrayList = new ArrayList();
        while (true) {
            if (n0Var instanceof zh0.l0) {
                arrayList.add(0, (zh0.l0) n0Var);
            }
            zh0.j0 j0Var = n0Var.b;
            if (j0Var == null) {
                break;
            }
            n0Var = (zh0.n0) j0Var;
        }
        for (zh0.l0 l0Var : arrayList) {
            m7166W0(c0040h, l0Var);
        }
        zh0.b bVar = ((zh0.r0) this.f309e.h()).o;
        c0040h.f330h = bVar;
        if (bVar == null) {
            c0040h.f330h = this.f306b;
        }
        c0040h.f329g = this.f306b;
        c0040h.f332k = this.f310f.f332k;
        return c0040h;
    }

    /* renamed from: R0 */
    public final void m7176R0() {
        this.f305a.restore();
        this.f310f = this.f311g.pop();
    }

    /* renamed from: S */
    public final zh0.e0.e m7175S() {
        zh0.e0.e eVar;
        zh0.e0 e0Var = this.f310f.f324a;
        if (e0Var.v == zh0.e0.g.a || (eVar = e0Var.w) == zh0.e0.e.b) {
            return e0Var.w;
        }
        zh0.e0.e eVar2 = zh0.e0.e.a;
        zh0.e0.e eVar3 = eVar2;
        if (eVar == eVar2) {
            eVar3 = zh0.e0.e.c;
        }
        return eVar3;
    }

    /* renamed from: S0 */
    public final void m7174S0() {
        this.f305a.save();
        this.f311g.push(this.f310f);
        this.f310f = (C0040h) this.f310f.clone();
    }

    /* renamed from: T */
    public final Path.FillType m7173T() {
        zh0.e0.a aVar = this.f310f.f324a.H;
        if (aVar != null && C0038a.f319d[aVar.ordinal()] == 1) {
            return Path.FillType.EVEN_ODD;
        }
        return Path.FillType.WINDING;
    }

    /* renamed from: T0 */
    public final String m7172T0(String str, boolean z, boolean z2) {
        String str2;
        if (this.f310f.f331j) {
            str2 = "[\\n\\t]";
        } else {
            String replaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
            String str3 = replaceAll;
            if (z) {
                str3 = replaceAll.replaceAll("^\\s+", "");
            }
            str = str3;
            if (z2) {
                str = str3.replaceAll("\\s+$", "");
            }
            str2 = "\\s{2,}";
        }
        return str.replaceAll(str2, " ");
    }

    /* renamed from: U */
    public float m7171U() {
        return this.f310f.f327d.getTextSize();
    }

    /* renamed from: U0 */
    public final void m7170U0(zh0.k0 k0Var) {
        if (((zh0.n0) k0Var).b == null || k0Var.h == null) {
            return;
        }
        Matrix matrix = new Matrix();
        if (!this.f313i.peek().invert(matrix)) {
            return;
        }
        zh0.b bVar = k0Var.h;
        zh0.b bVar2 = k0Var.h;
        zh0.b bVar3 = k0Var.h;
        float[] fArr = {bVar.a, bVar.b, bVar.c(), bVar2.b, bVar2.c(), k0Var.h.d(), bVar3.a, bVar3.d()};
        matrix.preConcat(this.f305a.getMatrix());
        matrix.mapPoints(fArr);
        RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
        for (int i = 2; i <= 6; i += 2) {
            if (fArr[i] < rectF.left) {
                rectF.left = fArr[i];
            }
            if (fArr[i] > rectF.right) {
                rectF.right = fArr[i];
            }
            int i2 = i + 1;
            if (fArr[i2] < rectF.top) {
                rectF.top = fArr[i2];
            }
            if (fArr[i2] > rectF.bottom) {
                rectF.bottom = fArr[i2];
            }
        }
        zh0.k0 peek = this.f312h.peek();
        zh0.b bVar4 = peek.h;
        if (bVar4 == null) {
            peek.h = zh0.b.b(rectF.left, rectF.top, rectF.right, rectF.bottom);
        } else {
            bVar4.g(zh0.b.b(rectF.left, rectF.top, rectF.right, rectF.bottom));
        }
    }

    /* renamed from: V */
    public float m7169V() {
        return this.f310f.f327d.getTextSize() / 2.0f;
    }

    /* renamed from: V0 */
    public final void m7168V0(C0040h c0040h, zh0.e0 e0Var) {
        Integer num;
        zh0.e0 e0Var2;
        int intValue;
        Paint.Join join;
        Paint paint;
        Paint.Cap cap;
        Paint paint2;
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)) {
            c0040h.f324a.p = e0Var.p;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH)) {
            c0040h.f324a.o = e0Var.o;
        }
        if (m7158a0(e0Var, 1L)) {
            c0040h.f324a.b = e0Var.b;
            c0040h.f325b = e0Var.b != null;
        }
        if (m7158a0(e0Var, 4L)) {
            c0040h.f324a.d = e0Var.d;
        }
        if (m7158a0(e0Var, 6149L)) {
            m7180P0(c0040h, true, c0040h.f324a.b);
        }
        if (m7158a0(e0Var, 2L)) {
            c0040h.f324a.c = e0Var.c;
        }
        if (m7158a0(e0Var, 8L)) {
            c0040h.f324a.f = e0Var.f;
            c0040h.f326c = e0Var.f != null;
        }
        if (m7158a0(e0Var, 16L)) {
            c0040h.f324a.g = e0Var.g;
        }
        if (m7158a0(e0Var, 6168L)) {
            m7180P0(c0040h, false, c0040h.f324a.f);
        }
        if (m7158a0(e0Var, 34359738368L)) {
            c0040h.f324a.N = e0Var.N;
        }
        if (m7158a0(e0Var, 32L)) {
            zh0.e0 e0Var3 = c0040h.f324a;
            zh0.p pVar = e0Var.h;
            e0Var3.h = pVar;
            c0040h.f328f.setStrokeWidth(pVar.d(this));
        }
        if (m7158a0(e0Var, 64L)) {
            c0040h.f324a.j = e0Var.j;
            int i = C0038a.f317b[e0Var.j.ordinal()];
            if (i == 1) {
                paint2 = c0040h.f328f;
                cap = Paint.Cap.BUTT;
            } else if (i == 2) {
                paint2 = c0040h.f328f;
                cap = Paint.Cap.ROUND;
            } else if (i == 3) {
                paint2 = c0040h.f328f;
                cap = Paint.Cap.SQUARE;
            }
            paint2.setStrokeCap(cap);
        }
        if (m7158a0(e0Var, 128L)) {
            c0040h.f324a.k = e0Var.k;
            int i2 = C0038a.f318c[e0Var.k.ordinal()];
            if (i2 == 1) {
                paint = c0040h.f328f;
                join = Paint.Join.MITER;
            } else if (i2 == 2) {
                paint = c0040h.f328f;
                join = Paint.Join.ROUND;
            } else if (i2 == 3) {
                paint = c0040h.f328f;
                join = Paint.Join.BEVEL;
            }
            paint.setStrokeJoin(join);
        }
        if (m7158a0(e0Var, 256L)) {
            c0040h.f324a.l = e0Var.l;
            c0040h.f328f.setStrokeMiter(e0Var.l);
        }
        if (m7158a0(e0Var, 512L)) {
            c0040h.f324a.m = e0Var.m;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) {
            c0040h.f324a.n = e0Var.n;
        }
        if (m7158a0(e0Var, 1536L)) {
            zh0.p[] pVarArr = c0040h.f324a.m;
            if (pVarArr != null) {
                int length = pVarArr.length;
                int i3 = length % 2 == 0 ? length : length * 2;
                float[] fArr = new float[i3];
                float f = 0.0f;
                for (int i4 = 0; i4 < i3; i4++) {
                    fArr[i4] = c0040h.f324a.m[i4 % length].d(this);
                    f += fArr[i4];
                }
                if (f != 0.0f) {
                    float d = c0040h.f324a.n.d(this);
                    float f2 = d;
                    if (d < 0.0f) {
                        f2 = (d % f) + f;
                    }
                    c0040h.f328f.setPathEffect(new DashPathEffect(fArr, f2));
                }
            }
            c0040h.f328f.setPathEffect(null);
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PREPARE)) {
            float m7171U = m7171U();
            c0040h.f324a.r = e0Var.r;
            c0040h.f327d.setTextSize(e0Var.r.f(this, m7171U));
            c0040h.f328f.setTextSize(e0Var.r.f(this, m7171U));
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
            c0040h.f324a.q = e0Var.q;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
            if (e0Var.s.intValue() == -1 && c0040h.f324a.s.intValue() > 100) {
                e0Var2 = c0040h.f324a;
                intValue = e0Var2.s.intValue() - 100;
            } else if (e0Var.s.intValue() != 1 || c0040h.f324a.s.intValue() >= 900) {
                e0Var2 = c0040h.f324a;
                num = e0Var.s;
                e0Var2.s = num;
            } else {
                e0Var2 = c0040h.f324a;
                intValue = e0Var2.s.intValue() + 100;
            }
            num = Integer.valueOf(intValue);
            e0Var2.s = num;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH)) {
            c0040h.f324a.t = e0Var.t;
        }
        if (m7158a0(e0Var, 106496L)) {
            Typeface typeface = null;
            if (c0040h.f324a.q != null) {
                zh0 zh0Var = this.f309e;
                typeface = null;
                if (zh0Var != null) {
                    bi0 e = zh0Var.e();
                    Iterator it = c0040h.f324a.q.iterator();
                    Typeface typeface2 = null;
                    do {
                        typeface = typeface2;
                        if (!it.hasNext()) {
                            break;
                        }
                        String str = (String) it.next();
                        zh0.e0 e0Var4 = c0040h.f324a;
                        typeface = m7113x(str, e0Var4.s, e0Var4.t);
                        if (typeface == null && e != null) {
                            typeface = e.m5628b(str, c0040h.f324a.s.intValue(), String.valueOf(c0040h.f324a.t));
                        }
                        typeface2 = typeface;
                    } while (typeface == null);
                }
            }
            Typeface typeface3 = typeface;
            if (typeface == null) {
                zh0.e0 e0Var5 = c0040h.f324a;
                typeface3 = m7113x(C0515C.SANS_SERIF_NAME, e0Var5.s, e0Var5.t);
            }
            c0040h.f327d.setTypeface(typeface3);
            c0040h.f328f.setTypeface(typeface3);
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) {
            c0040h.f324a.u = e0Var.u;
            Paint paint3 = c0040h.f327d;
            zh0.e0.f fVar = e0Var.u;
            zh0.e0.f fVar2 = zh0.e0.f.d;
            paint3.setStrikeThruText(fVar == fVar2);
            Paint paint4 = c0040h.f327d;
            zh0.e0.f fVar3 = e0Var.u;
            zh0.e0.f fVar4 = zh0.e0.f.b;
            paint4.setUnderlineText(fVar3 == fVar4);
            if (Build.VERSION.SDK_INT >= 17) {
                c0040h.f328f.setStrikeThruText(e0Var.u == fVar2);
                Paint paint5 = c0040h.f328f;
                boolean z = false;
                if (e0Var.u == fVar4) {
                    z = true;
                }
                paint5.setUnderlineText(z);
            }
        }
        if (m7158a0(e0Var, 68719476736L)) {
            c0040h.f324a.v = e0Var.v;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_SET_REPEAT_MODE)) {
            c0040h.f324a.w = e0Var.w;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED)) {
            c0040h.f324a.x = e0Var.x;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
            c0040h.f324a.z = e0Var.z;
        }
        if (m7158a0(e0Var, 4194304L)) {
            c0040h.f324a.A = e0Var.A;
        }
        if (m7158a0(e0Var, 8388608L)) {
            c0040h.f324a.B = e0Var.B;
        }
        if (m7158a0(e0Var, 16777216L)) {
            c0040h.f324a.C = e0Var.C;
        }
        if (m7158a0(e0Var, 33554432L)) {
            c0040h.f324a.D = e0Var.D;
        }
        if (m7158a0(e0Var, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
            c0040h.f324a.y = e0Var.y;
        }
        if (m7158a0(e0Var, 268435456L)) {
            c0040h.f324a.G = e0Var.G;
        }
        if (m7158a0(e0Var, 536870912L)) {
            c0040h.f324a.H = e0Var.H;
        }
        if (m7158a0(e0Var, 1073741824L)) {
            c0040h.f324a.I = e0Var.I;
        }
        if (m7158a0(e0Var, 67108864L)) {
            c0040h.f324a.E = e0Var.E;
        }
        if (m7158a0(e0Var, 134217728L)) {
            c0040h.f324a.F = e0Var.F;
        }
        if (m7158a0(e0Var, 8589934592L)) {
            c0040h.f324a.L = e0Var.L;
        }
        if (m7158a0(e0Var, 17179869184L)) {
            c0040h.f324a.M = e0Var.M;
        }
    }

    /* renamed from: W */
    public zh0.b m7167W() {
        C0040h c0040h = this.f310f;
        zh0.b bVar = c0040h.f330h;
        return bVar != null ? bVar : c0040h.f329g;
    }

    /* renamed from: W0 */
    public final void m7166W0(C0040h c0040h, zh0.l0 l0Var) {
        c0040h.f324a.c(((zh0.n0) l0Var).b == null);
        zh0.e0 e0Var = l0Var.e;
        if (e0Var != null) {
            m7168V0(c0040h, e0Var);
        }
        if (this.f309e.i()) {
            for (uh0.g gVar : this.f309e.b()) {
                if (uh0.m(gVar.a, l0Var)) {
                    m7168V0(c0040h, gVar.b);
                }
            }
        }
        zh0.e0 e0Var2 = l0Var.f;
        if (e0Var2 != null) {
            m7168V0(c0040h, e0Var2);
        }
    }

    /* renamed from: X */
    public float m7165X() {
        return this.f307c;
    }

    /* renamed from: X0 */
    public final void m7164X0() {
        zh0.f fVar;
        zh0.e0 e0Var = this.f310f.f324a;
        zh0.f fVar2 = e0Var.L;
        if (fVar2 instanceof zh0.f) {
            fVar = fVar2;
        } else if (!(fVar2 instanceof zh0.g)) {
            return;
        } else {
            fVar = e0Var.p;
        }
        int i = fVar.a;
        Float f = e0Var.M;
        int i2 = i;
        if (f != null) {
            i2 = i | (m7109z(f.floatValue()) << 24);
        }
        this.f305a.drawColor(i2);
    }

    /* renamed from: Y */
    public final Path.FillType m7163Y() {
        zh0.e0.a aVar = this.f310f.f324a.c;
        if (aVar != null && C0038a.f319d[aVar.ordinal()] == 1) {
            return Path.FillType.EVEN_ODD;
        }
        return Path.FillType.WINDING;
    }

    /* renamed from: Y0 */
    public final boolean m7162Y0() {
        Boolean bool = this.f310f.f324a.D;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* renamed from: a0 */
    public final boolean m7158a0(zh0.e0 e0Var, long j) {
        return (e0Var.a & j) != 0;
    }

    /* renamed from: b0 */
    public final void m7156b0(boolean z, zh0.b bVar, zh0.m0 m0Var) {
        float f;
        float f2;
        float f3;
        float f4;
        String str = ((zh0.j) m0Var).l;
        if (str != null) {
            m7189L(m0Var, str);
        }
        Boolean bool = ((zh0.j) m0Var).i;
        boolean z2 = bool != null && bool.booleanValue();
        C0040h c0040h = this.f310f;
        Paint paint = z ? c0040h.f327d : c0040h.f328f;
        float f5 = 0.0f;
        if (z2) {
            zh0.b m7167W = m7167W();
            zh0.p pVar = m0Var.m;
            float g = pVar != null ? pVar.g(this) : 0.0f;
            zh0.p pVar2 = m0Var.n;
            float h = pVar2 != null ? pVar2.h(this) : 0.0f;
            zh0.p pVar3 = m0Var.o;
            float g2 = pVar3 != null ? pVar3.g(this) : m7167W.c;
            zh0.p pVar4 = m0Var.p;
            if (pVar4 != null) {
                f5 = pVar4.h(this);
            }
            float f6 = f5;
            float f7 = g2;
            f4 = g;
            f = h;
            f3 = f7;
            f2 = f6;
        } else {
            zh0.p pVar5 = m0Var.m;
            float f8 = pVar5 != null ? pVar5.f(this, 1.0f) : 0.0f;
            zh0.p pVar6 = m0Var.n;
            float f9 = pVar6 != null ? pVar6.f(this, 1.0f) : 0.0f;
            zh0.p pVar7 = m0Var.o;
            float f10 = pVar7 != null ? pVar7.f(this, 1.0f) : 1.0f;
            zh0.p pVar8 = m0Var.p;
            float f11 = 0.0f;
            if (pVar8 != null) {
                f11 = pVar8.f(this, 1.0f);
            }
            float f12 = f11;
            f4 = f8;
            float f13 = f9;
            f3 = f10;
            f2 = f12;
            f = f13;
        }
        m7174S0();
        this.f310f = m7179Q(m0Var);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
        }
        Matrix matrix2 = ((zh0.j) m0Var).j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = ((zh0.j) m0Var).h.size();
        if (size == 0) {
            m7176R0();
            C0040h c0040h2 = this.f310f;
            if (z) {
                c0040h2.f325b = false;
                return;
            } else {
                c0040h2.f326c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        float f14 = -1.0f;
        int i = 0;
        for (zh0.d0 d0Var : ((zh0.j) m0Var).h) {
            if (i == 0 || d0Var.h.floatValue() >= f14) {
                fArr[i] = d0Var.h.floatValue();
                f14 = d0Var.h.floatValue();
            } else {
                fArr[i] = f14;
            }
            m7174S0();
            m7166W0(this.f310f, d0Var);
            zh0.e0 e0Var = this.f310f.f324a;
            zh0.f fVar = e0Var.E;
            zh0.f fVar2 = fVar;
            if (fVar == null) {
                fVar2 = zh0.f.b;
            }
            iArr[i] = (m7109z(e0Var.F) << 24) | fVar2.a;
            i++;
            m7176R0();
        }
        if ((f4 == f3 && f == f2) || size == 1) {
            m7176R0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        zh0.k kVar = ((zh0.j) m0Var).k;
        Shader.TileMode tileMode2 = tileMode;
        if (kVar != null) {
            if (kVar == zh0.k.b) {
                tileMode2 = Shader.TileMode.MIRROR;
            } else {
                tileMode2 = tileMode;
                if (kVar == zh0.k.c) {
                    tileMode2 = Shader.TileMode.REPEAT;
                }
            }
        }
        m7176R0();
        LinearGradient linearGradient = new LinearGradient(f4, f, f3, f2, iArr, fArr, tileMode2);
        linearGradient.setLocalMatrix(matrix);
        paint.setShader(linearGradient);
    }

    /* renamed from: c0 */
    public final Path m7154c0(zh0.d dVar) {
        zh0.p pVar = dVar.o;
        float f = 0.0f;
        float g = pVar != null ? pVar.g(this) : 0.0f;
        zh0.p pVar2 = dVar.p;
        if (pVar2 != null) {
            f = pVar2.h(this);
        }
        float d = dVar.q.d(this);
        float f2 = g - d;
        float f3 = f - d;
        float f4 = g + d;
        float f5 = f + d;
        if (((zh0.k0) dVar).h == null) {
            float f6 = 2.0f * d;
            ((zh0.k0) dVar).h = new zh0.b(f2, f3, f6, f6);
        }
        float f7 = 0.5522848f * d;
        Path path = new Path();
        path.moveTo(g, f3);
        float f8 = g + f7;
        float f9 = f - f7;
        path.cubicTo(f8, f3, f4, f9, f4, f);
        float f10 = f + f7;
        path.cubicTo(f4, f10, f8, f5, g, f5);
        float f11 = g - f7;
        path.cubicTo(f11, f5, f2, f10, f2, f);
        path.cubicTo(f2, f9, f11, f3, g, f3);
        path.close();
        return path;
    }

    /* renamed from: d0 */
    public final Path m7152d0(zh0.i iVar) {
        zh0.p pVar = iVar.o;
        float f = 0.0f;
        float g = pVar != null ? pVar.g(this) : 0.0f;
        zh0.p pVar2 = iVar.p;
        if (pVar2 != null) {
            f = pVar2.h(this);
        }
        float g2 = iVar.q.g(this);
        float h = iVar.r.h(this);
        float f2 = g - g2;
        float f3 = f - h;
        float f4 = g + g2;
        float f5 = f + h;
        if (((zh0.k0) iVar).h == null) {
            ((zh0.k0) iVar).h = new zh0.b(f2, f3, g2 * 2.0f, 2.0f * h);
        }
        float f6 = g2 * 0.5522848f;
        float f7 = 0.5522848f * h;
        Path path = new Path();
        path.moveTo(g, f3);
        float f8 = g + f6;
        float f9 = f - f7;
        path.cubicTo(f8, f3, f4, f9, f4, f);
        float f10 = f7 + f;
        path.cubicTo(f4, f10, f8, f5, g, f5);
        float f11 = g - f6;
        path.cubicTo(f11, f5, f2, f10, f2, f);
        path.cubicTo(f2, f9, f11, f3, g, f3);
        path.close();
        return path;
    }

    /* renamed from: e0 */
    public final Path m7150e0(zh0.q qVar) {
        zh0.p pVar = qVar.o;
        float f = 0.0f;
        float g = pVar == null ? 0.0f : pVar.g(this);
        zh0.p pVar2 = qVar.p;
        float h = pVar2 == null ? 0.0f : pVar2.h(this);
        zh0.p pVar3 = qVar.q;
        float g2 = pVar3 == null ? 0.0f : pVar3.g(this);
        zh0.p pVar4 = qVar.r;
        if (pVar4 != null) {
            f = pVar4.h(this);
        }
        if (((zh0.k0) qVar).h == null) {
            ((zh0.k0) qVar).h = new zh0.b(Math.min(g, h), Math.min(h, f), Math.abs(g2 - g), Math.abs(f - h));
        }
        Path path = new Path();
        path.moveTo(g, h);
        path.lineTo(g2, f);
        return path;
    }

    /* renamed from: f0 */
    public final Path m7148f0(zh0.z zVar) {
        Path path = new Path();
        float[] fArr = zVar.o;
        path.moveTo(fArr[0], fArr[1]);
        int i = 2;
        while (true) {
            float[] fArr2 = zVar.o;
            if (i >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i], fArr2[i + 1]);
            i += 2;
        }
        if (zVar instanceof zh0.a0) {
            path.close();
        }
        if (((zh0.k0) zVar).h == null) {
            ((zh0.k0) zVar).h = m7127q(path);
        }
        path.setFillType(m7173T());
        return path;
    }

    /* renamed from: g0 */
    public final Path m7146g0(zh0.b0 b0Var) {
        float f;
        float f2;
        zh0.p pVar = b0Var.s;
        if (pVar == null && b0Var.t == null) {
            f2 = 0.0f;
            f = 0.0f;
        } else {
            if (pVar == null) {
                f2 = b0Var.t.h(this);
            } else {
                zh0.p pVar2 = b0Var.t;
                f2 = pVar.g(this);
                if (pVar2 != null) {
                    f = b0Var.t.h(this);
                }
            }
            f = f2;
        }
        float min = Math.min(f2, b0Var.q.g(this) / 2.0f);
        float min2 = Math.min(f, b0Var.r.h(this) / 2.0f);
        zh0.p pVar3 = b0Var.o;
        float g = pVar3 != null ? pVar3.g(this) : 0.0f;
        zh0.p pVar4 = b0Var.p;
        float h = pVar4 != null ? pVar4.h(this) : 0.0f;
        float g2 = b0Var.q.g(this);
        float h2 = b0Var.r.h(this);
        if (((zh0.k0) b0Var).h == null) {
            ((zh0.k0) b0Var).h = new zh0.b(g, h, g2, h2);
        }
        float f3 = g + g2;
        float f4 = h + h2;
        Path path = new Path();
        if (min == 0.0f || min2 == 0.0f) {
            path.moveTo(g, h);
            path.lineTo(f3, h);
            path.lineTo(f3, f4);
            path.lineTo(g, f4);
        } else {
            float f5 = min * 0.5522848f;
            float f6 = 0.5522848f * min2;
            float f7 = h + min2;
            path.moveTo(g, f7);
            float f8 = f7 - f6;
            float f9 = g + min;
            float f10 = f9 - f5;
            path.cubicTo(g, f8, f10, h, f9, h);
            float f11 = f3 - min;
            path.lineTo(f11, h);
            float f12 = f11 + f5;
            path.cubicTo(f12, h, f3, f8, f3, f7);
            float f13 = f4 - min2;
            path.lineTo(f3, f13);
            float f14 = f13 + f6;
            path.cubicTo(f3, f14, f12, f4, f11, f4);
            path.lineTo(f9, f4);
            path.cubicTo(f10, f4, g, f14, g, f13);
            h = f7;
        }
        path.lineTo(g, h);
        path.close();
        return path;
    }

    /* renamed from: h */
    public final void m7145h(zh0.l lVar, Path path, Matrix matrix) {
        Path path2;
        m7166W0(this.f310f, lVar);
        if (m7203E() && m7162Y0()) {
            Matrix matrix2 = lVar.n;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            if (lVar instanceof zh0.b0) {
                path2 = m7146g0((zh0.b0) lVar);
            } else if (lVar instanceof zh0.d) {
                path2 = m7154c0((zh0.d) lVar);
            } else if (lVar instanceof zh0.i) {
                path2 = m7152d0((zh0.i) lVar);
            } else if (!(lVar instanceof zh0.z)) {
                return;
            } else {
                path2 = m7148f0((zh0.z) lVar);
            }
            m7121t(lVar);
            path.setFillType(path2.getFillType());
            path.addPath(path2, matrix);
        }
    }

    /* renamed from: h0 */
    public final void m7144h0(boolean z, zh0.b bVar, zh0.q0 q0Var) {
        float f;
        float f2;
        float f3;
        String str = ((zh0.j) q0Var).l;
        if (str != null) {
            m7189L(q0Var, str);
        }
        Boolean bool = ((zh0.j) q0Var).i;
        boolean z2 = bool != null && bool.booleanValue();
        C0040h c0040h = this.f310f;
        Paint paint = z ? c0040h.f327d : c0040h.f328f;
        if (z2) {
            zh0.p pVar = new zh0.p(50.0f, zh0.d1.k);
            zh0.p pVar2 = q0Var.m;
            float g = pVar2 != null ? pVar2.g(this) : pVar.g(this);
            zh0.p pVar3 = q0Var.n;
            float h = pVar3 != null ? pVar3.h(this) : pVar.h(this);
            zh0.p pVar4 = q0Var.o;
            f = h;
            f2 = g;
            f3 = pVar4 != null ? pVar4.d(this) : pVar.d(this);
        } else {
            zh0.p pVar5 = q0Var.m;
            f2 = pVar5 != null ? pVar5.f(this, 1.0f) : 0.5f;
            zh0.p pVar6 = q0Var.n;
            float f4 = pVar6 != null ? pVar6.f(this, 1.0f) : 0.5f;
            zh0.p pVar7 = q0Var.o;
            float f5 = pVar7 != null ? pVar7.f(this, 1.0f) : 0.5f;
            float f6 = f4;
            f3 = f5;
            f = f6;
        }
        m7174S0();
        this.f310f = m7179Q(q0Var);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
        }
        Matrix matrix2 = ((zh0.j) q0Var).j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = ((zh0.j) q0Var).h.size();
        if (size == 0) {
            m7176R0();
            C0040h c0040h2 = this.f310f;
            if (z) {
                c0040h2.f325b = false;
                return;
            } else {
                c0040h2.f326c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        float f7 = -1.0f;
        int i = 0;
        for (zh0.d0 d0Var : ((zh0.j) q0Var).h) {
            if (i == 0 || d0Var.h.floatValue() >= f7) {
                fArr[i] = d0Var.h.floatValue();
                f7 = d0Var.h.floatValue();
            } else {
                fArr[i] = f7;
            }
            m7174S0();
            m7166W0(this.f310f, d0Var);
            zh0.e0 e0Var = this.f310f.f324a;
            zh0.f fVar = e0Var.E;
            zh0.f fVar2 = fVar;
            if (fVar == null) {
                fVar2 = zh0.f.b;
            }
            iArr[i] = (m7109z(e0Var.F) << 24) | fVar2.a;
            i++;
            m7176R0();
        }
        if (f3 == 0.0f || size == 1) {
            m7176R0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        zh0.k kVar = ((zh0.j) q0Var).k;
        Shader.TileMode tileMode2 = tileMode;
        if (kVar != null) {
            if (kVar == zh0.k.b) {
                tileMode2 = Shader.TileMode.MIRROR;
            } else {
                tileMode2 = tileMode;
                if (kVar == zh0.k.c) {
                    tileMode2 = Shader.TileMode.REPEAT;
                }
            }
        }
        m7176R0();
        RadialGradient radialGradient = new RadialGradient(f2, f, f3, iArr, fArr, tileMode2);
        radialGradient.setLocalMatrix(matrix);
        paint.setShader(radialGradient);
    }

    /* renamed from: i */
    public final void m7143i(zh0.v vVar, Path path, Matrix matrix) {
        m7166W0(this.f310f, vVar);
        if (m7203E() && m7162Y0()) {
            Matrix matrix2 = ((zh0.l) vVar).n;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            Path f = new d(this, vVar.o).f();
            if (((zh0.k0) vVar).h == null) {
                ((zh0.k0) vVar).h = m7127q(f);
            }
            m7121t(vVar);
            path.setFillType(m7173T());
            path.addPath(f, matrix);
        }
    }

    /* renamed from: i0 */
    public final void m7142i0() {
        this.f312h.pop();
        this.f313i.pop();
    }

    /* renamed from: j */
    public final void m7141j(zh0.n0 n0Var, boolean z, Path path, Matrix matrix) {
        if (!m7203E()) {
            return;
        }
        m7209B();
        if (n0Var instanceof zh0.e1) {
            if (z) {
                m7137l((zh0.e1) n0Var, path, matrix);
            } else {
                m7193J("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
            }
        } else if (n0Var instanceof zh0.v) {
            m7143i((zh0.v) n0Var, path, matrix);
        } else if (n0Var instanceof zh0.w0) {
            m7139k((zh0.w0) n0Var, path, matrix);
        } else if (n0Var instanceof zh0.l) {
            m7145h((zh0.l) n0Var, path, matrix);
        } else {
            m7193J("Invalid %s element found in clipPath definition", n0Var.getClass().getSimpleName());
        }
        m7211A();
    }

    /* renamed from: j0 */
    public final void m7140j0(zh0.j0 j0Var) {
        this.f312h.push(j0Var);
        this.f313i.push(this.f305a.getMatrix());
    }

    /* renamed from: k */
    public final void m7139k(zh0.w0 w0Var, Path path, Matrix matrix) {
        m7166W0(this.f310f, w0Var);
        if (!m7203E()) {
            return;
        }
        Matrix matrix2 = w0Var.r;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        List list = ((zh0.a1) w0Var).n;
        float g = (list == null || list.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).n.get(0)).g(this);
        List list2 = ((zh0.a1) w0Var).o;
        float h = (list2 == null || list2.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).o.get(0)).h(this);
        List list3 = ((zh0.a1) w0Var).p;
        float g2 = (list3 == null || list3.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).p.get(0)).g(this);
        List list4 = ((zh0.a1) w0Var).q;
        float f = 0.0f;
        if (list4 != null) {
            f = list4.size() == 0 ? 0.0f : ((zh0.p) ((zh0.a1) w0Var).q.get(0)).h(this);
        }
        float f2 = g;
        if (this.f310f.f324a.w != zh0.e0.e.a) {
            float m7125r = m7125r(w0Var);
            float f3 = m7125r;
            if (this.f310f.f324a.w == zh0.e0.e.b) {
                f3 = m7125r / 2.0f;
            }
            f2 = g - f3;
        }
        if (((zh0.k0) w0Var).h == null) {
            i iVar = new i(this, f2, h);
            m7195I(w0Var, iVar);
            RectF rectF = iVar.c;
            ((zh0.k0) w0Var).h = new zh0.b(rectF.left, rectF.top, rectF.width(), iVar.c.height());
        }
        m7121t(w0Var);
        Path path2 = new Path();
        m7195I(w0Var, new g(this, f2 + g2, h + f, path2));
        path.setFillType(m7173T());
        path.addPath(path2, matrix);
    }

    /* renamed from: k0 */
    public final void m7138k0(zh0.k0 k0Var) {
        C0040h c0040h = this.f310f;
        String str = c0040h.f324a.I;
        if (str != null && c0040h.f332k) {
            zh0.n0 m = this.f309e.m(str);
            m7197H();
            m7192J0((zh0.s) m, k0Var);
            Bitmap m7136l0 = m7136l0();
            Canvas pop = this.f314j.pop();
            this.f305a = pop;
            pop.save();
            this.f305a.setMatrix(new Matrix());
            this.f305a.drawBitmap(m7136l0, 0.0f, 0.0f, this.f310f.f327d);
            m7136l0.recycle();
            this.f305a.restore();
        }
        m7176R0();
    }

    /* renamed from: l */
    public final void m7137l(zh0.e1 e1Var, Path path, Matrix matrix) {
        m7166W0(this.f310f, e1Var);
        if (m7203E() && m7162Y0()) {
            Matrix matrix2 = ((zh0.m) e1Var).n;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            zh0.n0 m = ((zh0.n0) e1Var).a.m(e1Var.o);
            if (m == null) {
                m7193J("Use reference '%s' not found", e1Var.o);
                return;
            }
            m7121t(e1Var);
            m7141j(m, false, path, matrix);
        }
    }

    /* renamed from: l0 */
    public final Bitmap m7136l0() {
        Bitmap pop = this.f315k.pop();
        Bitmap pop2 = this.f315k.pop();
        int width = pop.getWidth();
        int height = pop.getHeight();
        int[] iArr = new int[width];
        int[] iArr2 = new int[width];
        for (int i = 0; i < height; i++) {
            pop.getPixels(iArr, 0, width, 0, i, width, 1);
            pop2.getPixels(iArr2, 0, width, 0, i, width, 1);
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                int i4 = (i3 >> 24) & 255;
                if (i4 == 0) {
                    iArr2[i2] = 0;
                } else {
                    int i5 = ((((((i3 >> 16) & 255) * 6963) + (((i3 >> 8) & 255) * 23442)) + ((i3 & 255) * 2362)) * i4) / 8355840;
                    int i6 = iArr2[i2];
                    iArr2[i2] = (i6 & 16777215) | (((((i6 >> 24) & 255) * i5) / 255) << 24);
                }
            }
            pop2.setPixels(iArr2, 0, width, 0, i, width, 1);
        }
        pop.recycle();
        return pop2;
    }

    /* renamed from: m0 */
    public final void m7134m0(zh0.n0 n0Var, AbstractC0041j abstractC0041j) {
        float f;
        float f2;
        float f3;
        if (!abstractC0041j.m7105a((zh0.y0) n0Var)) {
            return;
        }
        if (n0Var instanceof zh0.z0) {
            m7174S0();
            m7188L0((zh0.z0) n0Var);
        } else if (n0Var instanceof zh0.v0) {
            m7207C("TSpan render", new Object[0]);
            m7174S0();
            zh0.v0 v0Var = (zh0.v0) n0Var;
            m7166W0(this.f310f, v0Var);
            if (m7203E()) {
                boolean z = abstractC0041j instanceof f;
                float f4 = 0.0f;
                if (z) {
                    List list = ((zh0.a1) v0Var).n;
                    float g = (list == null || list.size() == 0) ? ((f) abstractC0041j).a : ((zh0.p) ((zh0.a1) v0Var).n.get(0)).g(this);
                    List list2 = ((zh0.a1) v0Var).o;
                    f2 = (list2 == null || list2.size() == 0) ? ((f) abstractC0041j).b : ((zh0.p) ((zh0.a1) v0Var).o.get(0)).h(this);
                    List list3 = ((zh0.a1) v0Var).p;
                    f = (list3 == null || list3.size() == 0) ? 0.0f : ((zh0.p) ((zh0.a1) v0Var).p.get(0)).g(this);
                    List list4 = ((zh0.a1) v0Var).q;
                    float f5 = 0.0f;
                    if (list4 != null) {
                        f5 = list4.size() == 0 ? 0.0f : ((zh0.p) ((zh0.a1) v0Var).q.get(0)).h(this);
                    }
                    float f6 = f5;
                    f4 = g;
                    f3 = f6;
                } else {
                    f3 = 0.0f;
                    f2 = 0.0f;
                    f = 0.0f;
                }
                m7117v((zh0.k0) v0Var.c());
                if (z) {
                    f fVar = (f) abstractC0041j;
                    fVar.a = f4 + f;
                    fVar.b = f2 + f3;
                }
                boolean m7132n0 = m7132n0();
                m7195I(v0Var, abstractC0041j);
                if (m7132n0) {
                    m7138k0(v0Var);
                }
            }
        } else if (!(n0Var instanceof zh0.u0)) {
            return;
        } else {
            m7174S0();
            zh0.u0 u0Var = (zh0.u0) n0Var;
            m7166W0(this.f310f, u0Var);
            if (m7203E()) {
                m7117v((zh0.k0) u0Var.c());
                zh0.n0 m = n0Var.a.m(u0Var.n);
                if (m == null || !(m instanceof zh0.y0)) {
                    m7193J("Tref reference '%s' not found", u0Var.n);
                } else {
                    StringBuilder sb = new StringBuilder();
                    m7191K((zh0.y0) m, sb);
                    if (sb.length() > 0) {
                        abstractC0041j.m7104b(sb.toString());
                    }
                }
            }
        }
        m7176R0();
    }

    /* renamed from: n0 */
    public final boolean m7132n0() {
        if (!m7186M0()) {
            return false;
        }
        this.f305a.saveLayerAlpha(null, m7109z(this.f310f.f324a.o), 4);
        this.f311g.push(this.f310f);
        C0040h c0040h = (C0040h) this.f310f.clone();
        this.f310f = c0040h;
        String str = c0040h.f324a.I;
        if (str == null || !c0040h.f332k) {
            return true;
        }
        zh0.n0 m = this.f309e.m(str);
        if (m == null || !(m instanceof zh0.s)) {
            m7193J("Mask reference '%s' not found", this.f310f.f324a.I);
            this.f310f.f324a.I = null;
            return true;
        }
        this.f314j.push(this.f305a);
        m7197H();
        return true;
    }

    /* renamed from: o */
    public final List<C0039c> m7131o(zh0.q qVar) {
        zh0.p pVar = qVar.o;
        float g = pVar != null ? pVar.g(this) : 0.0f;
        zh0.p pVar2 = qVar.p;
        float h = pVar2 != null ? pVar2.h(this) : 0.0f;
        zh0.p pVar3 = qVar.q;
        float g2 = pVar3 != null ? pVar3.g(this) : 0.0f;
        zh0.p pVar4 = qVar.r;
        float h2 = pVar4 != null ? pVar4.h(this) : 0.0f;
        ArrayList arrayList = new ArrayList(2);
        float f = g2 - g;
        float f2 = h2 - h;
        arrayList.add(new C0039c(this, g, h, f, f2));
        arrayList.add(new C0039c(this, g2, h2, f, f2));
        return arrayList;
    }

    /* renamed from: o0 */
    public final void m7130o0(zh0.d dVar) {
        m7207C("Circle render", new Object[0]);
        zh0.p pVar = dVar.q;
        if (pVar == null || pVar.j()) {
            return;
        }
        m7166W0(this.f310f, dVar);
        if (!m7203E() || !m7162Y0()) {
            return;
        }
        Matrix matrix = ((zh0.l) dVar).n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        Path m7154c0 = m7154c0(dVar);
        m7170U0(dVar);
        m7117v(dVar);
        m7121t(dVar);
        boolean m7132n0 = m7132n0();
        if (this.f310f.f325b) {
            m7201F(dVar, m7154c0);
        }
        if (this.f310f.f326c) {
            m7199G(m7154c0);
        }
        if (!m7132n0) {
            return;
        }
        m7138k0(dVar);
    }

    /* renamed from: p */
    public final List<C0039c> m7129p(zh0.z zVar) {
        int length = zVar.o.length;
        if (length < 2) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        float[] fArr = zVar.o;
        C0039c c0039c = new C0039c(this, fArr[0], fArr[1], 0.0f, 0.0f);
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 2; i < length; i += 2) {
            float[] fArr2 = zVar.o;
            f = fArr2[i];
            f2 = fArr2[i + 1];
            c0039c.m7107a(f, f2);
            arrayList.add(c0039c);
            c0039c = new C0039c(this, f, f2, f - c0039c.f320a, f2 - c0039c.f321b);
        }
        if (zVar instanceof zh0.a0) {
            float[] fArr3 = zVar.o;
            if (f != fArr3[0] && f2 != fArr3[1]) {
                float f3 = fArr3[0];
                float f4 = fArr3[1];
                c0039c.m7107a(f3, f4);
                arrayList.add(c0039c);
                C0039c c0039c2 = new C0039c(this, f3, f4, f3 - c0039c.f320a, f4 - c0039c.f321b);
                c0039c2.m7106b((C0039c) arrayList.get(0));
                arrayList.add(c0039c2);
                arrayList.set(0, c0039c2);
            }
        } else {
            arrayList.add(c0039c);
        }
        return arrayList;
    }

    /* renamed from: p0 */
    public final void m7128p0(zh0.i iVar) {
        m7207C("Ellipse render", new Object[0]);
        zh0.p pVar = iVar.q;
        if (pVar == null || iVar.r == null || pVar.j() || iVar.r.j()) {
            return;
        }
        m7166W0(this.f310f, iVar);
        if (!m7203E() || !m7162Y0()) {
            return;
        }
        Matrix matrix = ((zh0.l) iVar).n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        Path m7152d0 = m7152d0(iVar);
        m7170U0(iVar);
        m7117v(iVar);
        m7121t(iVar);
        boolean m7132n0 = m7132n0();
        if (this.f310f.f325b) {
            m7201F(iVar, m7152d0);
        }
        if (this.f310f.f326c) {
            m7199G(m7152d0);
        }
        if (!m7132n0) {
            return;
        }
        m7138k0(iVar);
    }

    /* renamed from: q */
    public final zh0.b m7127q(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new zh0.b(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    /* renamed from: q0 */
    public final void m7126q0(zh0.m mVar) {
        m7207C("Group render", new Object[0]);
        m7166W0(this.f310f, mVar);
        if (!m7203E()) {
            return;
        }
        Matrix matrix = mVar.n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        m7121t(mVar);
        boolean m7132n0 = m7132n0();
        m7200F0(mVar, true);
        if (m7132n0) {
            m7138k0(mVar);
        }
        m7170U0(mVar);
    }

    /* renamed from: r */
    public final float m7125r(zh0.y0 y0Var) {
        k kVar = new k(this, (C0038a) null);
        m7195I(y0Var, kVar);
        return kVar.a;
    }

    /* renamed from: r0 */
    public final void m7124r0(zh0.o oVar) {
        zh0.p pVar;
        String str;
        m7207C("Image render", new Object[0]);
        zh0.p pVar2 = oVar.r;
        if (pVar2 == null || pVar2.j() || (pVar = oVar.s) == null || pVar.j() || (str = oVar.o) == null) {
            return;
        }
        yh0 yh0Var = ((zh0.p0) oVar).n;
        if (yh0Var == null) {
            yh0Var = yh0.d;
        }
        Bitmap m7115w = m7115w(str);
        Bitmap bitmap = m7115w;
        if (m7115w == null) {
            bi0 e = this.f309e.e();
            if (e == null) {
                return;
            }
            bitmap = e.m5627c(oVar.o);
        }
        if (bitmap == null) {
            m7193J("Could not locate image '%s'", oVar.o);
            return;
        }
        m7166W0(this.f310f, oVar);
        if (!m7203E() || !m7162Y0()) {
            return;
        }
        Matrix matrix = oVar.t;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        zh0.p pVar3 = oVar.p;
        float g = pVar3 != null ? pVar3.g(this) : 0.0f;
        zh0.p pVar4 = oVar.q;
        float h = pVar4 != null ? pVar4.h(this) : 0.0f;
        float g2 = oVar.r.g(this);
        float g3 = oVar.s.g(this);
        C0040h c0040h = this.f310f;
        c0040h.f329g = new zh0.b(g, h, g2, g3);
        if (!c0040h.f324a.x.booleanValue()) {
            zh0.b bVar = this.f310f.f329g;
            m7182O0(bVar.a, bVar.b, bVar.c, bVar.d);
        }
        zh0.b bVar2 = new zh0.b(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        ((zh0.k0) oVar).h = bVar2;
        this.f305a.concat(m7123s(this.f310f.f329g, bVar2, yh0Var));
        m7170U0(oVar);
        m7121t(oVar);
        boolean m7132n0 = m7132n0();
        m7164X0();
        this.f305a.drawBitmap(bitmap, 0.0f, 0.0f, new Paint());
        if (!m7132n0) {
            return;
        }
        m7138k0(oVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0121, code lost:
        if (r0 != 8) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0103  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Matrix m7123s(zh0.b r5, zh0.b r6, yh0 r7) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ai0.m7123s(zh0$b, zh0$b, yh0):android.graphics.Matrix");
    }

    /* renamed from: s0 */
    public final void m7122s0(zh0.q qVar) {
        m7207C("Line render", new Object[0]);
        m7166W0(this.f310f, qVar);
        if (m7203E() && m7162Y0() && this.f310f.f326c) {
            Matrix matrix = ((zh0.l) qVar).n;
            if (matrix != null) {
                this.f305a.concat(matrix);
            }
            Path m7150e0 = m7150e0(qVar);
            m7170U0(qVar);
            m7117v(qVar);
            m7121t(qVar);
            boolean m7132n0 = m7132n0();
            m7199G(m7150e0);
            m7194I0(qVar);
            if (!m7132n0) {
                return;
            }
            m7138k0(qVar);
        }
    }

    /* renamed from: t */
    public final void m7121t(zh0.k0 k0Var) {
        m7119u(k0Var, k0Var.h);
    }

    /* renamed from: t0 */
    public final void m7120t0(zh0.v vVar) {
        m7207C("Path render", new Object[0]);
        if (vVar.o == null) {
            return;
        }
        m7166W0(this.f310f, vVar);
        if (!m7203E() || !m7162Y0()) {
            return;
        }
        C0040h c0040h = this.f310f;
        if (!c0040h.f326c && !c0040h.f325b) {
            return;
        }
        Matrix matrix = ((zh0.l) vVar).n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        Path f = new d(this, vVar.o).f();
        if (((zh0.k0) vVar).h == null) {
            ((zh0.k0) vVar).h = m7127q(f);
        }
        m7170U0(vVar);
        m7117v(vVar);
        m7121t(vVar);
        boolean m7132n0 = m7132n0();
        if (this.f310f.f325b) {
            f.setFillType(m7163Y());
            m7201F(vVar, f);
        }
        if (this.f310f.f326c) {
            m7199G(f);
        }
        m7194I0(vVar);
        if (!m7132n0) {
            return;
        }
        m7138k0(vVar);
    }

    /* renamed from: u */
    public final void m7119u(zh0.k0 k0Var, zh0.b bVar) {
        String str = this.f310f.f324a.G;
        if (str == null) {
            return;
        }
        zh0.e m = ((zh0.n0) k0Var).a.m(str);
        if (m == null) {
            m7193J("ClipPath reference '%s' not found", this.f310f.f324a.G);
            return;
        }
        zh0.e eVar = m;
        if (((zh0.h0) eVar).i.isEmpty()) {
            this.f305a.clipRect(0, 0, 0, 0);
            return;
        }
        Boolean bool = eVar.o;
        boolean z = bool == null || bool.booleanValue();
        if ((k0Var instanceof zh0.m) && !z) {
            m7160Z0("<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)", k0Var.getClass().getSimpleName());
            return;
        }
        m7209B();
        if (!z) {
            Matrix matrix = new Matrix();
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
            this.f305a.concat(matrix);
        }
        Matrix matrix2 = ((zh0.m) eVar).n;
        if (matrix2 != null) {
            this.f305a.concat(matrix2);
        }
        this.f310f = m7179Q(eVar);
        m7121t(eVar);
        Path path = new Path();
        for (zh0.n0 n0Var : ((zh0.h0) eVar).i) {
            m7141j(n0Var, true, path, new Matrix());
        }
        this.f305a.clipPath(path);
        m7211A();
    }

    /* renamed from: u0 */
    public final void m7118u0(zh0.z zVar) {
        m7207C("PolyLine render", new Object[0]);
        m7166W0(this.f310f, zVar);
        if (m7203E() && m7162Y0()) {
            C0040h c0040h = this.f310f;
            if (!c0040h.f326c && !c0040h.f325b) {
                return;
            }
            Matrix matrix = ((zh0.l) zVar).n;
            if (matrix != null) {
                this.f305a.concat(matrix);
            }
            if (zVar.o.length < 2) {
                return;
            }
            Path m7148f0 = m7148f0(zVar);
            m7170U0(zVar);
            m7117v(zVar);
            m7121t(zVar);
            boolean m7132n0 = m7132n0();
            if (this.f310f.f325b) {
                m7201F(zVar, m7148f0);
            }
            if (this.f310f.f326c) {
                m7199G(m7148f0);
            }
            m7194I0(zVar);
            if (!m7132n0) {
                return;
            }
            m7138k0(zVar);
        }
    }

    /* renamed from: v */
    public final void m7117v(zh0.k0 k0Var) {
        zh0.o0 o0Var = this.f310f.f324a.b;
        if (o0Var instanceof zh0.u) {
            m7205D(true, k0Var.h, (zh0.u) o0Var);
        }
        zh0.o0 o0Var2 = this.f310f.f324a.f;
        if (o0Var2 instanceof zh0.u) {
            m7205D(false, k0Var.h, (zh0.u) o0Var2);
        }
    }

    /* renamed from: v0 */
    public final void m7116v0(zh0.a0 a0Var) {
        m7207C("Polygon render", new Object[0]);
        m7166W0(this.f310f, a0Var);
        if (m7203E() && m7162Y0()) {
            C0040h c0040h = this.f310f;
            if (!c0040h.f326c && !c0040h.f325b) {
                return;
            }
            Matrix matrix = ((zh0.l) a0Var).n;
            if (matrix != null) {
                this.f305a.concat(matrix);
            }
            if (((zh0.z) a0Var).o.length < 2) {
                return;
            }
            Path m7148f0 = m7148f0(a0Var);
            m7170U0(a0Var);
            m7117v(a0Var);
            m7121t(a0Var);
            boolean m7132n0 = m7132n0();
            if (this.f310f.f325b) {
                m7201F(a0Var, m7148f0);
            }
            if (this.f310f.f326c) {
                m7199G(m7148f0);
            }
            m7194I0(a0Var);
            if (!m7132n0) {
                return;
            }
            m7138k0(a0Var);
        }
    }

    /* renamed from: w */
    public final Bitmap m7115w(String str) {
        int indexOf;
        if (str.startsWith("data:") && str.length() >= 14 && (indexOf = str.indexOf(44)) != -1 && indexOf >= 12 && ";base64".equals(str.substring(indexOf - 7, indexOf))) {
            byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        }
        return null;
    }

    /* renamed from: w0 */
    public final void m7114w0(zh0.b0 b0Var) {
        m7207C("Rect render", new Object[0]);
        zh0.p pVar = b0Var.q;
        if (pVar == null || b0Var.r == null || pVar.j() || b0Var.r.j()) {
            return;
        }
        m7166W0(this.f310f, b0Var);
        if (!m7203E() || !m7162Y0()) {
            return;
        }
        Matrix matrix = ((zh0.l) b0Var).n;
        if (matrix != null) {
            this.f305a.concat(matrix);
        }
        Path m7146g0 = m7146g0(b0Var);
        m7170U0(b0Var);
        m7117v(b0Var);
        m7121t(b0Var);
        boolean m7132n0 = m7132n0();
        if (this.f310f.f325b) {
            m7201F(b0Var, m7146g0);
        }
        if (this.f310f.f326c) {
            m7199G(m7146g0);
        }
        if (!m7132n0) {
            return;
        }
        m7138k0(b0Var);
    }

    /* renamed from: x */
    public final Typeface m7113x(String str, Integer num, zh0.e0.b bVar) {
        Typeface typeface;
        Typeface typeface2;
        int i = 1;
        boolean z = bVar == zh0.e0.b.b;
        if (num.intValue() <= 500) {
            i = z ? 2 : 0;
        } else if (z) {
            i = 3;
        }
        if (str.equals(C0515C.SERIF_NAME)) {
            typeface2 = Typeface.SERIF;
        } else {
            if (!str.equals(C0515C.SANS_SERIF_NAME)) {
                if (str.equals("monospace")) {
                    typeface2 = Typeface.MONOSPACE;
                } else if (!str.equals("cursive") && !str.equals("fantasy")) {
                    typeface = null;
                    return typeface;
                }
            }
            typeface2 = Typeface.SANS_SERIF;
        }
        typeface = Typeface.create(typeface2, i);
        return typeface;
    }

    /* renamed from: x0 */
    public final void m7112x0(zh0.f0 f0Var) {
        m7110y0(f0Var, f0Var.r, f0Var.s);
    }

    /* renamed from: y */
    public final void m7111y(zh0.n0 n0Var) {
        Boolean bool;
        if ((n0Var instanceof zh0.l0) && (bool = ((zh0.l0) n0Var).d) != null) {
            this.f310f.f331j = bool.booleanValue();
        }
    }

    /* renamed from: y0 */
    public final void m7110y0(zh0.f0 f0Var, zh0.p pVar, zh0.p pVar2) {
        m7108z0(f0Var, pVar, pVar2, ((zh0.r0) f0Var).o, ((zh0.p0) f0Var).n);
    }

    /* renamed from: z */
    public final int m7109z(float f) {
        int i;
        int i2 = (int) (f * 256.0f);
        if (i2 < 0) {
            i = 0;
        } else {
            i = i2;
            if (i2 > 255) {
                i = 255;
            }
        }
        return i;
    }

    /* renamed from: z0 */
    public final void m7108z0(zh0.f0 f0Var, zh0.p pVar, zh0.p pVar2, zh0.b bVar, yh0 yh0Var) {
        m7207C("Svg render", new Object[0]);
        if (pVar == null || !pVar.j()) {
            if (pVar2 != null && pVar2.j()) {
                return;
            }
            yh0 yh0Var2 = yh0Var;
            if (yh0Var == null) {
                yh0Var2 = ((zh0.p0) f0Var).n;
                if (yh0Var2 == null) {
                    yh0Var2 = yh0.d;
                }
            }
            m7166W0(this.f310f, f0Var);
            if (!m7203E()) {
                return;
            }
            float f = 0.0f;
            float f2 = 0.0f;
            if (((zh0.n0) f0Var).b != null) {
                zh0.p pVar3 = f0Var.p;
                f = pVar3 != null ? pVar3.g(this) : 0.0f;
                zh0.p pVar4 = f0Var.q;
                if (pVar4 != null) {
                    f2 = pVar4.h(this);
                }
            } else {
                f2 = 0.0f;
            }
            zh0.b m7167W = m7167W();
            float g = pVar != null ? pVar.g(this) : m7167W.c;
            float h = pVar2 != null ? pVar2.h(this) : m7167W.d;
            C0040h c0040h = this.f310f;
            c0040h.f329g = new zh0.b(f, f2, g, h);
            if (!c0040h.f324a.x.booleanValue()) {
                zh0.b bVar2 = this.f310f.f329g;
                m7182O0(bVar2.a, bVar2.b, bVar2.c, bVar2.d);
            }
            m7119u(f0Var, this.f310f.f329g);
            Canvas canvas = this.f305a;
            if (bVar != null) {
                canvas.concat(m7123s(this.f310f.f329g, bVar, yh0Var2));
                this.f310f.f330h = ((zh0.r0) f0Var).o;
            } else {
                canvas.translate(f, f2);
            }
            boolean m7132n0 = m7132n0();
            m7164X0();
            m7200F0(f0Var, true);
            if (m7132n0) {
                m7138k0(f0Var);
            }
            m7170U0(f0Var);
        }
    }
}
