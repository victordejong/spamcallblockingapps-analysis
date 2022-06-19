package com.google.android.material.p374k;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.material.k.n */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n.class */
public final class C14682n {

    /* renamed from: a */
    private final C14686o[] f53551a = new C14686o[4];

    /* renamed from: b */
    private final Matrix[] f53552b = new Matrix[4];

    /* renamed from: c */
    private final Matrix[] f53553c = new Matrix[4];

    /* renamed from: d */
    private final PointF f53554d = new PointF();

    /* renamed from: e */
    private final Path f53555e = new Path();

    /* renamed from: f */
    private final Path f53556f = new Path();

    /* renamed from: g */
    private final C14686o f53557g = new C14686o();

    /* renamed from: h */
    private final float[] f53558h = new float[2];

    /* renamed from: i */
    private final float[] f53559i = new float[2];

    /* renamed from: j */
    private final Path f53560j = new Path();

    /* renamed from: k */
    private final Path f53561k = new Path();

    /* renamed from: l */
    private boolean f53562l = true;

    /* renamed from: com.google.android.material.k.n$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$a.class */
    public static final class C14683a {

        /* renamed from: a */
        public static final C14682n f53563a = new C14682n();

        private C14683a() {
        }
    }

    /* renamed from: com.google.android.material.k.n$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$b.class */
    public interface AbstractC14684b {
        /* renamed from: a */
        void mo10397a(C14686o c14686o, Matrix matrix, int i);

        /* renamed from: b */
        void mo10396b(C14686o c14686o, Matrix matrix, int i);
    }

    /* renamed from: com.google.android.material.k.n$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$c.class */
    public static final class C14685c {

        /* renamed from: a */
        public final C14678m f53564a;

        /* renamed from: b */
        public final Path f53565b;

        /* renamed from: c */
        public final RectF f53566c;

        /* renamed from: d */
        public final AbstractC14684b f53567d;

        /* renamed from: e */
        public final float f53568e;

        C14685c(C14678m c14678m, float f, RectF rectF, AbstractC14684b abstractC14684b, Path path) {
            this.f53567d = abstractC14684b;
            this.f53564a = c14678m;
            this.f53568e = f;
            this.f53566c = rectF;
            this.f53565b = path;
        }
    }

    public C14682n() {
        for (int i = 0; i < 4; i++) {
            this.f53551a[i] = new C14686o();
            this.f53552b[i] = new Matrix();
            this.f53553c[i] = new Matrix();
        }
    }

    /* renamed from: a */
    private float m10405a(RectF rectF, int i) {
        this.f53558h[0] = this.f53551a[i].f53571c;
        this.f53558h[1] = this.f53551a[i].f53572d;
        this.f53552b[i].mapPoints(this.f53558h);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f53558h[0]) : Math.abs(rectF.centerY() - this.f53558h[1]);
    }

    /* renamed from: a */
    private static C14666d m10407a(int i, C14678m c14678m) {
        return i != 1 ? i != 2 ? i != 3 ? c14678m.f53528c : c14678m.f53527b : c14678m.f53530e : c14678m.f53529d;
    }

    /* renamed from: a */
    private void m10409a(int i) {
        this.f53558h[0] = this.f53551a[i].f53571c;
        this.f53558h[1] = this.f53551a[i].f53572d;
        this.f53552b[i].mapPoints(this.f53558h);
        this.f53553c[i].reset();
        Matrix matrix = this.f53553c[i];
        float[] fArr = this.f53558h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f53553c[i].preRotate((i + 1) * 90);
    }

    /* renamed from: a */
    private static void m10408a(int i, RectF rectF, PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
        } else if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    /* renamed from: a */
    private void m10402a(C14685c c14685c, int i) {
        m10407a(i, c14685c.f53564a).m10484a(this.f53551a[i], c14685c.f53568e, c14685c.f53566c, m10401b(i, c14685c.f53564a));
        this.f53552b[i].reset();
        m10408a(i, c14685c.f53566c, this.f53554d);
        this.f53552b[i].setTranslate(this.f53554d.x, this.f53554d.y);
        this.f53552b[i].preRotate((i + 1) * 90);
    }

    /* renamed from: a */
    private boolean m10406a(Path path, int i) {
        this.f53561k.reset();
        this.f53551a[i].m10390a(this.f53552b[i], this.f53561k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f53561k.computeBounds(rectF, true);
        path.op(this.f53561k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    /* renamed from: b */
    private static AbstractC14665c m10401b(int i, C14678m c14678m) {
        return i != 1 ? i != 2 ? i != 3 ? c14678m.f53532g : c14678m.f53531f : c14678m.f53534i : c14678m.f53533h;
    }

    /* renamed from: b */
    private void m10400b(C14685c c14685c, int i) {
        this.f53558h[0] = this.f53551a[i].f53569a;
        this.f53558h[1] = this.f53551a[i].f53570b;
        this.f53552b[i].mapPoints(this.f53558h);
        if (i == 0) {
            Path path = c14685c.f53565b;
            float[] fArr = this.f53558h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = c14685c.f53565b;
            float[] fArr2 = this.f53558h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f53551a[i].m10390a(this.f53552b[i], c14685c.f53565b);
        if (c14685c.f53567d != null) {
            c14685c.f53567d.mo10397a(this.f53551a[i], this.f53552b[i], i);
        }
    }

    /* renamed from: c */
    private static C14668f m10399c(int i, C14678m c14678m) {
        return i != 1 ? i != 2 ? i != 3 ? c14678m.f53536k : c14678m.f53535j : c14678m.f53538m : c14678m.f53537l;
    }

    /* renamed from: c */
    private void m10398c(C14685c c14685c, int i) {
        int i2 = (i + 1) % 4;
        this.f53558h[0] = this.f53551a[i].f53571c;
        this.f53558h[1] = this.f53551a[i].f53572d;
        this.f53552b[i].mapPoints(this.f53558h);
        this.f53559i[0] = this.f53551a[i2].f53569a;
        this.f53559i[1] = this.f53551a[i2].f53570b;
        this.f53552b[i2].mapPoints(this.f53559i);
        float[] fArr = this.f53558h;
        float f = fArr[0];
        float[] fArr2 = this.f53559i;
        float max = Math.max(((float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, (float) BitmapDescriptorFactory.HUE_RED);
        float m10405a = m10405a(c14685c.f53566c, i);
        this.f53557g.m10394a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        C14668f m10399c = m10399c(i, c14685c.f53564a);
        m10399c.mo10433a(max, m10405a, c14685c.f53568e, this.f53557g);
        this.f53560j.reset();
        this.f53557g.m10390a(this.f53553c[i], this.f53560j);
        if (!this.f53562l || Build.VERSION.SDK_INT < 19 || (!m10399c.mo10434a() && !m10406a(this.f53560j, i) && !m10406a(this.f53560j, i2))) {
            this.f53557g.m10390a(this.f53553c[i], c14685c.f53565b);
        } else {
            Path path = this.f53560j;
            path.op(path, this.f53556f, Path.Op.DIFFERENCE);
            this.f53558h[0] = this.f53557g.f53569a;
            this.f53558h[1] = this.f53557g.f53570b;
            this.f53553c[i].mapPoints(this.f53558h);
            Path path2 = this.f53555e;
            float[] fArr3 = this.f53558h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f53557g.m10390a(this.f53553c[i], this.f53555e);
        }
        if (c14685c.f53567d != null) {
            c14685c.f53567d.mo10396b(this.f53557g, this.f53553c[i], i);
        }
    }

    /* renamed from: a */
    public final void m10404a(C14678m c14678m, float f, RectF rectF, Path path) {
        m10403a(c14678m, f, rectF, null, path);
    }

    /* renamed from: a */
    public final void m10403a(C14678m c14678m, float f, RectF rectF, AbstractC14684b abstractC14684b, Path path) {
        int i;
        path.rewind();
        this.f53555e.rewind();
        this.f53556f.rewind();
        this.f53556f.addRect(rectF, Path.Direction.CW);
        C14685c c14685c = new C14685c(c14678m, f, rectF, abstractC14684b, path);
        int i2 = 0;
        while (true) {
            if (i2 < 4) {
                m10402a(c14685c, i2);
                m10409a(i2);
                i2++;
            }
        }
        for (i = 0; i < 4; i++) {
            m10400b(c14685c, i);
            m10398c(c14685c, i);
        }
        path.close();
        this.f53555e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f53555e.isEmpty()) {
            return;
        }
        path.op(this.f53555e, Path.Op.UNION);
    }
}
