package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpa.class */
public final class bpa implements box<aym> {

    /* renamed from: a */
    private final axo f11714a;

    /* renamed from: b */
    private final crs f11715b;

    /* renamed from: c */
    private final baz f11716c;

    /* renamed from: d */
    private final chr<bcy> f11717d;

    public bpa(axo axoVar, crs crsVar, baz bazVar, chr<bcy> chrVar) {
        this.f11714a = axoVar;
        this.f11715b = crsVar;
        this.f11716c = bazVar;
        this.f11717d = chrVar;
    }

    /* renamed from: a */
    private final crt<aym> m11733a(chd chdVar, cgr cgrVar, JSONObject jSONObject) {
        crt<bcy> m11296a = this.f11717d.m11296a();
        crt<ayx> m12133a = this.f11716c.m12133a(chdVar, cgrVar, jSONObject);
        return crg.m10772b(m11296a, m12133a).m10770a(new Callable(this, m12133a, m11296a, chdVar, cgrVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bpd

            /* renamed from: a */
            private final bpa f11723a;

            /* renamed from: b */
            private final crt f11724b;

            /* renamed from: c */
            private final crt f11725c;

            /* renamed from: d */
            private final chd f11726d;

            /* renamed from: e */
            private final cgr f11727e;

            /* renamed from: f */
            private final JSONObject f11728f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11723a = this;
                this.f11724b = m12133a;
                this.f11725c = m11296a;
                this.f11726d = chdVar;
                this.f11727e = cgrVar;
                this.f11728f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11723a.m11732a(this.f11724b, this.f11725c, this.f11726d, this.f11727e, this.f11728f);
            }
        }, this.f11715b);
    }

    /* renamed from: a */
    public final /* synthetic */ aym m11732a(crt crtVar, crt crtVar2, chd chdVar, cgr cgrVar, JSONObject jSONObject) {
        ayx ayxVar = (ayx) crtVar.get();
        bcy bcyVar = (bcy) crtVar2.get();
        ayz mo12347a = this.f11714a.mo12347a(new amy(chdVar, cgrVar, null), new azl(ayxVar), new aya(jSONObject, bcyVar));
        mo12347a.mo12230i().m12093a();
        mo12347a.mo12229j().m12078a(bcyVar);
        mo12347a.mo12228k().m12107a(ayxVar.m12235v());
        return mo12347a.mo12287h();
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11736a(bcy bcyVar, JSONObject jSONObject) {
        this.f11717d.m11294a(crg.m10778a(bcyVar));
        if (!jSONObject.optBoolean("success")) {
            throw new zzake("process json failed");
        }
        return crg.m10778a(jSONObject.getJSONObject("json").getJSONArray("ads"));
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11735a(cgr cgrVar, bcy bcyVar) {
        JSONObject m6855a = C3614wy.m6855a("isNonagon", (Object) true);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", cgrVar.f12994p.f13014c);
        jSONObject.put("sdk_params", m6855a);
        return crg.m10782a(bcyVar.m12086a("google.afma.nativeAds.preProcessJson", jSONObject), new cqt(this, bcyVar) { // from class: com.google.android.gms.internal.ads.bpb

            /* renamed from: a */
            private final bpa f11718a;

            /* renamed from: b */
            private final bcy f11719b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11718a = this;
                this.f11719b = bcyVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11718a.m11736a(this.f11719b, (JSONObject) obj);
            }
        }, this.f11715b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11734a(chd chdVar, cgr cgrVar, JSONArray jSONArray) {
        crt m10783a;
        if (jSONArray.length() == 0) {
            m10783a = crg.m10777a((Throwable) new zzcjk(3));
        } else if (chdVar.f13034a.f13017a.f13047k > 1) {
            int length = jSONArray.length();
            this.f11717d.m11295a(Math.min(length, chdVar.f13034a.f13017a.f13047k));
            ArrayList arrayList = new ArrayList(chdVar.f13034a.f13017a.f13047k);
            for (int i = 0; i < chdVar.f13034a.f13017a.f13047k; i++) {
                if (i < length) {
                    arrayList.add(m11733a(chdVar, cgrVar, jSONArray.getJSONObject(i)));
                } else {
                    arrayList.add(crg.m10777a((Throwable) new zzcjk(3)));
                }
            }
            m10783a = crg.m10778a(arrayList);
        } else {
            m10783a = crg.m10783a(m11733a(chdVar, cgrVar, jSONArray.getJSONObject(0)), bpe.f11729a, this.f11715b);
        }
        return m10783a;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (cgrVar.f12994p == null || cgrVar.f12994p.f13014c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<List<crt<aym>>> mo11688b(chd chdVar, cgr cgrVar) {
        return crg.m10782a(crg.m10782a(this.f11717d.m11296a(), new cqt(this, cgrVar) { // from class: com.google.android.gms.internal.ads.boz

            /* renamed from: a */
            private final bpa f11712a;

            /* renamed from: b */
            private final cgr f11713b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11712a = this;
                this.f11713b = cgrVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11712a.m11735a(this.f11713b, (bcy) obj);
            }
        }, this.f11715b), new cqt(this, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.bpc

            /* renamed from: a */
            private final bpa f11720a;

            /* renamed from: b */
            private final chd f11721b;

            /* renamed from: c */
            private final cgr f11722c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11720a = this;
                this.f11721b = chdVar;
                this.f11722c = cgrVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11720a.m11734a(this.f11721b, this.f11722c, (JSONArray) obj);
            }
        }, this.f11715b);
    }
}
