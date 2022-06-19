package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.hz3;
import com.google.android.gms.internal.ads.zzwl;
/* renamed from: com.google.android.gms.ads.internal.util.k0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/k0.class */
public final class C5709k0 implements hz3 {

    /* renamed from: a */
    final /* synthetic */ String f18494a;

    /* renamed from: b */
    final /* synthetic */ C5721o0 f18495b;

    public C5709k0(C5730r0 c5730r0, String str, C5721o0 c5721o0) {
        this.f18494a = str;
        this.f18495b = c5721o0;
    }

    @Override // com.google.android.gms.internal.ads.hz3
    /* renamed from: a */
    public final void mo14520a(zzwl zzwlVar) {
        String str = this.f18494a;
        String exc = zzwlVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(exc).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(exc);
        ei0.m15464f(sb.toString());
        this.f18495b.mo14251a(null);
    }
}
