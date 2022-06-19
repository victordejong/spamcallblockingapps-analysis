package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvc.class */
public final class bvc implements buz<bcf> {

    /* renamed from: a */
    final bbe f44828a;

    /* renamed from: b */
    final dbs f44829b;

    /* renamed from: c */
    final cqd<bgy> f44830c;

    /* renamed from: d */
    private final bfe f44831d;

    public bvc(bbe bbeVar, dbs dbsVar, bfe bfeVar, cqd<bgy> cqdVar) {
        this.f44828a = bbeVar;
        this.f44829b = dbsVar;
        this.f44831d = bfeVar;
        this.f44830c = cqdVar;
    }

    /* renamed from: a */
    public final dbt<bcf> m17604a(cpk cpkVar, cov covVar, JSONObject jSONObject) {
        dbt dbtVar;
        dbt dbtVar2;
        dbt dbtVar3;
        dbt<bgy> m17339a = this.f44830c.m17339a();
        bfe bfeVar = this.f44831d;
        dbt mo16890a = bfeVar.f43780a.mo16890a(new Callable(bfeVar, cpkVar, covVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bfd

            /* renamed from: a */
            private final bfe f43776a;

            /* renamed from: b */
            private final cpk f43777b;

            /* renamed from: c */
            private final cov f43778c;

            /* renamed from: d */
            private final JSONObject f43779d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43776a = bfeVar;
                this.f43777b = cpkVar;
                this.f43778c = covVar;
                this.f43779d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cpk cpkVar2 = this.f43777b;
                cov covVar2 = this.f43778c;
                JSONObject jSONObject2 = this.f43779d;
                bcr bcrVar = new bcr();
                bcrVar.m18195a(jSONObject2.optInt("template_id", -1));
                bcrVar.m18182a(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                bcrVar.m18172b(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                cpo cpoVar = cpkVar2.f46318a.f46306a;
                if (!cpoVar.f46327g.contains(Integer.toString(bcrVar.m18198a()))) {
                    cqj cqjVar = cqj.INTERNAL_ERROR;
                    int m18198a = bcrVar.m18198a();
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("Invalid template ID: ");
                    sb.append(m18198a);
                    throw new zzcwo(cqjVar, sb.toString());
                }
                if (bcrVar.m18198a() == 3) {
                    if (bcrVar.m18151u() == null) {
                        throw new zzcwo(cqj.INTERNAL_ERROR, "No custom template id for custom template ad response.");
                    }
                    if (!cpoVar.f46328h.contains(bcrVar.m18151u())) {
                        throw new zzcwo(cqj.INTERNAL_ERROR, "Unexpected custom template id in the response.");
                    }
                }
                bcrVar.m18197a(jSONObject2.optDouble("rating", -1.0d));
                String optString = jSONObject2.optString("headline", null);
                String str = optString;
                if (covVar2.f46228H) {
                    zzr.zzkv();
                    String zzzu = zzj.zzzu();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(zzzu).length() + 3 + String.valueOf(optString).length());
                    sb2.append(zzzu);
                    sb2.append(" : ");
                    sb2.append(optString);
                    str = sb2.toString();
                }
                bcrVar.m18180a("headline", str);
                bcrVar.m18180a("body", jSONObject2.optString("body", null));
                bcrVar.m18180a("call_to_action", jSONObject2.optString("call_to_action", null));
                bcrVar.m18180a(Payload.TYPE_STORE, jSONObject2.optString(Payload.TYPE_STORE, null));
                bcrVar.m18180a("price", jSONObject2.optString("price", null));
                bcrVar.m18180a("advertiser", jSONObject2.optString("advertiser", null));
                return bcrVar;
            }
        });
        bfi bfiVar = bfeVar.f43781b;
        dbt<List<BinderC12325de>> m17888a = bfiVar.m17888a(jSONObject.optJSONArray("images"), bfiVar.f43803g.zzdgx, bfiVar.f43803g.zzboe);
        dbt<BinderC12325de> m17886a = bfeVar.f43781b.m17886a(jSONObject, "secondary_image");
        dbt<BinderC12325de> m17886a2 = bfeVar.f43781b.m17886a(jSONObject, "app_icon");
        bfi bfiVar2 = bfeVar.f43781b;
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            dbtVar = dbh.m16899a((Object) null);
        } else {
            JSONArray optJSONArray = optJSONObject.optJSONArray("images");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = optJSONArray;
                if (optJSONObject2 != null) {
                    jSONArray = new JSONArray();
                    jSONArray.put(optJSONObject2);
                }
            }
            dbtVar = bfi.m17884a(optJSONObject.optBoolean("require"), daj.m16942a(bfiVar2.m17888a(jSONArray, false, true), new cxu(bfiVar2, optJSONObject) { // from class: com.google.android.gms.internal.ads.bfj

                /* renamed from: a */
                private final bfi f43807a;

                /* renamed from: b */
                private final JSONObject f43808b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43807a = bfiVar2;
                    this.f43808b = optJSONObject;
                }

                @Override // com.google.android.gms.internal.ads.cxu
                /* renamed from: a */
                public final Object mo14064a(Object obj) {
                    bfi bfiVar3 = this.f43807a;
                    JSONObject jSONObject2 = this.f43808b;
                    List list = (List) obj;
                    Integer num = null;
                    if (list == null || list.isEmpty()) {
                        return null;
                    }
                    String optString = jSONObject2.optString("text");
                    Integer m17883b = bfi.m17883b(jSONObject2, "bg_color");
                    Integer m17883b2 = bfi.m17883b(jSONObject2, "text_color");
                    int optInt = jSONObject2.optInt("text_size", -1);
                    boolean optBoolean = jSONObject2.optBoolean("allow_pub_rendering");
                    int optInt2 = jSONObject2.optInt("animation_ms", 1000);
                    int optInt3 = jSONObject2.optInt("presentation_ms", ConferenceActivity.SNACK_BAR_DURATION);
                    if (optInt > 0) {
                        num = Integer.valueOf(optInt);
                    }
                    return new BinderC12321dd(optString, list, m17883b, m17883b2, num, optInt3 + optInt2, bfiVar3.f43803g.zzbof, optBoolean);
                }
            }, bfiVar2.f43802f));
        }
        bfi bfiVar3 = bfeVar.f43781b;
        JSONObject zza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (zza == null) {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("video");
            if (optJSONObject3 == null) {
                dbtVar2 = dbh.m16899a((Object) null);
            } else if (TextUtils.isEmpty(optJSONObject3.optString("vast_xml"))) {
                zzd.zzez("Required field 'vast_xml' is missing");
                dbtVar2 = dbh.m16899a((Object) null);
            } else {
                bfv bfvVar = bfiVar3.f43804h;
                dbtVar2 = bfi.m17889a(dbh.m16902a(daj.m16941a(daj.m16941a(dbh.m16899a((Object) null), new daq(bfvVar) { // from class: com.google.android.gms.internal.ads.bga

                    /* renamed from: a */
                    private final bfv f43851a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43851a = bfvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        bfv bfvVar2 = this.f43851a;
                        adt m17828a = bfvVar2.f43839c.m17828a(zzvt.zzqk(), null, null);
                        C13100zm m13898a = C13100zm.m13898a(m17828a);
                        bfvVar2.m17881a(m17828a);
                        m17828a.mo13808B().mo18788a(new afg(m13898a) { // from class: com.google.android.gms.internal.ads.bfz

                            /* renamed from: a */
                            private final C13100zm f43847a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f43847a = m13898a;
                            }

                            @Override // com.google.android.gms.internal.ads.afg
                            /* renamed from: a */
                            public final void mo14557a() {
                                this.f43847a.m13899a();
                            }
                        });
                        m17828a.loadUrl((String) ekb.m14831e().m18571a(C12187aq.f42709bS));
                        return m13898a;
                    }
                }, bfvVar.f43838b), new daq(bfvVar, optJSONObject3) { // from class: com.google.android.gms.internal.ads.bfy

                    /* renamed from: a */
                    private final bfv f43845a;

                    /* renamed from: b */
                    private final JSONObject f43846b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43845a = bfvVar;
                        this.f43846b = optJSONObject3;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        final bfv bfvVar2 = this.f43845a;
                        JSONObject jSONObject2 = this.f43846b;
                        final adt adtVar = (adt) obj;
                        final C13100zm m13898a = C13100zm.m13898a(adtVar);
                        if (bfvVar2.f43837a.f46323c != null) {
                            adtVar.mo13782a(afh.m18773c());
                        } else {
                            adtVar.mo13782a(afh.m18774b());
                        }
                        adtVar.mo13808B().mo18789a(new afd(bfvVar2, adtVar, m13898a) { // from class: com.google.android.gms.internal.ads.bgb

                            /* renamed from: a */
                            private final bfv f43852a;

                            /* renamed from: b */
                            private final adt f43853b;

                            /* renamed from: c */
                            private final C13100zm f43854c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f43852a = bfvVar2;
                                this.f43853b = adtVar;
                                this.f43854c = m13898a;
                            }

                            @Override // com.google.android.gms.internal.ads.afd
                            public final void zzam(boolean z) {
                                bfv bfvVar3 = this.f43852a;
                                adt adtVar2 = this.f43853b;
                                C13100zm c13100zm = this.f43854c;
                                if (bfvVar3.f43837a.f46322b != null && adtVar2.mo13763b() != null) {
                                    adtVar2.mo13763b().m18804a(bfvVar3.f43837a.f46322b);
                                }
                                c13100zm.m13899a();
                            }
                        });
                        adtVar.mo13757b("google.afma.nativeAds.renderVideo", jSONObject2);
                        return m13898a;
                    }
                }, bfvVar.f43838b), ((Integer) ekb.m14831e().m18571a(C12187aq.f42711bU)).intValue(), TimeUnit.SECONDS, bfiVar3.f43805i));
            }
        } else {
            bfv bfvVar2 = bfiVar3.f43804h;
            dbt m16941a = daj.m16941a(dbh.m16899a((Object) null), new daq(bfvVar2, zza.optString("base_url"), zza.optString(AdType.HTML)) { // from class: com.google.android.gms.internal.ads.bfx

                /* renamed from: a */
                private final bfv f43842a;

                /* renamed from: b */
                private final String f43843b;

                /* renamed from: c */
                private final String f43844c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43842a = bfvVar2;
                    this.f43843b = optString;
                    this.f43844c = optString2;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    final bfv bfvVar3 = this.f43842a;
                    String str = this.f43843b;
                    String str2 = this.f43844c;
                    final adt m17828a = bfvVar3.f43839c.m17828a(zzvt.zzqk(), null, null);
                    final C13100zm m13898a = C13100zm.m13898a(m17828a);
                    bfvVar3.m17881a(m17828a);
                    if (bfvVar3.f43837a.f46323c != null) {
                        m17828a.mo13782a(afh.m18773c());
                    } else {
                        m17828a.mo13782a(afh.m18774b());
                    }
                    m17828a.mo13808B().mo18789a(new afd(bfvVar3, m17828a, m13898a) { // from class: com.google.android.gms.internal.ads.bgc

                        /* renamed from: a */
                        private final bfv f43855a;

                        /* renamed from: b */
                        private final adt f43856b;

                        /* renamed from: c */
                        private final C13100zm f43857c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43855a = bfvVar3;
                            this.f43856b = m17828a;
                            this.f43857c = m13898a;
                        }

                        @Override // com.google.android.gms.internal.ads.afd
                        public final void zzam(boolean z) {
                            bfv bfvVar4 = this.f43855a;
                            adt adtVar = this.f43856b;
                            C13100zm c13100zm = this.f43857c;
                            if (!z) {
                                c13100zm.setException(new zzcwo(cqj.INTERNAL_ERROR, "Instream video Web View failed to load."));
                                return;
                            }
                            if (bfvVar4.f43837a.f46322b != null && adtVar.mo13763b() != null) {
                                adtVar.mo13763b().m18804a(bfvVar4.f43837a.f46322b);
                            }
                            c13100zm.m13899a();
                        }
                    });
                    m17828a.mo13771a(str, str2, (String) null);
                    return m13898a;
                }
            }, bfvVar2.f43838b);
            dbtVar2 = daj.m16941a(m16941a, new daq(m16941a) { // from class: com.google.android.gms.internal.ads.bfl

                /* renamed from: a */
                private final dbt f43813a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43813a = m16941a;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    dbt dbtVar4 = this.f43813a;
                    adt adtVar = (adt) obj;
                    if (adtVar == null || adtVar.mo13763b() == null) {
                        throw new zzcwo(cqj.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
                    }
                    return dbtVar4;
                }
            }, C13091zd.f50123f);
        }
        bfi bfiVar4 = bfeVar.f43781b;
        if (!jSONObject.optBoolean("enable_omid")) {
            dbtVar3 = dbh.m16899a((Object) null);
        } else {
            JSONObject optJSONObject4 = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject4 == null) {
                dbtVar3 = dbh.m16899a((Object) null);
            } else {
                String optString = optJSONObject4.optString("omid_html");
                dbtVar3 = TextUtils.isEmpty(optString) ? dbh.m16899a((Object) null) : daj.m16941a(dbh.m16899a((Object) null), new daq(bfiVar4, optString) { // from class: com.google.android.gms.internal.ads.bfm

                    /* renamed from: a */
                    private final bfi f43814a;

                    /* renamed from: b */
                    private final String f43815b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43814a = bfiVar4;
                        this.f43815b = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        bfi bfiVar5 = this.f43814a;
                        String str = this.f43815b;
                        zzr.zzkw();
                        adt m18830a = aeb.m18830a(bfiVar5.f43797a, afh.m18777a(), "native-omid", false, false, bfiVar5.f43798b, null, bfiVar5.f43799c, null, bfiVar5.f43800d, bfiVar5.f43801e, null, null);
                        final C13100zm m13898a = C13100zm.m13898a(m18830a);
                        m18830a.mo13808B().mo18789a(new afd(m13898a) { // from class: com.google.android.gms.internal.ads.bfq

                            /* renamed from: a */
                            private final C13100zm f43828a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f43828a = m13898a;
                            }

                            @Override // com.google.android.gms.internal.ads.afd
                            public final void zzam(boolean z) {
                                this.f43828a.m13899a();
                            }
                        });
                        m18830a.loadData(str, Mimetypes.MIMETYPE_HTML, "UTF-8");
                        return m13898a;
                    }
                }, C13091zd.f50122e);
            }
        }
        dbt<List<bft>> m17882a = bfeVar.f43782c.m17882a(jSONObject, "custom_assets");
        dbt m16893a = new dbm(false, cyz.m17034a((Object[]) new dbt[]{mo16890a, m17888a, m17886a, m17886a2, dbtVar, dbtVar2, dbtVar3, m17882a}), null).m16893a(new Callable(bfeVar, mo16890a, m17888a, m17886a2, m17886a, dbtVar, jSONObject, dbtVar2, dbtVar3, m17882a) { // from class: com.google.android.gms.internal.ads.bfg

            /* renamed from: a */
            private final bfe f43786a;

            /* renamed from: b */
            private final dbt f43787b;

            /* renamed from: c */
            private final dbt f43788c;

            /* renamed from: d */
            private final dbt f43789d;

            /* renamed from: e */
            private final dbt f43790e;

            /* renamed from: f */
            private final dbt f43791f;

            /* renamed from: g */
            private final JSONObject f43792g;

            /* renamed from: h */
            private final dbt f43793h;

            /* renamed from: i */
            private final dbt f43794i;

            /* renamed from: j */
            private final dbt f43795j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43786a = bfeVar;
                this.f43787b = mo16890a;
                this.f43788c = m17888a;
                this.f43789d = m17886a2;
                this.f43790e = m17886a;
                this.f43791f = dbtVar;
                this.f43792g = jSONObject;
                this.f43793h = dbtVar2;
                this.f43794i = dbtVar3;
                this.f43795j = m17882a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cyz cyzVar;
                JSONObject optJSONObject5;
                dbt dbtVar7 = this.f43787b;
                dbt dbtVar8 = this.f43788c;
                dbt dbtVar9 = this.f43789d;
                dbt dbtVar10 = this.f43790e;
                dbt dbtVar11 = this.f43791f;
                JSONObject jSONObject2 = this.f43792g;
                dbt dbtVar12 = this.f43793h;
                dbt dbtVar13 = this.f43794i;
                dbt dbtVar14 = this.f43795j;
                bcr bcrVar = (bcr) dbtVar7.get();
                bcrVar.m18179a((List) dbtVar8.get());
                bcrVar.m18190a((AbstractC12394dr) dbtVar9.get());
                bcrVar.m18175b((AbstractC12394dr) dbtVar10.get());
                bcrVar.m18191a((AbstractC12371dj) dbtVar11.get());
                JSONObject optJSONObject6 = jSONObject2.optJSONObject(EventConstants.MUTE);
                if (optJSONObject6 == null) {
                    cyzVar = cyz.m17031g();
                } else {
                    JSONArray optJSONArray2 = optJSONObject6.optJSONArray("reasons");
                    if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                        cyzVar = cyz.m17031g();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            ene m17887a = bfi.m17887a(optJSONArray2.optJSONObject(i));
                            if (m17887a != null) {
                                arrayList.add(m17887a);
                            }
                        }
                        cyzVar = cyz.m17035a((Collection) arrayList);
                    }
                }
                bcrVar.m18171b(cyzVar);
                JSONObject optJSONObject7 = jSONObject2.optJSONObject(EventConstants.MUTE);
                ene eneVar = null;
                if (optJSONObject7 != null && (optJSONObject5 = optJSONObject7.optJSONObject("default_reason")) != null) {
                    eneVar = bfi.m17887a(optJSONObject5);
                }
                bcrVar.m18186a(eneVar);
                adt adtVar = (adt) dbtVar12.get();
                if (adtVar != null) {
                    bcrVar.m18192a(adtVar);
                    bcrVar.m18194a(adtVar.mo13731s());
                    bcrVar.m18189a(adtVar.mo13763b());
                }
                adt adtVar2 = (adt) dbtVar13.get();
                if (adtVar2 != null) {
                    bcrVar.m18176b(adtVar2);
                }
                for (bft bftVar : (List) dbtVar14.get()) {
                    int i2 = bftVar.f43832a;
                    if (i2 == 1) {
                        bcrVar.m18180a(bftVar.f43833b, bftVar.f43834c);
                    } else if (i2 == 2) {
                        bcrVar.m18181a(bftVar.f43833b, bftVar.f43835d);
                    }
                }
                return bcrVar;
            }
        }, bfeVar.f43780a);
        return dbh.m16896a(m17339a, m16893a).m16893a(new Callable(this, m16893a, m17339a, cpkVar, covVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bvf

            /* renamed from: a */
            private final bvc f44837a;

            /* renamed from: b */
            private final dbt f44838b;

            /* renamed from: c */
            private final dbt f44839c;

            /* renamed from: d */
            private final cpk f44840d;

            /* renamed from: e */
            private final cov f44841e;

            /* renamed from: f */
            private final JSONObject f44842f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44837a = this;
                this.f44838b = m16893a;
                this.f44839c = m17339a;
                this.f44840d = cpkVar;
                this.f44841e = covVar;
                this.f44842f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bvc bvcVar = this.f44837a;
                dbt dbtVar7 = this.f44838b;
                dbt dbtVar8 = this.f44839c;
                cpk cpkVar2 = this.f44840d;
                cov covVar2 = this.f44841e;
                JSONObject jSONObject2 = this.f44842f;
                bcr bcrVar = (bcr) dbtVar7.get();
                bgy bgyVar = (bgy) dbtVar8.get();
                bct mo18253a = bvcVar.f44828a.mo18253a(new aof(cpkVar2, covVar2, null), new bde(bcrVar), new bbs(jSONObject2, bgyVar));
                bgz mo18145i = mo18253a.mo18145i();
                if (mo18145i.f43920a != null) {
                    mo18145i.f43921b.m17869a("/nativeAdCustomClick", mo18145i);
                }
                bhk mo18144j = mo18253a.mo18144j();
                bhh bhhVar = bgyVar.f43907a;
                arj arjVar = mo18144j.f43943a;
                ate ateVar = mo18144j.f43945c;
                atj atjVar = mo18144j.f43946d;
                avz avzVar = mo18144j.f43947e;
                asp aspVar = mo18144j.f43944b;
                aspVar.getClass();
                bhhVar.m17862a(arjVar, ateVar, atjVar, avzVar, bhj.m17861a(aspVar));
                bgyVar.m17870a(mo18144j.f43948f, mo18144j.f43949g);
                bgf mo18143k = mo18253a.mo18143k();
                adt m18150v = bcrVar.m18150v();
                if (m18150v != null) {
                    mo18143k.f43862c.m18323a(m18150v.mo13731s());
                    mo18143k.f43862c.m18372a(new eeg(m18150v) { // from class: com.google.android.gms.internal.ads.bge

                        /* renamed from: a */
                        private final adt f43859a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43859a = m18150v;
                        }

                        @Override // com.google.android.gms.internal.ads.eeg
                        /* renamed from: a */
                        public final void mo13778a(eeh eehVar) {
                            this.f43859a.mo13808B().mo18791a(eehVar.f48866d.left, eehVar.f48866d.top);
                        }
                    }, mo18143k.f43860a);
                    mo18143k.f43862c.m18372a(new eeg(m18150v) { // from class: com.google.android.gms.internal.ads.bgh

                        /* renamed from: a */
                        private final adt f43864a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43864a = m18150v;
                        }

                        @Override // com.google.android.gms.internal.ads.eeg
                        /* renamed from: a */
                        public final void mo13778a(eeh eehVar) {
                            adt adtVar = this.f43864a;
                            HashMap hashMap = new HashMap();
                            hashMap.put("isVisible", eehVar.f48872j ? "1" : "0");
                            adtVar.mo13770a("onAdVisibilityChanged", hashMap);
                        }
                    }, mo18143k.f43860a);
                    mo18143k.f43862c.m18372a(mo18143k.f43861b, mo18143k.f43860a);
                    mo18143k.f43861b.f42298a = m18150v;
                    m18150v.mo13772a("/trackActiveViewUnit", new AbstractC12607hi(mo18143k) { // from class: com.google.android.gms.internal.ads.bgg

                        /* renamed from: a */
                        private final bgf f43863a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43863a = mo18143k;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map) {
                            akh akhVar = this.f43863a.f43861b;
                            akhVar.f42299b = true;
                            akhVar.m18617a();
                        }
                    });
                    m18150v.mo13772a("/untrackActiveViewUnit", new AbstractC12607hi(mo18143k) { // from class: com.google.android.gms.internal.ads.bgj

                        /* renamed from: a */
                        private final bgf f43868a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43868a = mo18143k;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map) {
                            this.f43868a.f43861b.f42299b = false;
                        }
                    });
                }
                return mo18253a.mo18202h();
            }
        }, this.f44829b);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (covVar.f46271r == null || covVar.f46271r.f46303c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<List<dbt<bcf>>> mo17574b(cpk cpkVar, cov covVar) {
        return daj.m16941a(daj.m16941a(this.f44830c.m17339a(), new daq(this, covVar) { // from class: com.google.android.gms.internal.ads.bvb

            /* renamed from: a */
            private final bvc f44826a;

            /* renamed from: b */
            private final cov f44827b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44826a = this;
                this.f44827b = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bvc bvcVar = this.f44826a;
                cov covVar2 = this.f44827b;
                final bgy bgyVar = (bgy) obj;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isNonagon", true);
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42930fb)).booleanValue() && C12110n.m19010l()) {
                    jSONObject.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Payload.RESPONSE, covVar2.f46271r.f46303c);
                jSONObject2.put("sdk_params", jSONObject);
                return daj.m16941a(bgyVar.m17867a("google.afma.nativeAds.preProcessJson", jSONObject2), new daq(bvcVar, bgyVar) { // from class: com.google.android.gms.internal.ads.bvd

                    /* renamed from: a */
                    private final bvc f44832a;

                    /* renamed from: b */
                    private final bgy f44833b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44832a = bvcVar;
                        this.f44833b = bgyVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj2) {
                        JSONObject jSONObject3 = (JSONObject) obj2;
                        this.f44832a.f44830c.m17337a(dbh.m16899a(this.f44833b));
                        if (jSONObject3.optBoolean("success")) {
                            return dbh.m16899a(jSONObject3.getJSONObject("json").getJSONArray("ads"));
                        }
                        throw new zzamh("process json failed");
                    }
                }, bvcVar.f44829b);
            }
        }, this.f44829b), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bve

            /* renamed from: a */
            private final bvc f44834a;

            /* renamed from: b */
            private final cpk f44835b;

            /* renamed from: c */
            private final cov f44836c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44834a = this;
                this.f44835b = cpkVar;
                this.f44836c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bvc bvcVar = this.f44834a;
                cpk cpkVar2 = this.f44835b;
                cov covVar2 = this.f44836c;
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    return dbh.m16898a((Throwable) new zzcnp(cqj.NO_FILL));
                }
                if (cpkVar2.f46318a.f46306a.f46331k <= 1) {
                    return daj.m16942a(bvcVar.m17604a(cpkVar2, covVar2, jSONArray.getJSONObject(0)), bvg.f44843a, bvcVar.f44829b);
                }
                int length = jSONArray.length();
                bvcVar.f44830c.m17338a(Math.min(length, cpkVar2.f46318a.f46306a.f46331k));
                ArrayList arrayList = new ArrayList(cpkVar2.f46318a.f46306a.f46331k);
                for (int i = 0; i < cpkVar2.f46318a.f46306a.f46331k; i++) {
                    if (i < length) {
                        arrayList.add(bvcVar.m17604a(cpkVar2, covVar2, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(dbh.m16898a((Throwable) new zzcnp(cqj.NO_FILL)));
                    }
                }
                return dbh.m16899a(arrayList);
            }
        }, this.f44829b);
    }
}
