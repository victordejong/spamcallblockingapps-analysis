package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgi.class */
public final class cgi implements cgy<Bundle> {

    /* renamed from: a */
    private final String f45726a;

    /* renamed from: b */
    private final String f45727b;

    /* renamed from: c */
    private final String f45728c;

    /* renamed from: d */
    private final String f45729d;

    /* renamed from: e */
    private final Long f45730e;

    public cgi(String str, String str2, String str3, String str4, Long l) {
        this.f45726a = str;
        this.f45727b = str2;
        this.f45728c = str3;
        this.f45729d = str4;
        this.f45730e = l;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        cpw.m17348a(bundle2, "gmp_app_id", this.f45726a);
        cpw.m17348a(bundle2, "fbs_aiid", this.f45727b);
        cpw.m17348a(bundle2, "fbs_aeid", this.f45728c);
        cpw.m17348a(bundle2, "apm_id_origin", this.f45729d);
        Long l = this.f45730e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
