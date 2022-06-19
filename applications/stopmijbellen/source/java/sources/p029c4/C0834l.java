package p029c4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p019b4.C0728a;
/* renamed from: c4.l */
/* loaded from: classes-dex2jar.jar:c4/l.class */
public class C0834l {
    @Deprecated

    /* renamed from: a */
    public float f3097a;
    @Deprecated

    /* renamed from: b */
    public float f3098b;
    @Deprecated

    /* renamed from: c */
    public float f3099c;
    @Deprecated

    /* renamed from: d */
    public float f3100d;
    @Deprecated

    /* renamed from: e */
    public float f3101e;
    @Deprecated

    /* renamed from: f */
    public float f3102f;

    /* renamed from: g */
    public final List<AbstractC0839e> f3103g = new ArrayList();

    /* renamed from: h */
    public final List<AbstractC0840f> f3104h = new ArrayList();

    /* renamed from: c4.l$a */
    /* loaded from: classes-dex2jar.jar:c4/l$a.class */
    public static class C0835a extends AbstractC0840f {

        /* renamed from: b */
        public final C0837c f3105b;

        public C0835a(C0837c c0837c) {
            this.f3105b = c0837c;
        }

        @Override // p029c4.C0834l.AbstractC0840f
        /* renamed from: a */
        public void mo7283a(Matrix matrix, C0728a c0728a, int i, Canvas canvas) {
            C0837c c0837c = this.f3105b;
            float f = c0837c.f3114f;
            float f2 = c0837c.f3115g;
            C0837c c0837c2 = this.f3105b;
            RectF rectF = new RectF(c0837c2.f3110b, c0837c2.f3111c, c0837c2.f3112d, c0837c2.f3113e);
            boolean z = f2 < 0.0f;
            Path path = c0728a.f2786g;
            if (z) {
                int[] iArr = C0728a.f2778k;
                iArr[0] = 0;
                iArr[1] = c0728a.f2785f;
                iArr[2] = c0728a.f2784e;
                iArr[3] = c0728a.f2783d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f, f2);
                path.close();
                float f3 = -i;
                rectF.inset(f3, f3);
                int[] iArr2 = C0728a.f2778k;
                iArr2[0] = 0;
                iArr2[1] = c0728a.f2783d;
                iArr2[2] = c0728a.f2784e;
                iArr2[3] = c0728a.f2785f;
            }
            float width = rectF.width() / 2.0f;
            if (width <= 0.0f) {
                return;
            }
            float f4 = 1.0f - (i / width);
            float m7628g = C0608b.m7628g(1.0f, f4, 2.0f, f4);
            float[] fArr = C0728a.f2779l;
            fArr[1] = f4;
            fArr[2] = m7628g;
            c0728a.f2781b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, C0728a.f2778k, fArr, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, c0728a.f2787h);
            }
            canvas.drawArc(rectF, f, f2, true, c0728a.f2781b);
            canvas.restore();
        }
    }

    /* renamed from: c4.l$b */
    /* loaded from: classes-dex2jar.jar:c4/l$b.class */
    public static class C0836b extends AbstractC0840f {

        /* renamed from: b */
        public final C0838d f3106b;

        /* renamed from: c */
        public final float f3107c;

        /* renamed from: d */
        public final float f3108d;

        public C0836b(C0838d c0838d, float f, float f2) {
            this.f3106b = c0838d;
            this.f3107c = f;
            this.f3108d = f2;
        }

        @Override // p029c4.C0834l.AbstractC0840f
        /* renamed from: a */
        public void mo7283a(Matrix matrix, C0728a c0728a, int i, Canvas canvas) {
            C0838d c0838d = this.f3106b;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(c0838d.f3117c - this.f3108d, c0838d.f3116b - this.f3107c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f3107c, this.f3108d);
            matrix2.preRotate(m7285b());
            Objects.requireNonNull(c0728a);
            rectF.bottom += i;
            rectF.offset(0.0f, -i);
            int[] iArr = C0728a.f2776i;
            iArr[0] = c0728a.f2785f;
            iArr[1] = c0728a.f2784e;
            iArr[2] = c0728a.f2783d;
            Paint paint = c0728a.f2782c;
            float f = rectF.left;
            paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, C0728a.f2777j, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, c0728a.f2782c);
            canvas.restore();
        }

        /* renamed from: b */
        public float m7285b() {
            C0838d c0838d = this.f3106b;
            return (float) Math.toDegrees(Math.atan((c0838d.f3117c - this.f3108d) / (c0838d.f3116b - this.f3107c)));
        }
    }

    /* renamed from: c4.l$c */
    /* loaded from: classes-dex2jar.jar:c4/l$c.class */
    public static class C0837c extends AbstractC0839e {

        /* renamed from: h */
        public static final RectF f3109h = new RectF();
        @Deprecated

        /* renamed from: b */
        public float f3110b;
        @Deprecated

        /* renamed from: c */
        public float f3111c;
        @Deprecated

        /* renamed from: d */
        public float f3112d;
        @Deprecated

        /* renamed from: e */
        public float f3113e;
        @Deprecated

        /* renamed from: f */
        public float f3114f;
        @Deprecated

        /* renamed from: g */
        public float f3115g;

        public C0837c(float f, float f2, float f3, float f4) {
            this.f3110b = f;
            this.f3111c = f2;
            this.f3112d = f3;
            this.f3113e = f4;
        }

        @Override // p029c4.C0834l.AbstractC0839e
        /* renamed from: a */
        public void mo7284a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f3118a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f3109h;
            rectF.set(this.f3110b, this.f3111c, this.f3112d, this.f3113e);
            path.arcTo(rectF, this.f3114f, this.f3115g, false);
            path.transform(matrix);
        }
    }

    /* renamed from: c4.l$d */
    /* loaded from: classes-dex2jar.jar:c4/l$d.class */
    public static class C0838d extends AbstractC0839e {

        /* renamed from: b */
        public float f3116b;

        /* renamed from: c */
        public float f3117c;

        @Override // p029c4.C0834l.AbstractC0839e
        /* renamed from: a */
        public void mo7284a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f3118a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f3116b, this.f3117c);
            path.transform(matrix);
        }
    }

    /* renamed from: c4.l$e */
    /* loaded from: classes-dex2jar.jar:c4/l$e.class */
    public static abstract class AbstractC0839e {

        /* renamed from: a */
        public final Matrix f3118a = new Matrix();

        /* renamed from: a */
        public abstract void mo7284a(Matrix matrix, Path path);
    }

    /* renamed from: c4.l$f */
    /* loaded from: classes-dex2jar.jar:c4/l$f.class */
    public static abstract class AbstractC0840f {

        /* renamed from: a */
        public static final Matrix f3119a = new Matrix();

        /* renamed from: a */
        public abstract void mo7283a(Matrix matrix, C0728a c0728a, int i, Canvas canvas);
    }

    public C0834l() {
        m7286e(0.0f, 0.0f, 270.0f, 0.0f);
    }

    /* renamed from: a */
    public void m7290a(float f, float f2, float f3, float f4, float f5, float f6) {
        C0837c c0837c = new C0837c(f, f2, f3, f4);
        c0837c.f3114f = f5;
        c0837c.f3115g = f6;
        this.f3103g.add(c0837c);
        C0835a c0835a = new C0835a(c0837c);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        float f8 = f5;
        if (z) {
            f8 = (f5 + 180.0f) % 360.0f;
        }
        float f9 = z ? (180.0f + f7) % 360.0f : f7;
        m7289b(f8);
        this.f3104h.add(c0835a);
        this.f3101e = f9;
        double d = f7;
        this.f3099c = (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((f + f3) * 0.5f);
        this.f3100d = (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((f2 + f4) * 0.5f);
    }

    /* renamed from: b */
    public final void m7289b(float f) {
        float f2 = this.f3101e;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.f3099c;
        float f5 = this.f3100d;
        C0837c c0837c = new C0837c(f4, f5, f4, f5);
        c0837c.f3114f = this.f3101e;
        c0837c.f3115g = f3;
        this.f3104h.add(new C0835a(c0837c));
        this.f3101e = f;
    }

    /* renamed from: c */
    public void m7288c(Matrix matrix, Path path) {
        int size = this.f3103g.size();
        for (int i = 0; i < size; i++) {
            this.f3103g.get(i).mo7284a(matrix, path);
        }
    }

    /* renamed from: d */
    public void m7287d(float f, float f2) {
        C0838d c0838d = new C0838d();
        c0838d.f3116b = f;
        c0838d.f3117c = f2;
        this.f3103g.add(c0838d);
        C0836b c0836b = new C0836b(c0838d, this.f3099c, this.f3100d);
        float m7285b = c0836b.m7285b();
        float m7285b2 = c0836b.m7285b();
        m7289b(m7285b + 270.0f);
        this.f3104h.add(c0836b);
        this.f3101e = m7285b2 + 270.0f;
        this.f3099c = f;
        this.f3100d = f2;
    }

    /* renamed from: e */
    public void m7286e(float f, float f2, float f3, float f4) {
        this.f3097a = f;
        this.f3098b = f2;
        this.f3099c = f;
        this.f3100d = f2;
        this.f3101e = f3;
        this.f3102f = (f3 + f4) % 360.0f;
        this.f3103g.clear();
        this.f3104h.clear();
    }
}
