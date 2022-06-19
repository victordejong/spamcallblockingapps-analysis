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
import androidx.cardview.C0493a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: e */
    private static final int[] f1865e = {16842801};

    /* renamed from: f */
    private static final AbstractC0506e f1866f;

    /* renamed from: a */
    int f1867a;

    /* renamed from: b */
    int f1868b;

    /* renamed from: c */
    final Rect f1869c;

    /* renamed from: d */
    final Rect f1870d;

    /* renamed from: g */
    private boolean f1871g;

    /* renamed from: h */
    private boolean f1872h;

    /* renamed from: i */
    private final AbstractC0505d f1873i;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1866f = new C0502b();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f1866f = new C0500a();
        } else {
            f1866f = new C0503c();
        }
        f1866f.mo45399a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.C0494a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        Rect rect = new Rect();
        this.f1869c = rect;
        this.f1870d = new Rect();
        AbstractC0505d abstractC0505d = new AbstractC0505d() { // from class: androidx.cardview.widget.CardView.1

            /* renamed from: b */
            private Drawable f1875b;

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: a */
            public final void mo45405a(int i2, int i3) {
                if (i2 > CardView.this.f1867a) {
                    CardView.super.setMinimumWidth(i2);
                }
                if (i3 > CardView.this.f1868b) {
                    CardView.super.setMinimumHeight(i3);
                }
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: a */
            public final void mo45404a(int i2, int i3, int i4, int i5) {
                CardView.this.f1870d.set(i2, i3, i4, i5);
                CardView cardView = CardView.this;
                CardView.super.setPadding(i2 + cardView.f1869c.left, i3 + CardView.this.f1869c.top, i4 + CardView.this.f1869c.right, i5 + CardView.this.f1869c.bottom);
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: a */
            public final void mo45403a(Drawable drawable) {
                this.f1875b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: a */
            public final boolean mo45406a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: b */
            public final boolean mo45402b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: c */
            public final Drawable mo45401c() {
                return this.f1875b;
            }

            @Override // androidx.cardview.widget.AbstractC0505d
            /* renamed from: d */
            public final View mo45400d() {
                return CardView.this;
            }
        };
        this.f1873i = abstractC0505d;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0493a.C0498e.CardView, i, C0493a.C0497d.CardView);
        if (obtainStyledAttributes.hasValue(C0493a.C0498e.CardView_cardBackgroundColor)) {
            colorStateList = obtainStyledAttributes.getColorStateList(C0493a.C0498e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1865e);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C0493a.C0495b.cardview_light_background) : getResources().getColor(C0493a.C0495b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C0493a.C0498e.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED);
        float dimension2 = obtainStyledAttributes.getDimension(C0493a.C0498e.CardView_cardElevation, BitmapDescriptorFactory.HUE_RED);
        float dimension3 = obtainStyledAttributes.getDimension(C0493a.C0498e.CardView_cardMaxElevation, BitmapDescriptorFactory.HUE_RED);
        this.f1871g = obtainStyledAttributes.getBoolean(C0493a.C0498e.CardView_cardUseCompatPadding, false);
        this.f1872h = obtainStyledAttributes.getBoolean(C0493a.C0498e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1867a = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_android_minWidth, 0);
        this.f1868b = obtainStyledAttributes.getDimensionPixelSize(C0493a.C0498e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1866f.mo45396a(abstractC0505d, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1866f.mo45385i(this.f1873i);
    }

    public float getCardElevation() {
        return f1866f.mo45389e(this.f1873i);
    }

    public int getContentPaddingBottom() {
        return this.f1869c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1869c.left;
    }

    public int getContentPaddingRight() {
        return this.f1869c.right;
    }

    public int getContentPaddingTop() {
        return this.f1869c.top;
    }

    public float getMaxCardElevation() {
        return f1866f.mo45398a(this.f1873i);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1872h;
    }

    public float getRadius() {
        return f1866f.mo45390d(this.f1873i);
    }

    public boolean getUseCompatPadding() {
        return this.f1871g;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0506e abstractC0506e = f1866f;
        if (abstractC0506e instanceof C0502b) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0506e.mo45394b(this.f1873i)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0506e.mo45392c(this.f1873i)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f1866f.mo45395a(this.f1873i, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1866f.mo45395a(this.f1873i, colorStateList);
    }

    public void setCardElevation(float f) {
        f1866f.mo45391c(this.f1873i, f);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f1869c.set(i, i2, i3, i4);
        f1866f.mo45388f(this.f1873i);
    }

    public void setMaxCardElevation(float f) {
        f1866f.mo45393b(this.f1873i, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1868b = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1867a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1872h) {
            this.f1872h = z;
            f1866f.mo45386h(this.f1873i);
        }
    }

    public void setRadius(float f) {
        f1866f.mo45397a(this.f1873i, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1871g != z) {
            this.f1871g = z;
            f1866f.mo45387g(this.f1873i);
        }
    }
}
