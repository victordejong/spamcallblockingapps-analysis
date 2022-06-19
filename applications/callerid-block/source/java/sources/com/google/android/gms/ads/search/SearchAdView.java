package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.AbstractC1350b;
import com.google.android.gms.ads.C1359f;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C1968u1;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/search/SearchAdView.class */
public final class SearchAdView extends ViewGroup {
    @NotOnlyInitialized

    /* renamed from: b */
    private final C1968u1 f5715b;

    public SearchAdView(@RecentlyNonNull Context context) {
        super(context);
        this.f5715b = new C1968u1(this);
    }

    public SearchAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5715b = new C1968u1(this, attributeSet, false);
    }

    public SearchAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5715b = new C1968u1(this, attributeSet, false);
    }

    @RecentlyNonNull
    public AbstractC1350b getAdListener() {
        return this.f5715b.m5433e();
    }

    @RecentlyNullable
    public C1359f getAdSize() {
        return this.f5715b.m5432f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f5715b.m5430h();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    protected void onMeasure(int i, int i2) {
        C1359f c1359f;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                c1359f = getAdSize();
            } catch (NullPointerException e) {
                C1894po.m6182d("Unable to retrieve ad size.", e);
                c1359f = null;
            }
            if (c1359f != null) {
                Context context = getContext();
                i4 = c1359f.m9017e(context);
                i3 = c1359f.m9019c(context);
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void setAdListener(@RecentlyNonNull AbstractC1350b abstractC1350b) {
        this.f5715b.m5425m(abstractC1350b);
    }

    public void setAdSize(@RecentlyNonNull C1359f c1359f) {
        this.f5715b.m5423o(c1359f);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f5715b.m5421q(str);
    }
}
