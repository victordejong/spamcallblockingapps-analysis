package com.google.android.material.p159q;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.p158p.C4728a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.q.m */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/m.class */
public class C4750m {
    @Deprecated

    /* renamed from: a */
    public float f20550a;
    @Deprecated

    /* renamed from: b */
    public float f20551b;
    @Deprecated

    /* renamed from: c */
    public float f20552c;
    @Deprecated

    /* renamed from: d */
    public float f20553d;
    @Deprecated

    /* renamed from: e */
    public float f20554e;
    @Deprecated

    /* renamed from: f */
    public float f20555f;

    /* renamed from: g */
    private final List<AbstractC4756e> f20556g = new ArrayList();

    /* renamed from: h */
    private final List<AbstractC4757f> f20557h = new ArrayList();

    /* renamed from: com.google.android.material.q.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$a.class */
    public static class C4752a extends AbstractC4757f {

        /* renamed from: a */
        private final C4754c f20561a;

        public C4752a(C4754c c4754c) {
            this.f20561a = c4754c;
        }

        @Override // com.google.android.material.p159q.C4750m.AbstractC4757f
        /* renamed from: a */
        public void mo2562a(Matrix matrix, C4728a c4728a, int i, Canvas canvas) {
            c4728a.m2752a(canvas, matrix, new RectF(this.f20561a.m2587a(), this.f20561a.m2583b(), this.f20561a.m2579c(), this.f20561a.m2576d()), i, this.f20561a.m2573e(), this.f20561a.m2570f());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.q.m$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$b.class */
    public static class C4753b extends AbstractC4757f {

        /* renamed from: a */
        private final C4755d f20562a;

        /* renamed from: b */
        private final float f20563b;

        /* renamed from: c */
        private final float f20564c;

        public C4753b(C4755d c4755d, float f, float f2) {
            this.f20562a = c4755d;
            this.f20563b = f;
            this.f20564c = f2;
        }

        /* renamed from: a */
        float m2588a() {
            return (float) Math.toDegrees(Math.atan((this.f20562a.f20573b - this.f20564c) / (this.f20562a.f20572a - this.f20563b)));
        }

        @Override // com.google.android.material.p159q.C4750m.AbstractC4757f
        /* renamed from: a */
        public void mo2562a(Matrix matrix, C4728a c4728a, int i, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f20562a.f20573b - this.f20564c, this.f20562a.f20572a - this.f20563b), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f20563b, this.f20564c);
            matrix2.preRotate(m2588a());
            c4728a.m2753a(canvas, matrix2, rectF, i);
        }
    }

    /* renamed from: com.google.android.material.q.m$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$c.class */
    public static class C4754c extends AbstractC4756e {

        /* renamed from: h */
        private static final RectF f20565h = new RectF();
        @Deprecated

        /* renamed from: a */
        public float f20566a;
        @Deprecated

        /* renamed from: b */
        public float f20567b;
        @Deprecated

        /* renamed from: c */
        public float f20568c;
        @Deprecated

        /* renamed from: d */
        public float f20569d;
        @Deprecated

        /* renamed from: e */
        public float f20570e;
        @Deprecated

        /* renamed from: f */
        public float f20571f;

        public C4754c(float f, float f2, float f3, float f4) {
            m2586a(f);
            m2582b(f2);
            m2578c(f3);
            m2575d(f4);
        }

        /* renamed from: a */
        public float m2587a() {
            return this.f20566a;
        }

        /* renamed from: a */
        private void m2586a(float f) {
            this.f20566a = f;
        }

        /* renamed from: b */
        public float m2583b() {
            return this.f20567b;
        }

        /* renamed from: b */
        private void m2582b(float f) {
            this.f20567b = f;
        }

        /* renamed from: c */
        public float m2579c() {
            return this.f20568c;
        }

        /* renamed from: c */
        private void m2578c(float f) {
            this.f20568c = f;
        }

        /* renamed from: d */
        public float m2576d() {
            return this.f20569d;
        }

        /* renamed from: d */
        private void m2575d(float f) {
            this.f20569d = f;
        }

        /* renamed from: e */
        public float m2573e() {
            return this.f20570e;
        }

        /* renamed from: e */
        public void m2572e(float f) {
            this.f20570e = f;
        }

        /* renamed from: f */
        public float m2570f() {
            return this.f20571f;
        }

        /* renamed from: f */
        public void m2569f(float f) {
            this.f20571f = f;
        }

        @Override // com.google.android.material.p159q.C4750m.AbstractC4756e
        /* renamed from: a */
        public void mo2563a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f20574g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f20565h.set(m2587a(), m2583b(), m2579c(), m2576d());
            path.arcTo(f20565h, m2573e(), m2570f(), false);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.q.m$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$d.class */
    public static class C4755d extends AbstractC4756e {

        /* renamed from: a */
        private float f20572a;

        /* renamed from: b */
        private float f20573b;

        @Override // com.google.android.material.p159q.C4750m.AbstractC4756e
        /* renamed from: a */
        public void mo2563a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f20574g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f20572a, this.f20573b);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.q.m$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$e.class */
    public static abstract class AbstractC4756e {

        /* renamed from: g */
        protected final Matrix f20574g = new Matrix();

        /* renamed from: a */
        public abstract void mo2563a(Matrix matrix, Path path);
    }

    /* renamed from: com.google.android.material.q.m$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/m$f.class */
    public static abstract class AbstractC4757f {

        /* renamed from: d */
        static final Matrix f20575d = new Matrix();

        AbstractC4757f() {
        }

        /* renamed from: a */
        public abstract void mo2562a(Matrix matrix, C4728a c4728a, int i, Canvas canvas);

        /* renamed from: a */
        public final void m2561a(C4728a c4728a, int i, Canvas canvas) {
            mo2562a(f20575d, c4728a, i, canvas);
        }
    }

    public C4750m() {
        m2606a(0.0f, 0.0f);
    }

    /* renamed from: a */
    private void m2607a(float f) {
        if (m2593e() == f) {
            return;
        }
        float m2593e = ((f - m2593e()) + 360.0f) % 360.0f;
        if (m2593e > 180.0f) {
            return;
        }
        C4754c c4754c = new C4754c(m2597c(), m2595d(), m2597c(), m2595d());
        c4754c.m2572e(m2593e());
        c4754c.m2569f(m2593e);
        this.f20557h.add(new C4752a(c4754c));
        m2590f(f);
    }

    /* renamed from: a */
    private void m2601a(AbstractC4757f abstractC4757f, float f, float f2) {
        m2607a(f);
        this.f20557h.add(abstractC4757f);
        m2590f(f2);
    }

    /* renamed from: b */
    private void m2599b(float f) {
        this.f20550a = f;
    }

    /* renamed from: c */
    private void m2596c(float f) {
        this.f20551b = f;
    }

    /* renamed from: d */
    private void m2594d(float f) {
        this.f20552c = f;
    }

    /* renamed from: e */
    private float m2593e() {
        return this.f20554e;
    }

    /* renamed from: e */
    private void m2592e(float f) {
        this.f20553d = f;
    }

    /* renamed from: f */
    private float m2591f() {
        return this.f20555f;
    }

    /* renamed from: f */
    private void m2590f(float f) {
        this.f20554e = f;
    }

    /* renamed from: g */
    private void m2589g(float f) {
        this.f20555f = f;
    }

    /* renamed from: a */
    public float m2608a() {
        return this.f20550a;
    }

    /* renamed from: a */
    public AbstractC4757f m2603a(final Matrix matrix) {
        m2607a(m2591f());
        final ArrayList arrayList = new ArrayList(this.f20557h);
        return new AbstractC4757f() { // from class: com.google.android.material.q.m.1
            @Override // com.google.android.material.p159q.C4750m.AbstractC4757f
            /* renamed from: a */
            public void mo2562a(Matrix matrix2, C4728a c4728a, int i, Canvas canvas) {
                for (AbstractC4757f abstractC4757f : arrayList) {
                    abstractC4757f.mo2562a(matrix, c4728a, i, canvas);
                }
            }
        };
    }

    /* renamed from: a */
    public void m2606a(float f, float f2) {
        m2605a(f, f2, 270.0f, 0.0f);
    }

    /* renamed from: a */
    public void m2605a(float f, float f2, float f3, float f4) {
        m2599b(f);
        m2596c(f2);
        m2594d(f);
        m2592e(f2);
        m2590f(f3);
        m2589g((f3 + f4) % 360.0f);
        this.f20556g.clear();
        this.f20557h.clear();
    }

    /* renamed from: a */
    public void m2604a(float f, float f2, float f3, float f4, float f5, float f6) {
        C4754c c4754c = new C4754c(f, f2, f3, f4);
        c4754c.m2572e(f5);
        c4754c.m2569f(f6);
        this.f20556g.add(c4754c);
        C4752a c4752a = new C4752a(c4754c);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        float f8 = z ? (180.0f + f5) % 360.0f : f5;
        float f9 = f7;
        if (z) {
            f9 = (f7 + 180.0f) % 360.0f;
        }
        m2601a(c4752a, f8, f9);
        m2594d(((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(f5 + f6)))));
        m2592e(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(f5 + f6)))));
    }

    /* renamed from: a */
    public void m2602a(Matrix matrix, Path path) {
        int size = this.f20556g.size();
        for (int i = 0; i < size; i++) {
            this.f20556g.get(i).mo2563a(matrix, path);
        }
    }

    /* renamed from: b */
    public float m2600b() {
        return this.f20551b;
    }

    /* renamed from: b */
    public void m2598b(float f, float f2) {
        C4755d c4755d = new C4755d();
        c4755d.f20572a = f;
        c4755d.f20573b = f2;
        this.f20556g.add(c4755d);
        C4753b c4753b = new C4753b(c4755d, m2597c(), m2595d());
        m2601a(c4753b, c4753b.m2588a() + 270.0f, c4753b.m2588a() + 270.0f);
        m2594d(f);
        m2592e(f2);
    }

    /* renamed from: c */
    public float m2597c() {
        return this.f20552c;
    }

    /* renamed from: d */
    public float m2595d() {
        return this.f20553d;
    }
}
