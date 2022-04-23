package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kc.class */
public final class kc {

    /* renamed from: a  reason: collision with root package name */
    final es f29931a;

    public kc(es esVar) {
        this.f29931a = esVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, Bundle bundle) {
        String str2;
        this.f29931a.d().S_();
        if (!this.f29931a.r()) {
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
                this.f29931a.b().q.a(str2);
                this.f29931a.b().r.a(this.f29931a.j.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return b() && this.f29931a.j.a() - this.f29931a.b().r.a() > this.f29931a.g.a(null, dc.Q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.f29931a.b().r.a() > 0;
    }
}
