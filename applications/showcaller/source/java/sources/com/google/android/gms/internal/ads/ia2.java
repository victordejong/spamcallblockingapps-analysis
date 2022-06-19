package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ia2.class */
public final class ia2 implements va2<Bundle> {

    /* renamed from: a */
    public final String f24181a;

    /* renamed from: b */
    public final String f24182b;

    /* renamed from: c */
    public final String f24183c;

    /* renamed from: d */
    public final String f24184d;

    /* renamed from: e */
    public final Long f24185e;

    public ia2(String str, String str2, String str3, String str4, Long l) {
        this.f24181a = str;
        this.f24182b = str2;
        this.f24183c = str3;
        this.f24184d = str4;
        this.f24185e = l;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        jk2.m14097e(bundle2, "gmp_app_id", this.f24181a);
        jk2.m14097e(bundle2, "fbs_aiid", this.f24182b);
        jk2.m14097e(bundle2, "fbs_aeid", this.f24183c);
        jk2.m14097e(bundle2, "apm_id_origin", this.f24184d);
        Long l = this.f24185e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
