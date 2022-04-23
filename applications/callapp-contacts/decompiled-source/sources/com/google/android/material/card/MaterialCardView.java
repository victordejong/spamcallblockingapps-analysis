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
import androidx.cardview.widget.CardView;
import com.google.android.material.a;
import com.google.android.material.k.i;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView implements Checkable, q {
    private static final int[] e = {16842911};
    private static final int[] f = {16842912};
    private static final int[] g = {a.b.state_dragged};
    private static final int h = a.k.Widget_MaterialComponents_CardView;
    private final com.google.android.material.card.a i;
    private boolean j;
    private boolean k;
    private boolean l;
    private a m;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/card/MaterialCardView$a.class */
    public interface a {
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialCardViewStyle);
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

    private boolean b() {
        com.google.android.material.card.a aVar = this.i;
        return aVar != null && aVar.q;
    }

    private void c() {
        if (Build.VERSION.SDK_INT > 26) {
            this.i.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float al_() {
        return super.getRadius();
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.i.f30362c.t.f30686d;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.i.f30361b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.i.f30361b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.i.f30361b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.i.f30361b.top;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.i.f30362c.k();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this, this.i.f30362c);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (b()) {
            mergeDrawableStates(onCreateDrawableState, e);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f);
        }
        if (this.l) {
            mergeDrawableStates(onCreateDrawableState, g);
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
        accessibilityNodeInfo.setCheckable(b());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        if (r0.f30360a.getUseCompatPadding() != false) goto L_0x0059;
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
            com.google.android.material.card.a r0 = r0.i
            r10 = r0
            r0 = r7
            int r0 = r0.getMeasuredWidth()
            r9 = r0
            r0 = r7
            int r0 = r0.getMeasuredHeight()
            r8 = r0
            r0 = r10
            android.graphics.drawable.LayerDrawable r0 = r0.n
            if (r0 == 0) goto L_0x00a6
            r0 = r9
            r1 = r10
            int r1 = r1.e
            int r0 = r0 - r1
            r1 = r10
            int r1 = r1.f
            int r0 = r0 - r1
            r11 = r0
            r0 = r8
            r1 = r10
            int r1 = r1.e
            int r0 = r0 - r1
            r1 = r10
            int r1 = r1.f
            int r0 = r0 - r1
            r12 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 >= r1) goto L_0x0043
            r0 = 1
            r8 = r0
            goto L_0x0045
        L_0x0043:
            r0 = 0
            r8 = r0
        L_0x0045:
            r0 = r8
            if (r0 != 0) goto L_0x0059
            r0 = r12
            r9 = r0
            r0 = r11
            r8 = r0
            r0 = r10
            com.google.android.material.card.MaterialCardView r0 = r0.f30360a
            boolean r0 = r0.getUseCompatPadding()
            if (r0 == 0) goto L_0x0077
        L_0x0059:
            r0 = r12
            r1 = r10
            float r1 = r1.f()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r9 = r0
            r0 = r11
            r1 = r10
            float r1 = r1.g()
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 * r2
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            r8 = r0
        L_0x0077:
            r0 = r10
            int r0 = r0.e
            r11 = r0
            r0 = r10
            com.google.android.material.card.MaterialCardView r0 = r0.f30360a
            int r0 = androidx.core.view.v.f(r0)
            r1 = 1
            if (r0 != r1) goto L_0x008e
            r0 = r8
            r12 = r0
            goto L_0x0095
        L_0x008e:
            r0 = r11
            r12 = r0
            r0 = r8
            r11 = r0
        L_0x0095:
            r0 = r10
            android.graphics.drawable.LayerDrawable r0 = r0.n
            r1 = 2
            r2 = r11
            r3 = r10
            int r3 = r3.e
            r4 = r12
            r5 = r9
            r0.setLayerInset(r1, r2, r3, r4, r5)
        L_0x00a6:
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
        if (this.j) {
            if (!this.i.p) {
                this.i.p = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        this.i.b(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.i.b(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f2) {
        super.setCardElevation(f2);
        this.i.a();
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.i.c(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.i.q = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.k != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.i.a(drawable);
    }

    public void setCheckedIconMargin(int i) {
        this.i.e = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.i.e = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.i.a(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.i.f = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.i.f = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        com.google.android.material.card.a aVar = this.i;
        aVar.k = colorStateList;
        if (aVar.i != null) {
            androidx.core.graphics.drawable.a.a(aVar.i, colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        com.google.android.material.card.a aVar = this.i;
        if (aVar != null) {
            Drawable drawable = aVar.h;
            aVar.h = aVar.f30360a.isClickable() ? aVar.j() : aVar.f30363d;
            if (drawable != aVar.h) {
                Drawable drawable2 = aVar.h;
                if (Build.VERSION.SDK_INT < 23 || !(aVar.f30360a.getForeground() instanceof InsetDrawable)) {
                    aVar.f30360a.setForeground(aVar.b(drawable2));
                } else {
                    ((InsetDrawable) aVar.f30360a.getForeground()).setDrawable(drawable2);
                }
            }
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.i.a(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
            c();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f2) {
        super.setMaxCardElevation(f2);
        this.i.b();
    }

    public void setOnCheckedChangeListener(a aVar) {
        this.m = aVar;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.i.b();
        this.i.d();
    }

    public void setProgress(float f2) {
        com.google.android.material.card.a aVar = this.i;
        aVar.f30362c.p(f2);
        if (aVar.f30363d != null) {
            aVar.f30363d.p(f2);
        }
        if (aVar.o != null) {
            aVar.o.p(f2);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f2) {
        super.setRadius(f2);
        com.google.android.material.card.a aVar = this.i;
        aVar.a(aVar.l.a(f2));
        aVar.h.invalidateSelf();
        if (aVar.i() || aVar.h()) {
            aVar.d();
        }
        if (aVar.i()) {
            aVar.b();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.i.d(colorStateList);
    }

    public void setRippleColorResource(int i) {
        this.i.d(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            RectF rectF = new RectF();
            rectF.set(this.i.f30362c.getBounds());
            setClipToOutline(mVar.a(rectF));
        }
        this.i.a(mVar);
    }

    public void setStrokeColor(int i) {
        this.i.a(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.i.a(colorStateList);
    }

    public void setStrokeWidth(int i) {
        com.google.android.material.card.a aVar = this.i;
        if (i != aVar.g) {
            aVar.g = i;
            aVar.c();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.i.b();
        this.i.d();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (b() && isEnabled()) {
            this.k = !this.k;
            refreshDrawableState();
            c();
        }
    }
}
