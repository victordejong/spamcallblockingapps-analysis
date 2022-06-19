package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.internal.ads.C6936ru;
import com.google.android.gms.internal.ads.ei0;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/search/SearchAdView.class */
public final class SearchAdView extends ViewGroup {
    @NotOnlyInitialized

    /* renamed from: d */
    private final C6936ru f18794d;

    public SearchAdView(@RecentlyNonNull Context context) {
        super(context);
        this.f18794d = new C6936ru(this);
    }

    public SearchAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18794d = new C6936ru(this, attributeSet, false);
    }

    public SearchAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18794d = new C6936ru(this, attributeSet, false);
    }

    @RecentlyNonNull
    public AbstractC5596b getAdListener() {
        return this.f18794d.m11291e();
    }

    @RecentlyNullable
    public C5605f getAdSize() {
        return this.f18794d.m11290f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f18794d.m11288h();
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
        C5605f c5605f;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                c5605f = getAdSize();
            } catch (NullPointerException e) {
                ei0.m15466d("Unable to retrieve ad size.", e);
                c5605f = null;
            }
            if (c5605f != null) {
                Context context = getContext();
                i4 = c5605f.m18272d(context);
                i3 = c5605f.m18274b(context);
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

    public void setAdListener(@RecentlyNonNull AbstractC5596b abstractC5596b) {
        this.f18794d.m11283m(abstractC5596b);
    }

    public void setAdSize(@RecentlyNonNull C5605f c5605f) {
        this.f18794d.m11281o(c5605f);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f18794d.m11279q(str);
    }
}
