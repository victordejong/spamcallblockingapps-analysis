package com.google.android.material.card;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/card/MaterialCardViewHelper.class */
public class MaterialCardViewHelper {

    /* renamed from: t */
    private static final int[] f10340t = {16842912};

    /* renamed from: u */
    private static final double f10341u = Math.cos(Math.toRadians(45.0d));
    @NonNull

    /* renamed from: a */
    private final MaterialCardView f10342a;
    @NonNull

    /* renamed from: c */
    private final MaterialShapeDrawable f10344c;
    @NonNull

    /* renamed from: d */
    private final MaterialShapeDrawable f10345d;
    @Dimension

    /* renamed from: e */
    private final int f10346e;
    @Dimension

    /* renamed from: f */
    private final int f10347f;
    @Dimension

    /* renamed from: g */
    private int f10348g;
    @Nullable

    /* renamed from: h */
    private Drawable f10349h;
    @Nullable

    /* renamed from: i */
    private Drawable f10350i;
    @Nullable

    /* renamed from: j */
    private ColorStateList f10351j;
    @Nullable

    /* renamed from: k */
    private ColorStateList f10352k;
    @Nullable

    /* renamed from: l */
    private ShapeAppearanceModel f10353l;
    @Nullable

    /* renamed from: m */
    private ColorStateList f10354m;
    @Nullable

    /* renamed from: n */
    private Drawable f10355n;
    @Nullable

    /* renamed from: o */
    private LayerDrawable f10356o;
    @Nullable

    /* renamed from: p */
    private MaterialShapeDrawable f10357p;
    @Nullable

    /* renamed from: q */
    private MaterialShapeDrawable f10358q;

    /* renamed from: s */
    private boolean f10360s;
    @NonNull

    /* renamed from: b */
    private final Rect f10343b = new Rect();

    /* renamed from: r */
    private boolean f10359r = false;

    public MaterialCardViewHelper(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i, @StyleRes int i2) {
        this.f10342a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.f10344c = materialShapeDrawable;
        materialShapeDrawable.m9338M(materialCardView.getContext());
        this.f10344c.m9320c0(-12303292);
        ShapeAppearanceModel.Builder v = this.f10344c.getShapeAppearanceModel().m9256v();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, C1027R.styleable.CardView, i, C1027R.style.CardView);
        if (obtainStyledAttributes.hasValue(C1027R.styleable.CardView_cardCornerRadius)) {
            v.m9230o(obtainStyledAttributes.getDimension(C1027R.styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.f10345d = new MaterialShapeDrawable();
        m10267N(v.m9232m());
        Resources resources = materialCardView.getResources();
        this.f10346e = resources.getDimensionPixelSize(C1027R.dimen.mtrl_card_checked_icon_margin);
        this.f10347f = resources.getDimensionPixelSize(C1027R.dimen.mtrl_card_checked_icon_size);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: R */
    private boolean m10263R() {
        return this.f10342a.getPreventCornerOverlap() && !m10250e();
    }

    /* renamed from: S */
    private boolean m10262S() {
        return this.f10342a.getPreventCornerOverlap() && m10250e() && this.f10342a.getUseCompatPadding();
    }

    /* renamed from: W */
    private void m10258W(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 || !(this.f10342a.getForeground() instanceof InsetDrawable)) {
            this.f10342a.setForeground(m10229z(drawable));
        } else {
            ((InsetDrawable) this.f10342a.getForeground()).setDrawable(drawable);
        }
    }

    /* renamed from: Y */
    private void m10256Y() {
        Drawable drawable;
        if (!RippleUtils.f11008a || (drawable = this.f10355n) == null) {
            MaterialShapeDrawable materialShapeDrawable = this.f10357p;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.m9328W(this.f10351j);
                return;
            }
            return;
        }
        ((RippleDrawable) drawable).setColor(this.f10351j);
    }

    /* renamed from: a */
    private float m10254a() {
        return Math.max(Math.max(m10253b(this.f10353l.m9261q(), this.f10344c.m9345F()), m10253b(this.f10353l.m9259s(), this.f10344c.m9344G())), Math.max(m10253b(this.f10353l.m9267k(), this.f10344c.m9293t()), m10253b(this.f10353l.m9269i(), this.f10344c.m9294s())));
    }

    /* renamed from: b */
    private float m10253b(CornerTreatment cornerTreatment, float f) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - f10341u) * f);
        }
        if (cornerTreatment instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: c */
    private float m10252c() {
        return this.f10342a.getMaxCardElevation() + (m10262S() ? m10254a() : 0.0f);
    }

    /* renamed from: d */
    private float m10251d() {
        return (this.f10342a.getMaxCardElevation() * 1.5f) + (m10262S() ? m10254a() : 0.0f);
    }

    /* renamed from: e */
    private boolean m10250e() {
        return Build.VERSION.SDK_INT >= 21 && this.f10344c.m9335P();
    }

    @NonNull
    /* renamed from: f */
    private Drawable m10249f() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.f10350i;
        if (drawable != null) {
            stateListDrawable.addState(f10340t, drawable);
        }
        return stateListDrawable;
    }

    @NonNull
    /* renamed from: g */
    private Drawable m10248g() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable i = m10246i();
        this.f10357p = i;
        i.m9328W(this.f10351j);
        stateListDrawable.addState(new int[]{16842919}, this.f10357p);
        return stateListDrawable;
    }

    @NonNull
    /* renamed from: h */
    private Drawable m10247h() {
        if (!RippleUtils.f11008a) {
            return m10248g();
        }
        this.f10358q = m10246i();
        return new RippleDrawable(this.f10351j, null, this.f10358q);
    }

    @NonNull
    /* renamed from: i */
    private MaterialShapeDrawable m10246i() {
        return new MaterialShapeDrawable(this.f10353l);
    }

    @NonNull
    /* renamed from: p */
    private Drawable m10239p() {
        if (this.f10355n == null) {
            this.f10355n = m10247h();
        }
        if (this.f10356o == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f10355n, this.f10345d, m10249f()});
            this.f10356o = layerDrawable;
            layerDrawable.setId(2, C1027R.C1030id.mtrl_card_checked_layer_id);
        }
        return this.f10356o;
    }

    /* renamed from: r */
    private float m10237r() {
        if (!this.f10342a.getPreventCornerOverlap()) {
            return 0.0f;
        }
        if (Build.VERSION.SDK_INT < 21 || this.f10342a.getUseCompatPadding()) {
            return (float) ((1.0d - f10341u) * this.f10342a.getCardViewRadius());
        }
        return 0.0f;
    }

    @NonNull
    /* renamed from: z */
    private Drawable m10229z(Drawable drawable) {
        int i;
        int i2;
        if ((Build.VERSION.SDK_INT < 21) || this.f10342a.getUseCompatPadding()) {
            i2 = (int) Math.ceil(m10251d());
            i = (int) Math.ceil(m10252c());
        } else {
            i = 0;
            i2 = 0;
        }
        return new InsetDrawable(this, drawable, i, i2, i, i2) { // from class: com.google.android.material.card.MaterialCardViewHelper.1
            @Override // android.graphics.drawable.Drawable
            public int getMinimumHeight() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public int getMinimumWidth() {
                return -1;
            }

            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public boolean m10280A() {
        return this.f10359r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public boolean m10279B() {
        return this.f10360s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public void m10278C(@NonNull TypedArray typedArray) {
        ColorStateList a = MaterialResources.m9394a(this.f10342a.getContext(), typedArray, C1027R.styleable.MaterialCardView_strokeColor);
        this.f10354m = a;
        if (a == null) {
            this.f10354m = ColorStateList.valueOf(-1);
        }
        this.f10348g = typedArray.getDimensionPixelSize(C1027R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(C1027R.styleable.MaterialCardView_android_checkable, false);
        this.f10360s = z;
        this.f10342a.setLongClickable(z);
        this.f10352k = MaterialResources.m9394a(this.f10342a.getContext(), typedArray, C1027R.styleable.MaterialCardView_checkedIconTint);
        m10272I(MaterialResources.m9391d(this.f10342a.getContext(), typedArray, C1027R.styleable.MaterialCardView_checkedIcon));
        ColorStateList a2 = MaterialResources.m9394a(this.f10342a.getContext(), typedArray, C1027R.styleable.MaterialCardView_rippleColor);
        this.f10351j = a2;
        if (a2 == null) {
            this.f10351j = ColorStateList.valueOf(MaterialColors.m10014c(this.f10342a, C1027R.attr.colorControlHighlight));
        }
        m10274G(MaterialResources.m9394a(this.f10342a.getContext(), typedArray, C1027R.styleable.MaterialCardView_cardForegroundColor));
        m10256Y();
        m10259V();
        m10255Z();
        this.f10342a.setBackgroundInternal(m10229z(this.f10344c));
        Drawable p = this.f10342a.isClickable() ? m10239p() : this.f10345d;
        this.f10349h = p;
        this.f10342a.setForeground(m10229z(p));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r7.f10342a.getUseCompatPadding() != false) goto L_0x0043;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10277D(int r8, int r9) {
        /*
            r7 = this;
            r0 = r7
            android.graphics.drawable.LayerDrawable r0 = r0.f10356o
            if (r0 == 0) goto L_0x008c
            r0 = r7
            int r0 = r0.f10346e
            r10 = r0
            r0 = r7
            int r0 = r0.f10347f
            r11 = r0
            r0 = r8
            r1 = r10
            int r0 = r0 - r1
            r1 = r11
            int r0 = r0 - r1
            r12 = r0
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            r1 = r11
            int r0 = r0 - r1
            r10 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 >= r1) goto L_0x002e
            r0 = 1
            r8 = r0
            goto L_0x0030
        L_0x002e:
            r0 = 0
            r8 = r0
        L_0x0030:
            r0 = r8
            if (r0 != 0) goto L_0x0043
            r0 = r12
            r8 = r0
            r0 = r10
            r9 = r0
            r0 = r7
            com.google.android.material.card.MaterialCardView r0 = r0.f10342a
            boolean r0 = r0.getUseCompatPadding()
            if (r0 == 0) goto L_0x0060
        L_0x0043:
            r0 = r10
            r1 = r7
            float r1 = r1.m10251d()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r9 = r0
            r0 = r12
            r1 = r7
            float r1 = r1.m10252c()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r8 = r0
        L_0x0060:
            r0 = r7
            int r0 = r0.f10346e
            r12 = r0
            r0 = r7
            com.google.android.material.card.MaterialCardView r0 = r0.f10342a
            int r0 = androidx.core.view.ViewCompat.m19244A(r0)
            r1 = 1
            if (r0 != r1) goto L_0x007a
            r0 = r12
            r10 = r0
            r0 = r8
            r12 = r0
            goto L_0x007c
        L_0x007a:
            r0 = r8
            r10 = r0
        L_0x007c:
            r0 = r7
            android.graphics.drawable.LayerDrawable r0 = r0.f10356o
            r1 = 2
            r2 = r10
            r3 = r7
            int r3 = r3.f10346e
            r4 = r12
            r5 = r9
            r0.setLayerInset(r1, r2, r3, r4, r5)
        L_0x008c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardViewHelper.m10277D(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public void m10276E(boolean z) {
        this.f10359r = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void m10275F(ColorStateList colorStateList) {
        this.f10344c.m9328W(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public void m10274G(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f10345d;
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.m9328W(colorStateList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public void m10273H(boolean z) {
        this.f10360s = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m10272I(@Nullable Drawable drawable) {
        this.f10350i = drawable;
        if (drawable != null) {
            Drawable r = DrawableCompat.m19495r(drawable.mutate());
            this.f10350i = r;
            DrawableCompat.m19498o(r, this.f10352k);
        }
        if (this.f10356o != null) {
            this.f10356o.setDrawableByLayerId(C1027R.C1030id.mtrl_card_checked_layer_id, m10249f());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public void m10271J(@Nullable ColorStateList colorStateList) {
        this.f10352k = colorStateList;
        Drawable drawable = this.f10350i;
        if (drawable != null) {
            DrawableCompat.m19498o(drawable, colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public void m10270K(float f) {
        m10267N(this.f10353l.m9255w(f));
        this.f10349h.invalidateSelf();
        if (m10262S() || m10263R()) {
            m10260U();
        }
        if (m10262S()) {
            m10257X();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public void m10269L(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f10344c.m9327X(f);
        MaterialShapeDrawable materialShapeDrawable = this.f10345d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.m9327X(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f10358q;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.m9327X(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public void m10268M(@Nullable ColorStateList colorStateList) {
        this.f10351j = colorStateList;
        m10256Y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public void m10267N(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10353l = shapeAppearanceModel;
        this.f10344c.setShapeAppearanceModel(shapeAppearanceModel);
        MaterialShapeDrawable materialShapeDrawable = this.f10344c;
        materialShapeDrawable.m9322b0(!materialShapeDrawable.m9335P());
        MaterialShapeDrawable materialShapeDrawable2 = this.f10345d;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.f10358q;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable4 = this.f10357p;
        if (materialShapeDrawable4 != null) {
            materialShapeDrawable4.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public void m10266O(ColorStateList colorStateList) {
        if (this.f10354m != colorStateList) {
            this.f10354m = colorStateList;
            m10255Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public void m10265P(@Dimension int i) {
        if (i != this.f10348g) {
            this.f10348g = i;
            m10255Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public void m10264Q(int i, int i2, int i3, int i4) {
        this.f10343b.set(i, i2, i3, i4);
        m10260U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public void m10261T() {
        Drawable drawable = this.f10349h;
        Drawable p = this.f10342a.isClickable() ? m10239p() : this.f10345d;
        this.f10349h = p;
        if (drawable != p) {
            m10258W(p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public void m10260U() {
        int a = (int) ((m10263R() || m10262S() ? m10254a() : 0.0f) - m10237r());
        MaterialCardView materialCardView = this.f10342a;
        Rect rect = this.f10343b;
        materialCardView.m10286A(rect.left + a, rect.top + a, rect.right + a, rect.bottom + a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public void m10259V() {
        this.f10344c.m9329V(this.f10342a.getCardElevation());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public void m10257X() {
        if (!m10280A()) {
            this.f10342a.setBackgroundInternal(m10229z(this.f10344c));
        }
        this.f10342a.setForeground(m10229z(this.f10349h));
    }

    /* renamed from: Z */
    void m10255Z() {
        this.f10345d.m9310h0(this.f10348g, this.f10354m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* renamed from: j */
    public void m10245j() {
        Drawable drawable = this.f10355n;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.f10355n.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f10355n.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: k */
    public MaterialShapeDrawable m10244k() {
        return this.f10344c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public ColorStateList m10243l() {
        return this.f10344c.m9289x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public ColorStateList m10242m() {
        return this.f10345d.m9289x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: n */
    public Drawable m10241n() {
        return this.f10350i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: o */
    public ColorStateList m10240o() {
        return this.f10352k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public float m10238q() {
        return this.f10344c.m9345F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange
    /* renamed from: s */
    public float m10236s() {
        return this.f10344c.m9288y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: t */
    public ColorStateList m10235t() {
        return this.f10351j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public ShapeAppearanceModel m10234u() {
        return this.f10353l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    /* renamed from: v */
    public int m10233v() {
        ColorStateList colorStateList = this.f10354m;
        return colorStateList == null ? -1 : colorStateList.getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: w */
    public ColorStateList m10232w() {
        return this.f10354m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension
    /* renamed from: x */
    public int m10231x() {
        return this.f10348g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: y */
    public Rect m10230y() {
        return this.f10343b;
    }
}
