package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p122e.AbstractC2289b;
import com.google.android.gms.ads.p122e.AbstractC2290c;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebt.class */
public final class ebt extends AbstractBinderC3165gh {

    /* renamed from: a */
    private final AbstractC2290c f16265a;

    /* renamed from: b */
    private final /* synthetic */ ebl f16266b;

    private ebt(ebl eblVar, AbstractC2290c abstractC2290c) {
        this.f16266b = eblVar;
        this.f16265a = abstractC2290c;
    }

    public /* synthetic */ ebt(ebl eblVar, AbstractC2290c abstractC2290c, ebq ebqVar) {
        this(eblVar, abstractC2290c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3166gi
    /* renamed from: a */
    public final void mo7814a(List<C3159gb> list) {
        AbstractC2289b m8006a;
        AbstractC2290c abstractC2290c = this.f16265a;
        ebl eblVar = this.f16266b;
        m8006a = ebl.m8006a(list);
        abstractC2290c.m14821a(m8006a);
    }
}
