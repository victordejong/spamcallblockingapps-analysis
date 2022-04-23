package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgf.class */
public final class zzdgf implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f27274a;

    /* renamed from: b */
    public final String f27275b;

    /* renamed from: c */
    public final String f27276c;

    /* renamed from: d */
    public final String f27277d;

    /* renamed from: e */
    public final Long f27278e;

    public zzdgf(String str, String str2, String str3, String str4, Long l) {
        this.f27274a = str;
        this.f27275b = str2;
        this.f27276c = str3;
        this.f27277d = str4;
        this.f27278e = l;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdot.m13393a(bundle2, "gmp_app_id", this.f27274a);
        zzdot.m13393a(bundle2, "fbs_aiid", this.f27275b);
        zzdot.m13393a(bundle2, "fbs_aeid", this.f27276c);
        zzdot.m13393a(bundle2, "apm_id_origin", this.f27277d);
        Long l = this.f27278e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
