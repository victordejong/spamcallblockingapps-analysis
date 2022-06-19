package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.AbstractBinderC7083vt;
import com.google.android.gms.internal.ads.zzbcz;
/* renamed from: com.google.android.gms.ads.internal.util.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/x.class */
public final class BinderC5747x extends AbstractBinderC7083vt {

    /* renamed from: d */
    final /* synthetic */ Context f18590d;

    /* renamed from: e */
    final /* synthetic */ C5669a0 f18591e;

    public BinderC5747x(C5669a0 c5669a0, Context context) {
        this.f18591e = c5669a0;
        this.f18590d = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7120wt
    /* renamed from: h0 */
    public final void mo9463h0(zzbcz zzbczVar) {
        if (zzbczVar == null) {
            return;
        }
        this.f18591e.m18123n(this.f18590d, zzbczVar.f33654e, true, true);
    }
}
