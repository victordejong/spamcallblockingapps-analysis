package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccp.class */
public final class ccp implements chb<ccn> {

    /* renamed from: a  reason: collision with root package name */
    private final dbs f25596a;

    /* renamed from: b  reason: collision with root package name */
    private final bjg f25597b;

    /* renamed from: c  reason: collision with root package name */
    private final bmi f25598c;

    /* renamed from: d  reason: collision with root package name */
    private final ccr f25599d;

    public ccp(dbs dbsVar, bjg bjgVar, bmi bmiVar, ccr ccrVar) {
        this.f25596a = dbsVar;
        this.f25597b = bjgVar;
        this.f25598c = bmiVar;
        this.f25599d = ccrVar;
    }

    private static Bundle a(cqe cqeVar) {
        Bundle bundle = new Bundle();
        try {
            zzaqr j = cqeVar.j();
            if (j != null) {
                bundle.putString("sdk_version", j.toString());
            }
        } catch (zzdpq e) {
        }
        try {
            zzaqr i = cqeVar.i();
            if (i != null) {
                bundle.putString("adapter_version", i.toString());
            }
        } catch (zzdpq e2) {
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<ccn> a() {
        if (cyc.a((String) ekb.e().a(aq.aU)) || this.f25599d.f25600a.get() || !this.f25598c.f24697a) {
            return dbh.a(new ccn(new Bundle()));
        }
        this.f25599d.f25600a.set(true);
        return this.f25596a.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cct

            /* renamed from: a  reason: collision with root package name */
            private final ccp f25601a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25601a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25601a.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ccn b() throws Exception {
        List<String> asList = Arrays.asList(((String) ekb.e().a(aq.aU)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                cqe a2 = this.f25597b.a(str, new JSONObject());
                a2.c();
                bundle.putBundle(str, a(a2));
            } catch (zzdpq e) {
            }
        }
        return new ccn(bundle);
    }
}
