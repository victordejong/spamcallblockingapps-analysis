package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.impl.adview.AbstractC0996i;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.m */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/m.class */
public class C1011m extends FrameLayout {

    /* renamed from: a */
    private AbstractC0996i f3673a;

    /* renamed from: b */
    private int f3674b;

    public C1011m(AbstractC0996i.EnumC0997a enumC0997a, Activity activity) {
        super(activity);
        setBackgroundColor(0);
        AbstractC0996i m6856a = AbstractC0996i.m6856a(enumC0997a, activity);
        this.f3673a = m6856a;
        addView(m6856a);
    }

    /* renamed from: a */
    public void m6825a(int i, int i2, int i3, int i4) {
        this.f3674b = i;
        int i5 = i2 + i + i3;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i5;
            layoutParams.width = i5;
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(i5, i5));
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i, i4);
        layoutParams2.setMargins(i3, i3, i3, 0);
        this.f3673a.setLayoutParams(layoutParams2);
        this.f3673a.mo6794a(i);
    }

    /* renamed from: a */
    public void m6824a(AbstractC0996i.EnumC0997a enumC0997a) {
        if (enumC0997a == null || enumC0997a == this.f3673a.getStyle()) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f3673a.getLayoutParams();
        removeView(this.f3673a);
        AbstractC0996i m6856a = AbstractC0996i.m6856a(enumC0997a, getContext());
        this.f3673a = m6856a;
        addView(m6856a);
        this.f3673a.setLayoutParams(layoutParams);
        this.f3673a.mo6794a(this.f3674b);
    }
}
