package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.p149g.C4680a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements AbstractC4785a {

    /* renamed from: a */
    private TextView f20632a;

    /* renamed from: b */
    private Button f20633b;

    /* renamed from: c */
    private int f20634c;

    /* renamed from: d */
    private int f20635d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.SnackbarLayout);
        this.f20634c = obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.SnackbarLayout_android_maxWidth, -1);
        this.f20635d = obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m2487a(View view, int i, int i2) {
        if (C0595u.m20304t(view)) {
            C0595u.m20355a(view, C0595u.m20316i(view), i, C0595u.m20314j(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: a */
    private boolean m2488a(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.f20632a.getPaddingTop() != i2 || this.f20632a.getPaddingBottom() != i3) {
            m2487a(this.f20632a, i2, i3);
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public void m2489a(float f) {
        if (f != 1.0f) {
            this.f20633b.setTextColor(C4680a.m2923a(C4680a.m2920a(this, C4492a.C4494b.colorSurface), this.f20633b.getCurrentTextColor(), f));
        }
    }

    @Override // com.google.android.material.snackbar.AbstractC4785a
    /* renamed from: a */
    public void mo2486a(int i, int i2) {
        this.f20632a.setAlpha(0.0f);
        this.f20632a.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f20633b.getVisibility() == 0) {
            this.f20633b.setAlpha(0.0f);
            this.f20633b.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        }
    }

    @Override // com.google.android.material.snackbar.AbstractC4785a
    /* renamed from: b */
    public void mo2485b(int i, int i2) {
        this.f20632a.setAlpha(1.0f);
        this.f20632a.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f20633b.getVisibility() == 0) {
            this.f20633b.setAlpha(1.0f);
            this.f20633b.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        }
    }

    public Button getActionView() {
        return this.f20633b;
    }

    public TextView getMessageView() {
        return this.f20632a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f20632a = (TextView) findViewById(C4492a.C4498f.snackbar_text);
        this.f20633b = (Button) findViewById(C4492a.C4498f.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        int i3 = i;
        if (this.f20634c > 0) {
            i3 = i;
            if (getMeasuredWidth() > this.f20634c) {
                i3 = View.MeasureSpec.makeMeasureSpec(this.f20634c, 1073741824);
                super.onMeasure(i3, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4492a.C4496d.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C4492a.C4496d.design_snackbar_padding_vertical);
        boolean z2 = this.f20632a.getLayout().getLineCount() > 1;
        if (!z2 || this.f20635d <= 0 || this.f20633b.getMeasuredWidth() <= this.f20635d) {
            int i4 = z2 ? dimensionPixelSize : dimensionPixelSize2;
            if (m2488a(0, i4, i4)) {
                z = true;
            }
            z = false;
        } else {
            if (m2488a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i3, i2);
        }
    }
}
