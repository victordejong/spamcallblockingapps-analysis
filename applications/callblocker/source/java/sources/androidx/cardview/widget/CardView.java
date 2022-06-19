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
import androidx.cardview.C0400a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: e */
    private static final int[] f1632e = {16842801};

    /* renamed from: f */
    private static final AbstractC0413e f1633f;

    /* renamed from: a */
    int f1634a;

    /* renamed from: b */
    int f1635b;

    /* renamed from: c */
    final Rect f1636c;

    /* renamed from: d */
    final Rect f1637d;

    /* renamed from: g */
    private boolean f1638g;

    /* renamed from: h */
    private boolean f1639h;

    /* renamed from: i */
    private final AbstractC0412d f1640i;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1633f = new C0409b();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f1633f = new C0407a();
        } else {
            f1633f = new C0410c();
        }
        f1633f.mo21040a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0400a.C0401a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList valueOf;
        this.f1636c = new Rect();
        this.f1637d = new Rect();
        this.f1640i = new AbstractC0412d() { // from class: androidx.cardview.widget.CardView.1

            /* renamed from: b */
            private Drawable f1642b;

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: a */
            public void mo21046a(int i2, int i3) {
                if (i2 > CardView.this.f1634a) {
                    CardView.super.setMinimumWidth(i2);
                }
                if (i3 > CardView.this.f1635b) {
                    CardView.super.setMinimumHeight(i3);
                }
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: a */
            public void mo21045a(int i2, int i3, int i4, int i5) {
                CardView.this.f1637d.set(i2, i3, i4, i5);
                CardView.super.setPadding(CardView.this.f1636c.left + i2, CardView.this.f1636c.top + i3, CardView.this.f1636c.right + i4, CardView.this.f1636c.bottom + i5);
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: a */
            public void mo21044a(Drawable drawable) {
                this.f1642b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: a */
            public boolean mo21047a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: b */
            public boolean mo21043b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: c */
            public Drawable mo21042c() {
                return this.f1642b;
            }

            @Override // androidx.cardview.widget.AbstractC0412d
            /* renamed from: d */
            public View mo21041d() {
                return CardView.this;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0400a.C0405e.CardView, i, C0400a.C0404d.CardView);
        if (obtainStyledAttributes.hasValue(C0400a.C0405e.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(C0400a.C0405e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1632e);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C0400a.C0402b.cardview_light_background) : getResources().getColor(C0400a.C0402b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C0400a.C0405e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C0400a.C0405e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C0400a.C0405e.CardView_cardMaxElevation, 0.0f);
        this.f1638g = obtainStyledAttributes.getBoolean(C0400a.C0405e.CardView_cardUseCompatPadding, false);
        this.f1639h = obtainStyledAttributes.getBoolean(C0400a.C0405e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_contentPadding, 0);
        this.f1636c.left = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.f1636c.top = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_contentPaddingTop, dimensionPixelSize);
        this.f1636c.right = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_contentPaddingRight, dimensionPixelSize);
        this.f1636c.bottom = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_contentPaddingBottom, dimensionPixelSize);
        float f = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1634a = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_android_minWidth, 0);
        this.f1635b = obtainStyledAttributes.getDimensionPixelSize(C0400a.C0405e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1633f.mo21037a(this.f1640i, context, valueOf, dimension, dimension2, f);
    }

    /* renamed from: a */
    public void mo3292a(int i, int i2, int i3, int i4) {
        this.f1636c.set(i, i2, i3, i4);
        f1633f.mo21029f(this.f1640i);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1633f.mo21026i(this.f1640i);
    }

    public float getCardElevation() {
        return f1633f.mo21030e(this.f1640i);
    }

    public int getContentPaddingBottom() {
        return this.f1636c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1636c.left;
    }

    public int getContentPaddingRight() {
        return this.f1636c.right;
    }

    public int getContentPaddingTop() {
        return this.f1636c.top;
    }

    public float getMaxCardElevation() {
        return f1633f.mo21039a(this.f1640i);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1639h;
    }

    public float getRadius() {
        return f1633f.mo21031d(this.f1640i);
    }

    public boolean getUseCompatPadding() {
        return this.f1638g;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (f1633f instanceof C0409b) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        switch (mode) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
            case 1073741824:
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1633f.mo21035b(this.f1640i)), View.MeasureSpec.getSize(i)), mode);
                break;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        switch (mode2) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
            case 1073741824:
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f1633f.mo21033c(this.f1640i)), View.MeasureSpec.getSize(i2)), mode2);
                break;
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f1633f.mo21036a(this.f1640i, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1633f.mo21036a(this.f1640i, colorStateList);
    }

    public void setCardElevation(float f) {
        f1633f.mo21032c(this.f1640i, f);
    }

    public void setMaxCardElevation(float f) {
        f1633f.mo21034b(this.f1640i, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1635b = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1634a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1639h) {
            this.f1639h = z;
            f1633f.mo21027h(this.f1640i);
        }
    }

    public void setRadius(float f) {
        f1633f.mo21038a(this.f1640i, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1638g != z) {
            this.f1638g = z;
            f1633f.mo21028g(this.f1640i);
        }
    }
}
