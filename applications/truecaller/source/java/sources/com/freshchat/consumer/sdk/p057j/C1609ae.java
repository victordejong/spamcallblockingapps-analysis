package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.freshchat.consumer.sdk.j.ae */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ae.class */
public class C1609ae {

    /* renamed from: iw */
    private final int f4364iw;

    /* renamed from: ix */
    private final int f4365ix;

    public C1609ae(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        this.f4364iw = (int) (i * 0.7f);
        this.f4365ix = (int) (i2 * 0.65f);
    }

    /* renamed from: a */
    public void m40312a(View view, Point point) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = point.x;
        layoutParams.height = point.y;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: b */
    public Point m40311b(int i, int i2) {
        int i3;
        int i4;
        float f = i / i2;
        if (i2 > i) {
            i3 = this.f4365ix;
            int i5 = (int) (i3 * f);
            int i6 = this.f4364iw;
            i4 = i5;
            if (i5 > i6) {
                i3 = (int) (i6 / f);
                i4 = i6;
            }
        } else {
            i4 = this.f4364iw;
            i3 = (int) (i4 / f);
        }
        Point point = new Point();
        point.x = i4;
        point.y = i3;
        return point;
    }
}
