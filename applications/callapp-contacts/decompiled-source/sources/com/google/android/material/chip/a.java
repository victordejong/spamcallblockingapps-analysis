package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.h.d;
import com.google.android.material.internal.i;
import com.google.android.material.internal.l;
import com.google.android.material.internal.r;
import com.google.android.material.k.h;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/a.class */
public final class a extends h implements Drawable.Callback, b, i.a {
    private static final int[] v = {16842910};
    private static final ShapeDrawable w = new ShapeDrawable(new OvalShape());
    private ColorStateList A;
    private float B;
    private boolean C;
    private Drawable D;
    private ColorStateList E;
    private float F;
    private boolean G;
    private Drawable H;
    private ColorStateList I;
    private float J;
    private boolean K;
    private Drawable L;
    private ColorStateList M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private int X;
    private int Y;
    private int Z;

    /* renamed from: a  reason: collision with root package name */
    float f30382a;
    private int aa;
    private int ab;
    private int ac;
    private boolean ad;
    private int ae;
    private ColorFilter ag;
    private PorterDuffColorFilter ah;
    private ColorStateList ai;
    private int[] ak;
    private ColorStateList al;
    private boolean an;

    /* renamed from: b  reason: collision with root package name */
    ColorStateList f30383b;

    /* renamed from: d  reason: collision with root package name */
    boolean f30385d;
    Drawable e;
    CharSequence f;
    boolean g;
    com.google.android.material.a.h h;
    com.google.android.material.a.h i;
    float j;
    float k;
    float l;
    float m;
    final Context n;
    final i o;
    boolean p;
    TextUtils.TruncateAt q;
    int s;
    private ColorStateList x;
    private ColorStateList y;
    private float z = -1.0f;
    private final Paint R = new Paint(1);
    private final Paint.FontMetrics T = new Paint.FontMetrics();
    private final RectF U = new RectF();
    private final PointF V = new PointF();
    private final Path W = new Path();
    private int af = 255;
    private PorterDuff.Mode aj = PorterDuff.Mode.SRC_IN;
    private WeakReference<AbstractC0486a> am = new WeakReference<>(null);

    /* renamed from: c  reason: collision with root package name */
    CharSequence f30384c = "";
    private final Paint S = null;
    boolean r = true;

    /* renamed from: com.google.android.material.chip.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/chip/a$a.class */
    public interface AbstractC0486a {
        void a();
    }

    private a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context);
        this.n = context;
        i iVar = new i(this);
        this.o = iVar;
        iVar.f30641a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = v;
        setState(iArr);
        a(iArr);
        if (com.google.android.material.i.b.f30575a) {
            w.setTint(-1);
        }
    }

    private void A() {
        this.H = new RippleDrawable(com.google.android.material.i.b.b(this.f30383b), this.e, w);
    }

    public static a a(Context context, AttributeSet attributeSet, int i, int i2) {
        a aVar = new a(context, attributeSet, i, i2);
        TypedArray a2 = l.a(aVar.n, attributeSet, a.l.Chip, i, i2, new int[0]);
        aVar.an = a2.hasValue(a.l.Chip_shapeAppearance);
        ColorStateList a3 = c.a(aVar.n, a2, a.l.Chip_chipSurfaceColor);
        if (aVar.x != a3) {
            aVar.x = a3;
            aVar.onStateChange(aVar.getState());
        }
        aVar.a(c.a(aVar.n, a2, a.l.Chip_chipBackgroundColor));
        aVar.a(a2.getDimension(a.l.Chip_chipMinHeight, BitmapDescriptorFactory.HUE_RED));
        if (a2.hasValue(a.l.Chip_chipCornerRadius)) {
            aVar.b(a2.getDimension(a.l.Chip_chipCornerRadius, BitmapDescriptorFactory.HUE_RED));
        }
        aVar.b(c.a(aVar.n, a2, a.l.Chip_chipStrokeColor));
        aVar.c(a2.getDimension(a.l.Chip_chipStrokeWidth, BitmapDescriptorFactory.HUE_RED));
        aVar.c(c.a(aVar.n, a2, a.l.Chip_rippleColor));
        aVar.a(a2.getText(a.l.Chip_android_text));
        d c2 = c.c(aVar.n, a2, a.l.Chip_android_textAppearance);
        c2.n = a2.getDimension(a.l.Chip_android_textSize, c2.n);
        aVar.a(c2);
        int i3 = a2.getInt(a.l.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            aVar.q = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            aVar.q = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            aVar.q = TextUtils.TruncateAt.END;
        }
        aVar.b(a2.getBoolean(a.l.Chip_chipIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") != null)) {
            aVar.b(a2.getBoolean(a.l.Chip_chipIconEnabled, false));
        }
        aVar.b(c.b(aVar.n, a2, a.l.Chip_chipIcon));
        if (a2.hasValue(a.l.Chip_chipIconTint)) {
            aVar.d(c.a(aVar.n, a2, a.l.Chip_chipIconTint));
        }
        aVar.d(a2.getDimension(a.l.Chip_chipIconSize, -1.0f));
        aVar.c(a2.getBoolean(a.l.Chip_closeIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") != null)) {
            aVar.c(a2.getBoolean(a.l.Chip_closeIconEnabled, false));
        }
        aVar.c(c.b(aVar.n, a2, a.l.Chip_closeIcon));
        aVar.e(c.a(aVar.n, a2, a.l.Chip_closeIconTint));
        aVar.e(a2.getDimension(a.l.Chip_closeIconSize, BitmapDescriptorFactory.HUE_RED));
        aVar.d(a2.getBoolean(a.l.Chip_android_checkable, false));
        aVar.e(a2.getBoolean(a.l.Chip_checkedIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") != null)) {
            aVar.e(a2.getBoolean(a.l.Chip_checkedIconEnabled, false));
        }
        aVar.d(c.b(aVar.n, a2, a.l.Chip_checkedIcon));
        if (a2.hasValue(a.l.Chip_checkedIconTint)) {
            aVar.f(c.a(aVar.n, a2, a.l.Chip_checkedIconTint));
        }
        aVar.h = com.google.android.material.a.h.a(aVar.n, a2, a.l.Chip_showMotionSpec);
        aVar.i = com.google.android.material.a.h.a(aVar.n, a2, a.l.Chip_hideMotionSpec);
        aVar.f(a2.getDimension(a.l.Chip_chipStartPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.g(a2.getDimension(a.l.Chip_iconStartPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.h(a2.getDimension(a.l.Chip_iconEndPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.i(a2.getDimension(a.l.Chip_textStartPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.j(a2.getDimension(a.l.Chip_textEndPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.k(a2.getDimension(a.l.Chip_closeIconStartPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.l(a2.getDimension(a.l.Chip_closeIconEndPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.m(a2.getDimension(a.l.Chip_chipEndPadding, BitmapDescriptorFactory.HUE_RED));
        aVar.s = a2.getDimensionPixelSize(a.l.Chip_android_maxWidth, Integer.MAX_VALUE);
        a2.recycle();
        return aVar;
    }

    private void a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (q() || r()) {
            float f = this.j + this.N;
            float u = u();
            if (androidx.core.graphics.drawable.a.h(this) == 0) {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + u;
            } else {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - u;
            }
            float v2 = v();
            rectF.top = rect.exactCenterY() - (v2 / 2.0f);
            rectF.bottom = rectF.top + v2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(int[] r7, int[] r8) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.a.a(int[], int[]):boolean");
    }

    private void b(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (s()) {
            float f = this.m + this.Q;
            if (androidx.core.graphics.drawable.a.h(this) == 0) {
                rectF.right = rect.right - f;
                rectF.left = rectF.right - this.J;
            } else {
                rectF.left = rect.left + f;
                rectF.right = rectF.left + this.J;
            }
            rectF.top = rect.exactCenterY() - (this.J / 2.0f);
            rectF.bottom = rectF.top + this.J;
        }
    }

    private static boolean b(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int i : iArr) {
            if (i == 16842912) {
                return true;
            }
        }
        return false;
    }

    private void c(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (s()) {
            float f = this.m + this.Q + this.J + this.P + this.l;
            if (androidx.core.graphics.drawable.a.h(this) == 0) {
                rectF.right = rect.right;
                rectF.left = rectF.right - f;
            } else {
                rectF.left = rect.left;
                rectF.right = rect.left + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static void e(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void f(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            androidx.core.graphics.drawable.a.b(drawable, androidx.core.graphics.drawable.a.h(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.e) {
                if (drawable.isStateful()) {
                    drawable.setState(this.ak);
                }
                androidx.core.graphics.drawable.a.a(drawable, this.I);
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
            Drawable drawable2 = this.D;
            if (drawable == drawable2 && this.G) {
                androidx.core.graphics.drawable.a.a(drawable2, this.E);
            }
        }
    }

    private static boolean i(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void p() {
        AbstractC0486a aVar = this.am.get();
        if (aVar != null) {
            aVar.a();
        }
    }

    private boolean q() {
        return this.C && this.D != null;
    }

    private boolean r() {
        return this.K && this.L != null && this.ad;
    }

    private boolean s() {
        return this.f30385d && this.e != null;
    }

    private boolean t() {
        return this.K && this.L != null && this.g;
    }

    private float u() {
        Drawable drawable = this.ad ? this.L : this.D;
        float f = this.F;
        return (f > BitmapDescriptorFactory.HUE_RED || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    private float v() {
        Drawable drawable = this.ad ? this.L : this.D;
        float f = this.F;
        float f2 = f;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            f2 = f;
            if (drawable != null) {
                float ceil = (float) Math.ceil(r.a(this.n, 24));
                f2 = ceil;
                if (drawable.getIntrinsicHeight() <= ceil) {
                    return drawable.getIntrinsicHeight();
                }
            }
        }
        return f2;
    }

    private ColorFilter w() {
        ColorFilter colorFilter = this.ag;
        return colorFilter != null ? colorFilter : this.ah;
    }

    private void x() {
        this.al = this.p ? com.google.android.material.i.b.b(this.f30383b) : null;
    }

    private float y() {
        return this.an ? k() : this.z;
    }

    private Drawable z() {
        Drawable drawable = this.D;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.g(drawable);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float a() {
        return (q() || r()) ? this.N + u() + this.O : BitmapDescriptorFactory.HUE_RED;
    }

    public final void a(float f) {
        if (this.f30382a != f) {
            this.f30382a = f;
            invalidateSelf();
            p();
        }
    }

    public final void a(int i) {
        a(new d(this.n, i));
    }

    public final void a(ColorStateList colorStateList) {
        if (this.y != colorStateList) {
            this.y = colorStateList;
            onStateChange(getState());
        }
    }

    public final void a(RectF rectF) {
        c(getBounds(), rectF);
    }

    public final void a(AbstractC0486a aVar) {
        this.am = new WeakReference<>(aVar);
    }

    public final void a(d dVar) {
        this.o.a(dVar, this.n);
    }

    public final void a(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f30384c, charSequence2)) {
            this.f30384c = charSequence2;
            this.o.f30642b = true;
            invalidateSelf();
            p();
        }
    }

    public final void a(boolean z) {
        if (this.p != z) {
            this.p = z;
            x();
            onStateChange(getState());
        }
    }

    public final boolean a(int[] iArr) {
        if (Arrays.equals(this.ak, iArr)) {
            return false;
        }
        this.ak = iArr;
        if (s()) {
            return a(getState(), iArr);
        }
        return false;
    }

    @Override // com.google.android.material.internal.i.a
    public final void b() {
        p();
        invalidateSelf();
    }

    @Deprecated
    public final void b(float f) {
        if (this.z != f) {
            this.z = f;
            setShapeAppearanceModel(this.t.f30683a.a(f));
        }
    }

    public final void b(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            if (this.an) {
                h(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void b(Drawable drawable) {
        Drawable z = z();
        if (z != drawable) {
            float a2 = a();
            this.D = drawable != null ? androidx.core.graphics.drawable.a.f(drawable).mutate() : null;
            float a3 = a();
            e(z);
            if (q()) {
                f(this.D);
            }
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    public final void b(boolean z) {
        if (this.C != z) {
            boolean q = q();
            this.C = z;
            boolean q2 = q();
            if (q != q2) {
                if (q2) {
                    f(this.D);
                } else {
                    e(this.D);
                }
                invalidateSelf();
                p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float c() {
        return s() ? this.P + this.J + this.Q : BitmapDescriptorFactory.HUE_RED;
    }

    public final void c(float f) {
        if (this.B != f) {
            this.B = f;
            this.R.setStrokeWidth(f);
            if (this.an) {
                super.n(f);
            }
            invalidateSelf();
        }
    }

    public final void c(ColorStateList colorStateList) {
        if (this.f30383b != colorStateList) {
            this.f30383b = colorStateList;
            x();
            onStateChange(getState());
        }
    }

    public final void c(Drawable drawable) {
        Drawable d2 = d();
        if (d2 != drawable) {
            float c2 = c();
            this.e = drawable != null ? androidx.core.graphics.drawable.a.f(drawable).mutate() : null;
            if (com.google.android.material.i.b.f30575a) {
                A();
            }
            float c3 = c();
            e(d2);
            if (s()) {
                f(this.e);
            }
            invalidateSelf();
            if (c2 != c3) {
                p();
            }
        }
    }

    public final void c(boolean z) {
        if (this.f30385d != z) {
            boolean s = s();
            this.f30385d = z;
            boolean s2 = s();
            if (s != s2) {
                if (s2) {
                    f(this.e);
                } else {
                    e(this.e);
                }
                invalidateSelf();
                p();
            }
        }
    }

    public final Drawable d() {
        Drawable drawable = this.e;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.g(drawable);
        }
        return null;
    }

    public final void d(float f) {
        if (this.F != f) {
            float a2 = a();
            this.F = f;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    public final void d(ColorStateList colorStateList) {
        this.G = true;
        if (this.E != colorStateList) {
            this.E = colorStateList;
            if (q()) {
                androidx.core.graphics.drawable.a.a(this.D, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void d(Drawable drawable) {
        if (this.L != drawable) {
            float a2 = a();
            this.L = drawable;
            float a3 = a();
            e(this.L);
            f(this.L);
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    public final void d(boolean z) {
        if (this.g != z) {
            this.g = z;
            float a2 = a();
            if (!z && this.ad) {
                this.ad = false;
            }
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            if (this.af < 255) {
                float f = bounds.left;
                float f2 = bounds.top;
                float f3 = bounds.right;
                float f4 = bounds.bottom;
                int i3 = this.af;
                i = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i3) : canvas.saveLayerAlpha(f, f2, f3, f4, i3, 31);
            } else {
                i = 0;
            }
            if (!this.an) {
                this.R.setColor(this.X);
                this.R.setStyle(Paint.Style.FILL);
                this.U.set(bounds);
                canvas.drawRoundRect(this.U, y(), y(), this.R);
            }
            if (!this.an) {
                this.R.setColor(this.Y);
                this.R.setStyle(Paint.Style.FILL);
                this.R.setColorFilter(w());
                this.U.set(bounds);
                canvas.drawRoundRect(this.U, y(), y(), this.R);
            }
            if (this.an) {
                super.draw(canvas);
            }
            if (this.B > BitmapDescriptorFactory.HUE_RED && !this.an) {
                this.R.setColor(this.aa);
                this.R.setStyle(Paint.Style.STROKE);
                if (!this.an) {
                    this.R.setColorFilter(w());
                }
                this.U.set(bounds.left + (this.B / 2.0f), bounds.top + (this.B / 2.0f), bounds.right - (this.B / 2.0f), bounds.bottom - (this.B / 2.0f));
                float f5 = this.z - (this.B / 2.0f);
                canvas.drawRoundRect(this.U, f5, f5, this.R);
            }
            this.R.setColor(this.ab);
            this.R.setStyle(Paint.Style.FILL);
            this.U.set(bounds);
            if (!this.an) {
                canvas.drawRoundRect(this.U, y(), y(), this.R);
            } else {
                a(new RectF(bounds), this.W);
                super.a(canvas, this.R, this.W, e());
            }
            if (q()) {
                a(bounds, this.U);
                float f6 = this.U.left;
                float f7 = this.U.top;
                canvas.translate(f6, f7);
                this.D.setBounds(0, 0, (int) this.U.width(), (int) this.U.height());
                this.D.draw(canvas);
                canvas.translate(-f6, -f7);
            }
            if (r()) {
                a(bounds, this.U);
                float f8 = this.U.left;
                float f9 = this.U.top;
                canvas.translate(f8, f9);
                this.L.setBounds(0, 0, (int) this.U.width(), (int) this.U.height());
                this.L.draw(canvas);
                canvas.translate(-f8, -f9);
            }
            if (this.r && this.f30384c != null) {
                PointF pointF = this.V;
                pointF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                Paint.Align align = Paint.Align.LEFT;
                if (this.f30384c != null) {
                    float a2 = this.j + a() + this.k;
                    if (androidx.core.graphics.drawable.a.h(this) == 0) {
                        pointF.x = bounds.left + a2;
                        align = Paint.Align.LEFT;
                    } else {
                        pointF.x = bounds.right - a2;
                        align = Paint.Align.RIGHT;
                    }
                    float centerY = bounds.centerY();
                    this.o.f30641a.getFontMetrics(this.T);
                    pointF.y = centerY - ((this.T.descent + this.T.ascent) / 2.0f);
                }
                RectF rectF = this.U;
                rectF.setEmpty();
                if (this.f30384c != null) {
                    float a3 = this.j + a() + this.k;
                    float c2 = this.m + c() + this.l;
                    if (androidx.core.graphics.drawable.a.h(this) == 0) {
                        rectF.left = bounds.left + a3;
                        rectF.right = bounds.right - c2;
                    } else {
                        rectF.left = bounds.left + c2;
                        rectF.right = bounds.right - a3;
                    }
                    rectF.top = bounds.top;
                    rectF.bottom = bounds.bottom;
                }
                if (this.o.f30644d != null) {
                    this.o.f30641a.drawableState = getState();
                    this.o.a(this.n);
                }
                this.o.f30641a.setTextAlign(align);
                boolean z = Math.round(this.o.a(this.f30384c.toString())) > Math.round(this.U.width());
                if (z) {
                    i2 = canvas.save();
                    canvas.clipRect(this.U);
                } else {
                    i2 = 0;
                }
                CharSequence charSequence = this.f30384c;
                CharSequence charSequence2 = charSequence;
                if (z) {
                    charSequence2 = charSequence;
                    if (this.q != null) {
                        charSequence2 = TextUtils.ellipsize(charSequence, this.o.f30641a, this.U.width(), this.q);
                    }
                }
                canvas.drawText(charSequence2, 0, charSequence2.length(), this.V.x, this.V.y, this.o.f30641a);
                if (z) {
                    canvas.restoreToCount(i2);
                }
            }
            if (s()) {
                b(bounds, this.U);
                float f10 = this.U.left;
                float f11 = this.U.top;
                canvas.translate(f10, f11);
                this.e.setBounds(0, 0, (int) this.U.width(), (int) this.U.height());
                if (com.google.android.material.i.b.f30575a) {
                    this.H.setBounds(this.e.getBounds());
                    this.H.jumpToCurrentState();
                    this.H.draw(canvas);
                } else {
                    this.e.draw(canvas);
                }
                canvas.translate(-f10, -f11);
            }
            Paint paint = this.S;
            if (paint != null) {
                paint.setColor(androidx.core.graphics.a.b(-16777216, 127));
                canvas.drawRect(bounds, this.S);
                if (q() || r()) {
                    a(bounds, this.U);
                    canvas.drawRect(this.U, this.S);
                }
                if (this.f30384c != null) {
                    canvas.drawLine(bounds.left, bounds.exactCenterY(), bounds.right, bounds.exactCenterY(), this.S);
                }
                if (s()) {
                    b(bounds, this.U);
                    canvas.drawRect(this.U, this.S);
                }
                this.S.setColor(androidx.core.graphics.a.b(-65536, 127));
                RectF rectF2 = this.U;
                rectF2.set(bounds);
                if (s()) {
                    float f12 = this.m + this.Q + this.J + this.P + this.l;
                    if (androidx.core.graphics.drawable.a.h(this) == 0) {
                        rectF2.right = bounds.right - f12;
                    } else {
                        rectF2.left = bounds.left + f12;
                    }
                }
                canvas.drawRect(this.U, this.S);
                this.S.setColor(androidx.core.graphics.a.b(-16711936, 127));
                c(bounds, this.U);
                canvas.drawRect(this.U, this.S);
            }
            if (this.af < 255) {
                canvas.restoreToCount(i);
            }
        }
    }

    public final void e(float f) {
        if (this.J != f) {
            this.J = f;
            invalidateSelf();
            if (s()) {
                p();
            }
        }
    }

    public final void e(ColorStateList colorStateList) {
        if (this.I != colorStateList) {
            this.I = colorStateList;
            if (s()) {
                androidx.core.graphics.drawable.a.a(this.e, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void e(boolean z) {
        if (this.K != z) {
            boolean r = r();
            this.K = z;
            boolean r2 = r();
            if (r != r2) {
                if (r2) {
                    f(this.L);
                } else {
                    e(this.L);
                }
                invalidateSelf();
                p();
            }
        }
    }

    public final void f(float f) {
        if (this.j != f) {
            this.j = f;
            invalidateSelf();
            p();
        }
    }

    public final void f(ColorStateList colorStateList) {
        if (this.M != colorStateList) {
            this.M = colorStateList;
            if (t()) {
                androidx.core.graphics.drawable.a.a(this.L, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void g(float f) {
        if (this.N != f) {
            float a2 = a();
            this.N = f;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.af;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.ag;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f30382a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(this.j + a() + this.k + this.o.a(this.f30384c.toString()) + this.l + c() + this.m), this.s);
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.an) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.z);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.z);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public final void h(float f) {
        if (this.O != f) {
            float a2 = a();
            this.O = f;
            float a3 = a();
            invalidateSelf();
            if (a2 != a3) {
                p();
            }
        }
    }

    public final void i(float f) {
        if (this.k != f) {
            this.k = f;
            invalidateSelf();
            p();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (i(this.x) || i(this.y) || i(this.A)) {
            return true;
        }
        if (this.p && i(this.al)) {
            return true;
        }
        d dVar = this.o.f30644d;
        return (dVar != null && dVar.f30562a != null && dVar.f30562a.isStateful()) || t() || a(this.D) || a(this.L) || i(this.ai);
    }

    public final void j(float f) {
        if (this.l != f) {
            this.l = f;
            invalidateSelf();
            p();
        }
    }

    public final void k(float f) {
        if (this.P != f) {
            this.P = f;
            invalidateSelf();
            if (s()) {
                p();
            }
        }
    }

    public final void l(float f) {
        if (this.Q != f) {
            this.Q = f;
            invalidateSelf();
            if (s()) {
                p();
            }
        }
    }

    public final void m(float f) {
        if (this.m != f) {
            this.m = f;
            invalidateSelf();
            p();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (q()) {
            z = onLayoutDirectionChanged | androidx.core.graphics.drawable.a.b(this.D, i);
        }
        boolean z2 = z;
        if (r()) {
            z2 = z | androidx.core.graphics.drawable.a.b(this.L, i);
        }
        boolean z3 = z2;
        if (s()) {
            z3 = z2 | androidx.core.graphics.drawable.a.b(this.e, i);
        }
        if (!z3) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (q()) {
            z = onLevelChange | this.D.setLevel(i);
        }
        boolean z2 = z;
        if (r()) {
            z2 = z | this.L.setLevel(i);
        }
        boolean z3 = z2;
        if (s()) {
            z3 = z2 | this.e.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable, com.google.android.material.internal.i.a
    public final boolean onStateChange(int[] iArr) {
        if (this.an) {
            super.onStateChange(iArr);
        }
        return a(iArr, this.ak);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.af != i) {
            this.af = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.ag != colorFilter) {
            this.ag = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.ai != colorStateList) {
            this.ai = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.aj != mode) {
            this.aj = mode;
            this.ah = com.google.android.material.d.a.a(this, this.ai, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (q()) {
            z3 = visible | this.D.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (r()) {
            z4 = z3 | this.L.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (s()) {
            z5 = z4 | this.e.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
