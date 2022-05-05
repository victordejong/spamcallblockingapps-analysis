package p081h.p203i.p204a.p294f.p313s;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.f.s.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/s/d.class */
public class C9258d {

    /* renamed from: a */
    public float f21245a;

    /* renamed from: b */
    public float f21246b;

    /* renamed from: c */
    public float f21247c;

    /* renamed from: d */
    public float f21248d;

    /* renamed from: e */
    public final List<AbstractC9261c> f21249e = new ArrayList();

    /* renamed from: h.i.a.f.s.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/s/d$a.class */
    public static class C9259a extends AbstractC9261c {

        /* renamed from: h */
        public static final RectF f21250h = new RectF();

        /* renamed from: b */
        public float f21251b;

        /* renamed from: c */
        public float f21252c;

        /* renamed from: d */
        public float f21253d;

        /* renamed from: e */
        public float f21254e;

        /* renamed from: f */
        public float f21255f;

        /* renamed from: g */
        public float f21256g;

        public C9259a(float f, float f2, float f3, float f4) {
            this.f21251b = f;
            this.f21252c = f2;
            this.f21253d = f3;
            this.f21254e = f4;
        }

        @Override // p081h.p203i.p204a.p294f.p313s.C9258d.AbstractC9261c
        /* renamed from: a */
        public void mo15573a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f21259a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f21250h.set(this.f21251b, this.f21252c, this.f21253d, this.f21254e);
            path.arcTo(f21250h, this.f21255f, this.f21256g, false);
            path.transform(matrix);
        }
    }

    /* renamed from: h.i.a.f.s.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/s/d$b.class */
    public static class C9260b extends AbstractC9261c {

        /* renamed from: b */
        public float f21257b;

        /* renamed from: c */
        public float f21258c;

        @Override // p081h.p203i.p204a.p294f.p313s.C9258d.AbstractC9261c
        /* renamed from: a */
        public void mo15573a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f21259a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f21257b, this.f21258c);
            path.transform(matrix);
        }
    }

    /* renamed from: h.i.a.f.s.d$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/s/d$c.class */
    public static abstract class AbstractC9261c {

        /* renamed from: a */
        public final Matrix f21259a = new Matrix();

        /* renamed from: a */
        public abstract void mo15573a(Matrix matrix, Path path);
    }

    public C9258d() {
        m15576b(0.0f, 0.0f);
    }

    /* renamed from: a */
    public void m15579a(float f, float f2) {
        C9260b bVar = new C9260b();
        bVar.f21257b = f;
        bVar.f21258c = f2;
        this.f21249e.add(bVar);
        this.f21247c = f;
        this.f21248d = f2;
    }

    /* renamed from: a */
    public void m15578a(float f, float f2, float f3, float f4, float f5, float f6) {
        C9259a aVar = new C9259a(f, f2, f3, f4);
        aVar.f21255f = f5;
        aVar.f21256g = f6;
        this.f21249e.add(aVar);
        double d = f5 + f6;
        this.f21247c = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d))));
        this.f21248d = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d))));
    }

    /* renamed from: a */
    public void m15577a(Matrix matrix, Path path) {
        int size = this.f21249e.size();
        for (int i = 0; i < size; i++) {
            this.f21249e.get(i).mo15573a(matrix, path);
        }
    }

    /* renamed from: b */
    public void m15576b(float f, float f2) {
        this.f21245a = f;
        this.f21246b = f2;
        this.f21247c = f;
        this.f21248d = f2;
        this.f21249e.clear();
    }
}
