package com.callapp.contacts.widget.floatingwidget.ui;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer.class */
public interface ChatHeadContainer {
    int a(View view);

    ViewGroup.LayoutParams a(int i, int i2, int i3);

    void a();

    void a(View view, int i);

    void a(View view, ViewGroup.LayoutParams layoutParams);

    void a(ChatHeadArrangement chatHeadArrangement);

    void a(ChatHeadManager chatHeadManager);

    int b(View view);

    void b();

    void b(View view, int i);

    void c(View view);

    void d(View view);

    DisplayMetrics getDisplayMetrics();
}
