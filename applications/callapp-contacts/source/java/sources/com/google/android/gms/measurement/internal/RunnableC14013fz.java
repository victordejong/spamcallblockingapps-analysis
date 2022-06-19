package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
/* renamed from: com.google.android.gms.measurement.internal.fz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fz.class */
public final class RunnableC14013fz implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14036gv f51664a;

    public RunnableC14013fz(C14036gv c14036gv) {
        this.f51664a = c14036gv;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14125kc c14125kc = this.f51664a.f51739b;
        c14125kc.f52016a.mo11658d().mo11884S_();
        if (c14125kc.m11547b()) {
            if (c14125kc.m11549a()) {
                c14125kc.f52016a.m11991b().f51471q.m12042a(null);
                Bundle bundle = new Bundle();
                bundle.putString(Payload.SOURCE, "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", Constants.INTENT_SCHEME);
                bundle.putLong("_cc", 1L);
                c14125kc.f52016a.m11989f().m11856a("auto", "_cmpx", bundle);
            } else {
                String m12043a = c14125kc.f52016a.m11991b().f51471q.m12043a();
                if (TextUtils.isEmpty(m12043a)) {
                    c14125kc.f52016a.mo11661c().f51396d.m12092a("Cache still valid but referrer not found");
                } else {
                    long m12053a = c14125kc.f52016a.m11991b().f51472r.m12053a() / com.callapp.contacts.model.Constants.HOUR_IN_MILLIS;
                    Uri parse = Uri.parse(m12043a);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (m12053a - 1) * com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
                    c14125kc.f52016a.m11989f().m11856a((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                c14125kc.f52016a.m11991b().f51471q.m12042a(null);
            }
            c14125kc.f52016a.m11991b().f51472r.m12052a(0L);
        }
    }
}
