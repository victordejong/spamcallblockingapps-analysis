package com.google.android.material.p145d;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.cardview.widget.CardView;
import com.google.android.material.C4492a;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4740h;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.d.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/d/a.class */
public class C4589a extends CardView implements Checkable, AbstractC4758n {

    /* renamed from: e */
    private static final int[] f19995e = {16842911};

    /* renamed from: f */
    private static final int[] f19996f = {16842912};

    /* renamed from: g */
    private static final int[] f19997g = {C4492a.C4494b.state_dragged};

    /* renamed from: h */
    private static final int f19998h = C4492a.C4503k.Widget_MaterialComponents_CardView;

    /* renamed from: i */
    private final C4591b f19999i;

    /* renamed from: j */
    private boolean f20000j;

    /* renamed from: k */
    private boolean f20001k;

    /* renamed from: l */
    private boolean f20002l;

    /* renamed from: m */
    private AbstractC4590a f20003m;

    /* renamed from: com.google.android.material.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/d/a$a.class */
    public interface AbstractC4590a {
        /* renamed from: a */
        void m3287a(C4589a c4589a, boolean z);
    }

    /* renamed from: c */
    private void m3289c() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f19999i.m3245s();
        }
    }

    /* renamed from: A_ */
    public boolean m3293A_() {
        return this.f19999i != null && this.f19999i.m3249o();
    }

    @Override // androidx.cardview.widget.CardView
    /* renamed from: a */
    public void mo3292a(int i, int i2, int i3, int i4) {
        this.f19999i.m3275a(i, i2, i3, i4);
    }

    /* renamed from: b */
    public void m3290b(int i, int i2, int i3, int i4) {
        super.mo3292a(i, i2, i3, i4);
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f19999i.m3258f();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f19999i.m3246r();
    }

    public ColorStateList getCheckedIconTint() {
        return this.f19999i.m3248p();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f19999i.m3257g().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f19999i.m3257g().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f19999i.m3257g().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f19999i.m3257g().top;
    }

    public float getProgress() {
        return this.f19999i.m3254j();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f19999i.m3255i();
    }

    public ColorStateList getRippleColor() {
        return this.f19999i.m3247q();
    }

    public C4743k getShapeAppearanceModel() {
        return this.f19999i.m3244t();
    }

    @Deprecated
    public int getStrokeColor() {
        return this.f19999i.m3269b();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f19999i.m3264c();
    }

    public int getStrokeWidth() {
        return this.f19999i.m3261d();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f20001k;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2682a(this, this.f19999i.m3259e());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m3293A_()) {
            mergeDrawableStates(onCreateDrawableState, f19995e);
        }
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f19996f);
        }
        if (m3288z_()) {
            mergeDrawableStates(onCreateDrawableState, f19997g);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(CardView.class.getName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(CardView.class.getName());
        accessibilityNodeInfo.setCheckable(m3293A_());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f19999i.m3276a(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f20000j) {
            if (!this.f19999i.m3279a()) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.f19999i.m3270a(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        this.f19999i.m3267b(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f19999i.m3267b(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f19999i.m3253k();
    }

    public void setCheckable(boolean z) {
        this.f19999i.m3265b(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f20001k != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f19999i.m3273a(drawable);
    }

    public void setCheckedIconResource(int i) {
        this.f19999i.m3273a(C0094a.m22275b(getContext(), i));
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.f19999i.m3260d(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        this.f19999i.m3256h();
    }

    public void setDragged(boolean z) {
        if (this.f20002l != z) {
            this.f20002l = z;
            refreshDrawableState();
            m3289c();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f19999i.m3252l();
    }

    public void setOnCheckedChangeListener(AbstractC4590a abstractC4590a) {
        this.f20003m = abstractC4590a;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f19999i.m3252l();
        this.f19999i.m3250n();
    }

    public void setProgress(float f) {
        this.f19999i.m3268b(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f19999i.m3278a(f);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.f19999i.m3263c(colorStateList);
    }

    public void setRippleColorResource(int i) {
        this.f19999i.m3263c(C0094a.m22277a(getContext(), i));
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        this.f19999i.m3271a(c4743k);
    }

    public void setStrokeColor(int i) {
        this.f19999i.m3274a(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f19999i.m3274a(colorStateList);
    }

    public void setStrokeWidth(int i) {
        this.f19999i.m3277a(i);
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f19999i.m3252l();
        this.f19999i.m3250n();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (!m3293A_() || !isEnabled()) {
            return;
        }
        this.f20001k = !this.f20001k;
        refreshDrawableState();
        m3289c();
        if (this.f20003m == null) {
            return;
        }
        this.f20003m.m3287a(this, this.f20001k);
    }

    /* renamed from: z_ */
    public boolean m3288z_() {
        return this.f20002l;
    }
}
