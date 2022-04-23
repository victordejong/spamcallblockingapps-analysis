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
import androidx.cardview.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {
    private static final int[] e = {16842801};
    private static final e f;

    /* renamed from: a  reason: collision with root package name */
    int f1292a;

    /* renamed from: b  reason: collision with root package name */
    int f1293b;

    /* renamed from: c  reason: collision with root package name */
    final Rect f1294c;

    /* renamed from: d  reason: collision with root package name */
    final Rect f1295d;
    private boolean g;
    private boolean h;
    private final d i;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f = new b();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f = new a();
        } else {
            f = new c();
        }
        f.a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0031a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        Rect rect = new Rect();
        this.f1294c = rect;
        this.f1295d = new Rect();
        d dVar = new d() { // from class: androidx.cardview.widget.CardView.1

            /* renamed from: b  reason: collision with root package name */
            private Drawable f1297b;

            @Override // androidx.cardview.widget.d
            public final void a(int i2, int i3) {
                if (i2 > CardView.this.f1292a) {
                    CardView.super.setMinimumWidth(i2);
                }
                if (i3 > CardView.this.f1293b) {
                    CardView.super.setMinimumHeight(i3);
                }
            }

            @Override // androidx.cardview.widget.d
            public final void a(int i2, int i3, int i4, int i5) {
                CardView.this.f1295d.set(i2, i3, i4, i5);
                CardView cardView = CardView.this;
                CardView.super.setPadding(i2 + cardView.f1294c.left, i3 + CardView.this.f1294c.top, i4 + CardView.this.f1294c.right, i5 + CardView.this.f1294c.bottom);
            }

            @Override // androidx.cardview.widget.d
            public final void a(Drawable drawable) {
                this.f1297b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // androidx.cardview.widget.d
            public final boolean a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // androidx.cardview.widget.d
            public final boolean b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // androidx.cardview.widget.d
            public final Drawable c() {
                return this.f1297b;
            }

            @Override // androidx.cardview.widget.d
            public final View d() {
                return CardView.this;
            }
        };
        this.i = dVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.e.CardView, i, a.d.CardView);
        if (obtainStyledAttributes.hasValue(a.e.CardView_cardBackgroundColor)) {
            colorStateList = obtainStyledAttributes.getColorStateList(a.e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(e);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(a.b.cardview_light_background) : getResources().getColor(a.b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(a.e.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED);
        float dimension2 = obtainStyledAttributes.getDimension(a.e.CardView_cardElevation, BitmapDescriptorFactory.HUE_RED);
        float dimension3 = obtainStyledAttributes.getDimension(a.e.CardView_cardMaxElevation, BitmapDescriptorFactory.HUE_RED);
        this.g = obtainStyledAttributes.getBoolean(a.e.CardView_cardUseCompatPadding, false);
        this.h = obtainStyledAttributes.getBoolean(a.e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1292a = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_android_minWidth, 0);
        this.f1293b = obtainStyledAttributes.getDimensionPixelSize(a.e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f.a(dVar, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f.i(this.i);
    }

    public float getCardElevation() {
        return f.e(this.i);
    }

    public int getContentPaddingBottom() {
        return this.f1294c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1294c.left;
    }

    public int getContentPaddingRight() {
        return this.f1294c.right;
    }

    public int getContentPaddingTop() {
        return this.f1294c.top;
    }

    public float getMaxCardElevation() {
        return f.a(this.i);
    }

    public boolean getPreventCornerOverlap() {
        return this.h;
    }

    public float getRadius() {
        return f.d(this.i);
    }

    public boolean getUseCompatPadding() {
        return this.g;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        e eVar = f;
        if (!(eVar instanceof b)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(eVar.b(this.i)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(eVar.c(this.i)), View.MeasureSpec.getSize(i2)), mode2);
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f.a(this.i, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f.a(this.i, colorStateList);
    }

    public void setCardElevation(float f2) {
        f.c(this.i, f2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f1294c.set(i, i2, i3, i4);
        f.f(this.i);
    }

    public void setMaxCardElevation(float f2) {
        f.b(this.i, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1293b = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1292a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.h) {
            this.h = z;
            f.h(this.i);
        }
    }

    public void setRadius(float f2) {
        f.a(this.i, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.g != z) {
            this.g = z;
            f.g(this.i);
        }
    }
}
