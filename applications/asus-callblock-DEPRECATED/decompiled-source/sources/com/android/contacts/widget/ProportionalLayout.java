package com.android.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/ProportionalLayout.class */
public class ProportionalLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private a f2201a;

    /* renamed from: b  reason: collision with root package name */
    private float f2202b;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/ProportionalLayout$a.class */
    public enum a {
        widthToHeight("widthToHeight"),
        heightToWidth("heightToWidth");
        
        public final String c;

        a(String str) {
            this.c = str;
        }

        public static a a(String str) {
            a aVar;
            if (widthToHeight.c.equals(str)) {
                aVar = widthToHeight;
            } else if (heightToWidth.c.equals(str)) {
                aVar = heightToWidth;
            } else {
                throw new IllegalStateException("direction must be either " + widthToHeight.c + " or " + heightToWidth.c);
            }
            return aVar;
        }
    }

    public ProportionalLayout(Context context) {
        super(context);
    }

    public ProportionalLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public ProportionalLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.n);
        this.f2201a = a.a(obtainStyledAttributes.getString(0));
        this.f2202b = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() != 1) {
            throw new IllegalStateException("ProportionalLayout requires exactly one child");
        }
        getChildAt(0).layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (getChildCount() != 1) {
            throw new IllegalStateException("ProportionalLayout requires exactly one child");
        }
        View childAt = getChildAt(0);
        measureChild(childAt, i, i2);
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        if (this.f2201a == a.heightToWidth) {
            measuredWidth = Math.round(measuredHeight * this.f2202b);
        } else {
            measuredHeight = Math.round(measuredWidth * this.f2202b);
        }
        measureChild(childAt, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        setMeasuredDimension(resolveSize(measuredWidth, i), resolveSize(measuredHeight, i2));
    }

    public void setDirection(a aVar) {
        this.f2201a = aVar;
    }

    public void setRatio(float f) {
        this.f2202b = f;
    }
}
