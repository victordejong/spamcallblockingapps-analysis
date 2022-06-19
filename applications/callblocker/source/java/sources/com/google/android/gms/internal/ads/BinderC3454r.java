package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC2303e;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r.class */
public final class BinderC3454r extends AbstractBinderC3481s {

    /* renamed from: a */
    private final AbstractC2303e f17299a;

    /* renamed from: b */
    private final String f17300b;

    /* renamed from: c */
    private final String f17301c;

    public BinderC3454r(AbstractC2303e abstractC2303e, String str, String str2) {
        this.f17299a = abstractC2303e;
        this.f17300b = str;
        this.f17301c = str2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: a */
    public final String mo7044a() {
        return this.f17300b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: a */
    public final void mo7043a(AbstractC2731a abstractC2731a) {
        if (abstractC2731a == null) {
            return;
        }
        this.f17299a.mo11678a((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: b */
    public final String mo7042b() {
        return this.f17301c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: c */
    public final void mo7041c() {
        this.f17299a.mo11679a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: d */
    public final void mo7040d() {
        this.f17299a.mo11677b();
    }
}
