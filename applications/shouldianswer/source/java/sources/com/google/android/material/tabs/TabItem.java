package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.C0311as;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0311as m7157a = C0311as.m7157a(context, attributeSet, C1284R.styleable.TabItem);
        this.text = m7157a.m7152c(C1284R.styleable.TabItem_android_text);
        this.icon = m7157a.m7163a(C1284R.styleable.TabItem_android_icon);
        this.customLayout = m7157a.m7143g(C1284R.styleable.TabItem_android_layout, 0);
        m7157a.m7164a();
    }
}
