package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgi.class */
public final class cgi implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25784a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25785b;

    /* renamed from: c  reason: collision with root package name */
    private final String f25786c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25787d;
    private final Long e;

    public cgi(String str, String str2, String str3, String str4, Long l) {
        this.f25784a = str;
        this.f25785b = str2;
        this.f25786c = str3;
        this.f25787d = str4;
        this.e = l;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        cpw.a(bundle2, "gmp_app_id", this.f25784a);
        cpw.a(bundle2, "fbs_aiid", this.f25785b);
        cpw.a(bundle2, "fbs_aeid", this.f25786c);
        cpw.a(bundle2, "apm_id_origin", this.f25787d);
        Long l = this.e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
