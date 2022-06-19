package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzn.class */
public final class bzn implements cae<Bundle> {

    /* renamed from: a */
    private final String f12554a;

    /* renamed from: b */
    private final String f12555b;

    /* renamed from: c */
    private final String f12556c;

    /* renamed from: d */
    private final String f12557d;

    /* renamed from: e */
    private final Long f12558e;

    public bzn(String str, String str2, String str3, String str4, Long l) {
        this.f12554a = str;
        this.f12555b = str2;
        this.f12556c = str3;
        this.f12557d = str4;
        this.f12558e = l;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        chm.m11304a(bundle2, "gmp_app_id", this.f12554a);
        chm.m11304a(bundle2, "fbs_aiid", this.f12555b);
        chm.m11304a(bundle2, "fbs_aeid", this.f12556c);
        chm.m11304a(bundle2, "apm_id_origin", this.f12557d);
        Long l = this.f12558e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
