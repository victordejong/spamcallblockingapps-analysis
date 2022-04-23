package com.google.android.gms.internal.ads;

import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgb.class */
public final class zzcgb implements zzbuz {

    /* renamed from: a */
    public final zzcei f25958a;

    /* renamed from: b */
    public final zzcem f25959b;

    public zzcgb(zzcei zzceiVar, zzcem zzcemVar) {
        this.f25958a = zzceiVar;
        this.f25959b = zzcemVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        if (this.f25958a.m14675v() != null) {
            zzbgj u = this.f25958a.m14676u();
            zzbgj t = this.f25958a.m14677t();
            if (u != null) {
                t = u;
            } else if (t == null) {
                t = null;
            }
            if (this.f25959b.mo14667a() && t != null) {
                t.mo15577a("onSdkImpression", new C0780a());
            }
        }
    }
}
