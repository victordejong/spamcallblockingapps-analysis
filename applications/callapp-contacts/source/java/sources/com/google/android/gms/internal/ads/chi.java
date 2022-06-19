package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chi.class */
public final class chi implements cgy<Bundle> {

    /* renamed from: a */
    private final String f45790a;

    /* renamed from: b */
    private final int f45791b;

    /* renamed from: c */
    private final int f45792c;

    /* renamed from: d */
    private final int f45793d;

    /* renamed from: e */
    private final boolean f45794e;

    /* renamed from: f */
    private final int f45795f;

    public chi(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f45790a = str;
        this.f45791b = i;
        this.f45792c = i2;
        this.f45793d = i3;
        this.f45794e = z;
        this.f45795f = i4;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        boolean z = true;
        cpw.m17347a(bundle2, "carrier", this.f45790a, !TextUtils.isEmpty(str));
        int i = this.f45791b;
        if (this.f45791b == -2) {
            z = false;
        }
        cpw.m17349a(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.f45792c);
        bundle2.putInt("pt", this.f45793d);
        Bundle m17352a = cpw.m17352a(bundle2, "device");
        bundle2.putBundle("device", m17352a);
        Bundle m17352a2 = cpw.m17352a(m17352a, "network");
        m17352a.putBundle("network", m17352a2);
        m17352a2.putInt("active_network_state", this.f45795f);
        m17352a2.putBoolean("active_network_metered", this.f45794e);
    }
}
