package com.google.android.material.k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.graphics.drawable.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.k.n;
import com.google.android.material.k.o;
import java.util.BitSet;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/h.class */
public class h extends Drawable implements b, q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f30676a = "h";

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f30677b = new Paint(1);

    /* renamed from: c  reason: collision with root package name */
    private final o.f[] f30678c;

    /* renamed from: d  reason: collision with root package name */
    private final o.f[] f30679d;
    private final BitSet e;
    private boolean f;
    private final Matrix g;
    private final Path h;
    private final Path i;
    private final RectF j;
    private final RectF k;
    private final Region l;
    private final Region m;
    private m n;
    private final Paint o;
    private final Paint p;
    private final com.google.android.material.j.a q;
    private final n.b r;
    private final n s;
    public a t;
    public boolean u;
    private PorterDuffColorFilter v;
    private PorterDuffColorFilter w;
    private final RectF x;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/h$a.class */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public m f30683a;

        /* renamed from: b  reason: collision with root package name */
        public com.google.android.material.e.a f30684b;

        /* renamed from: c  reason: collision with root package name */
        public ColorFilter f30685c;

        /* renamed from: d  reason: collision with root package name */
        public ColorStateList f30686d;
        public ColorStateList e;
        public ColorStateList f;
        public ColorStateList g;
        public PorterDuff.Mode h;
        public Rect i;
        public float j;
        public float k;
        public float l;
        public int m;
        public float n;
        public float o;
        public float p;
        public int q;
        public int r;
        public int s;
        public int t;
        public boolean u;
        public Paint.Style v;

        public a(a aVar) {
            this.f30686d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = BitmapDescriptorFactory.HUE_RED;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.f30683a = aVar.f30683a;
            this.f30684b = aVar.f30684b;
            this.l = aVar.l;
            this.f30685c = aVar.f30685c;
            this.f30686d = aVar.f30686d;
            this.e = aVar.e;
            this.h = aVar.h;
            this.g = aVar.g;
            this.m = aVar.m;
            this.j = aVar.j;
            this.s = aVar.s;
            this.q = aVar.q;
            this.u = aVar.u;
            this.k = aVar.k;
            this.n = aVar.n;
            this.o = aVar.o;
            this.p = aVar.p;
            this.r = aVar.r;
            this.t = aVar.t;
            this.f = aVar.f;
            this.v = aVar.v;
            if (aVar.i != null) {
                this.i = new Rect(aVar.i);
            }
        }

        public a(m mVar, com.google.android.material.e.a aVar) {
            this.f30686d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = BitmapDescriptorFactory.HUE_RED;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.f30683a = mVar;
            this.f30684b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            h hVar = new h(this);
            hVar.f = true;
            return hVar;
        }
    }

    public h() {
        this(new m());
    }

    public h(Context context, AttributeSet attributeSet, int i, int i2) {
        this(m.a(context, attributeSet, i, i2).a());
    }

    private h(a aVar) {
        this.f30678c = new o.f[4];
        this.f30679d = new o.f[4];
        this.e = new BitSet(8);
        this.g = new Matrix();
        this.h = new Path();
        this.i = new Path();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Region();
        this.m = new Region();
        Paint paint = new Paint(1);
        this.o = paint;
        Paint paint2 = new Paint(1);
        this.p = paint2;
        this.q = new com.google.android.material.j.a();
        this.s = Looper.getMainLooper().getThread() == Thread.currentThread() ? n.a.f30703a : new n();
        this.x = new RectF();
        this.u = true;
        this.t = aVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f30677b;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        p();
        a(getState());
        this.r = new n.b() { // from class: com.google.android.material.k.h.1
            @Override // com.google.android.material.k.n.b
            public final void a(o oVar, Matrix matrix, int i) {
                h.this.e.set(i, oVar.g);
                h.this.f30678c[i] = oVar.a(matrix);
            }

            @Override // com.google.android.material.k.n.b
            public final void b(o oVar, Matrix matrix, int i) {
                h.this.e.set(i + 4, oVar.g);
                h.this.f30679d[i] = oVar.a(matrix);
            }
        };
    }

    public h(m mVar) {
        this(new a(mVar, null));
    }

    @Deprecated
    public h(p pVar) {
        this((m) pVar);
    }

    private float a() {
        return this.t.o + this.t.p;
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? a(paint, z) : a(colorStateList, mode, z);
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        int i = colorForState;
        if (z) {
            i = b(colorForState);
        }
        return new PorterDuffColorFilter(i, mode);
    }

    private PorterDuffColorFilter a(Paint paint, boolean z) {
        int color;
        int b2;
        if (!z || (b2 = b((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(b2, PorterDuff.Mode.SRC_IN);
    }

    public static h a(Context context, float f) {
        int a2 = com.google.android.material.h.b.a(context, a.b.colorSurface, h.class.getSimpleName());
        h hVar = new h();
        hVar.a(context);
        hVar.g(ColorStateList.valueOf(a2));
        hVar.r(f);
        return hVar;
    }

    private void a(Canvas canvas) {
        if (this.e.cardinality() > 0) {
            Log.w(f30676a, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.t.s != 0) {
            canvas.drawPath(this.h, this.q.f30667a);
        }
        for (int i = 0; i < 4; i++) {
            this.f30678c[i].a(this.q, this.t.r, canvas);
            this.f30679d[i].a(this.q, this.t.r, canvas);
        }
        if (this.u) {
            int d2 = d();
            int j = j();
            canvas.translate(-d2, -j);
            canvas.drawPath(this.h, f30677b);
            canvas.translate(d2, j);
        }
    }

    private void a(Canvas canvas, Paint paint, Path path, m mVar, RectF rectF) {
        if (mVar.a(rectF)) {
            float a2 = mVar.g.a(rectF) * this.t.k;
            canvas.drawRoundRect(rectF, a2, a2, paint);
            return;
        }
        canvas.drawPath(path, paint);
    }

    private boolean a(int[] iArr) {
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        boolean z = true;
        if (this.t.f30686d == null || color2 == (colorForState2 = this.t.f30686d.getColorForState(iArr, (color2 = this.o.getColor())))) {
            z = false;
        } else {
            this.o.setColor(colorForState2);
            z = true;
        }
        if (!(this.t.e == null || color == (colorForState = this.t.e.getColorForState(iArr, (color = this.p.getColor()))))) {
            this.p.setColor(colorForState);
        }
        return z;
    }

    private static int b(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    private void b() {
        float a2 = a();
        this.t.r = (int) Math.ceil(0.75f * a2);
        this.t.s = (int) Math.ceil(a2 * 0.25f);
        p();
        super.invalidateSelf();
    }

    private void b(RectF rectF, Path path) {
        a(rectF, path);
        if (this.t.j != 1.0f) {
            this.g.reset();
            this.g.setScale(this.t.j, this.t.j, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.g);
        }
        path.computeBounds(this.x, true);
    }

    private boolean c() {
        return (this.t.v == Paint.Style.FILL_AND_STROKE || this.t.v == Paint.Style.STROKE) && this.p.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED;
    }

    private int d() {
        return (int) (this.t.s * Math.sin(Math.toRadians(this.t.t)));
    }

    private boolean p() {
        PorterDuffColorFilter porterDuffColorFilter = this.v;
        PorterDuffColorFilter porterDuffColorFilter2 = this.w;
        this.v = a(this.t.g, this.t.h, this.o, true);
        this.w = a(this.t.f, this.t.h, this.p, false);
        if (this.t.u) {
            this.q.a(this.t.g.getColorForState(getState(), 0));
        }
        return !androidx.core.e.a.a(porterDuffColorFilter, this.v) || !androidx.core.e.a.a(porterDuffColorFilter2, this.w);
    }

    private float q() {
        return c() ? this.p.getStrokeWidth() / 2.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private RectF r() {
        this.k.set(e());
        float q = q();
        this.k.inset(q, q);
        return this.k;
    }

    public final void a(float f, int i) {
        n(f);
        h(ColorStateList.valueOf(i));
    }

    public final void a(float f, ColorStateList colorStateList) {
        n(f);
        h(colorStateList);
    }

    public final void a(int i, int i2) {
        if (this.t.i == null) {
            this.t.i = new Rect();
        }
        this.t.i.set(0, i, 0, i2);
        invalidateSelf();
    }

    public final void a(Context context) {
        this.t.f30684b = new com.google.android.material.e.a(context);
        b();
    }

    public final void a(Canvas canvas, Paint paint, Path path, RectF rectF) {
        a(canvas, paint, path, this.t.f30683a, rectF);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(RectF rectF, Path path) {
        this.s.a(this.t.f30683a, this.t.k, rectF, this.r, path);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int b(int i) {
        float a2 = a();
        float f = this.t.n;
        int i2 = i;
        if (this.t.f30684b != null) {
            i2 = this.t.f30684b.a(i, a2 + f);
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0154, code lost:
        if ((android.os.Build.VERSION.SDK_INT < 21 || (!o() && !r7.h.isConvex() && android.os.Build.VERSION.SDK_INT < 29)) != false) goto L_0x0157;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02df  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.k.h.draw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RectF e() {
        this.j.set(getBounds());
        return this.j;
    }

    public final void f() {
        if (this.t.q != 2) {
            this.t.q = 2;
            super.invalidateSelf();
        }
    }

    public final void g(ColorStateList colorStateList) {
        if (this.t.f30686d != colorStateList) {
            this.t.f30686d = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean g() {
        return this.t.f30684b != null && this.t.f30684b.f30491a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.t.q != 2) {
            if (o()) {
                outline.setRoundRect(getBounds(), k() * this.t.k);
                return;
            }
            b(e(), this.h);
            if (this.h.isConvex() || Build.VERSION.SDK_INT >= 29) {
                try {
                    outline.setConvexPath(this.h);
                } catch (IllegalArgumentException e) {
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (this.t.i == null) {
            return super.getPadding(rect);
        }
        rect.set(this.t.i);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.l.set(getBounds());
        b(e(), this.h);
        this.m.setPath(this.h, this.l);
        this.l.op(this.m, Region.Op.DIFFERENCE);
        return this.l;
    }

    public final void h() {
        super.invalidateSelf();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.t.e != colorStateList) {
            this.t.e = colorStateList;
            onStateChange(getState());
        }
    }

    public final void i() {
        this.q.a(-12303292);
        this.t.u = false;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        if (this.t.g != null && this.t.g.isStateful()) {
            return true;
        }
        if (this.t.f != null && this.t.f.isStateful()) {
            return true;
        }
        if (this.t.e == null || !this.t.e.isStateful()) {
            return this.t.f30686d != null && this.t.f30686d.isStateful();
        }
        return true;
    }

    public final int j() {
        return (int) (this.t.s * Math.cos(Math.toRadians(this.t.t)));
    }

    public final float k() {
        return this.t.f30683a.f.a(e());
    }

    public final float l() {
        return this.t.f30683a.g.a(e());
    }

    public final float m() {
        return this.t.f30683a.i.a(e());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.t = new a(this.t);
        return this;
    }

    public final float n() {
        return this.t.f30683a.h.a(e());
    }

    public final void n(float f) {
        this.t.l = f;
        invalidateSelf();
    }

    public final void o(float f) {
        setShapeAppearanceModel(this.t.f30683a.a(f));
    }

    public final boolean o() {
        return this.t.f30683a.a(e());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.i.a
    public boolean onStateChange(int[] iArr) {
        boolean z = a(iArr) || p();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p(float f) {
        if (this.t.k != f) {
            this.t.k = f;
            this.f = true;
            invalidateSelf();
        }
    }

    public final void q(float f) {
        if (this.t.n != f) {
            this.t.n = f;
            b();
        }
    }

    public final void r(float f) {
        if (this.t.o != f) {
            this.t.o = f;
            b();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.t.m != i) {
            this.t.m = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.t.f30685c = colorFilter;
        super.invalidateSelf();
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        this.t.f30683a = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.t.g = colorStateList;
        p();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.t.h != mode) {
            this.t.h = mode;
            p();
            super.invalidateSelf();
        }
    }
}
