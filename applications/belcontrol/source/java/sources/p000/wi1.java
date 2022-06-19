package p000;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: wi1 */
/* loaded from: classes3-dex2jar.jar:wi1.class */
public final class wi1 extends Animation {

    /* renamed from: s */
    public static final WeakHashMap<View, wi1> f8569s = new WeakHashMap<>();

    /* renamed from: a */
    public final WeakReference<View> f8570a;

    /* renamed from: c */
    public boolean f8572c;

    /* renamed from: f */
    public float f8574f;

    /* renamed from: g */
    public float f8575g;

    /* renamed from: h */
    public float f8576h;

    /* renamed from: j */
    public float f8577j;

    /* renamed from: k */
    public float f8578k;

    /* renamed from: n */
    public float f8581n;

    /* renamed from: o */
    public float f8582o;

    /* renamed from: b */
    public final Camera f8571b = new Camera();

    /* renamed from: d */
    public float f8573d = 1.0f;

    /* renamed from: l */
    public float f8579l = 1.0f;

    /* renamed from: m */
    public float f8580m = 1.0f;

    /* renamed from: p */
    public final RectF f8583p = new RectF();

    /* renamed from: q */
    public final RectF f8584q = new RectF();

    /* renamed from: r */
    public final Matrix f8585r = new Matrix();

    static {
        Integer.valueOf(Build.VERSION.SDK).intValue();
    }

    public wi1(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f8570a = new WeakReference<>(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r0 != r4.getAnimation()) goto L6;
     */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p000.wi1 m239A(android.view.View r4) {
        /*
            java.util.WeakHashMap<android.view.View, wi1> r0 = p000.wi1.f8569s
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            wi1 r0 = (p000.wi1) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1b
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r4
            android.view.animation.Animation r1 = r1.getAnimation()
            if (r0 == r1) goto L2b
        L1b:
            wi1 r0 = new wi1
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r7 = r0
            r0 = r5
            r1 = r4
            r2 = r7
            java.lang.Object r0 = r0.put(r1, r2)
        L2b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.wi1.m239A(android.view.View):wi1");
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        View view = this.f8570a.get();
        if (view != null) {
            transformation.setAlpha(this.f8573d);
            m215z(transformation.getMatrix(), view);
        }
    }

    /* renamed from: b */
    public final void m238b(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f8585r;
        matrix.reset();
        m215z(matrix, view);
        this.f8585r.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        float f = rectF.right;
        float f2 = rectF.left;
        if (f < f2) {
            rectF.right = f2;
            rectF.left = f;
        }
        float f3 = rectF.bottom;
        float f4 = rectF.top;
        if (f3 < f4) {
            rectF.top = f3;
            rectF.bottom = f4;
        }
    }

    /* renamed from: c */
    public float m237c() {
        return this.f8573d;
    }

    /* renamed from: d */
    public float m236d() {
        return this.f8578k;
    }

    /* renamed from: f */
    public float m235f() {
        return this.f8576h;
    }

    /* renamed from: g */
    public float m234g() {
        return this.f8577j;
    }

    /* renamed from: h */
    public float m233h() {
        return this.f8579l;
    }

    /* renamed from: i */
    public float m232i() {
        return this.f8580m;
    }

    /* renamed from: j */
    public float m231j() {
        return this.f8581n;
    }

    /* renamed from: k */
    public float m230k() {
        return this.f8582o;
    }

    /* renamed from: l */
    public float m229l() {
        View view = this.f8570a.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getLeft() + this.f8581n;
    }

    /* renamed from: m */
    public float m228m() {
        View view = this.f8570a.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getTop() + this.f8582o;
    }

    /* renamed from: n */
    public final void m227n() {
        View view = this.f8570a.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f8584q;
        m238b(rectF, view);
        rectF.union(this.f8583p);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* renamed from: o */
    public final void m226o() {
        View view = this.f8570a.get();
        if (view != null) {
            m238b(this.f8583p, view);
        }
    }

    /* renamed from: p */
    public void m225p(float f) {
        if (this.f8573d != f) {
            this.f8573d = f;
            View view = this.f8570a.get();
            if (view == null) {
                return;
            }
            view.invalidate();
        }
    }

    /* renamed from: q */
    public void m224q(float f) {
        if (this.f8578k != f) {
            m226o();
            this.f8578k = f;
            m227n();
        }
    }

    /* renamed from: r */
    public void m223r(float f) {
        if (this.f8576h != f) {
            m226o();
            this.f8576h = f;
            m227n();
        }
    }

    /* renamed from: s */
    public void m222s(float f) {
        if (this.f8577j != f) {
            m226o();
            this.f8577j = f;
            m227n();
        }
    }

    /* renamed from: t */
    public void m221t(float f) {
        if (this.f8579l != f) {
            m226o();
            this.f8579l = f;
            m227n();
        }
    }

    /* renamed from: u */
    public void m220u(float f) {
        if (this.f8580m != f) {
            m226o();
            this.f8580m = f;
            m227n();
        }
    }

    /* renamed from: v */
    public void m219v(float f) {
        if (this.f8581n != f) {
            m226o();
            this.f8581n = f;
            m227n();
        }
    }

    /* renamed from: w */
    public void m218w(float f) {
        if (this.f8582o != f) {
            m226o();
            this.f8582o = f;
            m227n();
        }
    }

    /* renamed from: x */
    public void m217x(float f) {
        View view = this.f8570a.get();
        if (view != null) {
            m219v(f - view.getLeft());
        }
    }

    /* renamed from: y */
    public void m216y(float f) {
        View view = this.f8570a.get();
        if (view != null) {
            m218w(f - view.getTop());
        }
    }

    /* renamed from: z */
    public final void m215z(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.f8572c;
        float f = z ? this.f8574f : width / 2.0f;
        float f2 = z ? this.f8575g : height / 2.0f;
        float f3 = this.f8576h;
        float f4 = this.f8577j;
        float f5 = this.f8578k;
        if (f3 != 0.0f || f4 != 0.0f || f5 != 0.0f) {
            Camera camera = this.f8571b;
            camera.save();
            camera.rotateX(f3);
            camera.rotateY(f4);
            camera.rotateZ(-f5);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f, -f2);
            matrix.postTranslate(f, f2);
        }
        float f6 = this.f8579l;
        float f7 = this.f8580m;
        if (f6 != 1.0f || f7 != 1.0f) {
            matrix.postScale(f6, f7);
            matrix.postTranslate((-(f / width)) * ((f6 * width) - width), (-(f2 / height)) * ((f7 * height) - height));
        }
        matrix.postTranslate(this.f8581n, this.f8582o);
    }
}
