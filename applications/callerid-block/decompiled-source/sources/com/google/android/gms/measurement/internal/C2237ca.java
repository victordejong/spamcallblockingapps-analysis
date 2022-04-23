package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* renamed from: com.google.android.gms.measurement.internal.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ca.class */
public final class C2237ca {

    /* renamed from: a */
    private final s4 f10109a;

    public C2237ca(s4 s4Var) {
        this.f10109a = s4Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4011a() {
        this.f10109a.c().f();
        if (m4007e()) {
            if (m4008d()) {
                this.f10109a.A().u.m4004b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                this.f10109a.F().X("auto", "_cmpx", bundle);
            } else {
                String a = this.f10109a.A().u.m4005a();
                if (TextUtils.isEmpty(a)) {
                    this.f10109a.t().n().m3876a("Cache still valid but referrer not found");
                } else {
                    long a2 = this.f10109a.A().v.m4026a() / 3600000;
                    Uri parse = Uri.parse(a);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (a2 - 1) * 3600000);
                    this.f10109a.F().X((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                this.f10109a.A().u.m4004b(null);
            }
            this.f10109a.A().v.m4025b(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4010b(String str, Bundle bundle) {
        String str2;
        this.f10109a.c().f();
        if (!this.f10109a.i()) {
            if (bundle.isEmpty()) {
                str2 = null;
            } else {
                String str3 = str;
                if (true == str.isEmpty()) {
                    str3 = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str3);
                for (String str4 : bundle.keySet()) {
                    builder.appendQueryParameter(str4, bundle.getString(str4));
                }
                str2 = builder.build().toString();
            }
            if (!TextUtils.isEmpty(str2)) {
                this.f10109a.A().u.m4004b(str2);
                this.f10109a.A().v.m4025b(this.f10109a.v().m8247a());
            }
        }
    }

    /* renamed from: c */
    final void m4009c() {
        if (m4007e() && m4008d()) {
            this.f10109a.A().u.m4004b(null);
        }
    }

    /* renamed from: d */
    final boolean m4008d() {
        return m4007e() && this.f10109a.v().m8247a() - this.f10109a.A().v.m4026a() > this.f10109a.z().q((String) null, C2232c3.f10029R);
    }

    /* renamed from: e */
    final boolean m4007e() {
        return this.f10109a.A().v.m4026a() > 0;
    }
}
