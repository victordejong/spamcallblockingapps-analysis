package com.android.contacts.dialpad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusLinearLayout.class */
public class AsusLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    a f840a;

    /* renamed from: b  reason: collision with root package name */
    private int f841b = 0;
    private int c = -1;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusLinearLayout$a.class */
    public interface a {
    }

    public AsusLinearLayout(Context context) {
        super(context);
    }

    public AsusLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        int height = getHeight();
        super.onMeasure(i, i2);
        if (this.f840a == null || Math.abs(height - size) < 120) {
        }
    }
}
