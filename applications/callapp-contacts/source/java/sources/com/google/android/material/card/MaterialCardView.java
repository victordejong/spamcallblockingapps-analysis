package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.cardview.widget.CardView;
import androidx.core.graphics.drawable.C0840a;
import com.google.android.material.C14376a;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.p374k.C14678m;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView implements Checkable, AbstractC14695q {

    /* renamed from: e */
    private static final int[] f52774e = {16842911};

    /* renamed from: f */
    private static final int[] f52775f = {16842912};

    /* renamed from: g */
    private static final int[] f52776g = {C14376a.C14378b.state_dragged};

    /* renamed from: h */
    private static final int f52777h = C14376a.C14387k.Widget_MaterialComponents_CardView;

    /* renamed from: i */
    private final C14475a f52778i;

    /* renamed from: j */
    private boolean f52779j;

    /* renamed from: k */
    private boolean f52780k;

    /* renamed from: l */
    private boolean f52781l;

    /* renamed from: m */
    private AbstractC14474a f52782m;

    /* renamed from: com.google.android.material.card.MaterialCardView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/card/MaterialCardView$a.class */
    public interface AbstractC14474a {
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.materialCardViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCardView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: b */
    private boolean m11015b() {
        C14475a c14475a = this.f52778i;
        return c14475a != null && c14475a.f52801q;
    }

    /* renamed from: c */
    private void m11014c() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f52778i.m11000e();
        }
    }

    /* renamed from: a */
    public final void m11017a(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    /* renamed from: a */
    public final void m11016a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public final float al_() {
        return super.getRadius();
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f52778i.f52787c.f53492t.f53503d;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f52778i.f52786b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f52778i.f52786b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f52778i.f52786b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f52778i.f52786b.top;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f52778i.f52787c.m10451k();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f52780k;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10435a(this, this.f52778i.f52787c);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m11015b()) {
            mergeDrawableStates(onCreateDrawableState, f52774e);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f52775f);
        }
        if (this.f52781l) {
            mergeDrawableStates(onCreateDrawableState, f52776g);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(m11015b());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        if (r0.f52785a.getUseCompatPadding() != false) goto L12;
     */
    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r2 = r9
            super.onMeasure(r1, r2)
            r0 = r7
            com.google.android.material.card.a r0 = r0.f52778i
            r10 = r0
            r0 = r7
            int r0 = r0.getMeasuredWidth()
            r9 = r0
            r0 = r7
            int r0 = r0.getMeasuredHeight()
            r8 = r0
            r0 = r10
            android.graphics.drawable.LayerDrawable r0 = r0.f52798n
            if (r0 == 0) goto La6
            r0 = r9
            r1 = r10
            int r1 = r1.f52789e
            int r0 = r0 - r1
            r1 = r10
            int r1 = r1.f52790f
            int r0 = r0 - r1
            r11 = r0
            r0 = r8
            r1 = r10
            int r1 = r1.f52789e
            int r0 = r0 - r1
            r1 = r10
            int r1 = r1.f52790f
            int r0 = r0 - r1
            r12 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 >= r1) goto L43
            r0 = 1
            r8 = r0
            goto L45
        L43:
            r0 = 0
            r8 = r0
        L45:
            r0 = r8
            if (r0 != 0) goto L59
            r0 = r12
            r9 = r0
            r0 = r11
            r8 = r0
            r0 = r10
            com.google.android.material.card.MaterialCardView r0 = r0.f52785a
            boolean r0 = r0.getUseCompatPadding()
            if (r0 == 0) goto L77
        L59:
            r0 = r12
            r1 = r10
            float r1 = r1.m10999f()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r9 = r0
            r0 = r11
            r1 = r10
            float r1 = r1.m10998g()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r8 = r0
        L77:
            r0 = r10
            int r0 = r0.f52789e
            r11 = r0
            r0 = r10
            com.google.android.material.card.MaterialCardView r0 = r0.f52785a
            int r0 = androidx.core.view.C0926v.m44097f(r0)
            r1 = 1
            if (r0 != r1) goto L8e
            r0 = r8
            r12 = r0
            goto L95
        L8e:
            r0 = r11
            r12 = r0
            r0 = r8
            r11 = r0
        L95:
            r0 = r10
            android.graphics.drawable.LayerDrawable r0 = r0.f52798n
            r1 = 2
            r2 = r11
            r3 = r10
            int r3 = r3.f52789e
            r4 = r12
            r5 = r9
            r0.setLayerInset(r1, r2, r3, r4, r5)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f52779j) {
            if (!this.f52778i.f52800p) {
                this.f52778i.f52800p = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        this.f52778i.m11006b(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f52778i.m11006b(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f52778i.m11013a();
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.f52778i.m11003c(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f52778i.f52801q = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f52780k != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f52778i.m11010a(drawable);
    }

    public void setCheckedIconMargin(int i) {
        this.f52778i.f52789e = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.f52778i.f52789e = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.f52778i.m11010a(C0153a.m46374b(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.f52778i.f52790f = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.f52778i.f52790f = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C14475a c14475a = this.f52778i;
        c14475a.f52795k = colorStateList;
        if (c14475a.f52793i != null) {
            C0840a.m44355a(c14475a.f52793i, colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        C14475a c14475a = this.f52778i;
        if (c14475a != null) {
            Drawable drawable = c14475a.f52792h;
            c14475a.f52792h = c14475a.f52785a.isClickable() ? c14475a.m10995j() : c14475a.f52788d;
            if (drawable == c14475a.f52792h) {
                return;
            }
            Drawable drawable2 = c14475a.f52792h;
            if (Build.VERSION.SDK_INT < 23 || !(c14475a.f52785a.getForeground() instanceof InsetDrawable)) {
                c14475a.f52785a.setForeground(c14475a.m11005b(drawable2));
            } else {
                ((InsetDrawable) c14475a.f52785a.getForeground()).setDrawable(drawable2);
            }
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f52778i.m11012a(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.f52781l != z) {
            this.f52781l = z;
            refreshDrawableState();
            m11014c();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f52778i.m11007b();
    }

    public void setOnCheckedChangeListener(AbstractC14474a abstractC14474a) {
        this.f52782m = abstractC14474a;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f52778i.m11007b();
        this.f52778i.m11002d();
    }

    public void setProgress(float f) {
        C14475a c14475a = this.f52778i;
        c14475a.f52787c.m10443p(f);
        if (c14475a.f52788d != null) {
            c14475a.f52788d.m10443p(f);
        }
        if (c14475a.f52799o != null) {
            c14475a.f52799o.m10443p(f);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        C14475a c14475a = this.f52778i;
        c14475a.m11008a(c14475a.f52796l.m10429a(f));
        c14475a.f52792h.invalidateSelf();
        if (c14475a.m10996i() || c14475a.m10997h()) {
            c14475a.m11002d();
        }
        if (c14475a.m10996i()) {
            c14475a.m11007b();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.f52778i.m11001d(colorStateList);
    }

    public void setRippleColorResource(int i) {
        this.f52778i.m11001d(C0153a.m46375a(getContext(), i));
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        if (Build.VERSION.SDK_INT >= 21) {
            RectF rectF = new RectF();
            rectF.set(this.f52778i.f52787c.getBounds());
            setClipToOutline(c14678m.m10423a(rectF));
        }
        this.f52778i.m11008a(c14678m);
    }

    public void setStrokeColor(int i) {
        this.f52778i.m11011a(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f52778i.m11011a(colorStateList);
    }

    public void setStrokeWidth(int i) {
        C14475a c14475a = this.f52778i;
        if (i != c14475a.f52791g) {
            c14475a.f52791g = i;
            c14475a.m11004c();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f52778i.m11007b();
        this.f52778i.m11002d();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (!m11015b() || !isEnabled()) {
            return;
        }
        this.f52780k = !this.f52780k;
        refreshDrawableState();
        m11014c();
    }
}
