package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.admanager.AbstractC5595b;
import com.google.android.gms.internal.ads.AbstractC6673kq;
import com.google.android.gms.internal.ads.C6936ru;
import com.google.android.gms.internal.ads.ei0;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public abstract class BaseAdView extends ViewGroup {
    @NotOnlyInitialized

    /* renamed from: d */
    protected final C6936ru f18212d;

    public BaseAdView(@RecentlyNonNull Context context, int i) {
        super(context);
        this.f18212d = new C6936ru(this, i);
    }

    public BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f18212d = new C6936ru(this, attributeSet, false, i);
    }

    public BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f18212d = new C6936ru(this, attributeSet, false, i2);
    }

    public BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2, boolean z) {
        super(context, attributeSet, i);
        this.f18212d = new C6936ru(this, attributeSet, z, i2);
    }

    public BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.f18212d = new C6936ru(this, attributeSet, z);
    }

    /* renamed from: a */
    public void m18314a() {
        this.f18212d.m11292d();
    }

    /* renamed from: b */
    public void m18313b(@RecentlyNonNull C5603e c5603e) {
        this.f18212d.m11286j(c5603e.m18285a());
    }

    /* renamed from: c */
    public void m18312c() {
        this.f18212d.m11285k();
    }

    /* renamed from: d */
    public void m18311d() {
        this.f18212d.m11284l();
    }

    @RecentlyNonNull
    public AbstractC5596b getAdListener() {
        return this.f18212d.m11291e();
    }

    @RecentlyNullable
    public C5605f getAdSize() {
        return this.f18212d.m11290f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f18212d.m11288h();
    }

    @RecentlyNullable
    public AbstractC5795n getOnPaidEventListener() {
        return this.f18212d.m11274v();
    }

    @RecentlyNullable
    public C5844r getResponseInfo() {
        return this.f18212d.m11276t();
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
        this.f18212d.m11283m(abstractC5596b);
        if (abstractC5596b == null) {
            this.f18212d.m11282n(null);
            return;
        }
        if (abstractC5596b instanceof AbstractC6673kq) {
            this.f18212d.m11282n((AbstractC6673kq) abstractC5596b);
        }
        if (!(abstractC5596b instanceof AbstractC5595b)) {
            return;
        }
        this.f18212d.m11278r((AbstractC5595b) abstractC5596b);
    }

    public void setAdSize(@RecentlyNonNull C5605f c5605f) {
        this.f18212d.m11281o(c5605f);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f18212d.m11279q(str);
    }

    public void setOnPaidEventListener(AbstractC5795n abstractC5795n) {
        this.f18212d.m11275u(abstractC5795n);
    }
}
