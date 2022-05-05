package androidx.cardview.widget;

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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.C0146R;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: m */
    private static final int[] f1494m = {16842801};

    /* renamed from: n */
    private static final CardViewImpl f1495n;

    /* renamed from: f */
    private boolean f1496f;

    /* renamed from: g */
    private boolean f1497g;

    /* renamed from: h */
    int f1498h;

    /* renamed from: i */
    int f1499i;

    /* renamed from: j */
    final Rect f1500j;

    /* renamed from: k */
    final Rect f1501k;

    /* renamed from: l */
    private final CardViewDelegate f1502l;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f1495n = new CardViewApi21Impl();
        } else if (i >= 17) {
            f1495n = new CardViewApi17Impl();
        } else {
            f1495n = new CardViewBaseImpl();
        }
        f1495n.mo21101j();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0146R.attr.cardViewStyle);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        this.f1500j = new Rect();
        this.f1501k = new Rect();
        this.f1502l = new CardViewDelegate() { // from class: androidx.cardview.widget.CardView.1

            /* renamed from: a */
            private Drawable f1503a;

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: a */
            public void mo21117a(int i2, int i3, int i4, int i5) {
                CardView.this.f1501k.set(i2, i3, i4, i5);
                CardView cardView = CardView.this;
                Rect rect = cardView.f1500j;
                CardView.super.setPadding(i2 + rect.left, i3 + rect.top, i4 + rect.right, i5 + rect.bottom);
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: b */
            public void mo21116b(int i2, int i3) {
                CardView cardView = CardView.this;
                if (i2 > cardView.f1498h) {
                    CardView.super.setMinimumWidth(i2);
                }
                CardView cardView2 = CardView.this;
                if (i3 > cardView2.f1499i) {
                    CardView.super.setMinimumHeight(i3);
                }
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: c */
            public void mo21115c(Drawable drawable) {
                this.f1503a = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: d */
            public boolean mo21114d() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: e */
            public boolean mo21113e() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: f */
            public Drawable mo21112f() {
                return this.f1503a;
            }

            @Override // androidx.cardview.widget.CardViewDelegate
            /* renamed from: g */
            public View mo21111g() {
                return CardView.this;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0146R.styleable.CardView, i, C0146R.style.CardView);
        if (obtainStyledAttributes.hasValue(C0146R.styleable.CardView_cardBackgroundColor)) {
            colorStateList = obtainStyledAttributes.getColorStateList(C0146R.styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1494m);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C0146R.C0147color.cardview_light_background) : getResources().getColor(C0146R.C0147color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C0146R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C0146R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C0146R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f1496f = obtainStyledAttributes.getBoolean(C0146R.styleable.CardView_cardUseCompatPadding, false);
        this.f1497g = obtainStyledAttributes.getBoolean(C0146R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_contentPadding, 0);
        this.f1500j.left = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        this.f1500j.top = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        this.f1500j.right = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        this.f1500j.bottom = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1498h = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_android_minWidth, 0);
        this.f1499i = obtainStyledAttributes.getDimensionPixelSize(C0146R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1495n.mo21110a(this.f1502l, context, colorStateList, dimension, dimension2, dimension3);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f1495n.mo21103h(this.f1502l);
    }

    public float getCardElevation() {
        return f1495n.mo21108c(this.f1502l);
    }

    @AbstractC0040Px
    public int getContentPaddingBottom() {
        return this.f1500j.bottom;
    }

    @AbstractC0040Px
    public int getContentPaddingLeft() {
        return this.f1500j.left;
    }

    @AbstractC0040Px
    public int getContentPaddingRight() {
        return this.f1500j.right;
    }

    @AbstractC0040Px
    public int getContentPaddingTop() {
        return this.f1500j.top;
    }

    public float getMaxCardElevation() {
        return f1495n.mo21104g(this.f1502l);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1497g;
    }

    public float getRadius() {
        return f1495n.mo21107d(this.f1502l);
    }

    public boolean getUseCompatPadding() {
        return this.f1496f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (!(f1495n instanceof CardViewApi21Impl)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1495n.mo21099l(this.f1502l)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1495n.mo21100k(this.f1502l)), View.MeasureSpec.getSize(i2)), mode2);
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(@ColorInt int i) {
        f1495n.mo21097n(this.f1502l, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f1495n.mo21097n(this.f1502l, colorStateList);
    }

    public void setCardElevation(float f) {
        f1495n.mo21105f(this.f1502l, f);
    }

    public void setContentPadding(@AbstractC0040Px int i, @AbstractC0040Px int i2, @AbstractC0040Px int i3, @AbstractC0040Px int i4) {
        this.f1500j.set(i, i2, i3, i4);
        f1495n.mo21102i(this.f1502l);
    }

    public void setMaxCardElevation(float f) {
        f1495n.mo21096o(this.f1502l, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1499i = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1498h = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1497g) {
            this.f1497g = z;
            f1495n.mo21098m(this.f1502l);
        }
    }

    public void setRadius(float f) {
        f1495n.mo21109b(this.f1502l, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1496f != z) {
            this.f1496f = z;
            f1495n.mo21106e(this.f1502l);
        }
    }
}
