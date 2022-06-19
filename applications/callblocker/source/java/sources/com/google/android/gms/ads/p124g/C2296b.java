package com.google.android.gms.ads.p124g;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.C2249b;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.ebk;
/* renamed from: com.google.android.gms.ads.g.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/g/b.class */
public final class C2296b extends ViewGroup {

    /* renamed from: a */
    private final ebk f6626a;

    public final C2249b getAdListener() {
        return this.f6626a.m8026b();
    }

    public final C2286e getAdSize() {
        return this.f6626a.m8024c();
    }

    public final String getAdUnitId() {
        return this.f6626a.m8022e();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            C2286e c2286e = null;
            try {
                c2286e = getAdSize();
            } catch (NullPointerException e) {
                C3645yb.m6748c("Unable to retrieve ad size.", e);
            }
            if (c2286e != null) {
                Context context = getContext();
                i4 = c2286e.m14826b(context);
                i3 = c2286e.m14829a(context);
            } else {
                i3 = 0;
                i4 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public final void setAdListener(C2249b c2249b) {
        this.f6626a.m8035a(c2249b);
    }

    public final void setAdSize(C2286e c2286e) {
        this.f6626a.m8027a(c2286e);
    }

    public final void setAdUnitId(String str) {
        this.f6626a.m8029a(str);
    }
}
