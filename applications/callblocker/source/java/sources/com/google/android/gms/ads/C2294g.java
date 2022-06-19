package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dxs;
import com.google.android.gms.internal.ads.ebk;
/* renamed from: com.google.android.gms.ads.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/g.class */
public class C2294g extends ViewGroup {

    /* renamed from: a */
    protected final ebk f6624a;

    public C2294g(Context context, int i) {
        super(context);
        this.f6624a = new ebk(this, i);
    }

    public C2294g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f6624a = new ebk(this, attributeSet, false, i);
    }

    public C2294g(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f6624a = new ebk(this, attributeSet, false, i2);
    }

    /* renamed from: a */
    public void mo14817a() {
        this.f6624a.m8018i();
    }

    /* renamed from: a */
    public void mo14816a(C2282d c2282d) {
        this.f6624a.m8031a(c2282d.m14842a());
    }

    /* renamed from: b */
    public void mo14815b() {
        this.f6624a.m8019h();
    }

    /* renamed from: c */
    public void mo14814c() {
        this.f6624a.m8040a();
    }

    public C2249b getAdListener() {
        return this.f6624a.m8026b();
    }

    public C2286e getAdSize() {
        return this.f6624a.m8024c();
    }

    public String getAdUnitId() {
        return this.f6624a.m8022e();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        return this.f6624a.m8017j();
    }

    public C2386o getResponseInfo() {
        return this.f6624a.m8016k();
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

    public void setAdListener(C2249b c2249b) {
        this.f6624a.m8035a(c2249b);
        if (c2249b == null) {
            this.f6624a.m8032a((dxs) null);
            this.f6624a.m8037a((AbstractC2244a) null);
            return;
        }
        if (c2249b instanceof dxs) {
            this.f6624a.m8032a((dxs) c2249b);
        }
        if (!(c2249b instanceof AbstractC2244a)) {
            return;
        }
        this.f6624a.m8037a((AbstractC2244a) c2249b);
    }

    public void setAdSize(C2286e c2286e) {
        this.f6624a.m8027a(c2286e);
    }

    public void setAdUnitId(String str) {
        this.f6624a.m8029a(str);
    }

    public void setOnPaidEventListener(AbstractC2345l abstractC2345l) {
        this.f6624a.m8034a(abstractC2345l);
    }
}
