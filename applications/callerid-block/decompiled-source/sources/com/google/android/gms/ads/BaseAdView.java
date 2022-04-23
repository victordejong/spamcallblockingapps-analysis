package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.admanager.AbstractC1349b;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C1968u1;
import com.google.android.gms.internal.ads.hz2;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public abstract class BaseAdView extends ViewGroup {
    @NotOnlyInitialized

    /* renamed from: b */
    protected final C1968u1 f5438b;

    protected BaseAdView(@RecentlyNonNull Context context, int i) {
        super(context);
        this.f5438b = new C1968u1(this, i);
    }

    protected BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f5438b = new C1968u1(this, attributeSet, false, i);
    }

    protected BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f5438b = new C1968u1(this, attributeSet, false, i2);
    }

    protected BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, int i, int i2, boolean z) {
        super(context, attributeSet, i);
        this.f5438b = new C1968u1(this, attributeSet, z, i2);
    }

    protected BaseAdView(@RecentlyNonNull Context context, @RecentlyNonNull AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.f5438b = new C1968u1(this, attributeSet, z);
    }

    /* renamed from: a */
    public void m9066a() {
        this.f5438b.m5434d();
    }

    /* renamed from: b */
    public void m9065b(@RecentlyNonNull C1357e eVar) {
        this.f5438b.m5428j(eVar.m9031a());
    }

    /* renamed from: c */
    public void m9064c() {
        this.f5438b.m5427k();
    }

    /* renamed from: d */
    public void m9063d() {
        this.f5438b.m5426l();
    }

    @RecentlyNonNull
    public AbstractC1350b getAdListener() {
        return this.f5438b.m5433e();
    }

    @RecentlyNullable
    public C1359f getAdSize() {
        return this.f5438b.m5432f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f5438b.m5430h();
    }

    @RecentlyNullable
    public AbstractC1460m getOnPaidEventListener() {
        return this.f5438b.m5416v();
    }

    @RecentlyNullable
    public C1497q getResponseInfo() {
        return this.f5438b.m5418t();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        C1359f fVar;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                fVar = getAdSize();
            } catch (NullPointerException e) {
                C1894po.m6182d("Unable to retrieve ad size.", e);
                fVar = null;
            }
            if (fVar != null) {
                Context context = getContext();
                i4 = fVar.m9017e(context);
                i3 = fVar.m9019c(context);
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

    public void setAdListener(@RecentlyNonNull AbstractC1350b bVar) {
        this.f5438b.m5425m(bVar);
        if (bVar == null) {
            this.f5438b.m5424n(null);
            return;
        }
        if (bVar instanceof hz2) {
            this.f5438b.m5424n((hz2) bVar);
        }
        if (bVar instanceof AbstractC1349b) {
            this.f5438b.m5420r((AbstractC1349b) bVar);
        }
    }

    public void setAdSize(@RecentlyNonNull C1359f fVar) {
        this.f5438b.m5423o(fVar);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f5438b.m5421q(str);
    }

    public void setOnPaidEventListener(AbstractC1460m mVar) {
        this.f5438b.m5417u(mVar);
    }
}
