package p224r8;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: r8.a */
/* loaded from: classes2-dex2jar.jar:r8/a.class */
public final class C4237a extends Animation {

    /* renamed from: q */
    public static final boolean f13260q;

    /* renamed from: r */
    public static final WeakHashMap<View, C4237a> f13261r;

    /* renamed from: a */
    public final WeakReference<View> f13262a;

    /* renamed from: c */
    public boolean f13264c;

    /* renamed from: e */
    public float f13266e;

    /* renamed from: f */
    public float f13267f;

    /* renamed from: g */
    public float f13268g;

    /* renamed from: h */
    public float f13269h;

    /* renamed from: i */
    public float f13270i;

    /* renamed from: l */
    public float f13273l;

    /* renamed from: m */
    public float f13274m;

    /* renamed from: b */
    public final Camera f13263b = new Camera();

    /* renamed from: d */
    public float f13265d = 1.0f;

    /* renamed from: j */
    public float f13271j = 1.0f;

    /* renamed from: k */
    public float f13272k = 1.0f;

    /* renamed from: n */
    public final RectF f13275n = new RectF();

    /* renamed from: o */
    public final RectF f13276o = new RectF();

    /* renamed from: p */
    public final Matrix f13277p = new Matrix();

    static {
        f13260q = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f13261r = new WeakHashMap<>();
    }

    public C4237a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f13262a = new WeakReference<>(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r0 != r4.getAnimation()) goto L6;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p224r8.C4237a m1257e(android.view.View r4) {
        /*
            java.util.WeakHashMap<android.view.View, r8.a> r0 = p224r8.C4237a.f13261r
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            r8.a r0 = (p224r8.C4237a) r0
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
            r8.a r0 = new r8.a
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
        throw new UnsupportedOperationException("Method not decompiled: p224r8.C4237a.m1257e(android.view.View):r8.a");
    }

    /* renamed from: a */
    public final void m1261a(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f13277p;
        matrix.reset();
        m1258d(matrix, view);
        this.f13277p.mapRect(rectF);
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

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        View view = this.f13262a.get();
        if (view != null) {
            transformation.setAlpha(this.f13265d);
            m1258d(transformation.getMatrix(), view);
        }
    }

    /* renamed from: b */
    public final void m1260b() {
        View view = this.f13262a.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f13276o;
        m1261a(rectF, view);
        rectF.union(this.f13275n);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* renamed from: c */
    public final void m1259c() {
        View view = this.f13262a.get();
        if (view != null) {
            m1261a(this.f13275n, view);
        }
    }

    /* renamed from: d */
    public final void m1258d(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.f13264c;
        float f = z ? this.f13266e : width / 2.0f;
        float f2 = z ? this.f13267f : height / 2.0f;
        float f3 = this.f13268g;
        float f4 = this.f13269h;
        float f5 = this.f13270i;
        if (f3 != 0.0f || f4 != 0.0f || f5 != 0.0f) {
            Camera camera = this.f13263b;
            camera.save();
            camera.rotateX(f3);
            camera.rotateY(f4);
            camera.rotateZ(-f5);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f, -f2);
            matrix.postTranslate(f, f2);
        }
        float f6 = this.f13271j;
        float f7 = this.f13272k;
        if (f6 != 1.0f || f7 != 1.0f) {
            matrix.postScale(f6, f7);
            matrix.postTranslate(((f6 * width) - width) * (-(f / width)), ((f7 * height) - height) * (-(f2 / height)));
        }
        matrix.postTranslate(this.f13273l, this.f13274m);
    }
}
