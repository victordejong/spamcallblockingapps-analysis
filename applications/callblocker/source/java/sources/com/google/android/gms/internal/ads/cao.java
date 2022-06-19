package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cao.class */
public final class cao implements cae<Bundle> {

    /* renamed from: a */
    private final String f12625a;

    /* renamed from: b */
    private final int f12626b;

    /* renamed from: c */
    private final int f12627c;

    /* renamed from: d */
    private final int f12628d;

    /* renamed from: e */
    private final boolean f12629e;

    /* renamed from: f */
    private final int f12630f;

    public cao(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f12625a = str;
        this.f12626b = i;
        this.f12627c = i2;
        this.f12628d = i3;
        this.f12629e = z;
        this.f12630f = i4;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        chm.m11303a(bundle2, "carrier", this.f12625a, !TextUtils.isEmpty(this.f12625a));
        chm.m11305a(bundle2, "cnt", Integer.valueOf(this.f12626b), this.f12626b != -2);
        bundle2.putInt("gnt", this.f12627c);
        bundle2.putInt("pt", this.f12628d);
        Bundle m11308a = chm.m11308a(bundle2, "device");
        bundle2.putBundle("device", m11308a);
        Bundle m11308a2 = chm.m11308a(m11308a, "network");
        m11308a.putBundle("network", m11308a2);
        m11308a2.putInt("active_network_state", this.f12630f);
        m11308a2.putBoolean("active_network_metered", this.f12629e);
    }
}
