package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdha.class */
public final class zzdha implements zzdgu<Bundle> {

    /* renamed from: a */
    public final boolean f27303a;

    /* renamed from: b */
    public final boolean f27304b;

    /* renamed from: c */
    public final String f27305c;

    /* renamed from: d */
    public final boolean f27306d;

    /* renamed from: e */
    public final boolean f27307e;

    /* renamed from: f */
    public final boolean f27308f;

    /* renamed from: g */
    public final String f27309g;

    /* renamed from: h */
    public final ArrayList<String> f27310h;

    /* renamed from: i */
    public final String f27311i;

    /* renamed from: j */
    public final String f27312j;

    /* renamed from: k */
    public final String f27313k;

    /* renamed from: l */
    public final boolean f27314l;

    /* renamed from: m */
    public final String f27315m;

    /* renamed from: n */
    public final long f27316n;

    public zzdha(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.f27303a = z;
        this.f27304b = z2;
        this.f27305c = str;
        this.f27306d = z3;
        this.f27307e = z4;
        this.f27308f = z5;
        this.f27309g = str2;
        this.f27310h = arrayList;
        this.f27311i = str3;
        this.f27312j = str4;
        this.f27313k = str5;
        this.f27314l = z6;
        this.f27315m = str6;
        this.f27316n = j;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f27303a);
        bundle2.putBoolean("coh", this.f27304b);
        bundle2.putString("gl", this.f27305c);
        bundle2.putBoolean("simulator", this.f27306d);
        bundle2.putBoolean("is_latchsky", this.f27307e);
        bundle2.putBoolean("is_sidewinder", this.f27308f);
        bundle2.putString("hl", this.f27309g);
        if (!this.f27310h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f27310h);
        }
        bundle2.putString("mv", this.f27311i);
        bundle2.putString("submodel", this.f27315m);
        Bundle a = zzdot.m13397a(bundle2, "device");
        bundle2.putBundle("device", a);
        a.putString("build", this.f27313k);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23906w1)).booleanValue()) {
            a.putLong("remaining_data_partition_space", this.f27316n);
        }
        Bundle a2 = zzdot.m13397a(a, "browser");
        a.putBundle("browser", a2);
        a2.putBoolean("is_browser_custom_tabs_capable", this.f27314l);
        if (!TextUtils.isEmpty(this.f27312j)) {
            Bundle a3 = zzdot.m13397a(a, "play_store");
            a.putBundle("play_store", a3);
            a3.putString("package_version", this.f27312j);
        }
    }
}
