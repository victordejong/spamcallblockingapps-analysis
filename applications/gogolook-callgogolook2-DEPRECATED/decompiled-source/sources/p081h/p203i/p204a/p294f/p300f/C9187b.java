package p081h.p203i.p204a.p294f.p300f;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p310p.C9248a;
import p081h.p203i.p204a.p294f.p311q.C9252a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.f.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/f/b.class */
public class C9187b {

    /* renamed from: w */
    public static final boolean f20920w;

    /* renamed from: a */
    public final MaterialButton f20921a;

    /* renamed from: b */
    public int f20922b;

    /* renamed from: c */
    public int f20923c;

    /* renamed from: d */
    public int f20924d;

    /* renamed from: e */
    public int f20925e;

    /* renamed from: f */
    public int f20926f;

    /* renamed from: g */
    public int f20927g;
    @Nullable

    /* renamed from: h */
    public PorterDuff.Mode f20928h;
    @Nullable

    /* renamed from: i */
    public ColorStateList f20929i;
    @Nullable

    /* renamed from: j */
    public ColorStateList f20930j;
    @Nullable

    /* renamed from: k */
    public ColorStateList f20931k;
    @Nullable

    /* renamed from: o */
    public GradientDrawable f20935o;
    @Nullable

    /* renamed from: p */
    public Drawable f20936p;
    @Nullable

    /* renamed from: q */
    public GradientDrawable f20937q;
    @Nullable

    /* renamed from: r */
    public Drawable f20938r;
    @Nullable

    /* renamed from: s */
    public GradientDrawable f20939s;
    @Nullable

    /* renamed from: t */
    public GradientDrawable f20940t;
    @Nullable

    /* renamed from: u */
    public GradientDrawable f20941u;

    /* renamed from: l */
    public final Paint f20932l = new Paint(1);

    /* renamed from: m */
    public final Rect f20933m = new Rect();

    /* renamed from: n */
    public final RectF f20934n = new RectF();

    /* renamed from: v */
    public boolean f20942v = false;

    static {
        f20920w = Build.VERSION.SDK_INT >= 21;
    }

    public C9187b(MaterialButton materialButton) {
        this.f20921a = materialButton;
    }

    /* renamed from: a */
    public final Drawable m15929a() {
        this.f20935o = new GradientDrawable();
        this.f20935o.setCornerRadius(this.f20926f + 1.0E-5f);
        this.f20935o.setColor(-1);
        this.f20936p = DrawableCompat.wrap(this.f20935o);
        DrawableCompat.setTintList(this.f20936p, this.f20929i);
        PorterDuff.Mode mode = this.f20928h;
        if (mode != null) {
            DrawableCompat.setTintMode(this.f20936p, mode);
        }
        this.f20937q = new GradientDrawable();
        this.f20937q.setCornerRadius(this.f20926f + 1.0E-5f);
        this.f20937q.setColor(-1);
        this.f20938r = DrawableCompat.wrap(this.f20937q);
        DrawableCompat.setTintList(this.f20938r, this.f20931k);
        return m15922a(new LayerDrawable(new Drawable[]{this.f20936p, this.f20938r}));
    }

    /* renamed from: a */
    public final InsetDrawable m15922a(Drawable drawable) {
        return new InsetDrawable(drawable, this.f20922b, this.f20924d, this.f20923c, this.f20925e);
    }

    /* renamed from: a */
    public void m15928a(int i) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        if (f20920w && (gradientDrawable2 = this.f20939s) != null) {
            gradientDrawable2.setColor(i);
        } else if (!f20920w && (gradientDrawable = this.f20935o) != null) {
            gradientDrawable.setColor(i);
        }
    }

    /* renamed from: a */
    public void m15927a(int i, int i2) {
        GradientDrawable gradientDrawable = this.f20941u;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.f20922b, this.f20924d, i2 - this.f20923c, i - this.f20925e);
        }
    }

    /* renamed from: a */
    public void m15926a(@Nullable ColorStateList colorStateList) {
        if (this.f20929i != colorStateList) {
            this.f20929i = colorStateList;
            if (f20920w) {
                m15916g();
                return;
            }
            Drawable drawable = this.f20936p;
            if (drawable != null) {
                DrawableCompat.setTintList(drawable, this.f20929i);
            }
        }
    }

    /* renamed from: a */
    public void m15925a(TypedArray typedArray) {
        int i = 0;
        this.f20922b = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetLeft, 0);
        this.f20923c = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetRight, 0);
        this.f20924d = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetTop, 0);
        this.f20925e = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetBottom, 0);
        this.f20926f = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_cornerRadius, 0);
        this.f20927g = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_strokeWidth, 0);
        this.f20928h = C9246l.m15635a(typedArray.getInt(R$styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f20929i = C9248a.m15628a(this.f20921a.getContext(), typedArray, R$styleable.MaterialButton_backgroundTint);
        this.f20930j = C9248a.m15628a(this.f20921a.getContext(), typedArray, R$styleable.MaterialButton_strokeColor);
        this.f20931k = C9248a.m15628a(this.f20921a.getContext(), typedArray, R$styleable.MaterialButton_rippleColor);
        this.f20932l.setStyle(Paint.Style.STROKE);
        this.f20932l.setStrokeWidth(this.f20927g);
        Paint paint = this.f20932l;
        ColorStateList colorStateList = this.f20930j;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(this.f20921a.getDrawableState(), 0);
        }
        paint.setColor(i);
        int paddingStart = ViewCompat.getPaddingStart(this.f20921a);
        int paddingTop = this.f20921a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f20921a);
        int paddingBottom = this.f20921a.getPaddingBottom();
        this.f20921a.m31424a(f20920w ? m15921b() : m15929a());
        ViewCompat.setPaddingRelative(this.f20921a, paddingStart + this.f20922b, paddingTop + this.f20924d, paddingEnd + this.f20923c, paddingBottom + this.f20925e);
    }

    /* renamed from: a */
    public void m15924a(@Nullable Canvas canvas) {
        Rect rect;
        if (canvas != null && this.f20930j != null && this.f20927g > 0) {
            this.f20933m.set(this.f20921a.getBackground().getBounds());
            RectF rectF = this.f20934n;
            float f = this.f20933m.left;
            int i = this.f20927g;
            rectF.set(f + (i / 2.0f) + this.f20922b, rect.top + (i / 2.0f) + this.f20924d, (rect.right - (i / 2.0f)) - this.f20923c, (rect.bottom - (i / 2.0f)) - this.f20925e);
            float f2 = this.f20926f - (this.f20927g / 2.0f);
            canvas.drawRoundRect(this.f20934n, f2, f2, this.f20932l);
        }
    }

    /* renamed from: a */
    public void m15923a(@Nullable PorterDuff.Mode mode) {
        PorterDuff.Mode mode2;
        if (this.f20928h != mode) {
            this.f20928h = mode;
            if (f20920w) {
                m15916g();
                return;
            }
            Drawable drawable = this.f20936p;
            if (drawable != null && (mode2 = this.f20928h) != null) {
                DrawableCompat.setTintMode(drawable, mode2);
            }
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    public final Drawable m15921b() {
        this.f20939s = new GradientDrawable();
        this.f20939s.setCornerRadius(this.f20926f + 1.0E-5f);
        this.f20939s.setColor(-1);
        m15916g();
        this.f20940t = new GradientDrawable();
        this.f20940t.setCornerRadius(this.f20926f + 1.0E-5f);
        this.f20940t.setColor(0);
        this.f20940t.setStroke(this.f20927g, this.f20930j);
        InsetDrawable a = m15922a(new LayerDrawable(new Drawable[]{this.f20939s, this.f20940t}));
        this.f20941u = new GradientDrawable();
        this.f20941u.setCornerRadius(this.f20926f + 1.0E-5f);
        this.f20941u.setColor(-1);
        return new C9186a(C9252a.m15613a(this.f20931k), a, this.f20941u);
    }

    /* renamed from: c */
    public ColorStateList m15920c() {
        return this.f20929i;
    }

    /* renamed from: d */
    public PorterDuff.Mode m15919d() {
        return this.f20928h;
    }

    /* renamed from: e */
    public boolean m15918e() {
        return this.f20942v;
    }

    /* renamed from: f */
    public void m15917f() {
        this.f20942v = true;
        this.f20921a.setSupportBackgroundTintList(this.f20929i);
        this.f20921a.setSupportBackgroundTintMode(this.f20928h);
    }

    /* renamed from: g */
    public final void m15916g() {
        GradientDrawable gradientDrawable = this.f20939s;
        if (gradientDrawable != null) {
            DrawableCompat.setTintList(gradientDrawable, this.f20929i);
            PorterDuff.Mode mode = this.f20928h;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f20939s, mode);
            }
        }
    }
}
