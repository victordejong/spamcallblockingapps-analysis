package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p223d.AbstractC6703a;
import p081h.p203i.p204a.p223d.C6704b;
import p081h.p203i.p204a.p223d.C6705c;
/* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout.class */
public class FlexboxLayout extends ViewGroup implements AbstractC6703a {

    /* renamed from: a */
    public int f6251a;

    /* renamed from: b */
    public int f6252b;

    /* renamed from: c */
    public int f6253c;

    /* renamed from: d */
    public int f6254d;

    /* renamed from: e */
    public int f6255e;
    @Nullable

    /* renamed from: f */
    public Drawable f6256f;
    @Nullable

    /* renamed from: g */
    public Drawable f6257g;

    /* renamed from: h */
    public int f6258h;

    /* renamed from: i */
    public int f6259i;

    /* renamed from: j */
    public int f6260j;

    /* renamed from: k */
    public int f6261k;

    /* renamed from: l */
    public int[] f6262l;

    /* renamed from: m */
    public SparseIntArray f6263m;

    /* renamed from: n */
    public C6705c f6264n;

    /* renamed from: o */
    public List<C6704b> f6265o;

    /* renamed from: p */
    public C6705c.C6707b f6266p;

    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C3549a();

        /* renamed from: a */
        public int f6267a;

        /* renamed from: b */
        public float f6268b;

        /* renamed from: c */
        public float f6269c;

        /* renamed from: d */
        public int f6270d;

        /* renamed from: e */
        public float f6271e;

        /* renamed from: f */
        public int f6272f;

        /* renamed from: g */
        public int f6273g;

        /* renamed from: h */
        public int f6274h;

        /* renamed from: i */
        public int f6275i;

        /* renamed from: j */
        public boolean f6276j;

        /* renamed from: com.google.android.flexbox.FlexboxLayout$LayoutParams$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout$LayoutParams$a.class */
        public static final class C3549a implements Parcelable.Creator<LayoutParams> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6267a = 1;
            this.f6268b = 0.0f;
            this.f6269c = 1.0f;
            this.f6270d = -1;
            this.f6271e = -1.0f;
            this.f6274h = ViewCompat.MEASURED_SIZE_MASK;
            this.f6275i = ViewCompat.MEASURED_SIZE_MASK;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout_Layout);
            this.f6267a = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_order, 1);
            this.f6268b = obtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.f6269c = obtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.f6270d = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.f6271e = obtainStyledAttributes.getFraction(R$styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.f6272f = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minWidth, 0);
            this.f6273g = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minHeight, 0);
            this.f6274h = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxWidth, ViewCompat.MEASURED_SIZE_MASK);
            this.f6275i = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxHeight, ViewCompat.MEASURED_SIZE_MASK);
            this.f6276j = obtainStyledAttributes.getBoolean(R$styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            obtainStyledAttributes.recycle();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams(Parcel parcel) {
            super(0, 0);
            boolean z = false;
            this.f6267a = 1;
            this.f6268b = 0.0f;
            this.f6269c = 1.0f;
            this.f6270d = -1;
            this.f6271e = -1.0f;
            this.f6274h = ViewCompat.MEASURED_SIZE_MASK;
            this.f6275i = ViewCompat.MEASURED_SIZE_MASK;
            this.f6267a = parcel.readInt();
            this.f6268b = parcel.readFloat();
            this.f6269c = parcel.readFloat();
            this.f6270d = parcel.readInt();
            this.f6271e = parcel.readFloat();
            this.f6272f = parcel.readInt();
            this.f6273g = parcel.readInt();
            this.f6274h = parcel.readInt();
            this.f6275i = parcel.readInt();
            this.f6276j = parcel.readByte() != 0 ? true : z;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6267a = 1;
            this.f6268b = 0.0f;
            this.f6269c = 1.0f;
            this.f6270d = -1;
            this.f6271e = -1.0f;
            this.f6274h = ViewCompat.MEASURED_SIZE_MASK;
            this.f6275i = ViewCompat.MEASURED_SIZE_MASK;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: d */
        public int mo32150d() {
            return this.f6270d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: e */
        public float mo32149e() {
            return this.f6269c;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: f */
        public int mo32148f() {
            return this.f6272f;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: g */
        public int mo32147g() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.f6267a;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: h */
        public float mo32146h() {
            return this.f6268b;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: i */
        public float mo32145i() {
            return this.f6271e;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: j */
        public boolean mo32144j() {
            return this.f6276j;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: k */
        public int mo32143k() {
            return this.f6274h;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: l */
        public int mo32142l() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: m */
        public int mo32141m() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n */
        public int mo32140n() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: o */
        public int mo32139o() {
            return this.f6273g;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: p */
        public int mo32138p() {
            return this.f6275i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f6267a);
            parcel.writeFloat(this.f6268b);
            parcel.writeFloat(this.f6269c);
            parcel.writeInt(this.f6270d);
            parcel.writeFloat(this.f6271e);
            parcel.writeInt(this.f6272f);
            parcel.writeInt(this.f6273g);
            parcel.writeInt(this.f6274h);
            parcel.writeInt(this.f6275i);
            parcel.writeByte(this.f6276j ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6264n = new C6705c(this);
        this.f6265o = new ArrayList();
        this.f6266p = new C6705c.C6707b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout, i, 0);
        this.f6251a = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexDirection, 0);
        this.f6252b = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexWrap, 0);
        this.f6253c = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_justifyContent, 0);
        this.f6254d = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignItems, 4);
        this.f6255e = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignContent, 5);
        Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            m32207a(drawable);
            m32201b(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            m32207a(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            m32201b(drawable3);
        }
        int i2 = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDivider, 0);
        if (i2 != 0) {
            this.f6259i = i2;
            this.f6258h = i2;
        }
        int i3 = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerVertical, 0);
        if (i3 != 0) {
            this.f6259i = i3;
        }
        int i4 = obtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i4 != 0) {
            this.f6258h = i4;
        }
        obtainStyledAttributes.recycle();
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22060a() {
        return getChildCount();
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22058a(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22056a(View view) {
        return 0;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22055a(View view, int i, int i2) {
        int i3;
        int i4;
        r10 = 0;
        int i5 = 0;
        if (mo22042i()) {
            if (m32204b(i, i2)) {
                i5 = 0 + this.f6261k;
            }
            i3 = i5;
            if ((this.f6259i & 4) > 0) {
                i4 = this.f6261k;
                i3 = i5 + i4;
            }
        } else {
            if (m32204b(i, i2)) {
                i5 = 0 + this.f6260j;
            }
            i3 = i5;
            if ((this.f6258h & 4) > 0) {
                i4 = this.f6260j;
                i3 = i5 + i4;
            }
        }
        return i3;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public View mo22059a(int i) {
        return getChildAt(i);
    }

    /* renamed from: a */
    public final void m32210a(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            i6 = mo22043h() + getPaddingTop() + getPaddingBottom();
            i5 = mo22048c();
        } else if (i == 2 || i == 3) {
            i6 = mo22048c();
            i5 = mo22043h() + getPaddingLeft() + getPaddingRight();
        } else {
            throw new IllegalArgumentException("Invalid flex direction: " + i);
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < i5) {
                i4 = ViewCompat.combineMeasuredStates(i4, 16777216);
                i5 = size;
            }
            i7 = ViewCompat.resolveSizeAndState(i5, i2, i4);
        } else if (mode == 0) {
            i7 = ViewCompat.resolveSizeAndState(i5, i2, i4);
        } else if (mode == 1073741824) {
            int i9 = i4;
            if (size < i5) {
                i9 = ViewCompat.combineMeasuredStates(i4, 16777216);
            }
            i7 = ViewCompat.resolveSizeAndState(size, i2, i9);
            i4 = i9;
        } else {
            throw new IllegalStateException("Unknown width mode is set: " + mode);
        }
        if (mode2 == Integer.MIN_VALUE) {
            int i10 = i6;
            int i11 = i4;
            if (size2 < i6) {
                i11 = ViewCompat.combineMeasuredStates(i4, 256);
                i10 = size2;
            }
            i8 = ViewCompat.resolveSizeAndState(i10, i3, i11);
        } else if (mode2 == 0) {
            i8 = ViewCompat.resolveSizeAndState(i6, i3, i4);
        } else if (mode2 == 1073741824) {
            int i12 = i4;
            if (size2 < i6) {
                i12 = ViewCompat.combineMeasuredStates(i4, 256);
            }
            i8 = ViewCompat.resolveSizeAndState(size2, i3, i12);
        } else {
            throw new IllegalStateException("Unknown height mode is set: " + mode2);
        }
        setMeasuredDimension(i7, i8);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22057a(int i, View view) {
    }

    /* renamed from: a */
    public final void m32209a(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f6256f;
        if (drawable != null) {
            drawable.setBounds(i, i2, i3 + i, this.f6260j + i2);
            this.f6256f.draw(canvas);
        }
    }

    /* renamed from: a */
    public final void m32208a(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f6265o.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C6704b bVar = this.f6265o.get(i2);
            for (int i3 = 0; i3 < bVar.f16589h; i3++) {
                View d = m32198d(i);
                i = i;
                if (d != null) {
                    if (d.getVisibility() == 8) {
                        i = i;
                    } else {
                        LayoutParams layoutParams = (LayoutParams) d.getLayoutParams();
                        if (m32204b(i, i3)) {
                            m32203b(canvas, z ? d.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (d.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f6261k, bVar.f16583b, bVar.f16588g);
                        }
                        if (i3 == bVar.f16589h - 1 && (this.f6259i & 4) > 0) {
                            m32203b(canvas, z ? (d.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f6261k : d.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, bVar.f16583b, bVar.f16588g);
                        }
                        i++;
                    }
                }
            }
            if (m32196e(i2)) {
                m32209a(canvas, paddingLeft, z2 ? bVar.f16585d : bVar.f16583b - this.f6260j, max);
            }
            if (m32195f(i2) && (this.f6258h & 4) > 0) {
                m32209a(canvas, paddingLeft, z2 ? bVar.f16583b - this.f6260j : bVar.f16585d, max);
            }
        }
    }

    /* renamed from: a */
    public void m32207a(@Nullable Drawable drawable) {
        if (drawable != this.f6256f) {
            this.f6256f = drawable;
            if (drawable != null) {
                this.f6260j = drawable.getIntrinsicHeight();
            } else {
                this.f6260j = 0;
            }
            m32194j();
            requestLayout();
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22054a(View view, int i, int i2, C6704b bVar) {
        if (!m32204b(i, i2)) {
            return;
        }
        if (mo22042i()) {
            int i3 = bVar.f16586e;
            int i4 = this.f6261k;
            bVar.f16586e = i3 + i4;
            bVar.f16587f += i4;
            return;
        }
        int i5 = bVar.f16586e;
        int i6 = this.f6260j;
        bVar.f16586e = i5 + i6;
        bVar.f16587f += i6;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22053a(C6704b bVar) {
        if (mo22042i()) {
            if ((this.f6259i & 4) > 0) {
                int i = bVar.f16586e;
                int i2 = this.f6261k;
                bVar.f16586e = i + i2;
                bVar.f16587f += i2;
            }
        } else if ((this.f6258h & 4) > 0) {
            int i3 = bVar.f16586e;
            int i4 = this.f6260j;
            bVar.f16586e = i3 + i4;
            bVar.f16587f += i4;
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22052a(List<C6704b> list) {
        this.f6265o = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x019a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32206a(boolean r10, int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m32206a(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0193  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32205a(boolean r11, boolean r12, int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m32205a(boolean, boolean, int, int, int, int):void");
    }

    /* renamed from: a */
    public final boolean m32211a(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View d = m32198d(i - i3);
            if (!(d == null || d.getVisibility() == 8)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f6263m == null) {
            this.f6263m = new SparseIntArray(getChildCount());
        }
        this.f6262l = this.f6264n.m22023a(view, i, layoutParams, this.f6263m);
        super.addView(view, i, layoutParams);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public int mo22051b() {
        return this.f6251a;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public int mo22049b(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public View mo22050b(int i) {
        return m32198d(i);
    }

    /* renamed from: b */
    public final void m32203b(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f6257g;
        if (drawable != null) {
            drawable.setBounds(i, i2, this.f6261k + i, i3 + i2);
            this.f6257g.draw(canvas);
        }
    }

    /* renamed from: b */
    public final void m32202b(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f6265o.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C6704b bVar = this.f6265o.get(i2);
            for (int i3 = 0; i3 < bVar.f16589h; i3++) {
                View d = m32198d(i);
                i = i;
                if (d != null) {
                    if (d.getVisibility() == 8) {
                        i = i;
                    } else {
                        LayoutParams layoutParams = (LayoutParams) d.getLayoutParams();
                        if (m32204b(i, i3)) {
                            m32209a(canvas, bVar.f16582a, z2 ? d.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (d.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f6260j, bVar.f16588g);
                        }
                        if (i3 == bVar.f16589h - 1 && (this.f6258h & 4) > 0) {
                            m32209a(canvas, bVar.f16582a, z2 ? (d.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f6260j : d.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, bVar.f16588g);
                        }
                        i++;
                    }
                }
            }
            if (m32196e(i2)) {
                m32203b(canvas, z ? bVar.f16584c : bVar.f16582a - this.f6261k, paddingTop, max);
            }
            if (m32195f(i2) && (this.f6259i & 4) > 0) {
                m32203b(canvas, z ? bVar.f16582a - this.f6261k : bVar.f16584c, paddingTop, max);
            }
        }
    }

    /* renamed from: b */
    public void m32201b(@Nullable Drawable drawable) {
        if (drawable != this.f6257g) {
            this.f6257g = drawable;
            if (drawable != null) {
                this.f6261k = drawable.getIntrinsicWidth();
            } else {
                this.f6261k = 0;
            }
            m32194j();
            requestLayout();
        }
    }

    /* renamed from: b */
    public final boolean m32204b(int i, int i2) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        if (m32211a(i, i2)) {
            if (mo22042i()) {
                if ((this.f6259i & 1) != 0) {
                    z4 = true;
                }
                return z4;
            }
            if ((this.f6258h & 1) != 0) {
                z = true;
            }
            return z;
        } else if (mo22042i()) {
            if ((this.f6259i & 2) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            if ((this.f6258h & 2) != 0) {
                z3 = true;
            }
            return z3;
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: c */
    public int mo22048c() {
        int i = Integer.MIN_VALUE;
        for (C6704b bVar : this.f6265o) {
            i = Math.max(i, bVar.f16586e);
        }
        return i;
    }

    /* renamed from: c */
    public final void m32199c(int i, int i2) {
        int i3;
        this.f6265o.clear();
        this.f6266p.m21986a();
        this.f6264n.m22018a(this.f6266p, i, i2);
        this.f6265o = this.f6266p.f16603a;
        this.f6264n.m22035a(i, i2);
        if (this.f6254d == 3) {
            int i4 = 0;
            for (C6704b bVar : this.f6265o) {
                int i5 = i4;
                int i6 = Integer.MIN_VALUE;
                while (true) {
                    i3 = bVar.f16589h;
                    if (i5 < i4 + i3) {
                        View d = m32198d(i5);
                        LayoutParams layoutParams = (LayoutParams) d.getLayoutParams();
                        i6 = this.f6252b != 2 ? Math.max(i6, d.getHeight() + Math.max(bVar.f16593l - d.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(i6, d.getHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((bVar.f16593l - d.getMeasuredHeight()) + d.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                        i5++;
                    }
                }
                bVar.f16588g = i6;
                i4 += i3;
            }
        }
        this.f6264n.m22034a(i, i2, getPaddingTop() + getPaddingBottom());
        this.f6264n.m22037a();
        m32210a(this.f6251a, i, i2, this.f6266p.f16604b);
    }

    /* renamed from: c */
    public final boolean m32200c(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f6265o.get(i2).m22038c() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public View m32198d(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.f6262l;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: d */
    public List<C6704b> mo22047d() {
        return this.f6265o;
    }

    /* renamed from: d */
    public final void m32197d(int i, int i2) {
        this.f6265o.clear();
        this.f6266p.m21986a();
        this.f6264n.m22001b(this.f6266p, i, i2);
        this.f6265o = this.f6266p.f16603a;
        this.f6264n.m22035a(i, i2);
        this.f6264n.m22034a(i, i2, getPaddingLeft() + getPaddingRight());
        this.f6264n.m22037a();
        m32210a(this.f6251a, i, i2, this.f6266p.f16604b);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: e */
    public int mo22046e() {
        return this.f6255e;
    }

    /* renamed from: e */
    public final boolean m32196e(int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        if (i >= 0) {
            if (i >= this.f6265o.size()) {
                z4 = false;
            } else if (m32200c(i)) {
                if (mo22042i()) {
                    if ((this.f6258h & 1) != 0) {
                        z3 = true;
                    }
                    return z3;
                }
                if ((this.f6259i & 1) != 0) {
                    z = true;
                }
                return z;
            } else if (mo22042i()) {
                if ((this.f6258h & 2) != 0) {
                    z2 = true;
                }
                return z2;
            } else {
                z4 = false;
                if ((this.f6259i & 2) != 0) {
                    z4 = true;
                }
            }
        }
        return z4;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: f */
    public int mo22045f() {
        return this.f6252b;
    }

    /* renamed from: f */
    public final boolean m32195f(int i) {
        boolean z = false;
        boolean z2 = false;
        if (i >= 0) {
            if (i >= this.f6265o.size()) {
                z2 = false;
            } else {
                while (true) {
                    i++;
                    if (i < this.f6265o.size()) {
                        if (this.f6265o.get(i).m22038c() > 0) {
                            return false;
                        }
                    } else if (mo22042i()) {
                        if ((this.f6258h & 4) != 0) {
                            z = true;
                        }
                        return z;
                    } else {
                        z2 = false;
                        if ((this.f6259i & 4) != 0) {
                            z2 = true;
                        }
                    }
                }
            }
        }
        return z2;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: g */
    public int mo22044g() {
        return this.f6254d;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: h */
    public int mo22043h() {
        int size = this.f6265o.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C6704b bVar = this.f6265o.get(i2);
            int i3 = i;
            if (m32196e(i2)) {
                i3 = i + (mo22042i() ? this.f6260j : this.f6261k);
            }
            int i4 = i3;
            if (m32195f(i2)) {
                i4 = i3 + (mo22042i() ? this.f6260j : this.f6261k);
            }
            i = i4 + bVar.f16588g;
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: i */
    public boolean mo22042i() {
        int i = this.f6251a;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: j */
    public final void m32194j() {
        if (this.f6256f == null && this.f6257g == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f6257g != null || this.f6256f != null) {
            if (this.f6258h != 0 || this.f6259i != 0) {
                int layoutDirection = ViewCompat.getLayoutDirection(this);
                int i = this.f6251a;
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = true;
                if (i == 0) {
                    boolean z5 = layoutDirection == 1;
                    if (this.f6252b == 2) {
                        z2 = true;
                    }
                    m32208a(canvas, z5, z2);
                } else if (i == 1) {
                    boolean z6 = layoutDirection != 1;
                    if (this.f6252b == 2) {
                        z = true;
                    }
                    m32208a(canvas, z6, z);
                } else if (i == 2) {
                    if (layoutDirection != 1) {
                        z4 = false;
                    }
                    boolean z7 = z4;
                    if (this.f6252b == 2) {
                        z7 = !z4;
                    }
                    m32202b(canvas, z7, false);
                } else if (i == 3) {
                    if (layoutDirection == 1) {
                        z3 = true;
                    }
                    boolean z8 = z3;
                    if (this.f6252b == 2) {
                        z8 = !z3;
                    }
                    m32202b(canvas, z8, true);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i5 = this.f6251a;
        boolean z2 = false;
        boolean z3 = false;
        if (i5 == 0) {
            m32206a(layoutDirection == 1, i, i2, i3, i4);
        } else if (i5 == 1) {
            m32206a(layoutDirection != 1, i, i2, i3, i4);
        } else if (i5 == 2) {
            if (layoutDirection == 1) {
                z2 = true;
            }
            if (this.f6252b == 2) {
                z2 = !z2;
            }
            m32205a(z2, false, i, i2, i3, i4);
        } else if (i5 == 3) {
            if (layoutDirection == 1) {
                z3 = true;
            }
            if (this.f6252b == 2) {
                z3 = !z3;
            }
            m32205a(z3, true, i, i2, i3, i4);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f6251a);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f6263m == null) {
            this.f6263m = new SparseIntArray(getChildCount());
        }
        if (this.f6264n.m22005b(this.f6263m)) {
            this.f6262l = this.f6264n.m22027a(this.f6263m);
        }
        int i3 = this.f6251a;
        if (i3 == 0 || i3 == 1) {
            m32199c(i, i2);
        } else if (i3 == 2 || i3 == 3) {
            m32197d(i, i2);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f6251a);
        }
    }
}
