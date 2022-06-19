package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzr.class */
public final class zzr {

    /* renamed from: a */
    public final zzfr f6455a;

    public zzr(zzfr zzfrVar) {
        this.f6455a = zzfrVar;
    }

    /* renamed from: a */
    public final void m38554a(String str, Bundle bundle) {
        String str2;
        this.f6455a.a().d();
        if (!this.f6455a.c()) {
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
            this.f6455a.p().u.m38576b(str2);
            this.f6455a.p().v.m38579b(this.f6455a.n.mo38787c());
        }
    }

    /* renamed from: b */
    public final boolean m38553b() {
        return this.f6455a.p().v.m38580a() > 0;
    }

    /* renamed from: c */
    public final boolean m38552c() {
        return m38553b() && this.f6455a.n.mo38787c() - this.f6455a.p().v.m38580a() > this.f6455a.g.n((String) null, zzdu.f6301R);
    }
}
