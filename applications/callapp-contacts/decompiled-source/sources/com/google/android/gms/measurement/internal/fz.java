package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fz.class */
public final class fz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gv f29667a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(gv gvVar) {
        this.f29667a = gvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        kc kcVar = this.f29667a.f29729b;
        kcVar.f29931a.d().S_();
        if (kcVar.b()) {
            if (kcVar.a()) {
                kcVar.f29931a.b().q.a(null);
                Bundle bundle = new Bundle();
                bundle.putString(Payload.SOURCE, "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", Constants.INTENT_SCHEME);
                bundle.putLong("_cc", 1L);
                kcVar.f29931a.f().a("auto", "_cmpx", bundle);
            } else {
                String a2 = kcVar.f29931a.b().q.a();
                if (TextUtils.isEmpty(a2)) {
                    kcVar.f29931a.c().f29507d.a("Cache still valid but referrer not found");
                } else {
                    long a3 = kcVar.f29931a.b().r.a() / com.callapp.contacts.model.Constants.HOUR_IN_MILLIS;
                    Uri parse = Uri.parse(a2);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (a3 - 1) * com.callapp.contacts.model.Constants.HOUR_IN_MILLIS);
                    kcVar.f29931a.f().a((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                kcVar.f29931a.b().q.a(null);
            }
            kcVar.f29931a.b().r.a(0L);
        }
    }
}
