package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.C0370ab;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: a */
    public final CharSequence f53882a;

    /* renamed from: b */
    public final Drawable f53883b;

    /* renamed from: c */
    public final int f53884c;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0370ab m45805a = C0370ab.m45805a(context, attributeSet, C14376a.C14388l.TabItem);
        this.f53882a = m45805a.m45801c(C14376a.C14388l.TabItem_android_text);
        this.f53883b = m45805a.m45810a(C14376a.C14388l.TabItem_android_icon);
        this.f53884c = m45805a.m45792g(C14376a.C14388l.TabItem_android_layout, 0);
        m45805a.f1491a.recycle();
    }
}
