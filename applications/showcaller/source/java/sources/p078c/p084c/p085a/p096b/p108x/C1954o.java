package p078c.p084c.p085a.p096b.p108x;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import p078c.p084c.p085a.p096b.p107w.C1929a;
/* renamed from: c.c.a.b.x.o */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o.class */
public class C1954o {
    @Deprecated

    /* renamed from: a */
    public float f7001a;
    @Deprecated

    /* renamed from: b */
    public float f7002b;
    @Deprecated

    /* renamed from: c */
    public float f7003c;
    @Deprecated

    /* renamed from: d */
    public float f7004d;
    @Deprecated

    /* renamed from: e */
    public float f7005e;
    @Deprecated

    /* renamed from: f */
    public float f7006f;

    /* renamed from: g */
    private final List<AbstractC1960f> f7007g = new ArrayList();

    /* renamed from: h */
    private final List<AbstractC1961g> f7008h = new ArrayList();

    /* renamed from: i */
    private boolean f7009i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.c.a.b.x.o$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$a.class */
    public class C1955a extends AbstractC1961g {

        /* renamed from: b */
        final /* synthetic */ List f7010b;

        /* renamed from: c */
        final /* synthetic */ Matrix f7011c;

        C1955a(List list, Matrix matrix) {
            C1954o.this = r4;
            this.f7010b = list;
            this.f7011c = matrix;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1954o.AbstractC1961g
        /* renamed from: a */
        public void mo28450a(Matrix matrix, C1929a c1929a, int i, Canvas canvas) {
            for (AbstractC1961g abstractC1961g : this.f7010b) {
                abstractC1961g.mo28450a(this.f7011c, c1929a, i, canvas);
            }
        }
    }

    /* renamed from: c.c.a.b.x.o$b */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$b.class */
    public static class C1956b extends AbstractC1961g {

        /* renamed from: b */
        private final C1958d f7013b;

        public C1956b(C1958d c1958d) {
            this.f7013b = c1958d;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1954o.AbstractC1961g
        /* renamed from: a */
        public void mo28450a(Matrix matrix, C1929a c1929a, int i, Canvas canvas) {
            c1929a.m28656a(canvas, matrix, new RectF(this.f7013b.m28466k(), this.f7013b.m28462o(), this.f7013b.m28465l(), this.f7013b.m28467j()), i, this.f7013b.m28464m(), this.f7013b.m28463n());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.c.a.b.x.o$c */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$c.class */
    public static class C1957c extends AbstractC1961g {

        /* renamed from: b */
        private final C1959e f7014b;

        /* renamed from: c */
        private final float f7015c;

        /* renamed from: d */
        private final float f7016d;

        public C1957c(C1959e c1959e, float f, float f2) {
            this.f7014b = c1959e;
            this.f7015c = f;
            this.f7016d = f2;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1954o.AbstractC1961g
        /* renamed from: a */
        public void mo28450a(Matrix matrix, C1929a c1929a, int i, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f7014b.f7025c - this.f7016d, this.f7014b.f7024b - this.f7015c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f7015c, this.f7016d);
            matrix2.preRotate(m28476c());
            c1929a.m28655b(canvas, matrix2, rectF, i);
        }

        /* renamed from: c */
        float m28476c() {
            return (float) Math.toDegrees(Math.atan((this.f7014b.f7025c - this.f7016d) / (this.f7014b.f7024b - this.f7015c)));
        }
    }

    /* renamed from: c.c.a.b.x.o$d */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$d.class */
    public static class C1958d extends AbstractC1960f {

        /* renamed from: b */
        private static final RectF f7017b = new RectF();
        @Deprecated

        /* renamed from: c */
        public float f7018c;
        @Deprecated

        /* renamed from: d */
        public float f7019d;
        @Deprecated

        /* renamed from: e */
        public float f7020e;
        @Deprecated

        /* renamed from: f */
        public float f7021f;
        @Deprecated

        /* renamed from: g */
        public float f7022g;
        @Deprecated

        /* renamed from: h */
        public float f7023h;

        public C1958d(float f, float f2, float f3, float f4) {
            m28460q(f);
            m28456u(f2);
            m28459r(f3);
            m28461p(f4);
        }

        /* renamed from: j */
        public float m28467j() {
            return this.f7021f;
        }

        /* renamed from: k */
        public float m28466k() {
            return this.f7018c;
        }

        /* renamed from: l */
        public float m28465l() {
            return this.f7020e;
        }

        /* renamed from: m */
        public float m28464m() {
            return this.f7022g;
        }

        /* renamed from: n */
        public float m28463n() {
            return this.f7023h;
        }

        /* renamed from: o */
        public float m28462o() {
            return this.f7019d;
        }

        /* renamed from: p */
        private void m28461p(float f) {
            this.f7021f = f;
        }

        /* renamed from: q */
        private void m28460q(float f) {
            this.f7018c = f;
        }

        /* renamed from: r */
        private void m28459r(float f) {
            this.f7020e = f;
        }

        /* renamed from: s */
        public void m28458s(float f) {
            this.f7022g = f;
        }

        /* renamed from: t */
        public void m28457t(float f) {
            this.f7023h = f;
        }

        /* renamed from: u */
        private void m28456u(float f) {
            this.f7019d = f;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1954o.AbstractC1960f
        /* renamed from: a */
        public void mo28451a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f7026a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f7017b;
            rectF.set(m28466k(), m28462o(), m28465l(), m28467j());
            path.arcTo(rectF, m28464m(), m28463n(), false);
            path.transform(matrix);
        }
    }

    /* renamed from: c.c.a.b.x.o$e */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$e.class */
    public static class C1959e extends AbstractC1960f {

        /* renamed from: b */
        private float f7024b;

        /* renamed from: c */
        private float f7025c;

        @Override // p078c.p084c.p085a.p096b.p108x.C1954o.AbstractC1960f
        /* renamed from: a */
        public void mo28451a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f7026a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f7024b, this.f7025c);
            path.transform(matrix);
        }
    }

    /* renamed from: c.c.a.b.x.o$f */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$f.class */
    public static abstract class AbstractC1960f {

        /* renamed from: a */
        protected final Matrix f7026a = new Matrix();

        /* renamed from: a */
        public abstract void mo28451a(Matrix matrix, Path path);
    }

    /* renamed from: c.c.a.b.x.o$g */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/o$g.class */
    public static abstract class AbstractC1961g {

        /* renamed from: a */
        static final Matrix f7027a = new Matrix();

        AbstractC1961g() {
        }

        /* renamed from: a */
        public abstract void mo28450a(Matrix matrix, C1929a c1929a, int i, Canvas canvas);

        /* renamed from: b */
        public final void m28449b(C1929a c1929a, int i, Canvas canvas) {
            mo28450a(f7027a, c1929a, i, canvas);
        }
    }

    public C1954o() {
        m28484n(0.0f, 0.0f);
    }

    /* renamed from: b */
    private void m28496b(float f) {
        if (m28491g() == f) {
            return;
        }
        float m28491g = ((f - m28491g()) + 360.0f) % 360.0f;
        if (m28491g > 180.0f) {
            return;
        }
        C1958d c1958d = new C1958d(m28489i(), m28488j(), m28489i(), m28488j());
        c1958d.m28458s(m28491g());
        c1958d.m28457t(m28491g);
        this.f7008h.add(new C1956b(c1958d));
        m28482p(f);
    }

    /* renamed from: c */
    private void m28495c(AbstractC1961g abstractC1961g, float f, float f2) {
        m28496b(f);
        this.f7008h.add(abstractC1961g);
        m28482p(f2);
    }

    /* renamed from: g */
    private float m28491g() {
        return this.f7005e;
    }

    /* renamed from: h */
    private float m28490h() {
        return this.f7006f;
    }

    /* renamed from: p */
    private void m28482p(float f) {
        this.f7005e = f;
    }

    /* renamed from: q */
    private void m28481q(float f) {
        this.f7006f = f;
    }

    /* renamed from: r */
    private void m28480r(float f) {
        this.f7003c = f;
    }

    /* renamed from: s */
    private void m28479s(float f) {
        this.f7004d = f;
    }

    /* renamed from: t */
    private void m28478t(float f) {
        this.f7001a = f;
    }

    /* renamed from: u */
    private void m28477u(float f) {
        this.f7002b = f;
    }

    /* renamed from: a */
    public void m28497a(float f, float f2, float f3, float f4, float f5, float f6) {
        C1958d c1958d = new C1958d(f, f2, f3, f4);
        c1958d.m28458s(f5);
        c1958d.m28457t(f6);
        this.f7007g.add(c1958d);
        C1956b c1956b = new C1956b(c1958d);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        float f8 = f5;
        if (z) {
            f8 = (f5 + 180.0f) % 360.0f;
        }
        m28495c(c1956b, f8, z ? (180.0f + f7) % 360.0f : f7);
        double d = f7;
        m28480r(((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))));
        m28479s(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))));
    }

    /* renamed from: d */
    public void m28494d(Matrix matrix, Path path) {
        int size = this.f7007g.size();
        for (int i = 0; i < size; i++) {
            this.f7007g.get(i).mo28451a(matrix, path);
        }
    }

    /* renamed from: e */
    public boolean m28493e() {
        return this.f7009i;
    }

    /* renamed from: f */
    public AbstractC1961g m28492f(Matrix matrix) {
        m28496b(m28490h());
        return new C1955a(new ArrayList(this.f7008h), new Matrix(matrix));
    }

    /* renamed from: i */
    public float m28489i() {
        return this.f7003c;
    }

    /* renamed from: j */
    public float m28488j() {
        return this.f7004d;
    }

    /* renamed from: k */
    public float m28487k() {
        return this.f7001a;
    }

    /* renamed from: l */
    public float m28486l() {
        return this.f7002b;
    }

    /* renamed from: m */
    public void m28485m(float f, float f2) {
        C1959e c1959e = new C1959e();
        c1959e.f7024b = f;
        c1959e.f7025c = f2;
        this.f7007g.add(c1959e);
        C1957c c1957c = new C1957c(c1959e, m28489i(), m28488j());
        m28495c(c1957c, c1957c.m28476c() + 270.0f, c1957c.m28476c() + 270.0f);
        m28480r(f);
        m28479s(f2);
    }

    /* renamed from: n */
    public void m28484n(float f, float f2) {
        m28483o(f, f2, 270.0f, 0.0f);
    }

    /* renamed from: o */
    public void m28483o(float f, float f2, float f3, float f4) {
        m28478t(f);
        m28477u(f2);
        m28480r(f);
        m28479s(f2);
        m28482p(f3);
        m28481q((f3 + f4) % 360.0f);
        this.f7007g.clear();
        this.f7008h.clear();
        this.f7009i = false;
    }
}
