package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvt.class */
public final class zzvt extends zzxn {

    /* renamed from: a */
    public final AppEventListener f29058a;

    public zzvt(AppEventListener appEventListener) {
        this.f29058a = appEventListener;
    }

    /* renamed from: Q1 */
    public final AppEventListener m11190Q1() {
        return this.f29058a;
    }

    @Override // com.google.android.gms.internal.ads.zzxk
    /* renamed from: a */
    public final void mo11141a(String str, String str2) {
        this.f29058a.mo13729a(str, str2);
    }
}
