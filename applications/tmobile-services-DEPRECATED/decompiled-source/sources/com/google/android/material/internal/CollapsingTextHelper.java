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
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CollapsingTextHelper.class */
public final class CollapsingTextHelper {

    /* renamed from: Z */
    private static final boolean f10798Z;
    @NonNull

    /* renamed from: a0 */
    private static final Paint f10799a0;

    /* renamed from: A */
    private boolean f10800A;
    @Nullable

    /* renamed from: B */
    private Bitmap f10801B;

    /* renamed from: C */
    private Paint f10802C;

    /* renamed from: D */
    private float f10803D;

    /* renamed from: E */
    private float f10804E;

    /* renamed from: F */
    private int[] f10805F;

    /* renamed from: G */
    private boolean f10806G;

    /* renamed from: J */
    private TimeInterpolator f10809J;

    /* renamed from: K */
    private TimeInterpolator f10810K;

    /* renamed from: L */
    private float f10811L;

    /* renamed from: M */
    private float f10812M;

    /* renamed from: N */
    private float f10813N;

    /* renamed from: O */
    private ColorStateList f10814O;

    /* renamed from: P */
    private float f10815P;

    /* renamed from: Q */
    private float f10816Q;

    /* renamed from: R */
    private float f10817R;

    /* renamed from: S */
    private ColorStateList f10818S;

    /* renamed from: T */
    private StaticLayout f10819T;

    /* renamed from: U */
    private float f10820U;

    /* renamed from: V */
    private float f10821V;

    /* renamed from: W */
    private float f10822W;

    /* renamed from: X */
    private CharSequence f10823X;

    /* renamed from: a */
    private final View f10825a;

    /* renamed from: b */
    private boolean f10826b;

    /* renamed from: c */
    private float f10827c;

    /* renamed from: k */
    private ColorStateList f10835k;

    /* renamed from: l */
    private ColorStateList f10836l;

    /* renamed from: m */
    private float f10837m;

    /* renamed from: n */
    private float f10838n;

    /* renamed from: o */
    private float f10839o;

    /* renamed from: p */
    private float f10840p;

    /* renamed from: q */
    private float f10841q;

    /* renamed from: r */
    private float f10842r;

    /* renamed from: s */
    private Typeface f10843s;

    /* renamed from: t */
    private Typeface f10844t;

    /* renamed from: u */
    private Typeface f10845u;

    /* renamed from: v */
    private CancelableFontCallback f10846v;

    /* renamed from: w */
    private CancelableFontCallback f10847w;
    @Nullable

    /* renamed from: x */
    private CharSequence f10848x;
    @Nullable

    /* renamed from: y */
    private CharSequence f10849y;

    /* renamed from: z */
    private boolean f10850z;

    /* renamed from: g */
    private int f10831g = 16;

    /* renamed from: h */
    private int f10832h = 16;

    /* renamed from: i */
    private float f10833i = 15.0f;

    /* renamed from: j */
    private float f10834j = 15.0f;

    /* renamed from: Y */
    private int f10824Y = 1;
    @NonNull

    /* renamed from: H */
    private final TextPaint f10807H = new TextPaint(129);
    @NonNull

    /* renamed from: I */
    private final TextPaint f10808I = new TextPaint(this.f10807H);
    @NonNull

    /* renamed from: e */
    private final Rect f10829e = new Rect();
    @NonNull

    /* renamed from: d */
    private final Rect f10828d = new Rect();
    @NonNull

    /* renamed from: f */
    private final RectF f10830f = new RectF();

    static {
        f10798Z = Build.VERSION.SDK_INT < 18;
        f10799a0 = null;
        if (0 != 0) {
            throw new NullPointerException();
        }
    }

    public CollapsingTextHelper(View view) {
        this.f10825a = view;
    }

    /* renamed from: C */
    private void m9617C(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f10834j);
        textPaint.setTypeface(this.f10843s);
    }

    /* renamed from: D */
    private void m9616D(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f10833i);
        textPaint.setTypeface(this.f10844t);
    }

    /* renamed from: E */
    private void m9615E(float f) {
        this.f10830f.left = m9611I(this.f10828d.left, this.f10829e.left, f, this.f10809J);
        this.f10830f.top = m9611I(this.f10837m, this.f10838n, f, this.f10809J);
        this.f10830f.right = m9611I(this.f10828d.right, this.f10829e.right, f, this.f10809J);
        this.f10830f.bottom = m9611I(this.f10828d.bottom, this.f10829e.bottom, f, this.f10809J);
    }

    /* renamed from: F */
    private static boolean m9614F(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: G */
    private boolean m9613G() {
        boolean z = true;
        if (ViewCompat.m19244A(this.f10825a) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: I */
    private static float m9611I(float f, float f2, float f3, @Nullable TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.m10769a(f, f2, f4);
    }

    /* renamed from: L */
    private static boolean m9608L(@NonNull Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: P */
    private void m9604P(float f) {
        this.f10820U = f;
        ViewCompat.m19203d0(this.f10825a);
    }

    /* renamed from: T */
    private boolean m9600T(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f10847w;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m9401c();
        }
        if (this.f10843s == typeface) {
            return false;
        }
        this.f10843s = typeface;
        return true;
    }

    /* renamed from: X */
    private void m9596X(float f) {
        this.f10821V = f;
        ViewCompat.m19203d0(this.f10825a);
    }

    /* renamed from: a */
    private static int m9593a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: b */
    private void m9591b() {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        float f = this.f10804E;
        m9581g(this.f10834j);
        CharSequence charSequence = this.f10849y;
        if (!(charSequence == null || (staticLayout2 = this.f10819T) == null)) {
            this.f10823X = TextUtils.ellipsize(charSequence, this.f10807H, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f10823X;
        float f2 = 0.0f;
        float measureText = charSequence2 != null ? this.f10807H.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int b = GravityCompat.m19304b(this.f10832h, this.f10850z ? 1 : 0);
        int i = b & 112;
        if (i == 48) {
            this.f10838n = this.f10829e.top;
        } else if (i != 80) {
            this.f10838n = this.f10829e.centerY() - ((this.f10807H.descent() - this.f10807H.ascent()) / 2.0f);
        } else {
            this.f10838n = this.f10829e.bottom + this.f10807H.ascent();
        }
        int i2 = b & 8388615;
        if (i2 == 1) {
            this.f10840p = this.f10829e.centerX() - (measureText / 2.0f);
        } else if (i2 != 5) {
            this.f10840p = this.f10829e.left;
        } else {
            this.f10840p = this.f10829e.right - measureText;
        }
        m9581g(this.f10833i);
        float height = this.f10819T != null ? staticLayout.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f10849y;
        float measureText2 = charSequence3 != null ? this.f10807H.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout3 = this.f10819T;
        float f3 = measureText2;
        if (staticLayout3 != null) {
            f3 = measureText2;
            if (this.f10824Y > 1) {
                f3 = measureText2;
                if (!this.f10850z) {
                    f3 = staticLayout3.getWidth();
                }
            }
        }
        StaticLayout staticLayout4 = this.f10819T;
        if (staticLayout4 != null) {
            f2 = staticLayout4.getLineLeft(0);
        }
        this.f10822W = f2;
        int b2 = GravityCompat.m19304b(this.f10831g, this.f10850z ? 1 : 0);
        int i3 = b2 & 112;
        if (i3 == 48) {
            this.f10837m = this.f10828d.top;
        } else if (i3 != 80) {
            this.f10837m = this.f10828d.centerY() - (height / 2.0f);
        } else {
            this.f10837m = (this.f10828d.bottom - height) + this.f10807H.descent();
        }
        int i4 = b2 & 8388615;
        if (i4 == 1) {
            this.f10839o = this.f10828d.centerX() - (f3 / 2.0f);
        } else if (i4 != 5) {
            this.f10839o = this.f10828d.left;
        } else {
            this.f10839o = this.f10828d.right - f3;
        }
        m9579h();
        m9584e0(f);
    }

    /* renamed from: c0 */
    private boolean m9588c0(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f10846v;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m9401c();
        }
        if (this.f10844t == typeface) {
            return false;
        }
        this.f10844t = typeface;
        return true;
    }

    /* renamed from: d */
    private void m9587d() {
        m9583f(this.f10827c);
    }

    /* renamed from: e */
    private boolean m9585e(@NonNull CharSequence charSequence) {
        return (m9613G() ? TextDirectionHeuristicsCompat.f3192d : TextDirectionHeuristicsCompat.f3191c).mo19358a(charSequence, 0, charSequence.length());
    }

    /* renamed from: e0 */
    private void m9584e0(float f) {
        m9581g(f);
        boolean z = f10798Z && this.f10803D != 1.0f;
        this.f10800A = z;
        if (z) {
            m9571l();
        }
        ViewCompat.m19203d0(this.f10825a);
    }

    /* renamed from: f */
    private void m9583f(float f) {
        m9615E(f);
        this.f10841q = m9611I(this.f10839o, this.f10840p, f, this.f10809J);
        this.f10842r = m9611I(this.f10837m, this.f10838n, f, this.f10809J);
        m9584e0(m9611I(this.f10833i, this.f10834j, f, this.f10810K));
        m9604P(1.0f - m9611I(0.0f, 1.0f, 1.0f - f, AnimationUtils.f9924b));
        m9596X(m9611I(1.0f, 0.0f, f, AnimationUtils.f9924b));
        if (this.f10836l != this.f10835k) {
            this.f10807H.setColor(m9593a(m9560v(), m9562t(), f));
        } else {
            this.f10807H.setColor(m9562t());
        }
        this.f10807H.setShadowLayer(m9611I(this.f10815P, this.f10811L, f, null), m9611I(this.f10816Q, this.f10812M, f, null), m9611I(this.f10817R, this.f10813N, f, null), m9593a(m9561u(this.f10818S), m9561u(this.f10814O), f));
        ViewCompat.m19203d0(this.f10825a);
    }

    /* renamed from: g */
    private void m9581g(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.f10848x != null) {
            float width = this.f10829e.width();
            float width2 = this.f10828d.width();
            boolean z2 = false;
            int i = 1;
            if (m9614F(f, this.f10834j)) {
                f2 = this.f10834j;
                this.f10803D = 1.0f;
                Typeface typeface = this.f10845u;
                Typeface typeface2 = this.f10843s;
                if (typeface != typeface2) {
                    this.f10845u = typeface2;
                    z = true;
                    f3 = width;
                } else {
                    z = false;
                    f3 = width;
                }
            } else {
                f2 = this.f10833i;
                Typeface typeface3 = this.f10845u;
                Typeface typeface4 = this.f10844t;
                if (typeface3 != typeface4) {
                    this.f10845u = typeface4;
                    z = true;
                } else {
                    z = false;
                }
                if (m9614F(f, this.f10833i)) {
                    this.f10803D = 1.0f;
                } else {
                    this.f10803D = f / this.f10833i;
                }
                float f4 = this.f10834j / this.f10833i;
                f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
            }
            boolean z3 = z;
            if (f3 > 0.0f) {
                z3 = this.f10804E != f2 || this.f10806G || z;
                this.f10804E = f2;
                this.f10806G = false;
            }
            if (this.f10849y == null || z3) {
                this.f10807H.setTextSize(this.f10804E);
                this.f10807H.setTypeface(this.f10845u);
                TextPaint textPaint = this.f10807H;
                if (this.f10803D != 1.0f) {
                    z2 = true;
                }
                textPaint.setLinearText(z2);
                this.f10850z = m9585e(this.f10848x);
                if (m9570l0()) {
                    i = this.f10824Y;
                }
                StaticLayout i2 = m9577i(i, f3, this.f10850z);
                this.f10819T = i2;
                this.f10849y = i2.getText();
            }
        }
    }

    /* renamed from: h */
    private void m9579h() {
        Bitmap bitmap = this.f10801B;
        if (bitmap != null) {
            bitmap.recycle();
            this.f10801B = null;
        }
    }

    /* renamed from: i */
    private StaticLayout m9577i(int i, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            StaticLayoutBuilderCompat c = StaticLayoutBuilderCompat.m9469c(this.f10848x, this.f10807H, (int) f);
            c.m9467e(TextUtils.TruncateAt.END);
            c.m9465g(z);
            c.m9468d(Layout.Alignment.ALIGN_NORMAL);
            c.m9466f(false);
            c.m9464h(i);
            staticLayout = c.m9471a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e) {
            Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
            staticLayout = null;
        }
        Preconditions.m19337d(staticLayout);
        return staticLayout;
    }

    /* renamed from: k */
    private void m9573k(@NonNull Canvas canvas, float f, float f2) {
        int alpha = this.f10807H.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.f10807H.setAlpha((int) (this.f10821V * f3));
        this.f10819T.draw(canvas);
        this.f10807H.setAlpha((int) (this.f10820U * f3));
        int lineBaseline = this.f10819T.getLineBaseline(0);
        CharSequence charSequence = this.f10823X;
        int length = charSequence.length();
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, length, 0.0f, f4, this.f10807H);
        String trim = this.f10823X.toString().trim();
        String str = trim;
        if (trim.endsWith("…")) {
            str = trim.substring(0, trim.length() - 1);
        }
        this.f10807H.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f10819T.getLineEnd(0), str.length()), 0.0f, f4, (Paint) this.f10807H);
    }

    /* renamed from: l */
    private void m9571l() {
        if (this.f10801B == null && !this.f10828d.isEmpty() && !TextUtils.isEmpty(this.f10849y)) {
            m9583f(0.0f);
            int width = this.f10819T.getWidth();
            int height = this.f10819T.getHeight();
            if (width > 0 && height > 0) {
                this.f10801B = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                this.f10819T.draw(new Canvas(this.f10801B));
                if (this.f10802C == null) {
                    this.f10802C = new Paint(3);
                }
            }
        }
    }

    /* renamed from: l0 */
    private boolean m9570l0() {
        boolean z = true;
        if (this.f10824Y <= 1 || this.f10850z || this.f10800A) {
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    private float m9565q(int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) - (m9589c() / 2.0f);
        }
        if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
            return this.f10850z ? this.f10829e.left : this.f10829e.right - m9589c();
        }
        return this.f10850z ? this.f10829e.right - m9589c() : this.f10829e.left;
    }

    /* renamed from: r */
    private float m9564r(@NonNull RectF rectF, int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) + (m9589c() / 2.0f);
        }
        if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
            return this.f10850z ? rectF.left + m9589c() : this.f10829e.right;
        }
        return this.f10850z ? this.f10829e.right : rectF.left + m9589c();
    }

    @ColorInt
    /* renamed from: u */
    private int m9561u(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f10805F;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    @ColorInt
    /* renamed from: v */
    private int m9560v() {
        return m9561u(this.f10835k);
    }

    /* renamed from: A */
    public int m9619A() {
        return this.f10824Y;
    }

    @Nullable
    /* renamed from: B */
    public CharSequence m9618B() {
        return this.f10848x;
    }

    /* renamed from: H */
    public final boolean m9612H() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f10836l;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f10835k) != null && colorStateList.isStateful());
    }

    /* renamed from: J */
    void m9610J() {
        this.f10826b = this.f10829e.width() > 0 && this.f10829e.height() > 0 && this.f10828d.width() > 0 && this.f10828d.height() > 0;
    }

    /* renamed from: K */
    public void m9609K() {
        if (this.f10825a.getHeight() > 0 && this.f10825a.getWidth() > 0) {
            m9591b();
            m9587d();
        }
    }

    /* renamed from: M */
    public void m9607M(int i, int i2, int i3, int i4) {
        if (!m9608L(this.f10829e, i, i2, i3, i4)) {
            this.f10829e.set(i, i2, i3, i4);
            this.f10806G = true;
            m9610J();
        }
    }

    /* renamed from: N */
    public void m9606N(@NonNull Rect rect) {
        m9607M(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: O */
    public void m9605O(int i) {
        TextAppearance textAppearance = new TextAppearance(this.f10825a.getContext(), i);
        ColorStateList colorStateList = textAppearance.f10986b;
        if (colorStateList != null) {
            this.f10836l = colorStateList;
        }
        float f = textAppearance.f10985a;
        if (f != 0.0f) {
            this.f10834j = f;
        }
        ColorStateList colorStateList2 = textAppearance.f10992h;
        if (colorStateList2 != null) {
            this.f10814O = colorStateList2;
        }
        this.f10812M = textAppearance.f10993i;
        this.f10813N = textAppearance.f10994j;
        this.f10811L = textAppearance.f10995k;
        CancelableFontCallback cancelableFontCallback = this.f10847w;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m9401c();
        }
        this.f10847w = new CancelableFontCallback(new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            /* renamed from: a */
            public void mo9399a(Typeface typeface) {
                CollapsingTextHelper.this.m9601S(typeface);
            }
        }, textAppearance.m9384e());
        textAppearance.m9381h(this.f10825a.getContext(), this.f10847w);
        m9609K();
    }

    /* renamed from: Q */
    public void m9603Q(ColorStateList colorStateList) {
        if (this.f10836l != colorStateList) {
            this.f10836l = colorStateList;
            m9609K();
        }
    }

    /* renamed from: R */
    public void m9602R(int i) {
        if (this.f10832h != i) {
            this.f10832h = i;
            m9609K();
        }
    }

    /* renamed from: S */
    public void m9601S(Typeface typeface) {
        if (m9600T(typeface)) {
            m9609K();
        }
    }

    /* renamed from: U */
    public void m9599U(int i, int i2, int i3, int i4) {
        if (!m9608L(this.f10828d, i, i2, i3, i4)) {
            this.f10828d.set(i, i2, i3, i4);
            this.f10806G = true;
            m9610J();
        }
    }

    /* renamed from: V */
    public void m9598V(@NonNull Rect rect) {
        m9599U(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: W */
    public void m9597W(int i) {
        TextAppearance textAppearance = new TextAppearance(this.f10825a.getContext(), i);
        ColorStateList colorStateList = textAppearance.f10986b;
        if (colorStateList != null) {
            this.f10835k = colorStateList;
        }
        float f = textAppearance.f10985a;
        if (f != 0.0f) {
            this.f10833i = f;
        }
        ColorStateList colorStateList2 = textAppearance.f10992h;
        if (colorStateList2 != null) {
            this.f10818S = colorStateList2;
        }
        this.f10816Q = textAppearance.f10993i;
        this.f10817R = textAppearance.f10994j;
        this.f10815P = textAppearance.f10995k;
        CancelableFontCallback cancelableFontCallback = this.f10846v;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m9401c();
        }
        this.f10846v = new CancelableFontCallback(new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.2
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            /* renamed from: a */
            public void mo9399a(Typeface typeface) {
                CollapsingTextHelper.this.m9590b0(typeface);
            }
        }, textAppearance.m9384e());
        textAppearance.m9381h(this.f10825a.getContext(), this.f10846v);
        m9609K();
    }

    /* renamed from: Y */
    public void m9595Y(ColorStateList colorStateList) {
        if (this.f10835k != colorStateList) {
            this.f10835k = colorStateList;
            m9609K();
        }
    }

    /* renamed from: Z */
    public void m9594Z(int i) {
        if (this.f10831g != i) {
            this.f10831g = i;
            m9609K();
        }
    }

    /* renamed from: a0 */
    public void m9592a0(float f) {
        if (this.f10833i != f) {
            this.f10833i = f;
            m9609K();
        }
    }

    /* renamed from: b0 */
    public void m9590b0(Typeface typeface) {
        if (m9588c0(typeface)) {
            m9609K();
        }
    }

    /* renamed from: c */
    public float m9589c() {
        if (this.f10848x == null) {
            return 0.0f;
        }
        m9617C(this.f10808I);
        TextPaint textPaint = this.f10808I;
        CharSequence charSequence = this.f10848x;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: d0 */
    public void m9586d0(float f) {
        float a = MathUtils.m19452a(f, 0.0f, 1.0f);
        if (a != this.f10827c) {
            this.f10827c = a;
            m9587d();
        }
    }

    /* renamed from: f0 */
    public void m9582f0(int i) {
        if (i != this.f10824Y) {
            this.f10824Y = i;
            m9579h();
            m9609K();
        }
    }

    /* renamed from: g0 */
    public void m9580g0(TimeInterpolator timeInterpolator) {
        this.f10809J = timeInterpolator;
        m9609K();
    }

    /* renamed from: h0 */
    public final boolean m9578h0(int[] iArr) {
        this.f10805F = iArr;
        if (!m9612H()) {
            return false;
        }
        m9609K();
        return true;
    }

    /* renamed from: i0 */
    public void m9576i0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f10848x, charSequence)) {
            this.f10848x = charSequence;
            this.f10849y = null;
            m9579h();
            m9609K();
        }
    }

    /* renamed from: j */
    public void m9575j(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (this.f10849y != null && this.f10826b) {
            float f = this.f10841q;
            float lineLeft = this.f10819T.getLineLeft(0);
            float f2 = this.f10822W;
            this.f10807H.setTextSize(this.f10804E);
            float f3 = this.f10841q;
            float f4 = this.f10842r;
            boolean z = false;
            if (this.f10800A) {
                z = false;
                if (this.f10801B != null) {
                    z = true;
                }
            }
            float f5 = this.f10803D;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f3, f4);
            }
            if (z) {
                canvas.drawBitmap(this.f10801B, f3, f4, this.f10802C);
                canvas.restoreToCount(save);
                return;
            }
            if (m9570l0()) {
                m9573k(canvas, (f + lineLeft) - (f2 * 2.0f), f4);
            } else {
                canvas.translate(f3, f4);
                this.f10819T.draw(canvas);
            }
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: j0 */
    public void m9574j0(TimeInterpolator timeInterpolator) {
        this.f10810K = timeInterpolator;
        m9609K();
    }

    /* renamed from: k0 */
    public void m9572k0(Typeface typeface) {
        boolean T = m9600T(typeface);
        boolean c0 = m9588c0(typeface);
        if (T || c0) {
            m9609K();
        }
    }

    /* renamed from: m */
    public void m9569m(@NonNull RectF rectF, int i, int i2) {
        this.f10850z = m9585e(this.f10848x);
        rectF.left = m9565q(i, i2);
        rectF.top = this.f10829e.top;
        rectF.right = m9564r(rectF, i, i2);
        rectF.bottom = this.f10829e.top + m9566p();
    }

    /* renamed from: n */
    public ColorStateList m9568n() {
        return this.f10836l;
    }

    /* renamed from: o */
    public int m9567o() {
        return this.f10832h;
    }

    /* renamed from: p */
    public float m9566p() {
        m9617C(this.f10808I);
        return -this.f10808I.ascent();
    }

    /* renamed from: s */
    public Typeface m9563s() {
        Typeface typeface = this.f10843s;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    @ColorInt
    /* renamed from: t */
    public int m9562t() {
        return m9561u(this.f10836l);
    }

    /* renamed from: w */
    public int m9559w() {
        return this.f10831g;
    }

    /* renamed from: x */
    public float m9558x() {
        m9616D(this.f10808I);
        return -this.f10808I.ascent();
    }

    /* renamed from: y */
    public Typeface m9557y() {
        Typeface typeface = this.f10844t;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    /* renamed from: z */
    public float m9556z() {
        return this.f10827c;
    }
}
