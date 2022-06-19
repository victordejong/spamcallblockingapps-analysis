package com.unknownphone.callblocker.custom;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/CustomLinearLayout.class */
public class CustomLinearLayout extends LinearLayout {

    /* renamed from: a */
    private int f22115a;

    public CustomLinearLayout(Context context) {
        this(context, null);
    }

    public CustomLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f22115a = Math.min(displayMetrics.heightPixels - C5287g.m1094a(context, 100.0f), C5287g.m1094a(context, 550.0f));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f22115a, 1073741824));
    }
}
