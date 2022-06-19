package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.C0286e0;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: d */
    public final CharSequence f37271d;

    /* renamed from: e */
    public final Drawable f37272e;

    /* renamed from: f */
    public final int f37273f;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0286e0 m34947u = C0286e0.m34947u(context, attributeSet, C1896l.TabItem);
        this.f37271d = m34947u.m34952p(C1896l.TabItem_android_text);
        this.f37272e = m34947u.m34961g(C1896l.TabItem_android_icon);
        this.f37273f = m34947u.m34954n(C1896l.TabItem_android_layout, 0);
        m34947u.m34945w();
    }
}
