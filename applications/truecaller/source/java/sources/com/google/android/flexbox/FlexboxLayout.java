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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1641e.AbstractC24871a;
import p193e.p1577m.p1578a.p1641e.C24872b;
import p193e.p1577m.p1578a.p1641e.C24873c;
/* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout.class */
public class FlexboxLayout extends ViewGroup implements AbstractC24871a {

    /* renamed from: a */
    public int f5224a;

    /* renamed from: b */
    public int f5225b;

    /* renamed from: c */
    public int f5226c;

    /* renamed from: d */
    public int f5227d;

    /* renamed from: e */
    public int f5228e;

    /* renamed from: f */
    public int f5229f;

    /* renamed from: g */
    public Drawable f5230g;

    /* renamed from: h */
    public Drawable f5231h;

    /* renamed from: i */
    public int f5232i;

    /* renamed from: j */
    public int f5233j;

    /* renamed from: k */
    public int f5234k;

    /* renamed from: l */
    public int f5235l;

    /* renamed from: m */
    public int[] f5236m;

    /* renamed from: n */
    public SparseIntArray f5237n;

    /* renamed from: o */
    public C24873c f5238o = new C24873c(this);

    /* renamed from: p */
    public List<C24872b> f5239p = new ArrayList();

    /* renamed from: q */
    public C24873c.C24875b f5240q = new C24873c.C24875b();

    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C2028a();

        /* renamed from: a */
        public int f5241a;

        /* renamed from: b */
        public float f5242b;

        /* renamed from: c */
        public float f5243c;

        /* renamed from: d */
        public int f5244d;

        /* renamed from: e */
        public float f5245e;

        /* renamed from: f */
        public int f5246f;

        /* renamed from: g */
        public int f5247g;

        /* renamed from: h */
        public int f5248h;

        /* renamed from: i */
        public int f5249i;

        /* renamed from: j */
        public boolean f5250j;

        /* renamed from: com.google.android.flexbox.FlexboxLayout$LayoutParams$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayout$LayoutParams$a.class */
        public static final class C2028a implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5241a = 1;
            this.f5242b = 0.0f;
            this.f5243c = 1.0f;
            this.f5244d = -1;
            this.f5245e = -1.0f;
            this.f5246f = -1;
            this.f5247g = -1;
            this.f5248h = 16777215;
            this.f5249i = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2034R.styleable.FlexboxLayout_Layout);
            this.f5241a = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.f5242b = obtainStyledAttributes.getFloat(C2034R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.f5243c = obtainStyledAttributes.getFloat(C2034R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.f5244d = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.f5245e = obtainStyledAttributes.getFraction(C2034R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.f5246f = obtainStyledAttributes.getDimensionPixelSize(C2034R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.f5247g = obtainStyledAttributes.getDimensionPixelSize(C2034R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.f5248h = obtainStyledAttributes.getDimensionPixelSize(C2034R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.f5249i = obtainStyledAttributes.getDimensionPixelSize(C2034R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.f5250j = obtainStyledAttributes.getBoolean(C2034R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            obtainStyledAttributes.recycle();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams(Parcel parcel) {
            super(0, 0);
            boolean z = false;
            this.f5241a = 1;
            this.f5242b = 0.0f;
            this.f5243c = 1.0f;
            this.f5244d = -1;
            this.f5245e = -1.0f;
            this.f5246f = -1;
            this.f5247g = -1;
            this.f5248h = 16777215;
            this.f5249i = 16777215;
            this.f5241a = parcel.readInt();
            this.f5242b = parcel.readFloat();
            this.f5243c = parcel.readFloat();
            this.f5244d = parcel.readInt();
            this.f5245e = parcel.readFloat();
            this.f5246f = parcel.readInt();
            this.f5247g = parcel.readInt();
            this.f5248h = parcel.readInt();
            this.f5249i = parcel.readInt();
            this.f5250j = parcel.readByte() != 0 ? true : z;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f5241a = 1;
            this.f5242b = 0.0f;
            this.f5243c = 1.0f;
            this.f5244d = -1;
            this.f5245e = -1.0f;
            this.f5246f = -1;
            this.f5247g = -1;
            this.f5248h = 16777215;
            this.f5249i = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f5241a = 1;
            this.f5242b = 0.0f;
            this.f5243c = 1.0f;
            this.f5244d = -1;
            this.f5245e = -1.0f;
            this.f5246f = -1;
            this.f5247g = -1;
            this.f5248h = 16777215;
            this.f5249i = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f5241a = 1;
            this.f5242b = 0.0f;
            this.f5243c = 1.0f;
            this.f5244d = -1;
            this.f5245e = -1.0f;
            this.f5246f = -1;
            this.f5247g = -1;
            this.f5248h = 16777215;
            this.f5249i = 16777215;
            this.f5241a = layoutParams.f5241a;
            this.f5242b = layoutParams.f5242b;
            this.f5243c = layoutParams.f5243c;
            this.f5244d = layoutParams.f5244d;
            this.f5245e = layoutParams.f5245e;
            this.f5246f = layoutParams.f5246f;
            this.f5247g = layoutParams.f5247g;
            this.f5248h = layoutParams.f5248h;
            this.f5249i = layoutParams.f5249i;
            this.f5250j = layoutParams.f5250j;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: B1 */
        public int mo39152B1() {
            return this.f5248h;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: K */
        public int mo39151K() {
            return this.f5246f;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: Q */
        public int mo39150Q() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: R1 */
        public int mo39149R1() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: U0 */
        public int mo39148U0() {
            return this.f5244d;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: W0 */
        public float mo39147W0() {
            return this.f5243c;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: Z1 */
        public int mo39146Z1() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: b2 */
        public int mo39145b2() {
            return this.f5247g;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.f5241a;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: h2 */
        public int mo39144h2() {
            return this.f5249i;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: j1 */
        public void mo39143j1(int i) {
            this.f5247g = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: l1 */
        public float mo39142l1() {
            return this.f5242b;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n0 */
        public int mo39141n0() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n1 */
        public float mo39140n1() {
            return this.f5245e;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: s1 */
        public boolean mo39139s1() {
            return this.f5250j;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.f5246f = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f5241a);
            parcel.writeFloat(this.f5242b);
            parcel.writeFloat(this.f5243c);
            parcel.writeInt(this.f5244d);
            parcel.writeFloat(this.f5245e);
            parcel.writeInt(this.f5246f);
            parcel.writeInt(this.f5247g);
            parcel.writeInt(this.f5248h);
            parcel.writeInt(this.f5249i);
            parcel.writeByte(this.f5250j ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f5229f = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2034R.styleable.FlexboxLayout, 0, 0);
        this.f5224a = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_flexDirection, 0);
        this.f5225b = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_flexWrap, 0);
        this.f5226c = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_justifyContent, 0);
        this.f5227d = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_alignItems, 0);
        this.f5228e = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_alignContent, 0);
        this.f5229f = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(C2034R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C2034R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(C2034R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_showDivider, 0);
        if (i != 0) {
            this.f5233j = i;
            this.f5232i = i;
        }
        int i2 = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i2 != 0) {
            this.f5233j = i2;
        }
        int i3 = obtainStyledAttributes.getInt(C2034R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i3 != 0) {
            this.f5232i = i3;
        }
        obtainStyledAttributes.recycle();
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: a */
    public void mo4343a(View view, int i, int i2, C24872b c24872b) {
        if (m39175p(i, i2)) {
            if (mo4334j()) {
                int i3 = c24872b.f69758e;
                int i4 = this.f5235l;
                c24872b.f69758e = i3 + i4;
                c24872b.f69759f += i4;
                return;
            }
            int i5 = c24872b.f69758e;
            int i6 = this.f5234k;
            c24872b.f69758e = i5 + i6;
            c24872b.f69759f += i6;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f5237n == null) {
            this.f5237n = new SparseIntArray(getChildCount());
        }
        C24873c c24873c = this.f5238o;
        SparseIntArray sparseIntArray = this.f5237n;
        int flexItemCount = c24873c.f69772a.getFlexItemCount();
        List<C24873c.C24876c> m4324f = c24873c.m4324f(flexItemCount);
        C24873c.C24876c c24876c = new C24873c.C24876c(null);
        if (view == null || !(layoutParams instanceof FlexItem)) {
            c24876c.f69780b = 1;
        } else {
            c24876c.f69780b = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount) {
            c24876c.f69779a = flexItemCount;
        } else if (i < c24873c.f69772a.getFlexItemCount()) {
            c24876c.f69779a = i;
            for (int i2 = i; i2 < flexItemCount; i2++) {
                ((C24873c.C24876c) ((ArrayList) m4324f).get(i2)).f69779a++;
            }
        } else {
            c24876c.f69779a = flexItemCount;
        }
        ((ArrayList) m4324f).add(c24876c);
        this.f5236m = c24873c.m4306x(flexItemCount + 1, m4324f, sparseIntArray);
        super.addView(view, i, layoutParams);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: b */
    public View mo4342b(int i) {
        return getChildAt(i);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: c */
    public int mo4341c(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: d */
    public int mo4340d(View view) {
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: e */
    public View mo4339e(int i) {
        return m39176o(i);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: f */
    public int mo4338f(View view, int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (mo4334j()) {
            if (m39175p(i, i2)) {
                i5 = 0 + this.f5235l;
            }
            i3 = i5;
            if ((this.f5233j & 4) > 0) {
                i4 = this.f5235l;
                i3 = i5 + i4;
            }
        } else {
            i5 = 0;
            if (m39175p(i, i2)) {
                i5 = 0 + this.f5234k;
            }
            i3 = i5;
            if ((this.f5232i & 4) > 0) {
                i4 = this.f5234k;
                i3 = i5 + i4;
            }
        }
        return i3;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: g */
    public int mo4337g(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getAlignContent() {
        return this.f5228e;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getAlignItems() {
        return this.f5227d;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.f5230g;
    }

    public Drawable getDividerDrawableVertical() {
        return this.f5231h;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexDirection() {
        return this.f5224a;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<C24872b> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f5239p.size());
        for (C24872b c24872b : this.f5239p) {
            if (c24872b.m4333a() != 0) {
                arrayList.add(c24872b);
            }
        }
        return arrayList;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public List<C24872b> getFlexLinesInternal() {
        return this.f5239p;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexWrap() {
        return this.f5225b;
    }

    public int getJustifyContent() {
        return this.f5226c;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getLargestMainSize() {
        Iterator<C24872b> it = this.f5239p.iterator();
        int i = Integer.MIN_VALUE;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = Math.max(i2, it.next().f69758e);
            } else {
                return i2;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getMaxLine() {
        return this.f5229f;
    }

    public int getShowDividerHorizontal() {
        return this.f5232i;
    }

    public int getShowDividerVertical() {
        return this.f5233j;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getSumOfCrossSize() {
        int size = this.f5239p.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C24872b c24872b = this.f5239p.get(i2);
            int i3 = i;
            if (m39174q(i2)) {
                i3 = i + (mo4334j() ? this.f5234k : this.f5235l);
            }
            int i4 = i3;
            if (m39173r(i2)) {
                i4 = i3 + (mo4334j() ? this.f5234k : this.f5235l);
            }
            i = i4 + c24872b.f69760g;
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: h */
    public void mo4336h(C24872b c24872b) {
        if (mo4334j()) {
            if ((this.f5233j & 4) <= 0) {
                return;
            }
            int i = c24872b.f69758e;
            int i2 = this.f5235l;
            c24872b.f69758e = i + i2;
            c24872b.f69759f += i2;
        } else if ((this.f5232i & 4) <= 0) {
        } else {
            int i3 = c24872b.f69758e;
            int i4 = this.f5234k;
            c24872b.f69758e = i3 + i4;
            c24872b.f69759f += i4;
        }
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: i */
    public void mo4335i(int i, View view) {
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: j */
    public boolean mo4334j() {
        int i = this.f5224a;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: k */
    public final void m39180k(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f5239p.size();
        for (int i = 0; i < size; i++) {
            C24872b c24872b = this.f5239p.get(i);
            for (int i2 = 0; i2 < c24872b.f69761h; i2++) {
                int i3 = c24872b.f69768o + i2;
                View m39176o = m39176o(i3);
                if (m39176o != null && m39176o.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) m39176o.getLayoutParams();
                    if (m39175p(i3, i2)) {
                        m39177n(canvas, z ? m39176o.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (m39176o.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f5235l, c24872b.f69755b, c24872b.f69760g);
                    }
                    if (i2 == c24872b.f69761h - 1 && (this.f5233j & 4) > 0) {
                        m39177n(canvas, z ? (m39176o.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f5235l : m39176o.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, c24872b.f69755b, c24872b.f69760g);
                    }
                }
            }
            if (m39174q(i)) {
                m39178m(canvas, paddingLeft, z2 ? c24872b.f69757d : c24872b.f69755b - this.f5234k, max);
            }
            if (m39173r(i) && (this.f5232i & 4) > 0) {
                m39178m(canvas, paddingLeft, z2 ? c24872b.f69755b - this.f5234k : c24872b.f69757d, max);
            }
        }
    }

    /* renamed from: l */
    public final void m39179l(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f5239p.size();
        for (int i = 0; i < size; i++) {
            C24872b c24872b = this.f5239p.get(i);
            for (int i2 = 0; i2 < c24872b.f69761h; i2++) {
                int i3 = c24872b.f69768o + i2;
                View m39176o = m39176o(i3);
                if (m39176o != null && m39176o.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) m39176o.getLayoutParams();
                    if (m39175p(i3, i2)) {
                        m39178m(canvas, c24872b.f69754a, z2 ? m39176o.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (m39176o.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f5234k, c24872b.f69760g);
                    }
                    if (i2 == c24872b.f69761h - 1 && (this.f5232i & 4) > 0) {
                        m39178m(canvas, c24872b.f69754a, z2 ? (m39176o.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f5234k : m39176o.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, c24872b.f69760g);
                    }
                }
            }
            if (m39174q(i)) {
                m39177n(canvas, z ? c24872b.f69756c : c24872b.f69754a - this.f5235l, paddingTop, max);
            }
            if (m39173r(i) && (this.f5233j & 4) > 0) {
                m39177n(canvas, z ? c24872b.f69754a - this.f5235l : c24872b.f69756c, paddingTop, max);
            }
        }
    }

    /* renamed from: m */
    public final void m39178m(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f5230g;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.f5234k + i2);
        this.f5230g.draw(canvas);
    }

    /* renamed from: n */
    public final void m39177n(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f5231h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.f5235l + i, i3 + i2);
        this.f5231h.draw(canvas);
    }

    /* renamed from: o */
    public View m39176o(int i) {
        if (i >= 0) {
            int[] iArr = this.f5236m;
            if (i < iArr.length) {
                return getChildAt(iArr[i]);
            }
            return null;
        }
        return null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f5231h == null && this.f5230g == null) {
            return;
        }
        if (this.f5232i == 0 && this.f5233j == 0) {
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        int layoutDirection = getLayoutDirection();
        int i = this.f5224a;
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            boolean z3 = layoutDirection == 1;
            boolean z4 = false;
            if (this.f5225b == 2) {
                z4 = true;
            }
            m39180k(canvas, z3, z4);
        } else if (i == 1) {
            boolean z5 = layoutDirection != 1;
            if (this.f5225b == 2) {
                z = true;
            }
            m39180k(canvas, z5, z);
        } else if (i == 2) {
            boolean z6 = layoutDirection == 1;
            boolean z7 = z6;
            if (this.f5225b == 2) {
                z7 = !z6;
            }
            m39179l(canvas, z7, false);
        } else if (i != 3) {
        } else {
            if (layoutDirection == 1) {
                z2 = true;
            }
            boolean z8 = z2;
            if (this.f5225b == 2) {
                z8 = !z2;
            }
            m39179l(canvas, z8, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int layoutDirection = getLayoutDirection();
        int i5 = this.f5224a;
        boolean z2 = false;
        if (i5 == 0) {
            m39172s(layoutDirection == 1, i, i2, i3, i4);
        } else if (i5 == 1) {
            m39172s(layoutDirection != 1, i, i2, i3, i4);
        } else if (i5 == 2) {
            boolean z3 = false;
            if (layoutDirection == 1) {
                z3 = true;
            }
            if (this.f5225b == 2) {
                z3 = !z3;
            }
            m39171t(z3, false, i, i2, i3, i4);
        } else if (i5 != 3) {
            StringBuilder m8728C = C22128a.m8728C("Invalid flex direction is set: ");
            m8728C.append(this.f5224a);
            throw new IllegalStateException(m8728C.toString());
        } else {
            if (layoutDirection == 1) {
                z2 = true;
            }
            if (this.f5225b == 2) {
                z2 = !z2;
            }
            m39171t(z2, true, i, i2, i3, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0195  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.onMeasure(int, int):void");
    }

    /* renamed from: p */
    public final boolean m39175p(int i, int i2) {
        boolean z;
        boolean z2 = true;
        int i3 = 1;
        while (true) {
            if (i3 > i2) {
                z = true;
                break;
            }
            View m39176o = m39176o(i - i3);
            if (m39176o != null && m39176o.getVisibility() != 8) {
                z = false;
                break;
            }
            i3++;
        }
        if (!z) {
            if (mo4334j()) {
                return (this.f5233j & 2) != 0;
            }
            return (this.f5232i & 2) != 0;
        } else if (!mo4334j()) {
            return (this.f5232i & 1) != 0;
        } else {
            if ((this.f5233j & 1) == 0) {
                z2 = false;
            }
            return z2;
        }
    }

    /* renamed from: q */
    public final boolean m39174q(int i) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            if (i >= this.f5239p.size()) {
                z2 = false;
            } else {
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        z = true;
                        break;
                    } else if (this.f5239p.get(i2).m4333a() > 0) {
                        z = false;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z) {
                    if (mo4334j()) {
                        boolean z3 = false;
                        if ((this.f5232i & 1) != 0) {
                            z3 = true;
                        }
                        return z3;
                    }
                    boolean z4 = false;
                    if ((this.f5233j & 1) != 0) {
                        z4 = true;
                    }
                    return z4;
                } else if (mo4334j()) {
                    boolean z5 = false;
                    if ((this.f5232i & 2) != 0) {
                        z5 = true;
                    }
                    return z5;
                } else {
                    z2 = false;
                    if ((this.f5233j & 2) != 0) {
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    /* renamed from: r */
    public final boolean m39173r(int i) {
        boolean z = false;
        if (i >= 0) {
            if (i >= this.f5239p.size()) {
                z = false;
            } else {
                while (true) {
                    i++;
                    if (i < this.f5239p.size()) {
                        if (this.f5239p.get(i).m4333a() > 0) {
                            return false;
                        }
                    } else if (mo4334j()) {
                        boolean z2 = false;
                        if ((this.f5232i & 4) != 0) {
                            z2 = true;
                        }
                        return z2;
                    } else {
                        z = false;
                        if ((this.f5233j & 4) != 0) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01de  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39172s(boolean r10, int r11, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m39172s(boolean, int, int, int, int):void");
    }

    public void setAlignContent(int i) {
        if (this.f5228e != i) {
            this.f5228e = i;
            requestLayout();
        }
    }

    public void setAlignItems(int i) {
        if (this.f5227d != i) {
            this.f5227d = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.f5230g) {
            return;
        }
        this.f5230g = drawable;
        if (drawable != null) {
            this.f5234k = drawable.getIntrinsicHeight();
        } else {
            this.f5234k = 0;
        }
        if (this.f5230g == null && this.f5231h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.f5231h) {
            return;
        }
        this.f5231h = drawable;
        if (drawable != null) {
            this.f5235l = drawable.getIntrinsicWidth();
        } else {
            this.f5235l = 0;
        }
        if (this.f5230g == null && this.f5231h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setFlexDirection(int i) {
        if (this.f5224a != i) {
            this.f5224a = i;
            requestLayout();
        }
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public void setFlexLines(List<C24872b> list) {
        this.f5239p = list;
    }

    public void setFlexWrap(int i) {
        if (this.f5225b != i) {
            this.f5225b = i;
            requestLayout();
        }
    }

    public void setJustifyContent(int i) {
        if (this.f5226c != i) {
            this.f5226c = i;
            requestLayout();
        }
    }

    public void setMaxLine(int i) {
        if (this.f5229f != i) {
            this.f5229f = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.f5232i) {
            this.f5232i = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.f5233j) {
            this.f5233j = i;
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01d0  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39171t(boolean r11, boolean r12, int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.m39171t(boolean, boolean, int, int, int, int):void");
    }

    /* renamed from: u */
    public final void m39170u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            int sumOfCrossSize = getSumOfCrossSize();
            i6 = getPaddingBottom() + getPaddingTop() + sumOfCrossSize;
            i5 = getLargestMainSize();
        } else if (i != 2 && i != 3) {
            throw new IllegalArgumentException(C22128a.m8611i2("Invalid flex direction: ", i));
        } else {
            i6 = getLargestMainSize();
            int sumOfCrossSize2 = getSumOfCrossSize();
            i5 = getPaddingRight() + getPaddingLeft() + sumOfCrossSize2;
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < i5) {
                i4 = View.combineMeasuredStates(i4, 16777216);
                i5 = size;
            }
            i7 = View.resolveSizeAndState(i5, i2, i4);
        } else if (mode == 0) {
            i7 = View.resolveSizeAndState(i5, i2, i4);
        } else if (mode != 1073741824) {
            throw new IllegalStateException(C22128a.m8611i2("Unknown width mode is set: ", mode));
        } else {
            int i9 = i4;
            if (size < i5) {
                i9 = View.combineMeasuredStates(i4, 16777216);
            }
            i7 = View.resolveSizeAndState(size, i2, i9);
            i4 = i9;
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < i6) {
                i4 = View.combineMeasuredStates(i4, 256);
                i6 = size2;
            }
            i8 = View.resolveSizeAndState(i6, i3, i4);
        } else if (mode2 == 0) {
            i8 = View.resolveSizeAndState(i6, i3, i4);
        } else if (mode2 != 1073741824) {
            throw new IllegalStateException(C22128a.m8611i2("Unknown height mode is set: ", mode2));
        } else {
            int i10 = i4;
            if (size2 < i6) {
                i10 = View.combineMeasuredStates(i4, 256);
            }
            i8 = View.resolveSizeAndState(size2, i3, i10);
        }
        setMeasuredDimension(i7, i8);
    }
}
