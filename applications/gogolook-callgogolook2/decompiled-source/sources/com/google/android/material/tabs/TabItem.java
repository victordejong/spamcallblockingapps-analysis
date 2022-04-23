package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R$styleable;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: a */
    public final CharSequence f7535a;

    /* renamed from: b */
    public final Drawable f7536b;

    /* renamed from: c */
    public final int f7537c;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.TabItem);
        this.f7535a = obtainStyledAttributes.getText(R$styleable.TabItem_android_text);
        this.f7536b = obtainStyledAttributes.getDrawable(R$styleable.TabItem_android_icon);
        this.f7537c = obtainStyledAttributes.getResourceId(R$styleable.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
