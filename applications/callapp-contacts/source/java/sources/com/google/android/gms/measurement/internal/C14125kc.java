package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.kc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kc.class */
public final class C14125kc {

    /* renamed from: a */
    final C13979es f52016a;

    public C14125kc(C13979es c13979es) {
        this.f52016a = c13979es;
    }

    /* renamed from: a */
    public final void m11548a(String str, Bundle bundle) {
        String str2;
        this.f52016a.mo11658d().mo11884S_();
        if (!this.f52016a.m11979r()) {
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
            this.f52016a.m11991b().f51471q.m12042a(str2);
            this.f52016a.m11991b().f51472r.m12052a(this.f52016a.f51532j.mo19039a());
        }
    }

    /* renamed from: a */
    public final boolean m11549a() {
        return m11547b() && this.f52016a.f51532j.mo19039a() - this.f52016a.m11991b().f51472r.m12053a() > this.f52016a.f51529g.m12069a(null, C13935dc.f51294Q);
    }

    /* renamed from: b */
    public final boolean m11547b() {
        return this.f52016a.m11991b().f51472r.m12053a() > 0;
    }
}
