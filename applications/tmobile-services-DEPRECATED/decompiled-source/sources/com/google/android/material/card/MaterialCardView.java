package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView implements Checkable, Shapeable {

    /* renamed from: t */
    private static final int[] f10331t = {16842911};

    /* renamed from: u */
    private static final int[] f10332u = {16842912};

    /* renamed from: v */
    private static final int[] f10333v = {C1027R.attr.state_dragged};

    /* renamed from: w */
    private static final int f10334w = C1027R.style.Widget_MaterialComponents_CardView;
    @NonNull

    /* renamed from: o */
    private final MaterialCardViewHelper f10335o;

    /* renamed from: p */
    private boolean f10336p;

    /* renamed from: q */
    private boolean f10337q;

    /* renamed from: r */
    private boolean f10338r;

    /* renamed from: s */
    private OnCheckedChangeListener f10339s;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/card/MaterialCardView$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        /* renamed from: a */
        void m10281a(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10334w), attributeSet, i);
        this.f10337q = false;
        this.f10338r = false;
        this.f10336p = true;
        TypedArray h = ThemeEnforcement.m9445h(getContext(), attributeSet, C1027R.styleable.MaterialCardView, i, f10334w, new int[0]);
        MaterialCardViewHelper materialCardViewHelper = new MaterialCardViewHelper(this, attributeSet, i, f10334w);
        this.f10335o = materialCardViewHelper;
        materialCardViewHelper.m10275F(super.getCardBackgroundColor());
        this.f10335o.m10264Q(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        this.f10335o.m10278C(h);
        h.recycle();
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f10335o.m10244k().getBounds());
        return rectF;
    }

    /* renamed from: x */
    private void m10284x() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f10335o.m10245j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public void m10286A(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f10335o.m10243l();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f10335o.m10242m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f10335o.m10241n();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f10335o.m10240o();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f10335o.m10230y().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f10335o.m10230y().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f10335o.m10230y().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f10335o.m10230y().top;
    }

    @FloatRange
    public float getProgress() {
        return this.f10335o.m10236s();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f10335o.m10238q();
    }

    public ColorStateList getRippleColor() {
        return this.f10335o.m10235t();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f10335o.m10234u();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f10335o.m10233v();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f10335o.m10232w();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f10335o.m10231x();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f10337q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9281f(this, this.f10335o.m10244k());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m10283y()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f10331t);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f10332u);
        }
        if (m10282z()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f10333v);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(m10283y());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f10335o.m10277D(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f10336p) {
            if (!this.f10335o.m10280A()) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.f10335o.m10276E(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i) {
        this.f10335o.m10275F(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f10335o.m10275F(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f10335o.m10259V();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f10335o.m10274G(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f10335o.m10273H(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f10337q != z) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f10335o.m10272I(drawable);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        this.f10335o.m10272I(AppCompatResources.m22069d(getContext(), i));
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f10335o.m10271J(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        MaterialCardViewHelper materialCardViewHelper = this.f10335o;
        if (materialCardViewHelper != null) {
            materialCardViewHelper.m10261T();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f10335o.m10264Q(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.f10338r != z) {
            this.f10338r = z;
            refreshDrawableState();
            m10284x();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f10335o.m10257X();
    }

    public void setOnCheckedChangeListener(@Nullable OnCheckedChangeListener onCheckedChangeListener) {
        this.f10339s = onCheckedChangeListener;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f10335o.m10257X();
        this.f10335o.m10260U();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f10335o.m10269L(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f10335o.m10270K(f);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f10335o.m10268M(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i) {
        this.f10335o.m10268M(AppCompatResources.m22070c(getContext(), i));
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(shapeAppearanceModel.m9257u(getBoundsAsRectF()));
        }
        this.f10335o.m10267N(shapeAppearanceModel);
    }

    public void setStrokeColor(@ColorInt int i) {
        this.f10335o.m10266O(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f10335o.m10266O(colorStateList);
    }

    public void setStrokeWidth(@Dimension int i) {
        this.f10335o.m10265P(i);
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f10335o.m10257X();
        this.f10335o.m10260U();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (m10283y() && isEnabled()) {
            this.f10337q = !this.f10337q;
            refreshDrawableState();
            m10284x();
            OnCheckedChangeListener onCheckedChangeListener = this.f10339s;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.m10281a(this, this.f10337q);
            }
        }
    }

    /* renamed from: y */
    public boolean m10283y() {
        MaterialCardViewHelper materialCardViewHelper = this.f10335o;
        return materialCardViewHelper != null && materialCardViewHelper.m10279B();
    }

    /* renamed from: z */
    public boolean m10282z() {
        return this.f10338r;
    }
}
