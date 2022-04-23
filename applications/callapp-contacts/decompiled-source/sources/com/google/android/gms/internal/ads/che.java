package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/che.class */
public final class che implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f25825a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25826b;

    /* renamed from: c  reason: collision with root package name */
    private final String f25827c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f25828d;
    private final boolean e;
    private final boolean f;
    private final String g;
    private final ArrayList<String> h;
    private final String i;
    private final String j;
    private final String k;
    private final boolean l;
    private final String m;
    private final long n;

    public che(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j) {
        this.f25825a = z;
        this.f25826b = z2;
        this.f25827c = str;
        this.f25828d = z3;
        this.e = z4;
        this.f = z5;
        this.g = str2;
        this.h = arrayList;
        this.i = str3;
        this.j = str4;
        this.k = str5;
        this.l = z6;
        this.m = str6;
        this.n = j;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f25825a);
        bundle2.putBoolean("coh", this.f25826b);
        bundle2.putString("gl", this.f25827c);
        bundle2.putBoolean("simulator", this.f25828d);
        bundle2.putBoolean("is_latchsky", this.e);
        bundle2.putBoolean("is_sidewinder", this.f);
        bundle2.putString("hl", this.g);
        if (!this.h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.h);
        }
        bundle2.putString("mv", this.i);
        bundle2.putString("submodel", this.m);
        Bundle a2 = cpw.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        a2.putString(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, this.k);
        if (((Boolean) ekb.e().a(aq.bP)).booleanValue()) {
            a2.putLong("remaining_data_partition_space", this.n);
        }
        Bundle a3 = cpw.a(a2, "browser");
        a2.putBundle("browser", a3);
        a3.putBoolean("is_browser_custom_tabs_capable", this.l);
        if (!TextUtils.isEmpty(this.j)) {
            Bundle a4 = cpw.a(a2, "play_store");
            a2.putBundle("play_store", a4);
            a4.putString("package_version", this.j);
        }
    }
}
