package com.google.android.material.k;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final o[] f30699a = new o[4];

    /* renamed from: b  reason: collision with root package name */
    private final Matrix[] f30700b = new Matrix[4];

    /* renamed from: c  reason: collision with root package name */
    private final Matrix[] f30701c = new Matrix[4];

    /* renamed from: d  reason: collision with root package name */
    private final PointF f30702d = new PointF();
    private final Path e = new Path();
    private final Path f = new Path();
    private final o g = new o();
    private final float[] h = new float[2];
    private final float[] i = new float[2];
    private final Path j = new Path();
    private final Path k = new Path();
    private boolean l = true;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final n f30703a = new n();

        private a() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$b.class */
    public interface b {
        void a(o oVar, Matrix matrix, int i);

        void b(o oVar, Matrix matrix, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/n$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final m f30704a;

        /* renamed from: b  reason: collision with root package name */
        public final Path f30705b;

        /* renamed from: c  reason: collision with root package name */
        public final RectF f30706c;

        /* renamed from: d  reason: collision with root package name */
        public final b f30707d;
        public final float e;

        c(m mVar, float f, RectF rectF, b bVar, Path path) {
            this.f30707d = bVar;
            this.f30704a = mVar;
            this.e = f;
            this.f30706c = rectF;
            this.f30705b = path;
        }
    }

    public n() {
        for (int i = 0; i < 4; i++) {
            this.f30699a[i] = new o();
            this.f30700b[i] = new Matrix();
            this.f30701c[i] = new Matrix();
        }
    }

    private float a(RectF rectF, int i) {
        this.h[0] = this.f30699a[i].f30710c;
        this.h[1] = this.f30699a[i].f30711d;
        this.f30700b[i].mapPoints(this.h);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.h[0]) : Math.abs(rectF.centerY() - this.h[1]);
    }

    private static d a(int i, m mVar) {
        return i != 1 ? i != 2 ? i != 3 ? mVar.f30693c : mVar.f30692b : mVar.e : mVar.f30694d;
    }

    private void a(int i) {
        this.h[0] = this.f30699a[i].f30710c;
        this.h[1] = this.f30699a[i].f30711d;
        this.f30700b[i].mapPoints(this.h);
        this.f30701c[i].reset();
        Matrix matrix = this.f30701c[i];
        float[] fArr = this.h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f30701c[i].preRotate((i + 1) * 90);
    }

    private static void a(int i, RectF rectF, PointF pointF) {
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

    private void a(c cVar, int i) {
        a(i, cVar.f30704a).a(this.f30699a[i], cVar.e, cVar.f30706c, b(i, cVar.f30704a));
        this.f30700b[i].reset();
        a(i, cVar.f30706c, this.f30702d);
        this.f30700b[i].setTranslate(this.f30702d.x, this.f30702d.y);
        this.f30700b[i].preRotate((i + 1) * 90);
    }

    private boolean a(Path path, int i) {
        this.k.reset();
        this.f30699a[i].a(this.f30700b[i], this.k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.k.computeBounds(rectF, true);
        path.op(this.k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private static com.google.android.material.k.c b(int i, m mVar) {
        return i != 1 ? i != 2 ? i != 3 ? mVar.g : mVar.f : mVar.i : mVar.h;
    }

    private void b(c cVar, int i) {
        this.h[0] = this.f30699a[i].f30708a;
        this.h[1] = this.f30699a[i].f30709b;
        this.f30700b[i].mapPoints(this.h);
        if (i == 0) {
            Path path = cVar.f30705b;
            float[] fArr = this.h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f30705b;
            float[] fArr2 = this.h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f30699a[i].a(this.f30700b[i], cVar.f30705b);
        if (cVar.f30707d != null) {
            cVar.f30707d.a(this.f30699a[i], this.f30700b[i], i);
        }
    }

    private static f c(int i, m mVar) {
        return i != 1 ? i != 2 ? i != 3 ? mVar.k : mVar.j : mVar.m : mVar.l;
    }

    private void c(c cVar, int i) {
        int i2 = (i + 1) % 4;
        this.h[0] = this.f30699a[i].f30710c;
        this.h[1] = this.f30699a[i].f30711d;
        this.f30700b[i].mapPoints(this.h);
        this.i[0] = this.f30699a[i2].f30708a;
        this.i[1] = this.f30699a[i2].f30709b;
        this.f30700b[i2].mapPoints(this.i);
        float[] fArr = this.h;
        float f = fArr[0];
        float[] fArr2 = this.i;
        float max = Math.max(((float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, (float) BitmapDescriptorFactory.HUE_RED);
        float a2 = a(cVar.f30706c, i);
        this.g.a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        f c2 = c(i, cVar.f30704a);
        c2.a(max, a2, cVar.e, this.g);
        this.j.reset();
        this.g.a(this.f30701c[i], this.j);
        if (!this.l || Build.VERSION.SDK_INT < 19 || (!c2.a() && !a(this.j, i) && !a(this.j, i2))) {
            this.g.a(this.f30701c[i], cVar.f30705b);
        } else {
            Path path = this.j;
            path.op(path, this.f, Path.Op.DIFFERENCE);
            this.h[0] = this.g.f30708a;
            this.h[1] = this.g.f30709b;
            this.f30701c[i].mapPoints(this.h);
            Path path2 = this.e;
            float[] fArr3 = this.h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.g.a(this.f30701c[i], this.e);
        }
        if (cVar.f30707d != null) {
            cVar.f30707d.b(this.g, this.f30701c[i], i);
        }
    }

    public final void a(m mVar, float f, RectF rectF, Path path) {
        a(mVar, f, rectF, null, path);
    }

    public final void a(m mVar, float f, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.e.rewind();
        this.f.rewind();
        this.f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(mVar, f, rectF, bVar, path);
        for (int i = 0; i < 4; i++) {
            a(cVar, i);
            a(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            b(cVar, i2);
            c(cVar, i2);
        }
        path.close();
        this.e.close();
        if (Build.VERSION.SDK_INT >= 19 && !this.e.isEmpty()) {
            path.op(this.e, Path.Op.UNION);
        }
    }
}
