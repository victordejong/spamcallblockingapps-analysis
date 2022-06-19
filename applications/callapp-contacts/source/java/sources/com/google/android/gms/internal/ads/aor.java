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

    /* renamed from: a */
    final cti f42535a;

    /* renamed from: b */
    final aiw f42536b;

    /* renamed from: c */
    final awa f42537c;

    /* renamed from: d */
    final boz f42538d;

    /* renamed from: e */
    final aqs f42539e;

    /* renamed from: f */
    final Executor f42540f;

    /* renamed from: g */
    private final bod f42541g;

    /* renamed from: h */
    private final cpo f42542h;

    /* renamed from: i */
    private final bwd<T> f42543i;

    /* renamed from: j */
    private final cpk f42544j;

    /* renamed from: k */
    private final bot f42545k;

    /* renamed from: l */
    private final bso f42546l;

    public aor(bod bodVar, cpo cpoVar, cti ctiVar, aiw aiwVar, bwd<T> bwdVar, awa awaVar, cpk cpkVar, boz bozVar, aqs aqsVar, Executor executor, bot botVar, bso bsoVar) {
        this.f42541g = bodVar;
        this.f42542h = cpoVar;
        this.f42535a = ctiVar;
        this.f42536b = aiwVar;
        this.f42543i = bwdVar;
        this.f42537c = awaVar;
        this.f42544j = cpkVar;
        this.f42538d = bozVar;
        this.f42539e = aqsVar;
        this.f42540f = executor;
        this.f42545k = botVar;
        this.f42546l = bsoVar;
    }

    /* renamed from: b */
    private final dbt<cpk> m18503b(dbt<zzauj> dbtVar) {
        if (this.f42544j != null) {
            return this.f42535a.m17260a((cti) ctj.SERVER_TRANSACTION).m17253a(dbh.m16899a(this.f42544j)).m17251a();
        }
        egn zzlb = zzr.zzlb();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42781cl)).booleanValue()) {
            synchronized (zzlb.f48997b) {
                zzlb.m15066a();
                zzj.zzegq.removeCallbacks(zzlb.f48996a);
                zzj.zzegq.postDelayed(zzlb.f48996a, ((Long) ekb.m14831e().m18571a(C12187aq.f42782cm)).longValue());
            }
        }
        if (this.f42542h.f46324d.zzcip == null) {
            csz<I> m17259a = this.f42535a.m17259a((cti) ctj.SERVER_TRANSACTION, (dbt) dbtVar);
            bot botVar = this.f42545k;
            botVar.getClass();
            return m17259a.m17248a((daq<I, O2>) new daq(botVar) { // from class: com.google.android.gms.internal.ads.aoq

                /* renamed from: a */
                private final bot f42534a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42534a = botVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    return this.f42534a.mo17699a((zzauj) obj);
                }
            }).m17251a();
        }
        csx m17260a = this.f42535a.m17260a((cti) ctj.SERVER_TRANSACTION);
        bod bodVar = this.f42541g;
        C12720ln m14527b = zzr.zzli().m14527b(bodVar.f44374a, bodVar.f44375b);
        AbstractC12716lj<JSONObject> abstractC12716lj = C12719lm.f49472a;
        AbstractC12713lg m14525a = m14527b.m14525a("google.afma.response.normalize", abstractC12716lj, abstractC12716lj);
        zzvf zzvfVar = bodVar.f44376c.f46324d.zzcip;
        return m17260a.m17253a(!bod.m17706a(zzvfVar) ? dbh.m16898a((Throwable) new zzcwo(cqj.REQUEST_ID_MISMATCH, "Mismatch request IDs.")) : daj.m16941a(daj.m16941a(daj.m16941a(dbh.m16899a(""), new daq(bodVar, zzvfVar) { // from class: com.google.android.gms.internal.ads.boc

            /* renamed from: a */
            private final bod f44372a;

            /* renamed from: b */
            private final zzvf f44373b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44372a = bodVar;
                this.f44373b = zzvfVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                zzvf zzvfVar2 = this.f44373b;
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
                return dbh.m16899a(jSONObject);
            }
        }, bodVar.f44377d), new daq(m14525a) { // from class: com.google.android.gms.internal.ads.bof

            /* renamed from: a */
            private final AbstractC12713lg f44379a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44379a = m14525a;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f44379a.mo14522a((JSONObject) obj);
            }
        }, bodVar.f44377d), new daq(bodVar) { // from class: com.google.android.gms.internal.ads.boe

            /* renamed from: a */
            private final bod f44378a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44378a = bodVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(new cpk(new cpf(this.f44378a.f44376c), cpi.m17365a(new StringReader(((JSONObject) obj).toString()))));
            }
        }, bodVar.f44377d)).m17251a();
    }

    /* renamed from: a */
    public final dbt<cpk> m18508a() {
        return m18503b(this.f42539e.m18459b());
    }

    /* renamed from: a */
    public final dbt<T> m18507a(dbt<cpk> dbtVar) {
        csz m17248a = this.f42535a.m17259a((cti) ctj.RENDERER, (dbt) dbtVar).m17249a((css<I, O2>) new css(this) { // from class: com.google.android.gms.internal.ads.aot

            /* renamed from: a */
            private final aor f42549a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42549a = this;
            }

            @Override // com.google.android.gms.internal.ads.css
            /* renamed from: a */
            public final Object mo17263a(Object obj) {
                cpk cpkVar = (cpk) obj;
                aiw aiwVar = this.f42549a.f42536b;
                for (cph cphVar : cpkVar.f46319b.f46315c) {
                    if (aiwVar.f42192a.containsKey(cphVar.f46311a)) {
                        aiwVar.f42192a.get(cphVar.f46311a).mo18643a(cphVar.f46312b);
                    } else if (aiwVar.f42193b.containsKey(cphVar.f46311a)) {
                        aiy aiyVar = aiwVar.f42193b.get(cphVar.f46311a);
                        JSONObject jSONObject = cphVar.f46312b;
                        HashMap hashMap = new HashMap();
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            String optString = jSONObject.optString(next);
                            if (optString != null) {
                                hashMap.put(next, optString);
                            }
                        }
                        aiyVar.mo18642a(hashMap);
                    }
                }
                return cpkVar;
            }
        }).m17248a((daq) this.f42543i);
        csz cszVar = m17248a;
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42829dg)).booleanValue()) {
            cszVar = m17248a.m17250a(((Integer) ekb.m14831e().m18571a(C12187aq.f42830dh)).intValue(), TimeUnit.SECONDS);
        }
        return cszVar.m17251a();
    }

    /* renamed from: a */
    public final dbt<cpk> m18506a(zzauj zzaujVar) {
        return m18503b(dbh.m16899a(zzaujVar));
    }

    /* renamed from: a */
    public final zzvh m18505a(Throwable th) {
        return cqh.m17321a(th, this.f42546l);
    }

    /* renamed from: b */
    public final dbt<T> m18504b() {
        return m18507a(m18508a());
    }
}
