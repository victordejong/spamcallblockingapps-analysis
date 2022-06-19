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
import p020b.p035d.C1484a;
import p020b.p035d.C1485b;
import p020b.p035d.C1487d;
import p020b.p035d.C1488e;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: d */
    private static final int[] f1485d = {16842801};

    /* renamed from: e */
    private static final AbstractC0365e f1486e;

    /* renamed from: f */
    private boolean f1487f;

    /* renamed from: g */
    private boolean f1488g;

    /* renamed from: h */
    int f1489h;

    /* renamed from: i */
    int f1490i;

    /* renamed from: j */
    final Rect f1491j;

    /* renamed from: k */
    final Rect f1492k;

    /* renamed from: l */
    private final AbstractC0364d f1493l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.cardview.widget.CardView$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView$a.class */
    public class C0358a implements AbstractC0364d {

        /* renamed from: a */
        private Drawable f1494a;

        C0358a() {
            CardView.this = r4;
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: a */
        public void mo34638a(int i, int i2, int i3, int i4) {
            CardView.this.f1492k.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1491j;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: b */
        public void mo34637b(int i, int i2) {
            CardView cardView = CardView.this;
            if (i > cardView.f1489h) {
                CardView.super.setMinimumWidth(i);
            }
            CardView cardView2 = CardView.this;
            if (i2 > cardView2.f1490i) {
                CardView.super.setMinimumHeight(i2);
            }
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: c */
        public void mo34636c(Drawable drawable) {
            this.f1494a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: d */
        public boolean mo34635d() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: e */
        public boolean mo34634e() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: f */
        public Drawable mo34633f() {
            return this.f1494a;
        }

        @Override // androidx.cardview.widget.AbstractC0364d
        /* renamed from: g */
        public View mo34632g() {
            return CardView.this;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f1486e = new C0361b();
        } else if (i >= 17) {
            f1486e = new C0359a();
        } else {
            f1486e = new C0362c();
        }
        f1486e.mo34622j();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1484a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        Rect rect = new Rect();
        this.f1491j = rect;
        this.f1492k = new Rect();
        C0358a c0358a = new C0358a();
        this.f1493l = c0358a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1488e.CardView, i, C1487d.CardView);
        int i2 = C1488e.CardView_cardBackgroundColor;
        if (obtainStyledAttributes.hasValue(i2)) {
            colorStateList = obtainStyledAttributes.getColorStateList(i2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1485d);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C1485b.cardview_light_background) : getResources().getColor(C1485b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C1488e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C1488e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C1488e.CardView_cardMaxElevation, 0.0f);
        this.f1487f = obtainStyledAttributes.getBoolean(C1488e.CardView_cardUseCompatPadding, false);
        this.f1488g = obtainStyledAttributes.getBoolean(C1488e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1489h = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_android_minWidth, 0);
        this.f1490i = obtainStyledAttributes.getDimensionPixelSize(C1488e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f1486e.mo34631a(c0358a, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1486e.mo34624h(this.f1493l);
    }

    public float getCardElevation() {
        return f1486e.mo34629c(this.f1493l);
    }

    public int getContentPaddingBottom() {
        return this.f1491j.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1491j.left;
    }

    public int getContentPaddingRight() {
        return this.f1491j.right;
    }

    public int getContentPaddingTop() {
        return this.f1491j.top;
    }

    public float getMaxCardElevation() {
        return f1486e.mo34625g(this.f1493l);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1488g;
    }

    public float getRadius() {
        return f1486e.mo34628d(this.f1493l);
    }

    public boolean getUseCompatPadding() {
        return this.f1487f;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0365e abstractC0365e = f1486e;
        if (abstractC0365e instanceof C0361b) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0365e.mo34620l(this.f1493l)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(abstractC0365e.mo34621k(this.f1493l)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f1486e.mo34618n(this.f1493l, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1486e.mo34618n(this.f1493l, colorStateList);
    }

    public void setCardElevation(float f) {
        f1486e.mo34626f(this.f1493l, f);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f1491j.set(i, i2, i3, i4);
        f1486e.mo34623i(this.f1493l);
    }

    public void setMaxCardElevation(float f) {
        f1486e.mo34617o(this.f1493l, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1490i = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1489h = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1488g) {
            this.f1488g = z;
            f1486e.mo34619m(this.f1493l);
        }
    }

    public void setRadius(float f) {
        f1486e.mo34630b(this.f1493l, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1487f != z) {
            this.f1487f = z;
            f1486e.mo34627e(this.f1493l);
        }
    }
}
