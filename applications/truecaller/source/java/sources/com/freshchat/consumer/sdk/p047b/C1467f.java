package com.freshchat.consumer.sdk.p047b;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
/* renamed from: com.freshchat.consumer.sdk.b.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/f.class */
public class C1467f {
    /* renamed from: j */
    public static AbstractC25393a m40873j(Context context) {
        try {
            Class.forName("androidx.appcompat.widget.Toolbar");
            View findViewById = ((Activity) context).findViewById(16908290);
            if (findViewById instanceof FrameLayout) {
                FrameLayout frameLayout = (FrameLayout) findViewById;
                View inflate = LayoutInflater.from(context).inflate(C1298R.layout.freshchat_toolbar, (ViewGroup) null);
                if (inflate != null) {
                    int i = C1298R.C1300id.freshchat_material_toolbar;
                    if (inflate.findViewById(i) instanceof Toolbar) {
                        Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 49);
                        layoutParams.setMargins(0, 0, 0, 0);
                        inflate.setLayoutParams(layoutParams);
                        frameLayout.addView(inflate);
                        View childAt = frameLayout.getChildAt(0);
                        if (childAt != null) {
                            int paddingLeft = childAt.getPaddingLeft();
                            int paddingRight = childAt.getPaddingRight();
                            int paddingTop = childAt.getPaddingTop();
                            C1471i.m40851a(context, childAt, paddingLeft, paddingTop + C1610af.m40303h(context, 56), paddingRight, childAt.getPaddingBottom());
                        }
                        if (toolbar != null) {
                            ((h) context).setSupportActionBar(toolbar);
                        }
                    }
                }
                C1613ai.m40283e("FRESHCHAT_WARNING", "Toolbar Missing ! Did you uncomment the toolbar widget in layout/freshchat_toolbar.xml and remove the dummy view ?");
                return null;
            }
            return ((h) context).getSupportActionBar();
        } catch (ClassNotFoundException e) {
            C1613ai.m40282e("FRESHCHAT_WARNING", "Failed to setup Toolbar based ActionBar", e);
            return null;
        }
    }
}
