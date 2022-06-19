package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/che.class */
public final class che implements cgy<Bundle> {

    /* renamed from: a */
    private final boolean f45771a;

    /* renamed from: b */
    private final boolean f45772b;

    /* renamed from: c */
    private final String f45773c;

    /* renamed from: d */
    private final boolean f45774d;

    /* renamed from: e */
    private final boolean f45775e;

    /* renamed from: f */
    private final boolean f45776f;

    /* renamed from: g */
    private final String f45777g;

    /* renamed from: h */
    private final ArrayList<String> f45778h;

    /* renamed from: i */
    private final String f45779i;

    /* renamed from: j */
    private final String f45780j;

    /* renamed from: k */
    private final String f45781k;

    /* renamed from: l */
    private final boolean f45782l;

    /* renamed from: m */
    private final String f45783m;

    /* renamed from: n */
    private final long f45784n;

    public che(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.f45771a = z;
        this.f45772b = z2;
        this.f45773c = str;
        this.f45774d = z3;
        this.f45775e = z4;
        this.f45776f = z5;
        this.f45777g = str2;
        this.f45778h = arrayList;
        this.f45779i = str3;
        this.f45780j = str4;
        this.f45781k = str5;
        this.f45782l = z6;
        this.f45783m = str6;
        this.f45784n = j;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f45771a);
        bundle2.putBoolean("coh", this.f45772b);
        bundle2.putString("gl", this.f45773c);
        bundle2.putBoolean("simulator", this.f45774d);
        bundle2.putBoolean("is_latchsky", this.f45775e);
        bundle2.putBoolean("is_sidewinder", this.f45776f);
        bundle2.putString("hl", this.f45777g);
        if (!this.f45778h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f45778h);
        }
        bundle2.putString("mv", this.f45779i);
        bundle2.putString("submodel", this.f45783m);
        Bundle m17352a = cpw.m17352a(bundle2, "device");
        bundle2.putBundle("device", m17352a);
        m17352a.putString(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, this.f45781k);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42706bP)).booleanValue()) {
            m17352a.putLong("remaining_data_partition_space", this.f45784n);
        }
        Bundle m17352a2 = cpw.m17352a(m17352a, "browser");
        m17352a.putBundle("browser", m17352a2);
        m17352a2.putBoolean("is_browser_custom_tabs_capable", this.f45782l);
        if (!TextUtils.isEmpty(this.f45780j)) {
            Bundle m17352a3 = cpw.m17352a(m17352a, "play_store");
            m17352a.putBundle("play_store", m17352a3);
            m17352a3.putString("package_version", this.f45780j);
        }
    }
}
