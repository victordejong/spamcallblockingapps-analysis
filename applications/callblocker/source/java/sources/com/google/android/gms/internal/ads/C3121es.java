package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.es */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/es.class */
final class C3121es implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        if (actVar2.mo13489K() != null) {
            actVar2.mo13489K().mo8515t();
        }
        BinderC2316c mo13430r = actVar2.mo13430r();
        if (mo13430r != null) {
            mo13430r.m14767a();
            return;
        }
        BinderC2316c mo13429s = actVar2.mo13429s();
        if (mo13429s != null) {
            mo13429s.m14767a();
        } else {
            C3556uu.m6745e("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
