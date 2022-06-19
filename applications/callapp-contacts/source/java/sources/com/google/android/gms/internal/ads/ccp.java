package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccp.class */
public final class ccp implements chb<ccn> {

    /* renamed from: a */
    private final dbs f45523a;

    /* renamed from: b */
    private final bjg f45524b;

    /* renamed from: c */
    private final bmi f45525c;

    /* renamed from: d */
    private final ccr f45526d;

    public ccp(dbs dbsVar, bjg bjgVar, bmi bmiVar, ccr ccrVar) {
        this.f45523a = dbsVar;
        this.f45524b = bjgVar;
        this.f45525c = bmiVar;
        this.f45526d = ccrVar;
    }

    /* renamed from: a */
    private static Bundle m17500a(cqe cqeVar) {
        Bundle bundle = new Bundle();
        try {
            zzaqr m17325j = cqeVar.m17325j();
            if (m17325j != null) {
                bundle.putString("sdk_version", m17325j.toString());
            }
        } catch (zzdpq e) {
        }
        try {
            zzaqr m17326i = cqeVar.m17326i();
            if (m17326i != null) {
                bundle.putString("adapter_version", m17326i.toString());
            }
        } catch (zzdpq e2) {
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<ccn> mo17449a() {
        if (cyc.m17069a((String) ekb.m14831e().m18571a(C12187aq.f42658aU)) || this.f45526d.f45527a.get() || !this.f45525c.f44259a) {
            return dbh.m16899a(new ccn(new Bundle()));
        }
        this.f45526d.f45527a.set(true);
        return this.f45523a.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cct

            /* renamed from: a */
            private final ccp f45528a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45528a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f45528a.m17499b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ ccn m17499b() throws Exception {
        List<String> asList = Arrays.asList(((String) ekb.m14831e().m18571a(C12187aq.f42658aU)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                cqe m17810a = this.f45524b.m17810a(str, new JSONObject());
                m17810a.m17332c();
                bundle.putBundle(str, m17500a(m17810a));
            } catch (zzdpq e) {
            }
        }
        return new ccn(bundle);
    }
}
