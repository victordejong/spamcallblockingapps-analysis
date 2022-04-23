package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ab;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f30836a;

    /* renamed from: b  reason: collision with root package name */
    public final Drawable f30837b;

    /* renamed from: c  reason: collision with root package name */
    public final int f30838c;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ab a2 = ab.a(context, attributeSet, a.l.TabItem);
        this.f30836a = a2.c(a.l.TabItem_android_text);
        this.f30837b = a2.a(a.l.TabItem_android_icon);
        this.f30838c = a2.g(a.l.TabItem_android_layout, 0);
        a2.f1044a.recycle();
    }
}
