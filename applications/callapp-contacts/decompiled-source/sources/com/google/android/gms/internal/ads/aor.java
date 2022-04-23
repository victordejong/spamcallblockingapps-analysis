package com.google.android.gms.internal.ads;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aor.class */
public final class aor<T> {

    /* renamed from: a  reason: collision with root package name */
    final cti f23675a;

    /* renamed from: b  reason: collision with root package name */
    final aiw f23676b;

    /* renamed from: c  reason: collision with root package name */
    final awa f23677c;

    /* renamed from: d  reason: collision with root package name */
    final boz f23678d;
    final aqs e;
    final Executor f;
    private final bod g;
    private final cpo h;
    private final bwd<T> i;
    private final cpk j;
    private final bot k;
    private final bso l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aor(bod bodVar, cpo cpoVar, cti ctiVar, aiw aiwVar, bwd<T> bwdVar, awa awaVar, cpk cpkVar, boz bozVar, aqs aqsVar, Executor executor, bot botVar, bso bsoVar) {
        this.g = bodVar;
        this.h = cpoVar;
        this.f23675a = ctiVar;
        this.f23676b = aiwVar;
        this.i = bwdVar;
        this.f23677c = awaVar;
        this.j = cpkVar;
        this.f23678d = bozVar;
        this.e = aqsVar;
        this.f = executor;
        this.k = botVar;
        this.l = bsoVar;
    }

    private final dbt<cpk> b(dbt<zzauj> dbtVar) {
        if (this.j != null) {
            return this.f23675a.a((cti) ctj.SERVER_TRANSACTION).a(dbh.a(this.j)).a();
        }
        egn zzlb = zzr.zzlb();
        if (((Boolean) ekb.e().a(aq.cl)).booleanValue()) {
            synchronized (zzlb.f27812b) {
                zzlb.a();
                zzj.zzegq.removeCallbacks(zzlb.f27811a);
                zzj.zzegq.postDelayed(zzlb.f27811a, ((Long) ekb.e().a(aq.cm)).longValue());
            }
        }
        if (this.h.f26227d.zzcip != null) {
            csx a2 = this.f23675a.a((cti) ctj.SERVER_TRANSACTION);
            final bod bodVar = this.g;
            ln b2 = zzr.zzli().b(bodVar.f24789a, bodVar.f24790b);
            lj<JSONObject> ljVar = lm.f28155a;
            final lg a3 = b2.a("google.afma.response.normalize", ljVar, ljVar);
            final zzvf zzvfVar = bodVar.f24791c.f26227d.zzcip;
            return a2.a(!bod.a(zzvfVar) ? dbh.a((Throwable) new zzcwo(cqj.REQUEST_ID_MISMATCH, "Mismatch request IDs.")) : daj.a(daj.a(daj.a(dbh.a(""), new daq(bodVar, zzvfVar) { // from class: com.google.android.gms.internal.ads.boc

                /* renamed from: a  reason: collision with root package name */
                private final bod f24787a;

                /* renamed from: b  reason: collision with root package name */
                private final zzvf f24788b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24787a = bodVar;
                    this.f24788b = zzvfVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    zzvf zzvfVar2 = this.f24788b;
                    String str = zzvfVar2.zzchp;
                    String str2 = zzvfVar2.zzchq;
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str2));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put(Payload.RESPONSE, jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return dbh.a(jSONObject);
                }
            }, bodVar.f24792d), new daq(a3) { // from class: com.google.android.gms.internal.ads.bof

                /* renamed from: a  reason: collision with root package name */
                private final lg f24794a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24794a = a3;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    return this.f24794a.a((JSONObject) obj);
                }
            }, bodVar.f24792d), new daq(bodVar) { // from class: com.google.android.gms.internal.ads.boe

                /* renamed from: a  reason: collision with root package name */
                private final bod f24793a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24793a = bodVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    return dbh.a(new cpk(new cpf(this.f24793a.f24791c), cpi.a(new StringReader(((JSONObject) obj).toString()))));
                }
            }, bodVar.f24792d)).a();
        }
        csz<I> a4 = this.f23675a.a((cti) ctj.SERVER_TRANSACTION, (dbt) dbtVar);
        final bot botVar = this.k;
        botVar.getClass();
        return a4.a((daq<I, O2>) new daq(botVar) { // from class: com.google.android.gms.internal.ads.aoq

            /* renamed from: a  reason: collision with root package name */
            private final bot f23674a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23674a = botVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f23674a.a((zzauj) obj);
            }
        }).a();
    }

    public final dbt<cpk> a() {
        return b(this.e.b());
    }

    public final dbt<T> a(dbt<cpk> dbtVar) {
        csz a2 = this.f23675a.a((cti) ctj.RENDERER, (dbt) dbtVar).a((css<I, O2>) new css(this) { // from class: com.google.android.gms.internal.ads.aot

            /* renamed from: a  reason: collision with root package name */
            private final aor f23681a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23681a = this;
            }

            @Override // com.google.android.gms.internal.ads.css
            public final Object a(Object obj) {
                cpk cpkVar = (cpk) obj;
                aiw aiwVar = this.f23681a.f23676b;
                for (cph cphVar : cpkVar.f26222b.f26218c) {
                    if (aiwVar.f23406a.containsKey(cphVar.f26214a)) {
                        aiwVar.f23406a.get(cphVar.f26214a).a(cphVar.f26215b);
                    } else if (aiwVar.f23407b.containsKey(cphVar.f26214a)) {
                        aiy aiyVar = aiwVar.f23407b.get(cphVar.f26214a);
                        JSONObject jSONObject = cphVar.f26215b;
                        HashMap hashMap = new HashMap();
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            String optString = jSONObject.optString(next);
                            if (optString != null) {
                                hashMap.put(next, optString);
                            }
                        }
                        aiyVar.a(hashMap);
                    }
                }
                return cpkVar;
            }
        }).a((daq) this.i);
        csz cszVar = a2;
        if (!((Boolean) ekb.e().a(aq.dg)).booleanValue()) {
            cszVar = a2.a(((Integer) ekb.e().a(aq.dh)).intValue(), TimeUnit.SECONDS);
        }
        return cszVar.a();
    }

    public final dbt<cpk> a(zzauj zzaujVar) {
        return b(dbh.a(zzaujVar));
    }

    public final zzvh a(Throwable th) {
        return cqh.a(th, this.l);
    }

    public final dbt<T> b() {
        return a(a());
    }
}
