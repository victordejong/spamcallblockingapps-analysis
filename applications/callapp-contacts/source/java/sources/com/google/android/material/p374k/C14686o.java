package com.google.android.material.p374k;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p373j.C14661a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.k.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o.class */
public final class C14686o {
    @Deprecated

    /* renamed from: a */
    public float f53569a;
    @Deprecated

    /* renamed from: b */
    public float f53570b;
    @Deprecated

    /* renamed from: c */
    public float f53571c;
    @Deprecated

    /* renamed from: d */
    public float f53572d;
    @Deprecated

    /* renamed from: e */
    public float f53573e;
    @Deprecated

    /* renamed from: f */
    public float f53574f;

    /* renamed from: g */
    boolean f53575g;

    /* renamed from: h */
    private final List<AbstractC14692e> f53576h = new ArrayList();

    /* renamed from: i */
    private final List<AbstractC14693f> f53577i = new ArrayList();

    /* renamed from: com.google.android.material.k.o$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$a.class */
    public static final class C14688a extends AbstractC14693f {

        /* renamed from: a */
        private final C14690c f53581a;

        public C14688a(C14690c c14690c) {
            this.f53581a = c14690c;
        }

        @Override // com.google.android.material.p374k.C14686o.AbstractC14693f
        /* renamed from: a */
        public final void mo10377a(Matrix matrix, C14661a c14661a, int i, Canvas canvas) {
            float f = this.f53581a.f53590e;
            float f2 = this.f53581a.f53591f;
            RectF rectF = new RectF(this.f53581a.f53586a, this.f53581a.f53587b, this.f53581a.f53588c, this.f53581a.f53589d);
            boolean z = f2 < BitmapDescriptorFactory.HUE_RED;
            Path path = c14661a.f53466k;
            if (z) {
                C14661a.f53458i[0] = 0;
                C14661a.f53458i[1] = c14661a.f53465f;
                C14661a.f53458i[2] = c14661a.f53464e;
                C14661a.f53458i[3] = c14661a.f53463d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f, f2);
                path.close();
                float f3 = -i;
                rectF.inset(f3, f3);
                C14661a.f53458i[0] = 0;
                C14661a.f53458i[1] = c14661a.f53463d;
                C14661a.f53458i[2] = c14661a.f53464e;
                C14661a.f53458i[3] = c14661a.f53465f;
            }
            float width = rectF.width() / 2.0f;
            if (width > BitmapDescriptorFactory.HUE_RED) {
                float f4 = 1.0f - (i / width);
                C14661a.f53459j[1] = f4;
                C14661a.f53459j[2] = ((1.0f - f4) / 2.0f) + f4;
                c14661a.f53461b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, C14661a.f53458i, C14661a.f53459j, Shader.TileMode.CLAMP));
                canvas.save();
                canvas.concat(matrix);
                if (!z) {
                    canvas.clipPath(path, Region.Op.DIFFERENCE);
                    canvas.drawPath(path, c14661a.f53467l);
                }
                canvas.drawArc(rectF, f, f2, true, c14661a.f53461b);
                canvas.restore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.k.o$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$b.class */
    public static final class C14689b extends AbstractC14693f {

        /* renamed from: a */
        private final C14691d f53582a;

        /* renamed from: b */
        private final float f53583b;

        /* renamed from: c */
        private final float f53584c;

        public C14689b(C14691d c14691d, float f, float f2) {
            this.f53582a = c14691d;
            this.f53583b = f;
            this.f53584c = f2;
        }

        /* renamed from: a */
        final float m10387a() {
            return (float) Math.toDegrees(Math.atan((this.f53582a.f53593b - this.f53584c) / (this.f53582a.f53592a - this.f53583b)));
        }

        @Override // com.google.android.material.p374k.C14686o.AbstractC14693f
        /* renamed from: a */
        public final void mo10377a(Matrix matrix, C14661a c14661a, int i, Canvas canvas) {
            RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) Math.hypot(this.f53582a.f53593b - this.f53584c, this.f53582a.f53592a - this.f53583b), BitmapDescriptorFactory.HUE_RED);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f53583b, this.f53584c);
            matrix2.preRotate(m10387a());
            rectF.bottom += i;
            rectF.offset(BitmapDescriptorFactory.HUE_RED, -i);
            C14661a.f53456g[0] = c14661a.f53465f;
            C14661a.f53456g[1] = c14661a.f53464e;
            C14661a.f53456g[2] = c14661a.f53463d;
            c14661a.f53462c.setShader(new LinearGradient(rectF.left, rectF.top, rectF.left, rectF.bottom, C14661a.f53456g, C14661a.f53457h, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, c14661a.f53462c);
            canvas.restore();
        }
    }

    /* renamed from: com.google.android.material.k.o$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$c.class */
    public static final class C14690c extends AbstractC14692e {

        /* renamed from: h */
        private static final RectF f53585h = new RectF();
        @Deprecated

        /* renamed from: a */
        public float f53586a;
        @Deprecated

        /* renamed from: b */
        public float f53587b;
        @Deprecated

        /* renamed from: c */
        public float f53588c;
        @Deprecated

        /* renamed from: d */
        public float f53589d;
        @Deprecated

        /* renamed from: e */
        public float f53590e;
        @Deprecated

        /* renamed from: f */
        public float f53591f;

        public C14690c(float f, float f2, float f3, float f4) {
            this.f53586a = f;
            this.f53587b = f2;
            this.f53588c = f3;
            this.f53589d = f4;
        }

        @Override // com.google.android.material.p374k.C14686o.AbstractC14692e
        /* renamed from: a */
        public final void mo10378a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f53594g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f53585h;
            rectF.set(this.f53586a, this.f53587b, this.f53588c, this.f53589d);
            path.arcTo(rectF, this.f53590e, this.f53591f, false);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.k.o$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$d.class */
    public static final class C14691d extends AbstractC14692e {

        /* renamed from: a */
        float f53592a;

        /* renamed from: b */
        float f53593b;

        @Override // com.google.android.material.p374k.C14686o.AbstractC14692e
        /* renamed from: a */
        public final void mo10378a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f53594g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f53592a, this.f53593b);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.k.o$e */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$e.class */
    public static abstract class AbstractC14692e {

        /* renamed from: g */
        protected final Matrix f53594g = new Matrix();

        /* renamed from: a */
        public abstract void mo10378a(Matrix matrix, Path path);
    }

    /* renamed from: com.google.android.material.k.o$f */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/o$f.class */
    public static abstract class AbstractC14693f {

        /* renamed from: d */
        static final Matrix f53595d = new Matrix();

        AbstractC14693f() {
        }

        /* renamed from: a */
        public abstract void mo10377a(Matrix matrix, C14661a c14661a, int i, Canvas canvas);

        /* renamed from: a */
        public final void m10376a(C14661a c14661a, int i, Canvas canvas) {
            mo10377a(f53595d, c14661a, i, canvas);
        }
    }

    public C14686o() {
        m10394a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    public C14686o(float f, float f2) {
        m10394a(f, f2);
    }

    /* renamed from: a */
    private void m10395a(float f) {
        float f2 = this.f53573e;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.f53571c;
        float f5 = this.f53572d;
        C14690c c14690c = new C14690c(f4, f5, f4, f5);
        c14690c.f53590e = this.f53573e;
        c14690c.f53591f = f3;
        this.f53577i.add(new C14688a(c14690c));
        this.f53573e = f;
    }

    /* renamed from: a */
    private void m10389a(AbstractC14693f abstractC14693f, float f, float f2) {
        m10395a(f);
        this.f53577i.add(abstractC14693f);
        this.f53573e = f2;
    }

    /* renamed from: a */
    public final AbstractC14693f m10391a(Matrix matrix) {
        m10395a(this.f53574f);
        final Matrix matrix2 = new Matrix(matrix);
        final ArrayList arrayList = new ArrayList(this.f53577i);
        return new AbstractC14693f() { // from class: com.google.android.material.k.o.1
            @Override // com.google.android.material.p374k.C14686o.AbstractC14693f
            /* renamed from: a */
            public final void mo10377a(Matrix matrix3, C14661a c14661a, int i, Canvas canvas) {
                for (AbstractC14693f abstractC14693f : arrayList) {
                    abstractC14693f.mo10377a(matrix2, c14661a, i, canvas);
                }
            }
        };
    }

    /* renamed from: a */
    public final void m10394a(float f, float f2) {
        m10393a(f, f2, 270.0f, BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: a */
    public final void m10393a(float f, float f2, float f3, float f4) {
        this.f53569a = f;
        this.f53570b = f2;
        this.f53571c = f;
        this.f53572d = f2;
        this.f53573e = f3;
        this.f53574f = (f3 + f4) % 360.0f;
        this.f53576h.clear();
        this.f53577i.clear();
        this.f53575g = false;
    }

    /* renamed from: a */
    public final void m10392a(float f, float f2, float f3, float f4, float f5, float f6) {
        C14690c c14690c = new C14690c(f, f2, f3, f4);
        c14690c.f53590e = f5;
        c14690c.f53591f = f6;
        this.f53576h.add(c14690c);
        C14688a c14688a = new C14688a(c14690c);
        float f7 = f5 + f6;
        boolean z = f6 < BitmapDescriptorFactory.HUE_RED;
        float f8 = f5;
        if (z) {
            f8 = (f5 + 180.0f) % 360.0f;
        }
        m10389a(c14688a, f8, z ? (180.0f + f7) % 360.0f : f7);
        double d = f7;
        this.f53571c = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d))));
        this.f53572d = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d))));
    }

    /* renamed from: a */
    public final void m10390a(Matrix matrix, Path path) {
        int size = this.f53576h.size();
        for (int i = 0; i < size; i++) {
            this.f53576h.get(i).mo10378a(matrix, path);
        }
    }

    /* renamed from: b */
    public final void m10388b(float f, float f2) {
        C14691d c14691d = new C14691d();
        c14691d.f53592a = f;
        c14691d.f53593b = f2;
        this.f53576h.add(c14691d);
        C14689b c14689b = new C14689b(c14691d, this.f53571c, this.f53572d);
        m10389a(c14689b, c14689b.m10387a() + 270.0f, c14689b.m10387a() + 270.0f);
        this.f53571c = f;
        this.f53572d = f2;
    }
}
