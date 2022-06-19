package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* renamed from: com.google.android.gms.measurement.internal.ca */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ca.class */
public final class C7679ca {

    /* renamed from: a */
    private final C7858s4 f35137a;

    public C7679ca(C7858s4 c7858s4) {
        this.f35137a = c7858s4;
    }

    /* renamed from: a */
    public final void m6563a() {
        this.f35137a.mo6029b().mo6113f();
        if (!m6559e()) {
            return;
        }
        if (m6560d()) {
            this.f35137a.m6005z().f35212v.m6557b(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            this.f35137a.m6044F().m5917X("auto", "_cmpx", bundle);
        } else {
            String m6558a = this.f35137a.m6005z().f35212v.m6558a();
            if (TextUtils.isEmpty(m6558a)) {
                this.f35137a.mo6047C().m6194n().m6216a("Cache still valid but referrer not found");
            } else {
                long m6588a = this.f35137a.m6005z().f35213w.m6588a() / 3600000;
                Uri parse = Uri.parse(m6558a);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (m6588a - 1) * 3600000);
                this.f35137a.m6044F().m5917X((String) pair.first, "_cmp", (Bundle) pair.second);
            }
            this.f35137a.m6005z().f35212v.m6557b(null);
        }
        this.f35137a.m6005z().f35213w.m6587b(0L);
    }

    /* renamed from: b */
    public final void m6562b(String str, Bundle bundle) {
        String str2;
        this.f35137a.mo6029b().mo6113f();
        if (!this.f35137a.m6022i()) {
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
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f35137a.m6005z().f35212v.m6557b(str2);
            this.f35137a.m6005z().f35213w.m6587b(this.f35137a.mo6007x().mo16807a());
        }
    }

    /* renamed from: c */
    public final void m6561c() {
        if (!m6559e() || !m6560d()) {
            return;
        }
        this.f35137a.m6005z().f35212v.m6557b(null);
    }

    /* renamed from: d */
    final boolean m6560d() {
        return m6559e() && this.f35137a.mo6007x().mo16807a() - this.f35137a.m6005z().f35213w.m6588a() > this.f35137a.m6006y().m6475q(null, C7672c3.f35054S);
    }

    /* renamed from: e */
    final boolean m6559e() {
        return this.f35137a.m6005z().f35213w.m6588a() > 0;
    }
}
