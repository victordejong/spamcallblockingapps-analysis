package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cak.class */
public final class cak implements cae<Bundle> {

    /* renamed from: a */
    private final boolean f12606a;

    /* renamed from: b */
    private final boolean f12607b;

    /* renamed from: c */
    private final String f12608c;

    /* renamed from: d */
    private final boolean f12609d;

    /* renamed from: e */
    private final boolean f12610e;

    /* renamed from: f */
    private final boolean f12611f;

    /* renamed from: g */
    private final String f12612g;

    /* renamed from: h */
    private final ArrayList<String> f12613h;

    /* renamed from: i */
    private final String f12614i;

    /* renamed from: j */
    private final String f12615j;

    /* renamed from: k */
    private final String f12616k;

    /* renamed from: l */
    private final boolean f12617l;

    /* renamed from: m */
    private final String f12618m;

    /* renamed from: n */
    private final long f12619n;

    public cak(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z6, String str6, long j) {
        this.f12606a = z;
        this.f12607b = z2;
        this.f12608c = str;
        this.f12609d = z3;
        this.f12610e = z4;
        this.f12611f = z5;
        this.f12612g = str2;
        this.f12613h = arrayList;
        this.f12614i = str3;
        this.f12615j = str4;
        this.f12616k = str5;
        this.f12617l = z6;
        this.f12618m = str6;
        this.f12619n = j;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f12606a);
        bundle2.putBoolean("coh", this.f12607b);
        bundle2.putString("gl", this.f12608c);
        bundle2.putBoolean("simulator", this.f12609d);
        bundle2.putBoolean("is_latchsky", this.f12610e);
        bundle2.putBoolean("is_sidewinder", this.f12611f);
        bundle2.putString("hl", this.f12612g);
        if (!this.f12613h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f12613h);
        }
        bundle2.putString("mv", this.f12614i);
        bundle2.putString("submodel", this.f12618m);
        Bundle m11308a = chm.m11308a(bundle2, "device");
        bundle2.putBundle("device", m11308a);
        m11308a.putString("build", this.f12616k);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16438br)).booleanValue()) {
            m11308a.putLong("remaining_data_partition_space", this.f12619n);
        }
        Bundle m11308a2 = chm.m11308a(m11308a, "browser");
        m11308a.putBundle("browser", m11308a2);
        m11308a2.putBoolean("is_browser_custom_tabs_capable", this.f12617l);
        if (!TextUtils.isEmpty(this.f12615j)) {
            Bundle m11308a3 = chm.m11308a(m11308a, "play_store");
            m11308a.putBundle("play_store", m11308a3);
            m11308a3.putString("package_version", this.f12615j);
        }
    }
}
