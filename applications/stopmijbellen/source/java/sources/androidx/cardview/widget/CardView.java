package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import p015b0.C0713a;
import p029c4.C0821e;
import p215r.AbstractC4174a;
import p215r.AbstractC4175b;
import p215r.C4176c;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView.class */
public class CardView extends FrameLayout {

    /* renamed from: h */
    public static final int[] f1168h = {16842801};

    /* renamed from: i */
    public static final AbstractC4175b f1169i = new C0821e();

    /* renamed from: a */
    public boolean f1170a;

    /* renamed from: b */
    public boolean f1171b;

    /* renamed from: c */
    public int f1172c;

    /* renamed from: d */
    public int f1173d;

    /* renamed from: e */
    public final Rect f1174e;

    /* renamed from: f */
    public final Rect f1175f = new Rect();

    /* renamed from: g */
    public final AbstractC4174a f1176g;

    /* renamed from: androidx.cardview.widget.CardView$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardView$a.class */
    public class C0304a implements AbstractC4174a {

        /* renamed from: a */
        public Drawable f1177a;

        public C0304a() {
            CardView.this = r4;
        }

        /* renamed from: a */
        public boolean m8381a() {
            return CardView.this.getPreventCornerOverlap();
        }

        /* renamed from: b */
        public void m8380b(int i, int i2, int i3, int i4) {
            CardView.this.f1175f.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1174e;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130968734);
        ColorStateList colorStateList;
        Rect rect = new Rect();
        this.f1174e = rect;
        C0304a c0304a = new C0304a();
        this.f1176g = c0304a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2752d, 2130968734, 2131886378);
        if (obtainStyledAttributes.hasValue(2)) {
            colorStateList = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f1168h);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateList = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(2131099722) : getResources().getColor(2131099719));
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        this.f1170a = obtainStyledAttributes.getBoolean(7, false);
        this.f1171b = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        float f = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1172c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f1173d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        C0821e c0821e = (C0821e) f1169i;
        C4176c c4176c = new C4176c(colorStateList, dimension);
        c0304a.f1177a = c4176c;
        setBackgroundDrawable(c4176c);
        setClipToOutline(true);
        setElevation(dimension2);
        c0821e.m7331n(c0304a, f);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((C0821e) f1169i).m7340e(this.f1176g).f13161h;
    }

    public float getCardElevation() {
        return CardView.this.getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f1174e.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1174e.left;
    }

    public int getContentPaddingRight() {
        return this.f1174e.right;
    }

    public int getContentPaddingTop() {
        return this.f1174e.top;
    }

    public float getMaxCardElevation() {
        return ((C0821e) f1169i).m7338g(this.f1176g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1171b;
    }

    public float getRadius() {
        return ((C0821e) f1169i).m7337h(this.f1176g);
    }

    public boolean getUseCompatPadding() {
        return this.f1170a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        AbstractC4175b abstractC4175b = f1169i;
        AbstractC4174a abstractC4174a = this.f1176g;
        ColorStateList valueOf = ColorStateList.valueOf(i);
        C4176c m7340e = ((C0821e) abstractC4175b).m7340e(abstractC4174a);
        m7340e.m1310b(valueOf);
        m7340e.invalidateSelf();
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        C4176c m7340e = ((C0821e) f1169i).m7340e(this.f1176g);
        m7340e.m1310b(colorStateList);
        m7340e.invalidateSelf();
    }

    public void setCardElevation(float f) {
        CardView.this.setElevation(f);
    }

    public void setMaxCardElevation(float f) {
        ((C0821e) f1169i).m7331n(this.f1176g, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f1173d = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f1172c = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1171b) {
            this.f1171b = z;
            AbstractC4175b abstractC4175b = f1169i;
            AbstractC4174a abstractC4174a = this.f1176g;
            C0821e c0821e = (C0821e) abstractC4175b;
            c0821e.m7331n(abstractC4174a, c0821e.m7340e(abstractC4174a).f13158e);
        }
    }

    public void setRadius(float f) {
        C4176c m7340e = ((C0821e) f1169i).m7340e(this.f1176g);
        if (f == m7340e.f13154a) {
            return;
        }
        m7340e.f13154a = f;
        m7340e.m1309c(null);
        m7340e.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1170a != z) {
            this.f1170a = z;
            AbstractC4175b abstractC4175b = f1169i;
            AbstractC4174a abstractC4174a = this.f1176g;
            C0821e c0821e = (C0821e) abstractC4175b;
            c0821e.m7331n(abstractC4174a, c0821e.m7340e(abstractC4174a).f13158e);
        }
    }
}
