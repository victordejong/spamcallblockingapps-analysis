package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.d.e;
import androidx.core.e.d;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.h.a;
import com.google.android.material.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/a.class */
public final class a {
    private static final boolean i;
    private static final Paint j;
    private Typeface A;
    private com.google.android.material.h.a B;
    private com.google.android.material.h.a C;
    private CharSequence D;
    private boolean E;
    private boolean F;
    private Bitmap G;
    private Paint H;
    private float I;
    private float J;
    private int[] K;
    private boolean L;
    private final TextPaint M;
    private TimeInterpolator N;
    private float O;
    private float P;
    private float Q;
    private ColorStateList R;
    private float S;
    private float T;
    private float U;
    private ColorStateList V;
    private float W;
    private StaticLayout X;
    private float Y;
    private float Z;

    /* renamed from: a  reason: collision with root package name */
    public float f30608a;
    private float aa;
    private CharSequence ab;

    /* renamed from: c  reason: collision with root package name */
    public ColorStateList f30610c;

    /* renamed from: d  reason: collision with root package name */
    public Typeface f30611d;
    public CharSequence e;
    public final TextPaint f;
    public TimeInterpolator g;
    public float h;
    private final View k;
    private boolean l;
    private ColorStateList s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private Typeface z;
    private int p = 16;
    private int q = 16;

    /* renamed from: b  reason: collision with root package name */
    public float f30609b = 15.0f;
    private float r = 15.0f;
    private int ac = 1;
    private final Rect n = new Rect();
    private final Rect m = new Rect();
    private final RectF o = new RectF();

    static {
        i = Build.VERSION.SDK_INT < 18;
        j = null;
    }

    public a(View view) {
        this.k = view;
        TextPaint textPaint = new TextPaint(129);
        this.M = textPaint;
        this.f = new TextPaint(textPaint);
    }

    private static float a(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return com.google.android.material.a.a.a(f, f2, f4);
    }

    private static int a(int i2, int i3, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i2) * f2) + (Color.alpha(i3) * f)), (int) ((Color.red(i2) * f2) + (Color.red(i3) * f)), (int) ((Color.green(i2) * f2) + (Color.green(i3) * f)), (int) ((Color.blue(i2) * f2) + (Color.blue(i3) * f)));
    }

    private StaticLayout a(int i2, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            h a2 = h.a(this.e, this.M, (int) f);
            a2.e = TextUtils.TruncateAt.END;
            a2.f30640d = z;
            a2.f30637a = Layout.Alignment.ALIGN_NORMAL;
            a2.f30639c = false;
            a2.f30638b = i2;
            staticLayout = a2.a();
        } catch (h.a e) {
            Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
            staticLayout = null;
        }
        return (StaticLayout) d.a(staticLayout);
    }

    private void a(Canvas canvas, float f, float f2) {
        int alpha = this.M.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.M.setAlpha((int) (this.Z * f3));
        this.X.draw(canvas);
        this.M.setAlpha((int) (this.Y * f3));
        int lineBaseline = this.X.getLineBaseline(0);
        CharSequence charSequence = this.ab;
        int length = charSequence.length();
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, length, BitmapDescriptorFactory.HUE_RED, f4, this.M);
        String trim = this.ab.toString().trim();
        String str = trim;
        if (trim.endsWith("…")) {
            str = trim.substring(0, trim.length() - 1);
        }
        this.M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.X.getLineEnd(0), str.length()), BitmapDescriptorFactory.HUE_RED, f4, (Paint) this.M);
    }

    private void a(TextPaint textPaint) {
        textPaint.setTextSize(this.r);
        textPaint.setTypeface(this.z);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.W);
        }
    }

    private static boolean a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    private static boolean a(Rect rect, int i2, int i3, int i4, int i5) {
        return rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5;
    }

    private boolean b(CharSequence charSequence) {
        return (k() ? e.f1881d : e.f1880c).a(charSequence, charSequence.length());
    }

    private float c() {
        if (this.e == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        a(this.f);
        TextPaint textPaint = this.f;
        CharSequence charSequence = this.e;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private int c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.K;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private void c(float f) {
        d(f);
        this.x = a(this.v, this.w, f, this.g);
        this.y = a(this.t, this.u, f, this.g);
        g(a(this.f30609b, this.r, f, this.N));
        e(1.0f - a((float) BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f - f, com.google.android.material.a.a.f30174b));
        f(a(1.0f, (float) BitmapDescriptorFactory.HUE_RED, f, com.google.android.material.a.a.f30174b));
        if (this.f30610c != this.s) {
            this.M.setColor(a(g(), h(), f));
        } else {
            this.M.setColor(h());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f2 = this.W;
            float f3 = this.h;
            if (f2 != f3) {
                this.M.setLetterSpacing(a(f3, f2, f, com.google.android.material.a.a.f30174b));
            } else {
                this.M.setLetterSpacing(f2);
            }
        }
        this.M.setShadowLayer(a(this.S, this.O, f, (TimeInterpolator) null), a(this.T, this.P, f, (TimeInterpolator) null), a(this.U, this.Q, f, (TimeInterpolator) null), a(c(this.V), c(this.R), f));
        v.d(this.k);
    }

    private void d() {
        this.l = this.n.width() > 0 && this.n.height() > 0 && this.m.width() > 0 && this.m.height() > 0;
    }

    private void d(float f) {
        this.o.left = a(this.m.left, this.n.left, f, this.g);
        this.o.top = a(this.t, this.u, f, this.g);
        this.o.right = a(this.m.right, this.n.right, f, this.g);
        this.o.bottom = a(this.m.bottom, this.n.bottom, f, this.g);
    }

    private boolean d(Typeface typeface) {
        com.google.android.material.h.a aVar = this.C;
        if (aVar != null) {
            aVar.f30559a = true;
        }
        if (this.z == typeface) {
            return false;
        }
        this.z = typeface;
        return true;
    }

    private void e(float f) {
        this.Y = f;
        v.d(this.k);
    }

    private boolean e() {
        ColorStateList colorStateList = this.f30610c;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.s;
        return colorStateList2 != null && colorStateList2.isStateful();
    }

    private boolean e(Typeface typeface) {
        com.google.android.material.h.a aVar = this.B;
        if (aVar != null) {
            aVar.f30559a = true;
        }
        if (this.f30611d == typeface) {
            return false;
        }
        this.f30611d = typeface;
        return true;
    }

    private void f() {
        c(this.f30608a);
    }

    private void f(float f) {
        this.Z = f;
        v.d(this.k);
    }

    private int g() {
        return c(this.s);
    }

    private void g(float f) {
        h(f);
        boolean z = i && this.I != 1.0f;
        this.F = z;
        if (z) {
            l();
        }
        v.d(this.k);
    }

    private int h() {
        return c(this.f30610c);
    }

    private void h(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.e != null) {
            float width = this.n.width();
            float width2 = this.m.width();
            boolean z2 = false;
            int i2 = 1;
            if (a(f, this.r)) {
                f2 = this.r;
                this.I = 1.0f;
                Typeface typeface = this.A;
                Typeface typeface2 = this.z;
                if (typeface != typeface2) {
                    this.A = typeface2;
                    z = true;
                    f3 = width;
                } else {
                    z = false;
                    f3 = width;
                }
            } else {
                f2 = this.f30609b;
                Typeface typeface3 = this.A;
                Typeface typeface4 = this.f30611d;
                if (typeface3 != typeface4) {
                    this.A = typeface4;
                    z = true;
                } else {
                    z = false;
                }
                if (a(f, f2)) {
                    this.I = 1.0f;
                } else {
                    this.I = f / this.f30609b;
                }
                float f4 = this.r / this.f30609b;
                f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
            }
            boolean z3 = z;
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                z3 = this.J != f2 || this.L || z;
                this.J = f2;
                this.L = false;
            }
            if (this.D == null || z3) {
                this.M.setTextSize(this.J);
                this.M.setTypeface(this.A);
                TextPaint textPaint = this.M;
                if (this.I != 1.0f) {
                    z2 = true;
                }
                textPaint.setLinearText(z2);
                this.E = b(this.e);
                if (j()) {
                    i2 = this.ac;
                }
                StaticLayout a2 = a(i2, f3, this.E);
                this.X = a2;
                this.D = a2.getText();
            }
        }
    }

    private void i() {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        float f = this.J;
        h(this.r);
        CharSequence charSequence = this.D;
        if (!(charSequence == null || (staticLayout2 = this.X) == null)) {
            this.ab = TextUtils.ellipsize(charSequence, this.M, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.ab;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float measureText = charSequence2 != null ? this.M.measureText(charSequence2, 0, charSequence2.length()) : BitmapDescriptorFactory.HUE_RED;
        int a2 = androidx.core.view.e.a(this.q, this.E ? 1 : 0);
        int i2 = a2 & 112;
        if (i2 == 48) {
            this.u = this.n.top;
        } else if (i2 != 80) {
            this.u = this.n.centerY() - ((this.M.descent() - this.M.ascent()) / 2.0f);
        } else {
            this.u = this.n.bottom + this.M.ascent();
        }
        int i3 = a2 & 8388615;
        if (i3 == 1) {
            this.w = this.n.centerX() - (measureText / 2.0f);
        } else if (i3 != 5) {
            this.w = this.n.left;
        } else {
            this.w = this.n.right - measureText;
        }
        h(this.f30609b);
        float height = this.X != null ? staticLayout.getHeight() : BitmapDescriptorFactory.HUE_RED;
        CharSequence charSequence3 = this.D;
        float measureText2 = charSequence3 != null ? this.M.measureText(charSequence3, 0, charSequence3.length()) : BitmapDescriptorFactory.HUE_RED;
        StaticLayout staticLayout3 = this.X;
        float f3 = measureText2;
        if (staticLayout3 != null) {
            f3 = measureText2;
            if (this.ac > 1) {
                f3 = measureText2;
                if (!this.E) {
                    f3 = staticLayout3.getWidth();
                }
            }
        }
        StaticLayout staticLayout4 = this.X;
        if (staticLayout4 != null) {
            f2 = staticLayout4.getLineLeft(0);
        }
        this.aa = f2;
        int a3 = androidx.core.view.e.a(this.p, this.E ? 1 : 0);
        int i4 = a3 & 112;
        if (i4 == 48) {
            this.t = this.m.top;
        } else if (i4 != 80) {
            this.t = this.m.centerY() - (height / 2.0f);
        } else {
            this.t = (this.m.bottom - height) + this.M.descent();
        }
        int i5 = a3 & 8388615;
        if (i5 == 1) {
            this.v = this.m.centerX() - (f3 / 2.0f);
        } else if (i5 != 5) {
            this.v = this.m.left;
        } else {
            this.v = this.m.right - f3;
        }
        m();
        g(f);
    }

    private boolean j() {
        return this.ac > 1 && !this.E && !this.F;
    }

    private boolean k() {
        return v.f(this.k) == 1;
    }

    private void l() {
        if (this.G == null && !this.m.isEmpty() && !TextUtils.isEmpty(this.D)) {
            c(BitmapDescriptorFactory.HUE_RED);
            int width = this.X.getWidth();
            int height = this.X.getHeight();
            if (width > 0 && height > 0) {
                this.G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                this.X.draw(new Canvas(this.G));
                if (this.H == null) {
                    this.H = new Paint(3);
                }
            }
        }
    }

    private void m() {
        Bitmap bitmap = this.G;
        if (bitmap != null) {
            bitmap.recycle();
            this.G = null;
        }
    }

    public final float a() {
        a(this.f);
        return -this.f.ascent();
    }

    public final void a(float f) {
        if (this.f30609b != f) {
            this.f30609b = f;
            b();
        }
    }

    public final void a(int i2) {
        if (this.p != i2) {
            this.p = i2;
            b();
        }
    }

    public final void a(int i2, int i3, int i4, int i5) {
        if (!a(this.m, i2, i3, i4, i5)) {
            this.m.set(i2, i3, i4, i5);
            this.L = true;
            d();
        }
    }

    public final void a(TimeInterpolator timeInterpolator) {
        this.N = timeInterpolator;
        b();
    }

    public final void a(ColorStateList colorStateList) {
        if (this.f30610c != colorStateList) {
            this.f30610c = colorStateList;
            b();
        }
    }

    public final void a(Canvas canvas) {
        int save = canvas.save();
        if (this.D != null && this.l) {
            float f = this.x;
            float lineLeft = this.X.getLineLeft(0);
            float f2 = this.aa;
            this.M.setTextSize(this.J);
            float f3 = this.x;
            float f4 = this.y;
            boolean z = false;
            if (this.F) {
                z = false;
                if (this.G != null) {
                    z = true;
                }
            }
            float f5 = this.I;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f3, f4);
            }
            if (z) {
                canvas.drawBitmap(this.G, f3, f4, this.H);
                canvas.restoreToCount(save);
                return;
            }
            if (j()) {
                a(canvas, (f + lineLeft) - (f2 * 2.0f), f4);
            } else {
                canvas.translate(f3, f4);
                this.X.draw(canvas);
            }
            canvas.restoreToCount(save);
        }
    }

    public final void a(RectF rectF, int i2, int i3) {
        float f;
        float f2;
        float f3;
        float f4;
        int i4;
        float f5;
        float f6;
        boolean b2 = b(this.e);
        this.E = b2;
        if (i3 == 17 || (i3 & 7) == 1) {
            f6 = i2 / 2.0f;
            f5 = c() / 2.0f;
        } else {
            if ((i3 & 8388613) == 8388613 || (i3 & 5) == 5) {
                if (!b2) {
                    f6 = this.n.right;
                    f5 = c();
                }
                f = this.n.left;
            } else {
                if (b2) {
                    f6 = this.n.right;
                    f5 = c();
                }
                f = this.n.left;
            }
            rectF.left = f;
            rectF.top = this.n.top;
            if (i3 != 17 || (i3 & 7) == 1) {
                f4 = i2 / 2.0f;
                f3 = c() / 2.0f;
            } else {
                if ((i3 & 8388613) == 8388613 || (i3 & 5) == 5) {
                    if (!this.E) {
                        i4 = this.n.right;
                        f2 = i4;
                    }
                    f4 = rectF.left;
                    f3 = c();
                } else {
                    if (this.E) {
                        i4 = this.n.right;
                        f2 = i4;
                    }
                    f4 = rectF.left;
                    f3 = c();
                }
                rectF.right = f2;
                rectF.bottom = this.n.top + a();
            }
            f2 = f4 + f3;
            rectF.right = f2;
            rectF.bottom = this.n.top + a();
        }
        f = f6 - f5;
        rectF.left = f;
        rectF.top = this.n.top;
        if (i3 != 17) {
        }
        f4 = i2 / 2.0f;
        f3 = c() / 2.0f;
        f2 = f4 + f3;
        rectF.right = f2;
        rectF.bottom = this.n.top + a();
    }

    public final void a(Typeface typeface) {
        if (d(typeface)) {
            b();
        }
    }

    public final void a(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.e, charSequence)) {
            this.e = charSequence;
            this.D = null;
            m();
            b();
        }
    }

    public final boolean a(int[] iArr) {
        this.K = iArr;
        if (!e()) {
            return false;
        }
        b();
        return true;
    }

    public final void b() {
        if (this.k.getHeight() > 0 && this.k.getWidth() > 0) {
            i();
            f();
        }
    }

    public final void b(float f) {
        float a2 = androidx.core.b.a.a(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (a2 != this.f30608a) {
            this.f30608a = a2;
            f();
        }
    }

    public final void b(int i2) {
        if (this.q != i2) {
            this.q = i2;
            b();
        }
    }

    public final void b(int i2, int i3, int i4, int i5) {
        if (!a(this.n, i2, i3, i4, i5)) {
            this.n.set(i2, i3, i4, i5);
            this.L = true;
            d();
        }
    }

    public final void b(ColorStateList colorStateList) {
        if (this.s != colorStateList) {
            this.s = colorStateList;
            b();
        }
    }

    public final void b(Typeface typeface) {
        if (e(typeface)) {
            b();
        }
    }

    public final void c(int i2) {
        com.google.android.material.h.d dVar = new com.google.android.material.h.d(this.k.getContext(), i2);
        if (dVar.f30562a != null) {
            this.f30610c = dVar.f30562a;
        }
        if (dVar.n != BitmapDescriptorFactory.HUE_RED) {
            this.r = dVar.n;
        }
        if (dVar.f30565d != null) {
            this.R = dVar.f30565d;
        }
        this.P = dVar.i;
        this.Q = dVar.j;
        this.O = dVar.k;
        this.W = dVar.m;
        com.google.android.material.h.a aVar = this.C;
        if (aVar != null) {
            aVar.f30559a = true;
        }
        this.C = new com.google.android.material.h.a(new a.AbstractC0489a() { // from class: com.google.android.material.internal.a.1
            @Override // com.google.android.material.h.a.AbstractC0489a
            public final void a(Typeface typeface) {
                a.this.a(typeface);
            }
        }, dVar.a());
        dVar.a(this.k.getContext(), this.C);
        b();
    }

    public final void c(Typeface typeface) {
        boolean d2 = d(typeface);
        boolean e = e(typeface);
        if (d2 || e) {
            b();
        }
    }

    public final void d(int i2) {
        com.google.android.material.h.d dVar = new com.google.android.material.h.d(this.k.getContext(), i2);
        if (dVar.f30562a != null) {
            this.s = dVar.f30562a;
        }
        if (dVar.n != BitmapDescriptorFactory.HUE_RED) {
            this.f30609b = dVar.n;
        }
        if (dVar.f30565d != null) {
            this.V = dVar.f30565d;
        }
        this.T = dVar.i;
        this.U = dVar.j;
        this.S = dVar.k;
        this.h = dVar.m;
        com.google.android.material.h.a aVar = this.B;
        if (aVar != null) {
            aVar.f30559a = true;
        }
        this.B = new com.google.android.material.h.a(new a.AbstractC0489a() { // from class: com.google.android.material.internal.a.2
            @Override // com.google.android.material.h.a.AbstractC0489a
            public final void a(Typeface typeface) {
                a.this.b(typeface);
            }
        }, dVar.a());
        dVar.a(this.k.getContext(), this.B);
        b();
    }

    public final void e(int i2) {
        if (i2 != this.ac) {
            this.ac = i2;
            m();
            b();
        }
    }
}
