package androidx.p012b.p013a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.p012b.C0356a;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.b.a.a */
/* loaded from: classes-dex2jar.jar:androidx/b/a/a.class */
public class C0362a extends FrameLayout {
    private static final int[] COLOR_BACKGROUND_ATTR = {16842801};
    private static final AbstractC0370f IMPL;
    private final AbstractC0369e mCardViewDelegate;
    private boolean mCompatPadding;
    final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    final Rect mShadowBounds;
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            IMPL = new C0366c();
        } else if (Build.VERSION.SDK_INT >= 17) {
            IMPL = new C0364b();
        } else {
            IMPL = new C0367d();
        }
        IMPL.mo6916a();
    }

    public C0362a(Context context) {
        this(context, null);
    }

    public C0362a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0356a.C0357a.cardViewStyle);
    }

    public C0362a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        this.mCardViewDelegate = new AbstractC0369e() { // from class: androidx.b.a.a.1

            /* renamed from: b */
            private Drawable f1439b;

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: a */
            public void mo6922a(int i2, int i3) {
                if (i2 > C0362a.this.mUserSetMinWidth) {
                    C0362a.super.setMinimumWidth(i2);
                }
                if (i3 > C0362a.this.mUserSetMinHeight) {
                    C0362a.super.setMinimumHeight(i3);
                }
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: a */
            public void mo6921a(int i2, int i3, int i4, int i5) {
                C0362a.this.mShadowBounds.set(i2, i3, i4, i5);
                C0362a c0362a = C0362a.this;
                C0362a.super.setPadding(i2 + c0362a.mContentPadding.left, i3 + C0362a.this.mContentPadding.top, i4 + C0362a.this.mContentPadding.right, i5 + C0362a.this.mContentPadding.bottom);
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: a */
            public void mo6920a(Drawable drawable) {
                this.f1439b = drawable;
                C0362a.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: a */
            public boolean mo6923a() {
                return C0362a.this.getUseCompatPadding();
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: b */
            public boolean mo6919b() {
                return C0362a.this.getPreventCornerOverlap();
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: c */
            public Drawable mo6918c() {
                return this.f1439b;
            }

            @Override // androidx.p012b.p013a.AbstractC0369e
            /* renamed from: d */
            public View mo6917d() {
                return C0362a.this;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0356a.C0361e.CardView, i, C0356a.C0360d.CardView);
        if (obtainStyledAttributes.hasValue(C0356a.C0361e.CardView_cardBackgroundColor)) {
            colorStateList = obtainStyledAttributes.getColorStateList(C0356a.C0361e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C0356a.C0358b.cardview_light_background) : getResources().getColor(C0356a.C0358b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C0356a.C0361e.CardView_cardCornerRadius, FlexItem.FLEX_GROW_DEFAULT);
        float dimension2 = obtainStyledAttributes.getDimension(C0356a.C0361e.CardView_cardElevation, FlexItem.FLEX_GROW_DEFAULT);
        float dimension3 = obtainStyledAttributes.getDimension(C0356a.C0361e.CardView_cardMaxElevation, FlexItem.FLEX_GROW_DEFAULT);
        this.mCompatPadding = obtainStyledAttributes.getBoolean(C0356a.C0361e.CardView_cardUseCompatPadding, false);
        this.mPreventCornerOverlap = obtainStyledAttributes.getBoolean(C0356a.C0361e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_contentPadding, 0);
        this.mContentPadding.left = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.mContentPadding.top = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_contentPaddingTop, dimensionPixelSize);
        this.mContentPadding.right = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_contentPaddingRight, dimensionPixelSize);
        this.mContentPadding.bottom = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.mUserSetMinWidth = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_android_minWidth, 0);
        this.mUserSetMinHeight = obtainStyledAttributes.getDimensionPixelSize(C0356a.C0361e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        IMPL.mo6913a(this.mCardViewDelegate, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return IMPL.mo6902i(this.mCardViewDelegate);
    }

    public float getCardElevation() {
        return IMPL.mo6906e(this.mCardViewDelegate);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.mo6915a(this.mCardViewDelegate);
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return IMPL.mo6907d(this.mCardViewDelegate);
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (IMPL instanceof C0366c) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.mo6911b(this.mCardViewDelegate)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.mo6909c(this.mCardViewDelegate)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        IMPL.mo6912a(this.mCardViewDelegate, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        IMPL.mo6912a(this.mCardViewDelegate, colorStateList);
    }

    public void setCardElevation(float f) {
        IMPL.mo6908c(this.mCardViewDelegate, f);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.mContentPadding.set(i, i2, i3, i4);
        IMPL.mo6905f(this.mCardViewDelegate);
    }

    public void setMaxCardElevation(float f) {
        IMPL.mo6910b(this.mCardViewDelegate, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.mUserSetMinHeight = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.mUserSetMinWidth = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z;
            IMPL.mo6903h(this.mCardViewDelegate);
        }
    }

    public void setRadius(float f) {
        IMPL.mo6914a(this.mCardViewDelegate, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding != z) {
            this.mCompatPadding = z;
            IMPL.mo6904g(this.mCardViewDelegate);
        }
    }
}
