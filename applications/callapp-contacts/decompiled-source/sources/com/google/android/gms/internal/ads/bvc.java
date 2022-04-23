package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.amazonaws.services.s3.util.Mimetypes;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.n;
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

    /* renamed from: a  reason: collision with root package name */
    final bbe f25174a;

    /* renamed from: b  reason: collision with root package name */
    final dbs f25175b;

    /* renamed from: c  reason: collision with root package name */
    final cqd<bgy> f25176c;

    /* renamed from: d  reason: collision with root package name */
    private final bfe f25177d;

    public bvc(bbe bbeVar, dbs dbsVar, bfe bfeVar, cqd<bgy> cqdVar) {
        this.f25174a = bbeVar;
        this.f25175b = dbsVar;
        this.f25177d = bfeVar;
        this.f25176c = cqdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final dbt<bcf> a(final cpk cpkVar, final cov covVar, final JSONObject jSONObject) {
        final dbt dbtVar;
        final dbt dbtVar2;
        final dbt dbtVar3;
        final dbt<bgy> a2 = this.f25176c.a();
        final bfe bfeVar = this.f25177d;
        final dbt a3 = bfeVar.f24318a.a(new Callable(bfeVar, cpkVar, covVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bfd

            /* renamed from: a  reason: collision with root package name */
            private final bfe f24314a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f24315b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f24316c;

            /* renamed from: d  reason: collision with root package name */
            private final JSONObject f24317d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24314a = bfeVar;
                this.f24315b = cpkVar;
                this.f24316c = covVar;
                this.f24317d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cpk cpkVar2 = this.f24315b;
                cov covVar2 = this.f24316c;
                JSONObject jSONObject2 = this.f24317d;
                bcr bcrVar = new bcr();
                bcrVar.a(jSONObject2.optInt("template_id", -1));
                bcrVar.a(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                bcrVar.b(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                cpo cpoVar = cpkVar2.f26221a.f26209a;
                if (cpoVar.g.contains(Integer.toString(bcrVar.a()))) {
                    if (bcrVar.a() == 3) {
                        if (bcrVar.u() == null) {
                            throw new zzcwo(cqj.INTERNAL_ERROR, "No custom template id for custom template ad response.");
                        } else if (!cpoVar.h.contains(bcrVar.u())) {
                            throw new zzcwo(cqj.INTERNAL_ERROR, "Unexpected custom template id in the response.");
                        }
                    }
                    bcrVar.a(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (covVar2.H) {
                        zzr.zzkv();
                        String zzzu = zzj.zzzu();
                        StringBuilder sb = new StringBuilder(String.valueOf(zzzu).length() + 3 + String.valueOf(optString).length());
                        sb.append(zzzu);
                        sb.append(" : ");
                        sb.append(optString);
                        str = sb.toString();
                    }
                    bcrVar.a("headline", str);
                    bcrVar.a("body", jSONObject2.optString("body", null));
                    bcrVar.a("call_to_action", jSONObject2.optString("call_to_action", null));
                    bcrVar.a(Payload.TYPE_STORE, jSONObject2.optString(Payload.TYPE_STORE, null));
                    bcrVar.a("price", jSONObject2.optString("price", null));
                    bcrVar.a("advertiser", jSONObject2.optString("advertiser", null));
                    return bcrVar;
                }
                cqj cqjVar = cqj.INTERNAL_ERROR;
                int a4 = bcrVar.a();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(a4);
                throw new zzcwo(cqjVar, sb2.toString());
            }
        });
        bfi bfiVar = bfeVar.f24319b;
        final dbt<List<de>> a4 = bfiVar.a(jSONObject.optJSONArray("images"), bfiVar.g.zzdgx, bfiVar.g.zzboe);
        final dbt<de> a5 = bfeVar.f24319b.a(jSONObject, "secondary_image");
        final dbt<de> a6 = bfeVar.f24319b.a(jSONObject, "app_icon");
        final bfi bfiVar2 = bfeVar.f24319b;
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            dbtVar = dbh.a((Object) null);
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
            dbtVar = bfi.a(optJSONObject.optBoolean("require"), daj.a(bfiVar2.a(jSONArray, false, true), new cxu(bfiVar2, optJSONObject) { // from class: com.google.android.gms.internal.ads.bfj

                /* renamed from: a  reason: collision with root package name */
                private final bfi f24333a;

                /* renamed from: b  reason: collision with root package name */
                private final JSONObject f24334b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24333a = bfiVar2;
                    this.f24334b = optJSONObject;
                }

                @Override // com.google.android.gms.internal.ads.cxu
                public final Object a(Object obj) {
                    bfi bfiVar3 = this.f24333a;
                    JSONObject jSONObject2 = this.f24334b;
                    List list = (List) obj;
                    Integer num = null;
                    if (list == null || list.isEmpty()) {
                        return null;
                    }
                    String optString = jSONObject2.optString("text");
                    Integer b2 = bfi.b(jSONObject2, "bg_color");
                    Integer b3 = bfi.b(jSONObject2, "text_color");
                    int optInt = jSONObject2.optInt("text_size", -1);
                    boolean optBoolean = jSONObject2.optBoolean("allow_pub_rendering");
                    int optInt2 = jSONObject2.optInt("animation_ms", 1000);
                    int optInt3 = jSONObject2.optInt("presentation_ms", ConferenceActivity.SNACK_BAR_DURATION);
                    if (optInt > 0) {
                        num = Integer.valueOf(optInt);
                    }
                    return new dd(optString, list, b2, b3, num, optInt3 + optInt2, bfiVar3.g.zzbof, optBoolean);
                }
            }, bfiVar2.f));
        }
        bfi bfiVar3 = bfeVar.f24319b;
        JSONObject zza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (zza == null) {
            final JSONObject optJSONObject3 = jSONObject.optJSONObject("video");
            if (optJSONObject3 == null) {
                dbtVar2 = dbh.a((Object) null);
            } else if (TextUtils.isEmpty(optJSONObject3.optString("vast_xml"))) {
                zzd.zzez("Required field 'vast_xml' is missing");
                dbtVar2 = dbh.a((Object) null);
            } else {
                final bfv bfvVar = bfiVar3.h;
                dbtVar2 = bfi.a(dbh.a(daj.a(daj.a(dbh.a((Object) null), new daq(bfvVar) { // from class: com.google.android.gms.internal.ads.bga

                    /* renamed from: a  reason: collision with root package name */
                    private final bfv f24371a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24371a = bfvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        bfv bfvVar2 = this.f24371a;
                        adt a7 = bfvVar2.f24359c.a(zzvt.zzqk(), null, null);
                        zm a8 = zm.a(a7);
                        bfvVar2.a(a7);
                        a7.B().a(new afg(a8) { // from class: com.google.android.gms.internal.ads.bfz

                            /* renamed from: a  reason: collision with root package name */
                            private final zm f24367a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24367a = a8;
                            }

                            @Override // com.google.android.gms.internal.ads.afg
                            public final void a() {
                                this.f24367a.a();
                            }
                        });
                        a7.loadUrl((String) ekb.e().a(aq.bS));
                        return a8;
                    }
                }, bfvVar.f24358b), new daq(bfvVar, optJSONObject3) { // from class: com.google.android.gms.internal.ads.bfy

                    /* renamed from: a  reason: collision with root package name */
                    private final bfv f24365a;

                    /* renamed from: b  reason: collision with root package name */
                    private final JSONObject f24366b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24365a = bfvVar;
                        this.f24366b = optJSONObject3;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        final bfv bfvVar2 = this.f24365a;
                        JSONObject jSONObject2 = this.f24366b;
                        final adt adtVar = (adt) obj;
                        final zm a7 = zm.a(adtVar);
                        if (bfvVar2.f24357a.f26226c != null) {
                            adtVar.a(afh.c());
                        } else {
                            adtVar.a(afh.b());
                        }
                        adtVar.B().a(new afd(bfvVar2, adtVar, a7) { // from class: com.google.android.gms.internal.ads.bgb

                            /* renamed from: a  reason: collision with root package name */
                            private final bfv f24372a;

                            /* renamed from: b  reason: collision with root package name */
                            private final adt f24373b;

                            /* renamed from: c  reason: collision with root package name */
                            private final zm f24374c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24372a = bfvVar2;
                                this.f24373b = adtVar;
                                this.f24374c = a7;
                            }

                            @Override // com.google.android.gms.internal.ads.afd
                            public final void zzam(boolean z) {
                                bfv bfvVar3 = this.f24372a;
                                adt adtVar2 = this.f24373b;
                                zm zmVar = this.f24374c;
                                if (!(bfvVar3.f24357a.f26225b == null || adtVar2.b() == null)) {
                                    adtVar2.b().a(bfvVar3.f24357a.f26225b);
                                }
                                zmVar.a();
                            }
                        });
                        adtVar.b("google.afma.nativeAds.renderVideo", jSONObject2);
                        return a7;
                    }
                }, bfvVar.f24358b), ((Integer) ekb.e().a(aq.bU)).intValue(), TimeUnit.SECONDS, bfiVar3.i));
            }
        } else {
            final bfv bfvVar2 = bfiVar3.h;
            final String optString = zza.optString("base_url");
            final String optString2 = zza.optString(AdType.HTML);
            final dbt a7 = daj.a(dbh.a((Object) null), new daq(bfvVar2, optString, optString2) { // from class: com.google.android.gms.internal.ads.bfx

                /* renamed from: a  reason: collision with root package name */
                private final bfv f24362a;

                /* renamed from: b  reason: collision with root package name */
                private final String f24363b;

                /* renamed from: c  reason: collision with root package name */
                private final String f24364c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24362a = bfvVar2;
                    this.f24363b = optString;
                    this.f24364c = optString2;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    final bfv bfvVar3 = this.f24362a;
                    String str = this.f24363b;
                    String str2 = this.f24364c;
                    final adt a8 = bfvVar3.f24359c.a(zzvt.zzqk(), null, null);
                    final zm a9 = zm.a(a8);
                    bfvVar3.a(a8);
                    if (bfvVar3.f24357a.f26226c != null) {
                        a8.a(afh.c());
                    } else {
                        a8.a(afh.b());
                    }
                    a8.B().a(new afd(bfvVar3, a8, a9) { // from class: com.google.android.gms.internal.ads.bgc

                        /* renamed from: a  reason: collision with root package name */
                        private final bfv f24375a;

                        /* renamed from: b  reason: collision with root package name */
                        private final adt f24376b;

                        /* renamed from: c  reason: collision with root package name */
                        private final zm f24377c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24375a = bfvVar3;
                            this.f24376b = a8;
                            this.f24377c = a9;
                        }

                        @Override // com.google.android.gms.internal.ads.afd
                        public final void zzam(boolean z) {
                            bfv bfvVar4 = this.f24375a;
                            adt adtVar = this.f24376b;
                            zm zmVar = this.f24377c;
                            if (z) {
                                if (!(bfvVar4.f24357a.f26225b == null || adtVar.b() == null)) {
                                    adtVar.b().a(bfvVar4.f24357a.f26225b);
                                }
                                zmVar.a();
                                return;
                            }
                            zmVar.setException(new zzcwo(cqj.INTERNAL_ERROR, "Instream video Web View failed to load."));
                        }
                    });
                    a8.a(str, str2, (String) null);
                    return a9;
                }
            }, bfvVar2.f24358b);
            dbtVar2 = daj.a(a7, new daq(a7) { // from class: com.google.android.gms.internal.ads.bfl

                /* renamed from: a  reason: collision with root package name */
                private final dbt f24339a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24339a = a7;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    dbt dbtVar4 = this.f24339a;
                    adt adtVar = (adt) obj;
                    if (adtVar != null && adtVar.b() != null) {
                        return dbtVar4;
                    }
                    throw new zzcwo(cqj.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
                }
            }, zd.f);
        }
        final bfi bfiVar4 = bfeVar.f24319b;
        if (!jSONObject.optBoolean("enable_omid")) {
            dbtVar3 = dbh.a((Object) null);
        } else {
            JSONObject optJSONObject4 = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject4 == null) {
                dbtVar3 = dbh.a((Object) null);
            } else {
                final String optString3 = optJSONObject4.optString("omid_html");
                dbtVar3 = TextUtils.isEmpty(optString3) ? dbh.a((Object) null) : daj.a(dbh.a((Object) null), new daq(bfiVar4, optString3) { // from class: com.google.android.gms.internal.ads.bfm

                    /* renamed from: a  reason: collision with root package name */
                    private final bfi f24340a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f24341b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24340a = bfiVar4;
                        this.f24341b = optString3;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        bfi bfiVar5 = this.f24340a;
                        String str = this.f24341b;
                        zzr.zzkw();
                        adt a8 = aeb.a(bfiVar5.f24329a, afh.a(), "native-omid", false, false, bfiVar5.f24330b, null, bfiVar5.f24331c, null, bfiVar5.f24332d, bfiVar5.e, null, null);
                        final zm a9 = zm.a(a8);
                        a8.B().a(new afd(a9) { // from class: com.google.android.gms.internal.ads.bfq

                            /* renamed from: a  reason: collision with root package name */
                            private final zm f24348a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24348a = a9;
                            }

                            @Override // com.google.android.gms.internal.ads.afd
                            public final void zzam(boolean z) {
                                this.f24348a.a();
                            }
                        });
                        a8.loadData(str, Mimetypes.MIMETYPE_HTML, "UTF-8");
                        return a9;
                    }
                }, zd.e);
            }
        }
        final dbt<List<bft>> a8 = bfeVar.f24320c.a(jSONObject, "custom_assets");
        final dbt a9 = new dbm(false, cyz.a((Object[]) new dbt[]{a3, a4, a5, a6, dbtVar, dbtVar2, dbtVar3, a8}), null).a(new Callable(bfeVar, a3, a4, a6, a5, dbtVar, jSONObject, dbtVar2, dbtVar3, a8) { // from class: com.google.android.gms.internal.ads.bfg

            /* renamed from: a  reason: collision with root package name */
            private final bfe f24324a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f24325b;

            /* renamed from: c  reason: collision with root package name */
            private final dbt f24326c;

            /* renamed from: d  reason: collision with root package name */
            private final dbt f24327d;
            private final dbt e;
            private final dbt f;
            private final JSONObject g;
            private final dbt h;
            private final dbt i;
            private final dbt j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24324a = bfeVar;
                this.f24325b = a3;
                this.f24326c = a4;
                this.f24327d = a6;
                this.e = a5;
                this.f = dbtVar;
                this.g = jSONObject;
                this.h = dbtVar2;
                this.i = dbtVar3;
                this.j = a8;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cyz cyzVar;
                JSONObject optJSONObject5;
                dbt dbtVar4 = this.f24325b;
                dbt dbtVar5 = this.f24326c;
                dbt dbtVar6 = this.f24327d;
                dbt dbtVar7 = this.e;
                dbt dbtVar8 = this.f;
                JSONObject jSONObject2 = this.g;
                dbt dbtVar9 = this.h;
                dbt dbtVar10 = this.i;
                dbt dbtVar11 = this.j;
                bcr bcrVar = (bcr) dbtVar4.get();
                bcrVar.a((List) dbtVar5.get());
                bcrVar.a((dr) dbtVar6.get());
                bcrVar.b((dr) dbtVar7.get());
                bcrVar.a((dj) dbtVar8.get());
                JSONObject optJSONObject6 = jSONObject2.optJSONObject(EventConstants.MUTE);
                if (optJSONObject6 == null) {
                    cyzVar = cyz.g();
                } else {
                    JSONArray optJSONArray2 = optJSONObject6.optJSONArray("reasons");
                    if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                        cyzVar = cyz.g();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            ene a10 = bfi.a(optJSONArray2.optJSONObject(i));
                            if (a10 != null) {
                                arrayList.add(a10);
                            }
                        }
                        cyzVar = cyz.a((Collection) arrayList);
                    }
                }
                bcrVar.b(cyzVar);
                JSONObject optJSONObject7 = jSONObject2.optJSONObject(EventConstants.MUTE);
                ene eneVar = null;
                if (!(optJSONObject7 == null || (optJSONObject5 = optJSONObject7.optJSONObject("default_reason")) == null)) {
                    eneVar = bfi.a(optJSONObject5);
                }
                bcrVar.a(eneVar);
                adt adtVar = (adt) dbtVar9.get();
                if (adtVar != null) {
                    bcrVar.a(adtVar);
                    bcrVar.a(adtVar.s());
                    bcrVar.a(adtVar.b());
                }
                adt adtVar2 = (adt) dbtVar10.get();
                if (adtVar2 != null) {
                    bcrVar.b(adtVar2);
                }
                for (bft bftVar : (List) dbtVar11.get()) {
                    int i2 = bftVar.f24352a;
                    if (i2 == 1) {
                        bcrVar.a(bftVar.f24353b, bftVar.f24354c);
                    } else if (i2 == 2) {
                        bcrVar.a(bftVar.f24353b, bftVar.f24355d);
                    }
                }
                return bcrVar;
            }
        }, bfeVar.f24318a);
        return dbh.a(a2, a9).a(new Callable(this, a9, a2, cpkVar, covVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bvf

            /* renamed from: a  reason: collision with root package name */
            private final bvc f25183a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f25184b;

            /* renamed from: c  reason: collision with root package name */
            private final dbt f25185c;

            /* renamed from: d  reason: collision with root package name */
            private final cpk f25186d;
            private final cov e;
            private final JSONObject f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25183a = this;
                this.f25184b = a9;
                this.f25185c = a2;
                this.f25186d = cpkVar;
                this.e = covVar;
                this.f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bvc bvcVar = this.f25183a;
                dbt dbtVar4 = this.f25184b;
                dbt dbtVar5 = this.f25185c;
                cpk cpkVar2 = this.f25186d;
                cov covVar2 = this.e;
                JSONObject jSONObject2 = this.f;
                bcr bcrVar = (bcr) dbtVar4.get();
                bgy bgyVar = (bgy) dbtVar5.get();
                bct a10 = bvcVar.f25174a.a(new aof(cpkVar2, covVar2, null), new bde(bcrVar), new bbs(jSONObject2, bgyVar));
                bgz i = a10.i();
                if (i.f24430a != null) {
                    i.f24431b.a("/nativeAdCustomClick", i);
                }
                bhk j = a10.j();
                bhh bhhVar = bgyVar.f24426a;
                arj arjVar = j.f24452a;
                ate ateVar = j.f24454c;
                atj atjVar = j.f24455d;
                avz avzVar = j.e;
                asp aspVar = j.f24453b;
                aspVar.getClass();
                bhhVar.a(arjVar, ateVar, atjVar, avzVar, bhj.a(aspVar));
                bgyVar.a(j.f, j.g);
                bgf k = a10.k();
                adt v = bcrVar.v();
                if (v != null) {
                    k.f24382c.a(v.s());
                    k.f24382c.a(new eeg(v) { // from class: com.google.android.gms.internal.ads.bge

                        /* renamed from: a  reason: collision with root package name */
                        private final adt f24379a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24379a = v;
                        }

                        @Override // com.google.android.gms.internal.ads.eeg
                        public final void a(eeh eehVar) {
                            this.f24379a.B().a(eehVar.f27729d.left, eehVar.f27729d.top);
                        }
                    }, k.f24380a);
                    k.f24382c.a(new eeg(v) { // from class: com.google.android.gms.internal.ads.bgh

                        /* renamed from: a  reason: collision with root package name */
                        private final adt f24384a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24384a = v;
                        }

                        @Override // com.google.android.gms.internal.ads.eeg
                        public final void a(eeh eehVar) {
                            adt adtVar = this.f24384a;
                            HashMap hashMap = new HashMap();
                            hashMap.put("isVisible", eehVar.j ? "1" : "0");
                            adtVar.a("onAdVisibilityChanged", hashMap);
                        }
                    }, k.f24380a);
                    k.f24382c.a(k.f24381b, k.f24380a);
                    k.f24381b.f23485a = v;
                    v.a("/trackActiveViewUnit", new hi(k) { // from class: com.google.android.gms.internal.ads.bgg

                        /* renamed from: a  reason: collision with root package name */
                        private final bgf f24383a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24383a = k;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map) {
                            akh akhVar = this.f24383a.f24381b;
                            akhVar.f23486b = true;
                            akhVar.a();
                        }
                    });
                    v.a("/untrackActiveViewUnit", new hi(k) { // from class: com.google.android.gms.internal.ads.bgj

                        /* renamed from: a  reason: collision with root package name */
                        private final bgf f24388a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24388a = k;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map) {
                            this.f24388a.f24381b.f23486b = false;
                        }
                    });
                }
                return a10.h();
            }
        }, this.f25175b);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26206c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<List<dbt<bcf>>> b(final cpk cpkVar, final cov covVar) {
        return daj.a(daj.a(this.f25176c.a(), new daq(this, covVar) { // from class: com.google.android.gms.internal.ads.bvb

            /* renamed from: a  reason: collision with root package name */
            private final bvc f25172a;

            /* renamed from: b  reason: collision with root package name */
            private final cov f25173b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25172a = this;
                this.f25173b = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bvc bvcVar = this.f25172a;
                cov covVar2 = this.f25173b;
                final bgy bgyVar = (bgy) obj;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isNonagon", true);
                if (((Boolean) ekb.e().a(aq.fb)).booleanValue() && n.l()) {
                    jSONObject.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Payload.RESPONSE, covVar2.r.f26206c);
                jSONObject2.put("sdk_params", jSONObject);
                return daj.a(bgyVar.a("google.afma.nativeAds.preProcessJson", jSONObject2), new daq(bvcVar, bgyVar) { // from class: com.google.android.gms.internal.ads.bvd

                    /* renamed from: a  reason: collision with root package name */
                    private final bvc f25178a;

                    /* renamed from: b  reason: collision with root package name */
                    private final bgy f25179b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25178a = bvcVar;
                        this.f25179b = bgyVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj2) {
                        JSONObject jSONObject3 = (JSONObject) obj2;
                        this.f25178a.f25176c.a(dbh.a(this.f25179b));
                        if (jSONObject3.optBoolean("success")) {
                            return dbh.a(jSONObject3.getJSONObject("json").getJSONArray("ads"));
                        }
                        throw new zzamh("process json failed");
                    }
                }, bvcVar.f25175b);
            }
        }, this.f25175b), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bve

            /* renamed from: a  reason: collision with root package name */
            private final bvc f25180a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25181b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25182c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25180a = this;
                this.f25181b = cpkVar;
                this.f25182c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bvc bvcVar = this.f25180a;
                cpk cpkVar2 = this.f25181b;
                cov covVar2 = this.f25182c;
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    return dbh.a((Throwable) new zzcnp(cqj.NO_FILL));
                }
                if (cpkVar2.f26221a.f26209a.k <= 1) {
                    return daj.a(bvcVar.a(cpkVar2, covVar2, jSONArray.getJSONObject(0)), bvg.f25187a, bvcVar.f25175b);
                }
                int length = jSONArray.length();
                bvcVar.f25176c.a(Math.min(length, cpkVar2.f26221a.f26209a.k));
                ArrayList arrayList = new ArrayList(cpkVar2.f26221a.f26209a.k);
                for (int i = 0; i < cpkVar2.f26221a.f26209a.k; i++) {
                    if (i < length) {
                        arrayList.add(bvcVar.a(cpkVar2, covVar2, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(dbh.a((Throwable) new zzcnp(cqj.NO_FILL)));
                    }
                }
                return dbh.a(arrayList);
            }
        }, this.f25175b);
    }
}
