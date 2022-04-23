package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhe.class */
public final class zzdhe implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f27319a;

    /* renamed from: b */
    public final int f27320b;

    /* renamed from: c */
    public final int f27321c;

    /* renamed from: d */
    public final int f27322d;

    /* renamed from: e */
    public final boolean f27323e;

    /* renamed from: f */
    public final int f27324f;

    public zzdhe(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f27319a = str;
        this.f27320b = i;
        this.f27321c = i2;
        this.f27322d = i3;
        this.f27323e = z;
        this.f27324f = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f27319a;
        boolean z = true;
        zzdot.m13392a(bundle2, "carrier", str, !TextUtils.isEmpty(str));
        int i = this.f27320b;
        if (this.f27320b == -2) {
            z = false;
        }
        zzdot.m13394a(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.f27321c);
        bundle2.putInt("pt", this.f27322d);
        Bundle a = zzdot.m13397a(bundle2, "device");
        bundle2.putBundle("device", a);
        Bundle a2 = zzdot.m13397a(a, "network");
        a.putBundle("network", a2);
        a2.putInt("active_network_state", this.f27324f);
        a2.putBoolean("active_network_metered", this.f27323e);
    }
}
