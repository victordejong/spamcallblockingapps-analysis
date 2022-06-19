package com.nineoldandroids.p065b.p066a;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.google.android.flexbox.FlexItem;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: com.nineoldandroids.b.a.a */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/b/a/a.class */
public final class C1440a extends Animation {

    /* renamed from: a */
    public static final boolean f3973a;

    /* renamed from: b */
    private static final WeakHashMap<View, C1440a> f3974b;

    /* renamed from: c */
    private final WeakReference<View> f3975c;

    /* renamed from: e */
    private boolean f3977e;

    /* renamed from: g */
    private float f3979g;

    /* renamed from: h */
    private float f3980h;

    /* renamed from: i */
    private float f3981i;

    /* renamed from: j */
    private float f3982j;

    /* renamed from: k */
    private float f3983k;

    /* renamed from: n */
    private float f3986n;

    /* renamed from: o */
    private float f3987o;

    /* renamed from: d */
    private final Camera f3976d = new Camera();

    /* renamed from: f */
    private float f3978f = 1.0f;

    /* renamed from: l */
    private float f3984l = 1.0f;

    /* renamed from: m */
    private float f3985m = 1.0f;

    /* renamed from: p */
    private final RectF f3988p = new RectF();

    /* renamed from: q */
    private final RectF f3989q = new RectF();

    /* renamed from: r */
    private final Matrix f3990r = new Matrix();

    static {
        f3973a = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f3974b = new WeakHashMap<>();
    }

    private C1440a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f3975c = new WeakReference<>(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r0 != r4.getAnimation()) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.nineoldandroids.p065b.p066a.C1440a m3634a(android.view.View r4) {
        /*
            java.util.WeakHashMap<android.view.View, com.nineoldandroids.b.a.a> r0 = com.nineoldandroids.p065b.p066a.C1440a.f3974b
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            com.nineoldandroids.b.a.a r0 = (com.nineoldandroids.p065b.p066a.C1440a) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L19
            r0 = r5
            r6 = r0
            r0 = r5
            r1 = r4
            android.view.animation.Animation r1 = r1.getAnimation()
            if (r0 == r1) goto L2b
        L19:
            com.nineoldandroids.b.a.a r0 = new com.nineoldandroids.b.a.a
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            java.util.WeakHashMap<android.view.View, com.nineoldandroids.b.a.a> r0 = com.nineoldandroids.p065b.p066a.C1440a.f3974b
            r1 = r4
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)
        L2b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.p065b.p066a.C1440a.m3634a(android.view.View):com.nineoldandroids.b.a.a");
    }

    /* renamed from: a */
    private void m3636a(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.f3977e;
        float f = z ? this.f3979g : width / 2.0f;
        float f2 = z ? this.f3980h : height / 2.0f;
        float f3 = this.f3981i;
        float f4 = this.f3982j;
        float f5 = this.f3983k;
        if (f3 != FlexItem.FLEX_GROW_DEFAULT || f4 != FlexItem.FLEX_GROW_DEFAULT || f5 != FlexItem.FLEX_GROW_DEFAULT) {
            Camera camera = this.f3976d;
            camera.save();
            camera.rotateX(f3);
            camera.rotateY(f4);
            camera.rotateZ(-f5);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f, -f2);
            matrix.postTranslate(f, f2);
        }
        float f6 = this.f3984l;
        float f7 = this.f3985m;
        if (f6 != 1.0f || f7 != 1.0f) {
            matrix.postScale(f6, f7);
            matrix.postTranslate((-(f / width)) * ((f6 * width) - width), (-(f2 / height)) * ((f7 * height) - height));
        }
        matrix.postTranslate(this.f3986n, this.f3987o);
    }

    /* renamed from: a */
    private void m3635a(RectF rectF, View view) {
        rectF.set(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, view.getWidth(), view.getHeight());
        Matrix matrix = this.f3990r;
        matrix.reset();
        m3636a(matrix, view);
        this.f3990r.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        if (rectF.right < rectF.left) {
            float f = rectF.right;
            rectF.right = rectF.left;
            rectF.left = f;
        }
        if (rectF.bottom < rectF.top) {
            float f2 = rectF.top;
            rectF.top = rectF.bottom;
            rectF.bottom = f2;
        }
    }

    /* renamed from: o */
    private void m3609o() {
        View view = this.f3975c.get();
        if (view != null) {
            m3635a(this.f3988p, view);
        }
    }

    /* renamed from: p */
    private void m3608p() {
        View view = this.f3975c.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f3989q;
        m3635a(rectF, view);
        rectF.union(this.f3988p);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* renamed from: a */
    public float m3638a() {
        return this.f3978f;
    }

    /* renamed from: a */
    public void m3637a(float f) {
        if (this.f3978f != f) {
            this.f3978f = f;
            View view = this.f3975c.get();
            if (view == null) {
                return;
            }
            view.invalidate();
        }
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        View view = this.f3975c.get();
        if (view != null) {
            transformation.setAlpha(this.f3978f);
            m3636a(transformation.getMatrix(), view);
        }
    }

    /* renamed from: b */
    public float m3633b() {
        return this.f3979g;
    }

    /* renamed from: b */
    public void m3632b(float f) {
        if (!this.f3977e || this.f3979g != f) {
            m3609o();
            this.f3977e = true;
            this.f3979g = f;
            m3608p();
        }
    }

    /* renamed from: c */
    public float m3631c() {
        return this.f3980h;
    }

    /* renamed from: c */
    public void m3630c(float f) {
        if (!this.f3977e || this.f3980h != f) {
            m3609o();
            this.f3977e = true;
            this.f3980h = f;
            m3608p();
        }
    }

    /* renamed from: d */
    public float m3629d() {
        return this.f3983k;
    }

    /* renamed from: d */
    public void m3628d(float f) {
        if (this.f3983k != f) {
            m3609o();
            this.f3983k = f;
            m3608p();
        }
    }

    /* renamed from: e */
    public float m3627e() {
        return this.f3981i;
    }

    /* renamed from: e */
    public void m3626e(float f) {
        if (this.f3981i != f) {
            m3609o();
            this.f3981i = f;
            m3608p();
        }
    }

    /* renamed from: f */
    public float m3625f() {
        return this.f3982j;
    }

    /* renamed from: f */
    public void m3624f(float f) {
        if (this.f3982j != f) {
            m3609o();
            this.f3982j = f;
            m3608p();
        }
    }

    /* renamed from: g */
    public float m3623g() {
        return this.f3984l;
    }

    /* renamed from: g */
    public void m3622g(float f) {
        if (this.f3984l != f) {
            m3609o();
            this.f3984l = f;
            m3608p();
        }
    }

    /* renamed from: h */
    public float m3621h() {
        return this.f3985m;
    }

    /* renamed from: h */
    public void m3620h(float f) {
        if (this.f3985m != f) {
            m3609o();
            this.f3985m = f;
            m3608p();
        }
    }

    /* renamed from: i */
    public int m3619i() {
        View view = this.f3975c.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    /* renamed from: i */
    public void m3618i(float f) {
        if (this.f3986n != f) {
            m3609o();
            this.f3986n = f;
            m3608p();
        }
    }

    /* renamed from: j */
    public int m3617j() {
        View view = this.f3975c.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    /* renamed from: j */
    public void m3616j(float f) {
        if (this.f3987o != f) {
            m3609o();
            this.f3987o = f;
            m3608p();
        }
    }

    /* renamed from: k */
    public float m3615k() {
        return this.f3986n;
    }

    /* renamed from: k */
    public void m3614k(float f) {
        View view = this.f3975c.get();
        if (view != null) {
            m3618i(f - view.getLeft());
        }
    }

    /* renamed from: l */
    public float m3613l() {
        return this.f3987o;
    }

    /* renamed from: l */
    public void m3612l(float f) {
        View view = this.f3975c.get();
        if (view != null) {
            m3616j(f - view.getTop());
        }
    }

    /* renamed from: m */
    public float m3611m() {
        View view = this.f3975c.get();
        return view == null ? FlexItem.FLEX_GROW_DEFAULT : view.getLeft() + this.f3986n;
    }

    /* renamed from: n */
    public float m3610n() {
        View view = this.f3975c.get();
        return view == null ? FlexItem.FLEX_GROW_DEFAULT : view.getTop() + this.f3987o;
    }
}
