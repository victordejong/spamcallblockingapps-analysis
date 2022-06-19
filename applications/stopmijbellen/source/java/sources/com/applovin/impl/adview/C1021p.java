package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import com.applovin.impl.adview.AbstractC0996i;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.p */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/p.class */
public final class C1021p extends AbstractC0996i {
    public C1021p(Context context) {
        super(context);
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    /* renamed from: a */
    public void mo6794a(int i) {
        setViewScale(i / 30.0f);
    }

    @Override // com.applovin.impl.adview.AbstractC0996i
    public AbstractC0996i.EnumC0997a getStyle() {
        return AbstractC0996i.EnumC0997a.INVISIBLE;
    }
}
