package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/tooltip/TooltipDrawable.class */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    @Nullable

    /* renamed from: D */
    private CharSequence f11602D;
    @NonNull

    /* renamed from: E */
    private final Context f11603E;
    @Nullable

    /* renamed from: F */
    private final Paint.FontMetrics f11604F = new Paint.FontMetrics();
    @NonNull

    /* renamed from: G */
    private final TextDrawableHelper f11605G = new TextDrawableHelper(this);
    @NonNull

    /* renamed from: H */
    private final View.OnLayoutChangeListener f11606H = new View.OnLayoutChangeListener() { // from class: com.google.android.material.tooltip.TooltipDrawable.1
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            TooltipDrawable.this.m8697A0(view);
        }
    };
    @NonNull

    /* renamed from: I */
    private final Rect f11607I = new Rect();

    /* renamed from: J */
    private int f11608J;

    /* renamed from: K */
    private int f11609K;

    /* renamed from: L */
    private int f11610L;

    /* renamed from: M */
    private int f11611M;

    /* renamed from: N */
    private int f11612N;

    /* renamed from: O */
    private int f11613O;

    private TooltipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.f11603E = context;
        this.f11605G.m9459e().density = context.getResources().getDisplayMetrics().density;
        this.f11605G.m9459e().setTextAlign(Paint.Align.CENTER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A0 */
    public void m8697A0(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f11613O = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f11607I);
    }

    /* renamed from: o0 */
    private float m8694o0() {
        float f;
        int i;
        if (((this.f11607I.right - getBounds().right) - this.f11613O) - this.f11611M < 0) {
            i = ((this.f11607I.right - getBounds().right) - this.f11613O) - this.f11611M;
        } else if (((this.f11607I.left - getBounds().left) - this.f11613O) + this.f11611M > 0) {
            i = ((this.f11607I.left - getBounds().left) - this.f11613O) + this.f11611M;
        } else {
            f = 0.0f;
            return f;
        }
        f = i;
        return f;
    }

    /* renamed from: p0 */
    private float m8693p0() {
        this.f11605G.m9459e().getFontMetrics(this.f11604F);
        Paint.FontMetrics fontMetrics = this.f11604F;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: q0 */
    private float m8692q0(@NonNull Rect rect) {
        return rect.centerY() - m8693p0();
    }

    @NonNull
    /* renamed from: r0 */
    public static TooltipDrawable m8691r0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i, i2);
        tooltipDrawable.m8686w0(attributeSet, i, i2);
        return tooltipDrawable;
    }

    /* renamed from: s0 */
    private EdgeTreatment m8690s0() {
        float f = -m8694o0();
        float width = ((float) (getBounds().width() - (this.f11612N * Math.sqrt(2.0d)))) / 2.0f;
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.f11612N), Math.min(Math.max(f, -width), width));
    }

    /* renamed from: u0 */
    private void m8688u0(@NonNull Canvas canvas) {
        if (this.f11602D != null) {
            Rect bounds = getBounds();
            int q0 = (int) m8692q0(bounds);
            if (this.f11605G.m9460d() != null) {
                this.f11605G.m9459e().drawableState = getState();
                this.f11605G.m9454j(this.f11603E);
            }
            CharSequence charSequence = this.f11602D;
            canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), q0, this.f11605G.m9459e());
        }
    }

    /* renamed from: v0 */
    private float m8687v0() {
        CharSequence charSequence = this.f11602D;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f11605G.m9458f(charSequence.toString());
    }

    /* renamed from: w0 */
    private void m8686w0(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray h = ThemeEnforcement.m9445h(this.f11603E, attributeSet, C1027R.styleable.Tooltip, i, i2, new int[0]);
        this.f11612N = this.f11603E.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_tooltip_arrowSize);
        ShapeAppearanceModel.Builder v = getShapeAppearanceModel().m9256v();
        v.m9227r(m8690s0());
        setShapeAppearanceModel(v.m9232m());
        m8684y0(h.getText(C1027R.styleable.Tooltip_android_text));
        m8683z0(MaterialResources.m9389f(this.f11603E, h, C1027R.styleable.Tooltip_android_textAppearance));
        m9328W(ColorStateList.valueOf(h.getColor(C1027R.styleable.Tooltip_backgroundTint, MaterialColors.m10012e(ColorUtils.m19584d(MaterialColors.m10015b(this.f11603E, 16842801, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.m19584d(MaterialColors.m10015b(this.f11603E, C1027R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        m9308i0(ColorStateList.valueOf(MaterialColors.m10015b(this.f11603E, C1027R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        this.f11608J = h.getDimensionPixelSize(C1027R.styleable.Tooltip_android_padding, 0);
        this.f11609K = h.getDimensionPixelSize(C1027R.styleable.Tooltip_android_minWidth, 0);
        this.f11610L = h.getDimensionPixelSize(C1027R.styleable.Tooltip_android_minHeight, 0);
        this.f11611M = h.getDimensionPixelSize(C1027R.styleable.Tooltip_android_layout_margin, 0);
        h.recycle();
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    /* renamed from: a */
    public void mo8696a() {
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.translate(m8694o0(), (float) (-((this.f11612N * Math.sqrt(2.0d)) - this.f11612N)));
        super.draw(canvas);
        m8688u0(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f11605G.m9459e().getTextSize(), this.f11610L);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f11608J * 2) + m8687v0(), this.f11609K);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        ShapeAppearanceModel.Builder v = getShapeAppearanceModel().m9256v();
        v.m9227r(m8690s0());
        setShapeAppearanceModel(v.m9232m());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    /* renamed from: t0 */
    public void m8689t0(@Nullable View view) {
        if (view != null) {
            view.removeOnLayoutChangeListener(this.f11606H);
        }
    }

    /* renamed from: x0 */
    public void m8685x0(@Nullable View view) {
        if (view != null) {
            m8697A0(view);
            view.addOnLayoutChangeListener(this.f11606H);
        }
    }

    /* renamed from: y0 */
    public void m8684y0(@Nullable CharSequence charSequence) {
        if (!TextUtils.equals(this.f11602D, charSequence)) {
            this.f11602D = charSequence;
            this.f11605G.m9455i(true);
            invalidateSelf();
        }
    }

    /* renamed from: z0 */
    public void m8683z0(@Nullable TextAppearance textAppearance) {
        this.f11605G.m9456h(textAppearance, this.f11603E);
    }
}
