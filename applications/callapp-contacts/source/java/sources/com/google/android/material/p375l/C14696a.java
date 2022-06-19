package com.google.android.material.p375l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.C0834a;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14641i;
import com.google.android.material.internal.C14647l;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p374k.C14668f;
import com.google.android.material.p374k.C14669g;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14675j;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.l.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/l/a.class */
public class C14696a extends C14670h implements C14641i.AbstractC14643a {

    /* renamed from: e */
    private static final int f53596e = C14376a.C14387k.Widget_MaterialComponents_Tooltip;

    /* renamed from: f */
    private static final int f53597f = C14376a.C14378b.tooltipStyle;

    /* renamed from: g */
    private CharSequence f53602g;

    /* renamed from: h */
    private final Context f53603h;

    /* renamed from: j */
    private final C14641i f53605j;

    /* renamed from: m */
    private int f53608m;

    /* renamed from: n */
    private int f53609n;

    /* renamed from: o */
    private int f53610o;

    /* renamed from: p */
    private int f53611p;

    /* renamed from: q */
    private int f53612q;

    /* renamed from: r */
    private int f53613r;

    /* renamed from: i */
    private final Paint.FontMetrics f53604i = new Paint.FontMetrics();

    /* renamed from: k */
    private final View.OnLayoutChangeListener f53606k = new View.OnLayoutChangeListener() { // from class: com.google.android.material.l.a.1
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C14696a.this.m10367c(view);
        }
    };

    /* renamed from: l */
    private final Rect f53607l = new Rect();

    /* renamed from: a */
    public float f53598a = 1.0f;

    /* renamed from: b */
    public float f53599b = 1.0f;

    /* renamed from: s */
    private final float f53614s = 0.5f;

    /* renamed from: c */
    public float f53600c = 0.5f;

    /* renamed from: d */
    public float f53601d = 1.0f;

    private C14696a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        C14641i c14641i = new C14641i(this);
        this.f53605j = c14641i;
        this.f53603h = context;
        c14641i.f53426a.density = context.getResources().getDisplayMetrics().density;
        c14641i.f53426a.setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: a */
    private float m10375a() {
        float f;
        int i;
        if (((this.f53607l.right - getBounds().right) - this.f53613r) - this.f53611p < 0) {
            i = ((this.f53607l.right - getBounds().right) - this.f53613r) - this.f53611p;
        } else if (((this.f53607l.left - getBounds().left) - this.f53613r) + this.f53611p <= 0) {
            f = 0.0f;
            return f;
        } else {
            i = ((this.f53607l.left - getBounds().left) - this.f53613r) + this.f53611p;
        }
        f = i;
        return f;
    }

    /* renamed from: a */
    public static C14696a m10374a(Context context, int i) {
        C14696a c14696a = new C14696a(context, null, 0, i);
        TypedArray m10508a = C14647l.m10508a(c14696a.f53603h, null, C14376a.C14388l.Tooltip, 0, i, new int[0]);
        c14696a.f53612q = c14696a.f53603h.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_tooltip_arrowSize);
        C14678m.C14680a m10422b = c14696a.f53492t.f53500a.m10422b();
        m10422b.f53549k = c14696a.m10368c();
        c14696a.setShapeAppearanceModel(m10422b.m10421a());
        c14696a.m10371a(m10508a.getText(C14376a.C14388l.Tooltip_android_text));
        c14696a.f53605j.m10519a(C14598c.m10648c(c14696a.f53603h, m10508a, C14376a.C14388l.Tooltip_android_textAppearance), c14696a.f53603h);
        int m10657a = C14597b.m10657a(c14696a.f53603h, C14376a.C14378b.colorOnBackground, C14696a.class.getCanonicalName());
        c14696a.m10456g(ColorStateList.valueOf(m10508a.getColor(C14376a.C14388l.Tooltip_backgroundTint, C0834a.m44403a(C0834a.m44396b(m10657a, 153), C0834a.m44396b(C14597b.m10657a(c14696a.f53603h, 16842801, C14696a.class.getCanonicalName()), 229)))));
        c14696a.m10454h(ColorStateList.valueOf(C14597b.m10657a(c14696a.f53603h, C14376a.C14378b.colorSurface, C14696a.class.getCanonicalName())));
        c14696a.f53608m = m10508a.getDimensionPixelSize(C14376a.C14388l.Tooltip_android_padding, 0);
        c14696a.f53609n = m10508a.getDimensionPixelSize(C14376a.C14388l.Tooltip_android_minWidth, 0);
        c14696a.f53610o = m10508a.getDimensionPixelSize(C14376a.C14388l.Tooltip_android_minHeight, 0);
        c14696a.f53611p = m10508a.getDimensionPixelSize(C14376a.C14388l.Tooltip_android_layout_margin, 0);
        m10508a.recycle();
        return c14696a;
    }

    /* renamed from: c */
    private C14668f m10368c() {
        float f = -m10375a();
        float width = ((float) (getBounds().width() - (this.f53612q * Math.sqrt(2.0d)))) / 2.0f;
        return new C14675j(new C14669g(this.f53612q), Math.min(Math.max(f, -width), width));
    }

    /* renamed from: c */
    public void m10367c(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f53613r = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f53607l);
    }

    /* renamed from: a */
    public final void m10373a(View view) {
        if (view == null) {
            return;
        }
        m10367c(view);
        view.addOnLayoutChangeListener(this.f53606k);
    }

    /* renamed from: a */
    public final void m10371a(CharSequence charSequence) {
        if (!TextUtils.equals(this.f53602g, charSequence)) {
            this.f53602g = charSequence;
            this.f53605j.f53427b = true;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.internal.C14641i.AbstractC14643a
    /* renamed from: b */
    public final void mo10370b() {
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m10369b(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f53606k);
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds;
        canvas.save();
        canvas.scale(this.f53598a, this.f53599b, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f53600c));
        canvas.translate(m10375a(), (float) (-((this.f53612q * Math.sqrt(2.0d)) - this.f53612q)));
        super.draw(canvas);
        if (this.f53602g != null) {
            float centerY = getBounds().centerY();
            this.f53605j.f53426a.getFontMetrics(this.f53604i);
            int i = (int) (centerY - ((this.f53604i.descent + this.f53604i.ascent) / 2.0f));
            if (this.f53605j.f53429d != null) {
                this.f53605j.f53426a.drawableState = getState();
                this.f53605j.m10520a(this.f53603h);
                this.f53605j.f53426a.setAlpha((int) (this.f53601d * 255.0f));
            }
            CharSequence charSequence = this.f53602g;
            canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), i, this.f53605j.f53426a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f53605j.f53426a.getTextSize(), this.f53610o);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        float f = this.f53608m * 2;
        CharSequence charSequence = this.f53602g;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.f53605j.m10517a(charSequence.toString())), this.f53609n);
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        C14678m.C14680a m10422b = this.f53492t.f53500a.m10422b();
        m10422b.f53549k = m10368c();
        setShapeAppearanceModel(m10422b.m10421a());
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable, com.google.android.material.internal.C14641i.AbstractC14643a
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }
}
