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
import p012b.p033e.C0765a;
import p012b.p033e.C0766b;
import p012b.p033e.C0768d;
import p012b.p033e.C0769e;
import p012b.p033e.p034f.AbstractC0775d;
import p012b.p033e.p034f.AbstractC0776e;
import p012b.p033e.p034f.C0770a;
import p012b.p033e.p034f.C0772b;
import p012b.p033e.p034f.C0773c;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: h */
    public static final int[] f851h = {16842801};

    /* renamed from: i */
    public static final AbstractC0776e f852i;

    /* renamed from: a */
    public boolean f853a;

    /* renamed from: b */
    public boolean f854b;

    /* renamed from: c */
    public int f855c;

    /* renamed from: d */
    public int f856d;

    /* renamed from: e */
    public final Rect f857e;

    /* renamed from: f */
    public final Rect f858f;

    /* renamed from: g */
    public final AbstractC0775d f859g;

    /* renamed from: androidx.cardview.widget.CardView$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView$a.class */
    public class C0179a implements AbstractC0775d {

        /* renamed from: a */
        public Drawable f860a;

        public C0179a() {
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: a */
        public void mo36122a(int i, int i2) {
            CardView cardView = CardView.this;
            if (i > cardView.f855c) {
                CardView.super.setMinimumWidth(i);
            }
            CardView cardView2 = CardView.this;
            if (i2 > cardView2.f856d) {
                CardView.super.setMinimumHeight(i2);
            }
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: a */
        public void mo36121a(int i, int i2, int i3, int i4) {
            CardView.this.f858f.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.f857e;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: a */
        public void mo36120a(Drawable drawable) {
            this.f860a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: a */
        public boolean mo36123a() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: b */
        public boolean mo36119b() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: c */
        public Drawable mo36118c() {
            return this.f860a;
        }

        @Override // p012b.p033e.p034f.AbstractC0775d
        /* renamed from: d */
        public View mo36117d() {
            return CardView.this;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f852i = new C0772b();
        } else if (i >= 17) {
            f852i = new C0770a();
        } else {
            f852i = new C0773c();
        }
        f852i.mo36116a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0765a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList colorStateList;
        this.f857e = new Rect();
        this.f858f = new Rect();
        this.f859g = new C0179a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0769e.CardView, i, C0768d.CardView);
        if (obtainStyledAttributes.hasValue(C0769e.CardView_cardBackgroundColor)) {
            colorStateList = obtainStyledAttributes.getColorStateList(C0769e.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f851h);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(C0766b.cardview_light_background) : getResources().getColor(C0766b.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(C0769e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C0769e.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C0769e.CardView_cardMaxElevation, 0.0f);
        this.f853a = obtainStyledAttributes.getBoolean(C0769e.CardView_cardUseCompatPadding, false);
        this.f854b = obtainStyledAttributes.getBoolean(C0769e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_contentPadding, 0);
        this.f857e.left = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.f857e.top = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_contentPaddingTop, dimensionPixelSize);
        this.f857e.right = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_contentPaddingRight, dimensionPixelSize);
        this.f857e.bottom = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f855c = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_android_minWidth, 0);
        this.f856d = obtainStyledAttributes.getDimensionPixelSize(C0769e.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f852i.mo36113a(this.f859g, context, colorStateList, dimension, dimension2, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f852i.mo36106e(this.f859g);
    }

    public float getCardElevation() {
        return f852i.mo36115a(this.f859g);
    }

    public int getContentPaddingBottom() {
        return this.f857e.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f857e.left;
    }

    public int getContentPaddingRight() {
        return this.f857e.right;
    }

    public int getContentPaddingTop() {
        return this.f857e.top;
    }

    public float getMaxCardElevation() {
        return f852i.mo36107d(this.f859g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f854b;
    }

    public float getRadius() {
        return f852i.mo36111b(this.f859g);
    }

    public boolean getUseCompatPadding() {
        return this.f853a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (!(f852i instanceof C0772b)) {
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f852i.mo36104g(this.f859g)), View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f852i.mo36105f(this.f859g)), View.MeasureSpec.getSize(i2)), mode2);
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f852i.mo36112a(this.f859g, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f852i.mo36112a(this.f859g, colorStateList);
    }

    public void setCardElevation(float f) {
        f852i.mo36110b(this.f859g, f);
    }

    public void setMaxCardElevation(float f) {
        f852i.mo36108c(this.f859g, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f856d = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f855c = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f854b) {
            this.f854b = z;
            f852i.mo36103h(this.f859g);
        }
    }

    public void setRadius(float f) {
        f852i.mo36114a(this.f859g, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f853a != z) {
            this.f853a = z;
            f852i.mo36109c(this.f859g);
        }
    }
}
