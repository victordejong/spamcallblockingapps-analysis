package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cb2.class */
public final class cb2 implements va2<Bundle> {

    /* renamed from: a */
    public final boolean f21149a;

    /* renamed from: b */
    public final boolean f21150b;

    /* renamed from: c */
    public final String f21151c;

    /* renamed from: d */
    public final boolean f21152d;

    /* renamed from: e */
    public final boolean f21153e;

    /* renamed from: f */
    public final boolean f21154f;

    /* renamed from: g */
    public final String f21155g;

    /* renamed from: h */
    public final ArrayList<String> f21156h;

    /* renamed from: i */
    public final String f21157i;

    /* renamed from: j */
    public final String f21158j;

    /* renamed from: k */
    public final String f21159k;

    /* renamed from: l */
    public final boolean f21160l;

    /* renamed from: m */
    public final String f21161m;

    /* renamed from: n */
    public final long f21162n;

    public cb2(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.f21149a = z;
        this.f21150b = z2;
        this.f21151c = str;
        this.f21152d = z3;
        this.f21153e = z4;
        this.f21154f = z5;
        this.f21155g = str2;
        this.f21156h = arrayList;
        this.f21157i = str3;
        this.f21158j = str4;
        this.f21159k = str5;
        this.f21160l = z6;
        this.f21161m = str6;
        this.f21162n = j;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f21149a);
        bundle2.putBoolean("coh", this.f21150b);
        bundle2.putString("gl", this.f21151c);
        bundle2.putBoolean("simulator", this.f21152d);
        bundle2.putBoolean("is_latchsky", this.f21153e);
        bundle2.putBoolean("is_sidewinder", this.f21154f);
        bundle2.putString("hl", this.f21155g);
        if (!this.f21156h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f21156h);
        }
        bundle2.putString("mv", this.f21157i);
        bundle2.putString("submodel", this.f21161m);
        Bundle m14101a = jk2.m14101a(bundle2, "device");
        bundle2.putBundle("device", m14101a);
        m14101a.putString("build", this.f21159k);
        m14101a.putLong("remaining_data_partition_space", this.f21162n);
        Bundle m14101a2 = jk2.m14101a(m14101a, "browser");
        m14101a.putBundle("browser", m14101a2);
        m14101a2.putBoolean("is_browser_custom_tabs_capable", this.f21160l);
        if (!TextUtils.isEmpty(this.f21158j)) {
            Bundle m14101a3 = jk2.m14101a(m14101a, "play_store");
            m14101a.putBundle("play_store", m14101a3);
            m14101a3.putString("package_version", this.f21158j);
        }
    }
}
