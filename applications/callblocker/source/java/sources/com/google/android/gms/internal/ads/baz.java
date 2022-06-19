package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/baz.class */
public final class baz {

    /* renamed from: a */
    private final crs f10828a;

    /* renamed from: b */
    private final bbe f10829b;

    /* renamed from: c */
    private final bbo f10830c;

    public baz(crs crsVar, bbe bbeVar, bbo bboVar) {
        this.f10828a = crsVar;
        this.f10829b = bbeVar;
        this.f10830c = bboVar;
    }

    /* renamed from: a */
    public final crt<ayx> m12133a(chd chdVar, cgr cgrVar, JSONObject jSONObject) {
        crt m10778a;
        crt mo10767a = this.f10828a.mo10767a(new Callable(this, chdVar, cgrVar, jSONObject) { // from class: com.google.android.gms.internal.ads.bbc

            /* renamed from: a */
            private final baz f10844a;

            /* renamed from: b */
            private final chd f10845b;

            /* renamed from: c */
            private final cgr f10846c;

            /* renamed from: d */
            private final JSONObject f10847d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10844a = this;
                this.f10845b = chdVar;
                this.f10846c = cgrVar;
                this.f10847d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                baz bazVar = this.f10844a;
                chd chdVar2 = this.f10845b;
                cgr cgrVar2 = this.f10846c;
                JSONObject jSONObject2 = this.f10847d;
                ayx ayxVar = new ayx();
                ayxVar.m12280a(jSONObject2.optInt("template_id", -1));
                ayxVar.m12267a(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                ayxVar.m12257b(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                chh chhVar = chdVar2.f13034a.f13017a;
                if (!chhVar.f13043g.contains(Integer.toString(ayxVar.m12283a()))) {
                    throw new zzcqm(new StringBuilder(32).append("Invalid template ID: ").append(ayxVar.m12283a()).toString(), 0);
                }
                if (ayxVar.m12283a() == 3) {
                    if (ayxVar.m12236u() == null) {
                        throw new zzcqm("No custom template id for custom template ad response.", 0);
                    }
                    if (!chhVar.f13044h.contains(ayxVar.m12236u())) {
                        throw new zzcqm("Unexpected custom template id in the response.", 0);
                    }
                }
                ayxVar.m12282a(jSONObject2.optDouble("rating", -1.0d));
                String optString = jSONObject2.optString("headline", null);
                String str = optString;
                if (cgrVar2.f12959E) {
                    C2341q.m14744c();
                    String m6969c = C3567ve.m6969c();
                    str = new StringBuilder(String.valueOf(m6969c).length() + 3 + String.valueOf(optString).length()).append(m6969c).append(" : ").append(optString).toString();
                }
                ayxVar.m12265a("headline", str);
                ayxVar.m12265a("body", jSONObject2.optString("body", null));
                ayxVar.m12265a("call_to_action", jSONObject2.optString("call_to_action", null));
                ayxVar.m12265a("store", jSONObject2.optString("store", null));
                ayxVar.m12265a("price", jSONObject2.optString("price", null));
                ayxVar.m12265a("advertiser", jSONObject2.optString("advertiser", null));
                return ayxVar;
            }
        });
        crt<List<BinderC2831bh>> m12121b = this.f10829b.m12121b(jSONObject, "images");
        crt<BinderC2831bh> m12126a = this.f10829b.m12126a(jSONObject, "secondary_image");
        crt<BinderC2831bh> m12126a2 = this.f10829b.m12126a(jSONObject, "app_icon");
        crt<BinderC2830bg> m12119c = this.f10829b.m12119c(jSONObject, "attribution");
        crt<act> m12120c = this.f10829b.m12120c(jSONObject);
        bbe bbeVar = this.f10829b;
        if (!jSONObject.optBoolean("enable_omid")) {
            m10778a = crg.m10778a((Object) null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                m10778a = crg.m10778a((Object) null);
            } else {
                String optString = optJSONObject.optString("omid_html");
                m10778a = TextUtils.isEmpty(optString) ? crg.m10778a((Object) null) : crg.m10782a(crg.m10778a((Object) null), new cqt(bbeVar, optString) { // from class: com.google.android.gms.internal.ads.bbi

                    /* renamed from: a */
                    private final bbe f10874a;

                    /* renamed from: b */
                    private final String f10875b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10874a = bbeVar;
                        this.f10875b = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.cqt
                    /* renamed from: a */
                    public final crt mo7012a(Object obj) {
                        return this.f10874a.m12129a(this.f10875b, obj);
                    }
                }, C3650yg.f17646e);
            }
        }
        crt<List<bbt>> m12116a = this.f10830c.m12116a(jSONObject, "custom_assets");
        return crg.m10775a(mo10767a, m12121b, m12126a, m12126a2, m12119c, m12120c, m10778a, m12116a).m10770a(new Callable(this, mo10767a, m12121b, m12126a2, m12126a, m12119c, jSONObject, m12120c, m10778a, m12116a) { // from class: com.google.android.gms.internal.ads.bbb

            /* renamed from: a */
            private final baz f10834a;

            /* renamed from: b */
            private final crt f10835b;

            /* renamed from: c */
            private final crt f10836c;

            /* renamed from: d */
            private final crt f10837d;

            /* renamed from: e */
            private final crt f10838e;

            /* renamed from: f */
            private final crt f10839f;

            /* renamed from: g */
            private final JSONObject f10840g;

            /* renamed from: h */
            private final crt f10841h;

            /* renamed from: i */
            private final crt f10842i;

            /* renamed from: j */
            private final crt f10843j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10834a = this;
                this.f10835b = mo10767a;
                this.f10836c = m12121b;
                this.f10837d = m12126a2;
                this.f10838e = m12126a;
                this.f10839f = m12119c;
                this.f10840g = jSONObject;
                this.f10841h = m12120c;
                this.f10842i = m10778a;
                this.f10843j = m12116a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                baz bazVar = this.f10834a;
                crt crtVar2 = this.f10835b;
                crt crtVar3 = this.f10836c;
                crt crtVar4 = this.f10837d;
                crt crtVar5 = this.f10838e;
                crt crtVar6 = this.f10839f;
                JSONObject jSONObject2 = this.f10840g;
                crt crtVar7 = this.f10841h;
                crt crtVar8 = this.f10842i;
                crt crtVar9 = this.f10843j;
                ayx ayxVar = (ayx) crtVar2.get();
                ayxVar.m12264a((List) crtVar3.get());
                ayxVar.m12275a((AbstractC2844bu) crtVar4.get());
                ayxVar.m12260b((AbstractC2844bu) crtVar5.get());
                ayxVar.m12276a((AbstractC2837bn) crtVar6.get());
                ayxVar.m12256b(bbe.m12127a(jSONObject2));
                ayxVar.m12271a(bbe.m12122b(jSONObject2));
                act actVar = (act) crtVar7.get();
                if (actVar != null) {
                    ayxVar.m12277a(actVar);
                    ayxVar.m12279a(actVar.getView());
                    ayxVar.m12274a(actVar.mo13448d());
                }
                act actVar2 = (act) crtVar8.get();
                if (actVar2 != null) {
                    ayxVar.m12261b(actVar2);
                }
                for (bbt bbtVar : (List) crtVar9.get()) {
                    switch (bbtVar.f10898a) {
                        case 1:
                            ayxVar.m12265a(bbtVar.f10899b, bbtVar.f10900c);
                            break;
                        case 2:
                            ayxVar.m12266a(bbtVar.f10899b, bbtVar.f10901d);
                            break;
                    }
                }
                return ayxVar;
            }
        }, this.f10828a);
    }
}
