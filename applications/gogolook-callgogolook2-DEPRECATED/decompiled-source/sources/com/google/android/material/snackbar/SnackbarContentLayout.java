package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p314t.AbstractC9268e;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements AbstractC9268e {

    /* renamed from: a */
    public TextView f7530a;

    /* renamed from: b */
    public Button f7531b;

    /* renamed from: c */
    public int f7532c;

    /* renamed from: d */
    public int f7533d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
        this.f7532c = obtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_android_maxWidth, -1);
        this.f7533d = obtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static void m31316a(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: a */
    public final boolean m31317a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (!(this.f7530a.getPaddingTop() == i2 && this.f7530a.getPaddingBottom() == i3)) {
            m31316a(this.f7530a, i2, i3);
            z = true;
        }
        return z;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f7530a = (TextView) findViewById(R$id.snackbar_text);
        this.f7531b = (Button) findViewById(R$id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        int i3 = i;
        if (this.f7532c > 0) {
            int measuredWidth = getMeasuredWidth();
            int i4 = this.f7532c;
            i3 = i;
            if (measuredWidth > i4) {
                i3 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                super.onMeasure(i3, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical);
        boolean z2 = this.f7530a.getLayout().getLineCount() > 1;
        if (!z2 || this.f7533d <= 0 || this.f7531b.getMeasuredWidth() <= this.f7533d) {
            int i5 = z2 ? dimensionPixelSize : dimensionPixelSize2;
            if (m31317a(0, i5, i5)) {
                z = true;
            }
            z = false;
        } else {
            if (m31317a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i3, i2);
        }
    }
}
