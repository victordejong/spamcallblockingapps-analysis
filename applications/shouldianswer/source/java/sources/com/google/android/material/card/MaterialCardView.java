package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.p012b.p013a.C0362a;
import com.google.android.material.C1284R;
import com.google.android.material.internal.ThemeEnforcement;
/* loaded from: classes-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends C0362a {
    private final MaterialCardViewHelper cardViewHelper;

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1284R.attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C1284R.styleable.MaterialCardView, i, C1284R.style.Widget_MaterialComponents_CardView, new int[0]);
        this.cardViewHelper = new MaterialCardViewHelper(this);
        this.cardViewHelper.loadFromAttributes(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public int getStrokeColor() {
        return this.cardViewHelper.getStrokeColor();
    }

    public int getStrokeWidth() {
        return this.cardViewHelper.getStrokeWidth();
    }

    @Override // androidx.p012b.p013a.C0362a
    public void setRadius(float f) {
        super.setRadius(f);
        this.cardViewHelper.updateForeground();
    }

    public void setStrokeColor(int i) {
        this.cardViewHelper.setStrokeColor(i);
    }

    public void setStrokeWidth(int i) {
        this.cardViewHelper.setStrokeWidth(i);
    }
}
