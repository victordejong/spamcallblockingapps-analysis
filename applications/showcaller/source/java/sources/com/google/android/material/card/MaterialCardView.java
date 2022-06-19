package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import p020b.p021a.p022k.p023a.C1433a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1942i;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView implements Checkable, AbstractC1962p {

    /* renamed from: m */
    private static final int[] f36386m = {16842911};

    /* renamed from: n */
    private static final int[] f36387n = {16842912};

    /* renamed from: o */
    private static final int[] f36388o = {C1886b.state_dragged};

    /* renamed from: p */
    private static final int f36389p = C1895k.Widget_MaterialComponents_CardView;

    /* renamed from: q */
    private final C8052a f36390q;

    /* renamed from: r */
    private boolean f36391r;

    /* renamed from: s */
    private boolean f36392s;

    /* renamed from: t */
    private boolean f36393t;

    /* renamed from: u */
    private AbstractC8051a f36394u;

    /* renamed from: com.google.android.material.card.MaterialCardView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/card/MaterialCardView$a.class */
    public interface AbstractC8051a {
        /* renamed from: a */
        void m5306a(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.materialCardViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCardView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.card.MaterialCardView.f36389p
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.p275a.C8328a.m3881c(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.f36392s = r1
            r0 = r7
            r1 = 0
            r0.f36393t = r1
            r0 = r7
            r1 = 1
            r0.f36391r = r1
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.MaterialCardView
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r8 = r0
            com.google.android.material.card.a r0 = new com.google.android.material.card.a
            r1 = r0
            r2 = r7
            r3 = r9
            r4 = r10
            r5 = r11
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r7
            r1 = r9
            r0.f36390q = r1
            r0 = r9
            r1 = r7
            android.content.res.ColorStateList r1 = super.getCardBackgroundColor()
            r0.m5298H(r1)
            r0 = r9
            r1 = r7
            int r1 = super.getContentPaddingLeft()
            r2 = r7
            int r2 = super.getContentPaddingTop()
            r3 = r7
            int r3 = super.getContentPaddingRight()
            r4 = r7
            int r4 = super.getContentPaddingBottom()
            r0.m5285U(r1, r2, r3, r4)
            r0 = r9
            r1 = r8
            r0.m5301E(r1)
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f36390q.m5265k().getBounds());
        return rectF;
    }

    /* renamed from: i */
    private void m5310i() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f36390q.m5266j();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f36390q.m5264l();
    }

    public ColorStateList getCardForegroundColor() {
        return this.f36390q.m5263m();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f36390q.m5262n();
    }

    public int getCheckedIconMargin() {
        return this.f36390q.m5261o();
    }

    public int getCheckedIconSize() {
        return this.f36390q.m5260p();
    }

    public ColorStateList getCheckedIconTint() {
        return this.f36390q.m5259q();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f36390q.m5305A().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f36390q.m5305A().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f36390q.m5305A().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f36390q.m5305A().top;
    }

    public float getProgress() {
        return this.f36390q.m5255u();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f36390q.m5257s();
    }

    public ColorStateList getRippleColor() {
        return this.f36390q.m5254v();
    }

    public C1946m getShapeAppearanceModel() {
        return this.f36390q.m5253w();
    }

    @Deprecated
    public int getStrokeColor() {
        return this.f36390q.m5252x();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f36390q.m5251y();
    }

    public int getStrokeWidth() {
        return this.f36390q.m5250z();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f36392s;
    }

    /* renamed from: j */
    public boolean m5309j() {
        C8052a c8052a = this.f36390q;
        return c8052a != null && c8052a.m5302D();
    }

    /* renamed from: k */
    public boolean m5308k() {
        return this.f36393t;
    }

    /* renamed from: l */
    public void m5307l(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28579f(this, this.f36390q.m5265k());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m5309j()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f36386m);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f36387n);
        }
        if (m5308k()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f36388o);
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
        accessibilityNodeInfo.setCheckable(m5309j());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f36390q.m5300F(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f36391r) {
            if (!this.f36390q.m5303C()) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.f36390q.m5299G(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        this.f36390q.m5298H(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f36390q.m5298H(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f36390q.m5280Z();
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.f36390q.m5297I(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f36390q.m5296J(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f36392s != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f36390q.m5295K(drawable);
    }

    public void setCheckedIconMargin(int i) {
        this.f36390q.m5294L(i);
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.f36390q.m5294L(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconResource(int i) {
        this.f36390q.m5295K(C1433a.m30126d(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.f36390q.m5293M(i);
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.f36390q.m5293M(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.f36390q.m5292N(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        C8052a c8052a = this.f36390q;
        if (c8052a != null) {
            c8052a.m5282X();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f36390q.m5285U(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.f36393t != z) {
            this.f36393t = z;
            refreshDrawableState();
            m5310i();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f36390q.m5276b0();
    }

    public void setOnCheckedChangeListener(AbstractC8051a abstractC8051a) {
        this.f36394u = abstractC8051a;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f36390q.m5276b0();
        this.f36390q.m5281Y();
    }

    public void setProgress(float f) {
        this.f36390q.m5290P(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f36390q.m5291O(f);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.f36390q.m5289Q(colorStateList);
    }

    public void setRippleColorResource(int i) {
        this.f36390q.m5289Q(C1433a.m30127c(getContext(), i));
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(c1946m.m28555u(getBoundsAsRectF()));
        }
        this.f36390q.m5288R(c1946m);
    }

    public void setStrokeColor(int i) {
        this.f36390q.m5287S(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f36390q.m5287S(colorStateList);
    }

    public void setStrokeWidth(int i) {
        this.f36390q.m5286T(i);
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f36390q.m5276b0();
        this.f36390q.m5281Y();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (!m5309j() || !isEnabled()) {
            return;
        }
        this.f36392s = !this.f36392s;
        refreshDrawableState();
        m5310i();
        AbstractC8051a abstractC8051a = this.f36394u;
        if (abstractC8051a == null) {
            return;
        }
        abstractC8051a.m5306a(this, this.f36392s);
    }
}
