package com.google.android.material.p159q;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
/* renamed from: com.google.android.material.q.l */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/l.class */
public class C4747l {

    /* renamed from: a */
    private final C4750m[] f20538a = new C4750m[4];

    /* renamed from: b */
    private final Matrix[] f20539b = new Matrix[4];

    /* renamed from: c */
    private final Matrix[] f20540c = new Matrix[4];

    /* renamed from: d */
    private final PointF f20541d = new PointF();

    /* renamed from: e */
    private final C4750m f20542e = new C4750m();

    /* renamed from: f */
    private final float[] f20543f = new float[2];

    /* renamed from: g */
    private final float[] f20544g = new float[2];

    /* renamed from: com.google.android.material.q.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/l$a.class */
    public interface AbstractC4748a {
        /* renamed from: a */
        void mo2610a(C4750m c4750m, Matrix matrix, int i);

        /* renamed from: b */
        void mo2609b(C4750m c4750m, Matrix matrix, int i);
    }

    /* renamed from: com.google.android.material.q.l$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/l$b.class */
    public static final class C4749b {

        /* renamed from: a */
        public final C4743k f20545a;

        /* renamed from: b */
        public final Path f20546b;

        /* renamed from: c */
        public final RectF f20547c;

        /* renamed from: d */
        public final AbstractC4748a f20548d;

        /* renamed from: e */
        public final float f20549e;

        C4749b(C4743k c4743k, float f, RectF rectF, AbstractC4748a abstractC4748a, Path path) {
            this.f20548d = abstractC4748a;
            this.f20545a = c4743k;
            this.f20549e = f;
            this.f20547c = rectF;
            this.f20546b = path;
        }
    }

    public C4747l() {
        for (int i = 0; i < 4; i++) {
            this.f20538a[i] = new C4750m();
            this.f20539b[i] = new Matrix();
            this.f20540c[i] = new Matrix();
        }
    }

    /* renamed from: a */
    private float m2619a(RectF rectF, int i) {
        float abs;
        this.f20543f[0] = this.f20538a[i].f20552c;
        this.f20543f[1] = this.f20538a[i].f20553d;
        this.f20539b[i].mapPoints(this.f20543f);
        switch (i) {
            case 1:
            case 3:
                abs = Math.abs(rectF.centerX() - this.f20543f[0]);
                break;
            case 2:
            default:
                abs = Math.abs(rectF.centerY() - this.f20543f[1]);
                break;
        }
        return abs;
    }

    /* renamed from: a */
    private C4733d m2620a(int i, C4743k c4743k) {
        C4733d m2667b;
        switch (i) {
            case 1:
                m2667b = c4743k.m2665d();
                break;
            case 2:
                m2667b = c4743k.m2664e();
                break;
            case 3:
                m2667b = c4743k.m2667b();
                break;
            default:
                m2667b = c4743k.m2666c();
                break;
        }
        return m2667b;
    }

    /* renamed from: a */
    private void m2622a(int i) {
        this.f20543f[0] = this.f20538a[i].m2597c();
        this.f20543f[1] = this.f20538a[i].m2595d();
        this.f20539b[i].mapPoints(this.f20543f);
        float m2615b = m2615b(i);
        this.f20540c[i].reset();
        this.f20540c[i].setTranslate(this.f20543f[0], this.f20543f[1]);
        this.f20540c[i].preRotate(m2615b);
    }

    /* renamed from: a */
    private void m2621a(int i, RectF rectF, PointF pointF) {
        switch (i) {
            case 1:
                pointF.set(rectF.right, rectF.bottom);
                return;
            case 2:
                pointF.set(rectF.left, rectF.bottom);
                return;
            case 3:
                pointF.set(rectF.left, rectF.top);
                return;
            default:
                pointF.set(rectF.right, rectF.top);
                return;
        }
    }

    /* renamed from: a */
    private void m2616a(C4749b c4749b, int i) {
        m2620a(i, c4749b.f20545a).m2747a(this.f20538a[i], 90.0f, c4749b.f20549e, c4749b.f20547c, m2614b(i, c4749b.f20545a));
        float m2615b = m2615b(i);
        this.f20539b[i].reset();
        m2621a(i, c4749b.f20547c, this.f20541d);
        this.f20539b[i].setTranslate(this.f20541d.x, this.f20541d.y);
        this.f20539b[i].preRotate(m2615b);
    }

    /* renamed from: b */
    private float m2615b(int i) {
        return (i + 1) * 90;
    }

    /* renamed from: b */
    private AbstractC4732c m2614b(int i, C4743k c4743k) {
        AbstractC4732c m2663f;
        switch (i) {
            case 1:
                m2663f = c4743k.m2661h();
                break;
            case 2:
                m2663f = c4743k.m2660i();
                break;
            case 3:
                m2663f = c4743k.m2663f();
                break;
            default:
                m2663f = c4743k.m2662g();
                break;
        }
        return m2663f;
    }

    /* renamed from: b */
    private void m2613b(C4749b c4749b, int i) {
        this.f20543f[0] = this.f20538a[i].m2608a();
        this.f20543f[1] = this.f20538a[i].m2600b();
        this.f20539b[i].mapPoints(this.f20543f);
        if (i == 0) {
            c4749b.f20546b.moveTo(this.f20543f[0], this.f20543f[1]);
        } else {
            c4749b.f20546b.lineTo(this.f20543f[0], this.f20543f[1]);
        }
        this.f20538a[i].m2602a(this.f20539b[i], c4749b.f20546b);
        if (c4749b.f20548d != null) {
            c4749b.f20548d.mo2610a(this.f20538a[i], this.f20539b[i], i);
        }
    }

    /* renamed from: c */
    private C4735f m2612c(int i, C4743k c4743k) {
        C4735f m2658k;
        switch (i) {
            case 1:
                m2658k = c4743k.m2656m();
                break;
            case 2:
                m2658k = c4743k.m2659j();
                break;
            case 3:
                m2658k = c4743k.m2658k();
                break;
            default:
                m2658k = c4743k.m2657l();
                break;
        }
        return m2658k;
    }

    /* renamed from: c */
    private void m2611c(C4749b c4749b, int i) {
        int i2 = (i + 1) % 4;
        this.f20543f[0] = this.f20538a[i].m2597c();
        this.f20543f[1] = this.f20538a[i].m2595d();
        this.f20539b[i].mapPoints(this.f20543f);
        this.f20544g[0] = this.f20538a[i2].m2608a();
        this.f20544g[1] = this.f20538a[i2].m2600b();
        this.f20539b[i2].mapPoints(this.f20544g);
        float max = Math.max(((float) Math.hypot(this.f20543f[0] - this.f20544g[0], this.f20543f[1] - this.f20544g[1])) - 0.001f, 0.0f);
        float m2619a = m2619a(c4749b.f20547c, i);
        this.f20542e.m2606a(0.0f, 0.0f);
        m2612c(i, c4749b.f20545a).mo2746a(max, m2619a, c4749b.f20549e, this.f20542e);
        this.f20542e.m2602a(this.f20540c[i], c4749b.f20546b);
        if (c4749b.f20548d != null) {
            c4749b.f20548d.mo2609b(this.f20542e, this.f20540c[i], i);
        }
    }

    /* renamed from: a */
    public void m2618a(C4743k c4743k, float f, RectF rectF, Path path) {
        m2617a(c4743k, f, rectF, null, path);
    }

    /* renamed from: a */
    public void m2617a(C4743k c4743k, float f, RectF rectF, AbstractC4748a abstractC4748a, Path path) {
        path.rewind();
        C4749b c4749b = new C4749b(c4743k, f, rectF, abstractC4748a, path);
        for (int i = 0; i < 4; i++) {
            m2616a(c4749b, i);
            m2622a(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            m2613b(c4749b, i2);
            m2611c(c4749b, i2);
        }
        path.close();
    }
}
