package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chi.class */
public final class chi implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25834a;

    /* renamed from: b  reason: collision with root package name */
    private final int f25835b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25836c;

    /* renamed from: d  reason: collision with root package name */
    private final int f25837d;
    private final boolean e;
    private final int f;

    public chi(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f25834a = str;
        this.f25835b = i;
        this.f25836c = i2;
        this.f25837d = i3;
        this.e = z;
        this.f = i4;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f25834a;
        boolean z = true;
        cpw.a(bundle2, "carrier", str, !TextUtils.isEmpty(str));
        int i = this.f25835b;
        if (this.f25835b == -2) {
            z = false;
        }
        cpw.a(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.f25836c);
        bundle2.putInt("pt", this.f25837d);
        Bundle a2 = cpw.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        Bundle a3 = cpw.a(a2, "network");
        a2.putBundle("network", a3);
        a3.putInt("active_network_state", this.f);
        a3.putBoolean("active_network_metered", this.e);
    }
}
