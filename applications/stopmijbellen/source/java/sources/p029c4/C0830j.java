package p029c4;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Objects;
import p029c4.C0822f;
import p029c4.C0834l;
import p124i4.C3102d;
/* renamed from: c4.j */
/* loaded from: classes-dex2jar.jar:c4/j.class */
public class C0830j {

    /* renamed from: a */
    public final C0834l[] f3082a = new C0834l[4];

    /* renamed from: b */
    public final Matrix[] f3083b = new Matrix[4];

    /* renamed from: c */
    public final Matrix[] f3084c = new Matrix[4];

    /* renamed from: d */
    public final PointF f3085d = new PointF();

    /* renamed from: e */
    public final Path f3086e = new Path();

    /* renamed from: f */
    public final Path f3087f = new Path();

    /* renamed from: g */
    public final C0834l f3088g = new C0834l();

    /* renamed from: h */
    public final float[] f3089h = new float[2];

    /* renamed from: i */
    public final float[] f3090i = new float[2];

    /* renamed from: j */
    public final Path f3091j = new Path();

    /* renamed from: k */
    public final Path f3092k = new Path();

    /* renamed from: l */
    public boolean f3093l = true;

    /* renamed from: c4.j$a */
    /* loaded from: classes-dex2jar.jar:c4/j$a.class */
    public static class C0831a {

        /* renamed from: a */
        public static final C0830j f3094a = new C0830j();
    }

    /* renamed from: c4.j$b */
    /* loaded from: classes-dex2jar.jar:c4/j$b.class */
    public interface AbstractC0832b {
    }

    public C0830j() {
        for (int i = 0; i < 4; i++) {
            this.f3082a[i] = new C0834l();
            this.f3083b[i] = new Matrix();
            this.f3084c[i] = new Matrix();
        }
    }

    /* renamed from: a */
    public void m7293a(C0827i c0827i, float f, RectF rectF, Path path) {
        m7292b(c0827i, f, rectF, null, path);
    }

    /* renamed from: b */
    public void m7292b(C0827i c0827i, float f, RectF rectF, AbstractC0832b abstractC0832b, Path path) {
        float[] fArr;
        path.rewind();
        this.f3086e.rewind();
        this.f3087f.rewind();
        this.f3087f.addRect(rectF, Path.Direction.CW);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 4) {
                break;
            }
            AbstractC0819c abstractC0819c = i2 != 1 ? i2 != 2 ? i2 != 3 ? c0827i.f3063f : c0827i.f3062e : c0827i.f3065h : c0827i.f3064g;
            C3102d c3102d = i2 != 1 ? i2 != 2 ? i2 != 3 ? c0827i.f3059b : c0827i.f3058a : c0827i.f3061d : c0827i.f3060c;
            C0834l c0834l = this.f3082a[i2];
            Objects.requireNonNull(c3102d);
            c3102d.mo2618u(c0834l, 90.0f, f, abstractC0819c.mo7306a(rectF));
            int i3 = i2 + 1;
            float f2 = i3 * 90;
            this.f3083b[i2].reset();
            PointF pointF = this.f3085d;
            if (i2 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i2 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i2 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            Matrix matrix = this.f3083b[i2];
            PointF pointF2 = this.f3085d;
            matrix.setTranslate(pointF2.x, pointF2.y);
            this.f3083b[i2].preRotate(f2);
            float[] fArr2 = this.f3089h;
            C0834l[] c0834lArr = this.f3082a;
            fArr2[0] = c0834lArr[i2].f3099c;
            fArr2[1] = c0834lArr[i2].f3100d;
            this.f3083b[i2].mapPoints(fArr2);
            this.f3084c[i2].reset();
            Matrix matrix2 = this.f3084c[i2];
            float[] fArr3 = this.f3089h;
            matrix2.setTranslate(fArr3[0], fArr3[1]);
            this.f3084c[i2].preRotate(f2);
            i = i3;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= 4) {
                break;
            }
            float[] fArr4 = this.f3089h;
            C0834l[] c0834lArr2 = this.f3082a;
            fArr4[0] = c0834lArr2[i5].f3097a;
            fArr4[1] = c0834lArr2[i5].f3098b;
            this.f3083b[i5].mapPoints(fArr4);
            if (i5 == 0) {
                float[] fArr5 = this.f3089h;
                path.moveTo(fArr5[0], fArr5[1]);
            } else {
                float[] fArr6 = this.f3089h;
                path.lineTo(fArr6[0], fArr6[1]);
            }
            this.f3082a[i5].m7288c(this.f3083b[i5], path);
            if (abstractC0832b != null) {
                C0834l c0834l2 = this.f3082a[i5];
                Matrix matrix3 = this.f3083b[i5];
                C0822f.C0823a c0823a = (C0822f.C0823a) abstractC0832b;
                BitSet bitSet = C0822f.this.f3013d;
                Objects.requireNonNull(c0834l2);
                bitSet.set(i5, false);
                C0834l.AbstractC0840f[] abstractC0840fArr = C0822f.this.f3011b;
                c0834l2.m7289b(c0834l2.f3102f);
                abstractC0840fArr[i5] = new C0833k(c0834l2, new ArrayList(c0834l2.f3104h), new Matrix(matrix3));
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            float[] fArr7 = this.f3089h;
            C0834l[] c0834lArr3 = this.f3082a;
            fArr7[0] = c0834lArr3[i5].f3099c;
            fArr7[1] = c0834lArr3[i5].f3100d;
            this.f3083b[i5].mapPoints(fArr7);
            float[] fArr8 = this.f3090i;
            C0834l[] c0834lArr4 = this.f3082a;
            fArr8[0] = c0834lArr4[i7].f3097a;
            fArr8[1] = c0834lArr4[i7].f3098b;
            this.f3083b[i7].mapPoints(fArr8);
            float f3 = this.f3089h[0];
            float[] fArr9 = this.f3090i;
            float max = Math.max(((float) Math.hypot(f3 - fArr9[0], fArr[1] - fArr9[1])) - 0.001f, 0.0f);
            float[] fArr10 = this.f3089h;
            C0834l[] c0834lArr5 = this.f3082a;
            fArr10[0] = c0834lArr5[i5].f3099c;
            fArr10[1] = c0834lArr5[i5].f3100d;
            this.f3083b[i5].mapPoints(fArr10);
            float abs = (i5 == 1 || i5 == 3) ? Math.abs(rectF.centerX() - this.f3089h[0]) : Math.abs(rectF.centerY() - this.f3089h[1]);
            this.f3088g.m7286e(0.0f, 0.0f, 270.0f, 0.0f);
            (i5 != 1 ? i5 != 2 ? i5 != 3 ? c0827i.f3067j : c0827i.f3066i : c0827i.f3069l : c0827i.f3068k).m7339f(max, abs, f, this.f3088g);
            this.f3091j.reset();
            this.f3088g.m7288c(this.f3084c[i5], this.f3091j);
            if (!this.f3093l || (!m7291c(this.f3091j, i5) && !m7291c(this.f3091j, i7))) {
                this.f3088g.m7288c(this.f3084c[i5], path);
            } else {
                Path path2 = this.f3091j;
                path2.op(path2, this.f3087f, Path.Op.DIFFERENCE);
                float[] fArr11 = this.f3089h;
                C0834l c0834l3 = this.f3088g;
                fArr11[0] = c0834l3.f3097a;
                fArr11[1] = c0834l3.f3098b;
                this.f3084c[i5].mapPoints(fArr11);
                Path path3 = this.f3086e;
                float[] fArr12 = this.f3089h;
                path3.moveTo(fArr12[0], fArr12[1]);
                this.f3088g.m7288c(this.f3084c[i5], this.f3086e);
            }
            if (abstractC0832b != null) {
                C0834l c0834l4 = this.f3088g;
                Matrix matrix4 = this.f3084c[i5];
                C0822f.C0823a c0823a2 = (C0822f.C0823a) abstractC0832b;
                BitSet bitSet2 = C0822f.this.f3013d;
                Objects.requireNonNull(c0834l4);
                bitSet2.set(i5 + 4, false);
                C0834l.AbstractC0840f[] abstractC0840fArr2 = C0822f.this.f3012c;
                c0834l4.m7289b(c0834l4.f3102f);
                abstractC0840fArr2[i5] = new C0833k(c0834l4, new ArrayList(c0834l4.f3104h), new Matrix(matrix4));
            }
            i4 = i6;
        }
        path.close();
        this.f3086e.close();
        if (!this.f3086e.isEmpty()) {
            path.op(this.f3086e, Path.Op.UNION);
        }
    }

    /* renamed from: c */
    public final boolean m7291c(Path path, int i) {
        this.f3092k.reset();
        this.f3082a[i].m7288c(this.f3083b[i], this.f3092k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f3092k.computeBounds(rectF, true);
        path.op(this.f3092k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        boolean z = true;
        if (rectF.isEmpty()) {
            z = rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return z;
    }
}
