package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import d.d.a;
import d.d.b;
import d.d.d;
import d.d.e;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: i */
    private static final int[] f763i = {16842801};

    /* renamed from: j */
    private static final AbstractC0171e f764j;

    /* renamed from: b */
    private boolean f765b;

    /* renamed from: c */
    private boolean f766c;

    /* renamed from: d */
    int f767d;

    /* renamed from: e */
    int f768e;

    /* renamed from: f */
    final Rect f769f;

    /* renamed from: g */
    final Rect f770g;

    /* renamed from: h */
    private final AbstractC0170d f771h;

    static {
        int i = Build.VERSION.SDK_INT;
        f764j = i >= 21 ? new b() : i >= 17 ? new a() : new c();
        f764j.m14361g();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        int i2;
        Resources resources;
        Rect rect = new Rect();
        this.f769f = rect;
        this.f770g = new Rect();
        AbstractC0170d aVar = new a(this);
        this.f771h = aVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.CardView, i, d.CardView);
        int i3 = e.CardView_cardBackgroundColor;
        if (obtainStyledAttributes.hasValue(i3)) {
            colorStateList = obtainStyledAttributes.getColorStateList(i3);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f763i);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            if (fArr[2] > 0.5f) {
                resources = getResources();
                i2 = b.cardview_light_background;
            } else {
                resources = getResources();
                i2 = b.cardview_dark_background;
            }
            colorStateList = ColorStateList.valueOf(resources.getColor(i2));
        }
        float dimension = obtainStyledAttributes.getDimension(e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(e.CardView_cardMaxElevation, 0.0f);
        this.f765b = obtainStyledAttributes.getBoolean(e.CardView_cardUseCompatPadding, false);
        this.f766c = obtainStyledAttributes.getBoolean(e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f767d = obtainStyledAttributes.getDimensionPixelSize(e.CardView_android_minWidth, 0);
        this.f768e = obtainStyledAttributes.getDimensionPixelSize(e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f764j.m14365c(aVar, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f764j.m14366b(this.f771h);
    }

    public float getCardElevation() {
        return f764j.m14363e(this.f771h);
    }

    public int getContentPaddingBottom() {
        return this.f769f.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f769f.left;
    }

    public int getContentPaddingRight() {
        return this.f769f.right;
    }

    public int getContentPaddingTop() {
        return this.f769f.top;
    }

    public float getMaxCardElevation() {
        return f764j.m14367a(this.f771h);
    }

    public boolean getPreventCornerOverlap() {
        return this.f766c;
    }

    public float getRadius() {
        return f764j.m14360h(this.f771h);
    }

    public boolean getUseCompatPadding() {
        return this.f765b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC0171e abstractC0171e = f764j;
        int i3 = i;
        int i4 = i2;
        if (!(abstractC0171e instanceof b)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0171e.m14358j(this.f771h)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i4 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0171e.m14359i(this.f771h)), View.MeasureSpec.getSize(i2)), mode2);
                i3 = i;
            } else {
                i3 = i;
                i4 = i2;
            }
        }
        super.onMeasure(i3, i4);
    }

    public void setCardBackgroundColor(int i) {
        f764j.m14354n(this.f771h, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f764j.m14354n(this.f771h, colorStateList);
    }

    public void setCardElevation(float f) {
        f764j.m14356l(this.f771h, f);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f769f.set(i, i2, i3, i4);
        f764j.m14362f(this.f771h);
    }

    public void setMaxCardElevation(float f) {
        f764j.m14353o(this.f771h, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f768e = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f767d = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f766c) {
            this.f766c = z;
            f764j.m14355m(this.f771h);
        }
    }

    public void setRadius(float f) {
        f764j.m14364d(this.f771h, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f765b != z) {
            this.f765b = z;
            f764j.m14357k(this.f771h);
        }
    }
}
