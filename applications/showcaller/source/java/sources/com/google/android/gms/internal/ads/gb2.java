package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gb2.class */
public final class gb2 implements va2<Bundle> {

    /* renamed from: a */
    public final String f23281a;

    /* renamed from: b */
    public final int f23282b;

    /* renamed from: c */
    public final int f23283c;

    /* renamed from: d */
    public final int f23284d;

    /* renamed from: e */
    public final boolean f23285e;

    /* renamed from: f */
    public final int f23286f;

    public gb2(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f23281a = str;
        this.f23282b = i;
        this.f23283c = i2;
        this.f23284d = i3;
        this.f23285e = z;
        this.f23286f = i4;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        boolean z = true;
        jk2.m14100b(bundle2, "carrier", this.f23281a, !TextUtils.isEmpty(str));
        int i = this.f23282b;
        if (this.f23282b == -2) {
            z = false;
        }
        jk2.m14099c(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.f23283c);
        bundle2.putInt("pt", this.f23284d);
        Bundle m14101a = jk2.m14101a(bundle2, "device");
        bundle2.putBundle("device", m14101a);
        Bundle m14101a2 = jk2.m14101a(m14101a, "network");
        m14101a.putBundle("network", m14101a2);
        m14101a2.putInt("active_network_state", this.f23286f);
        m14101a2.putBoolean("active_network_metered", this.f23285e);
    }
}
