package p078c.p084c.p085a.p096b.p108x;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
/* renamed from: c.c.a.b.x.n */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/n.class */
public class C1950n {

    /* renamed from: a */
    private final C1954o[] f6983a = new C1954o[4];

    /* renamed from: b */
    private final Matrix[] f6984b = new Matrix[4];

    /* renamed from: c */
    private final Matrix[] f6985c = new Matrix[4];

    /* renamed from: d */
    private final PointF f6986d = new PointF();

    /* renamed from: e */
    private final Path f6987e = new Path();

    /* renamed from: f */
    private final Path f6988f = new Path();

    /* renamed from: g */
    private final C1954o f6989g = new C1954o();

    /* renamed from: h */
    private final float[] f6990h = new float[2];

    /* renamed from: i */
    private final float[] f6991i = new float[2];

    /* renamed from: j */
    private final Path f6992j = new Path();

    /* renamed from: k */
    private final Path f6993k = new Path();

    /* renamed from: l */
    private boolean f6994l = true;

    /* renamed from: c.c.a.b.x.n$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/n$a.class */
    public static class C1951a {

        /* renamed from: a */
        static final C1950n f6995a = new C1950n();
    }

    /* renamed from: c.c.a.b.x.n$b */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/n$b.class */
    public interface AbstractC1952b {
        /* renamed from: a */
        void mo28499a(C1954o c1954o, Matrix matrix, int i);

        /* renamed from: b */
        void mo28498b(C1954o c1954o, Matrix matrix, int i);
    }

    /* renamed from: c.c.a.b.x.n$c */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/n$c.class */
    public static final class C1953c {

        /* renamed from: a */
        public final C1946m f6996a;

        /* renamed from: b */
        public final Path f6997b;

        /* renamed from: c */
        public final RectF f6998c;

        /* renamed from: d */
        public final AbstractC1952b f6999d;

        /* renamed from: e */
        public final float f7000e;

        C1953c(C1946m c1946m, float f, RectF rectF, AbstractC1952b abstractC1952b, Path path) {
            this.f6999d = abstractC1952b;
            this.f6996a = c1946m;
            this.f7000e = f;
            this.f6998c = rectF;
            this.f6997b = path;
        }
    }

    public C1950n() {
        for (int i = 0; i < 4; i++) {
            this.f6983a[i] = new C1954o();
            this.f6984b[i] = new Matrix();
            this.f6985c[i] = new Matrix();
        }
    }

    /* renamed from: a */
    private float m28513a(int i) {
        return (i + 1) * 90;
    }

    /* renamed from: b */
    private void m28512b(C1953c c1953c, int i) {
        this.f6990h[0] = this.f6983a[i].m28487k();
        this.f6990h[1] = this.f6983a[i].m28486l();
        this.f6984b[i].mapPoints(this.f6990h);
        if (i == 0) {
            Path path = c1953c.f6997b;
            float[] fArr = this.f6990h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = c1953c.f6997b;
            float[] fArr2 = this.f6990h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f6983a[i].m28494d(this.f6984b[i], c1953c.f6997b);
        AbstractC1952b abstractC1952b = c1953c.f6999d;
        if (abstractC1952b != null) {
            abstractC1952b.mo28499a(this.f6983a[i], this.f6984b[i], i);
        }
    }

    /* renamed from: c */
    private void m28511c(C1953c c1953c, int i) {
        int i2 = (i + 1) % 4;
        this.f6990h[0] = this.f6983a[i].m28489i();
        this.f6990h[1] = this.f6983a[i].m28488j();
        this.f6984b[i].mapPoints(this.f6990h);
        this.f6991i[0] = this.f6983a[i2].m28487k();
        this.f6991i[1] = this.f6983a[i2].m28486l();
        this.f6984b[i2].mapPoints(this.f6991i);
        float[] fArr = this.f6990h;
        float f = fArr[0];
        float[] fArr2 = this.f6991i;
        float max = Math.max(((float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float m28505i = m28505i(c1953c.f6998c, i);
        this.f6989g.m28484n(0.0f, 0.0f);
        C1936f m28504j = m28504j(i, c1953c.f6996a);
        m28504j.mo5514b(max, m28505i, c1953c.f7000e, this.f6989g);
        this.f6992j.reset();
        this.f6989g.m28494d(this.f6985c[i], this.f6992j);
        if (!this.f6994l || Build.VERSION.SDK_INT < 19 || (!m28504j.mo28578a() && !m28502l(this.f6992j, i) && !m28502l(this.f6992j, i2))) {
            this.f6989g.m28494d(this.f6985c[i], c1953c.f6997b);
        } else {
            Path path = this.f6992j;
            path.op(path, this.f6988f, Path.Op.DIFFERENCE);
            this.f6990h[0] = this.f6989g.m28487k();
            this.f6990h[1] = this.f6989g.m28486l();
            this.f6985c[i].mapPoints(this.f6990h);
            Path path2 = this.f6987e;
            float[] fArr3 = this.f6990h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f6989g.m28494d(this.f6985c[i], this.f6987e);
        }
        AbstractC1952b abstractC1952b = c1953c.f6999d;
        if (abstractC1952b != null) {
            abstractC1952b.mo28498b(this.f6989g, this.f6985c[i], i);
        }
    }

    /* renamed from: f */
    private void m28508f(int i, RectF rectF, PointF pointF) {
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

    /* renamed from: g */
    private AbstractC1933c m28507g(int i, C1946m c1946m) {
        return i != 1 ? i != 2 ? i != 3 ? c1946m.m28556t() : c1946m.m28558r() : c1946m.m28566j() : c1946m.m28564l();
    }

    /* renamed from: h */
    private C1934d m28506h(int i, C1946m c1946m) {
        return i != 1 ? i != 2 ? i != 3 ? c1946m.m28557s() : c1946m.m28559q() : c1946m.m28567i() : c1946m.m28565k();
    }

    /* renamed from: i */
    private float m28505i(RectF rectF, int i) {
        float[] fArr = this.f6990h;
        C1954o[] c1954oArr = this.f6983a;
        fArr[0] = c1954oArr[i].f7003c;
        fArr[1] = c1954oArr[i].f7004d;
        this.f6984b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f6990h[0]) : Math.abs(rectF.centerY() - this.f6990h[1]);
    }

    /* renamed from: j */
    private C1936f m28504j(int i, C1946m c1946m) {
        return i != 1 ? i != 2 ? i != 3 ? c1946m.m28561o() : c1946m.m28560p() : c1946m.m28562n() : c1946m.m28568h();
    }

    /* renamed from: k */
    public static C1950n m28503k() {
        return C1951a.f6995a;
    }

    /* renamed from: l */
    private boolean m28502l(Path path, int i) {
        this.f6993k.reset();
        this.f6983a[i].m28494d(this.f6984b[i], this.f6993k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f6993k.computeBounds(rectF, true);
        path.op(this.f6993k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        boolean z = true;
        if (rectF.isEmpty()) {
            z = rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return z;
    }

    /* renamed from: m */
    private void m28501m(C1953c c1953c, int i) {
        m28506h(i, c1953c.f6996a).m28652b(this.f6983a[i], 90.0f, c1953c.f7000e, c1953c.f6998c, m28507g(i, c1953c.f6996a));
        float m28513a = m28513a(i);
        this.f6984b[i].reset();
        m28508f(i, c1953c.f6998c, this.f6986d);
        Matrix matrix = this.f6984b[i];
        PointF pointF = this.f6986d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f6984b[i].preRotate(m28513a);
    }

    /* renamed from: n */
    private void m28500n(int i) {
        this.f6990h[0] = this.f6983a[i].m28489i();
        this.f6990h[1] = this.f6983a[i].m28488j();
        this.f6984b[i].mapPoints(this.f6990h);
        float m28513a = m28513a(i);
        this.f6985c[i].reset();
        Matrix matrix = this.f6985c[i];
        float[] fArr = this.f6990h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f6985c[i].preRotate(m28513a);
    }

    /* renamed from: d */
    public void m28510d(C1946m c1946m, float f, RectF rectF, Path path) {
        m28509e(c1946m, f, rectF, null, path);
    }

    /* renamed from: e */
    public void m28509e(C1946m c1946m, float f, RectF rectF, AbstractC1952b abstractC1952b, Path path) {
        int i;
        path.rewind();
        this.f6987e.rewind();
        this.f6988f.rewind();
        this.f6988f.addRect(rectF, Path.Direction.CW);
        C1953c c1953c = new C1953c(c1946m, f, rectF, abstractC1952b, path);
        int i2 = 0;
        while (true) {
            if (i2 < 4) {
                m28501m(c1953c, i2);
                m28500n(i2);
                i2++;
            }
        }
        for (i = 0; i < 4; i++) {
            m28512b(c1953c, i);
            m28511c(c1953c, i);
        }
        path.close();
        this.f6987e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f6987e.isEmpty()) {
            return;
        }
        path.op(this.f6987e, Path.Op.UNION);
    }
}
