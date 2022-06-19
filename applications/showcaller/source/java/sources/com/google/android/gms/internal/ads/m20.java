package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.net.URISyntaxException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m20.class */
public final class m20 {

    /* renamed from: a */
    public static final n20<wn0> f26383a = q10.f28277a;

    /* renamed from: b */
    public static final n20<wn0> f26384b = r10.f28730a;

    /* renamed from: c */
    public static final n20<wn0> f26385c = s10.f29362a;

    /* renamed from: d */
    public static final n20<wn0> f26386d = new e20();

    /* renamed from: e */
    public static final n20<wn0> f26387e = new f20();

    /* renamed from: f */
    public static final n20<wn0> f26388f = y10.f32387a;

    /* renamed from: g */
    public static final n20<Object> f26389g = new g20();

    /* renamed from: h */
    public static final n20<wn0> f26390h = new h20();

    /* renamed from: i */
    public static final n20<wn0> f26391i = z10.f32761a;

    /* renamed from: j */
    public static final n20<wn0> f26392j = new i20();

    /* renamed from: k */
    public static final n20<wn0> f26393k = new j20();

    /* renamed from: l */
    public static final n20<kk0> f26394l = new xl0();

    /* renamed from: m */
    public static final n20<kk0> f26395m = new yl0();

    /* renamed from: n */
    public static final n20<wn0> f26396n = new p10();

    /* renamed from: o */
    public static final c30 f26397o = new c30();

    /* renamed from: p */
    public static final n20<wn0> f26398p = new k20();

    /* renamed from: q */
    public static final n20<wn0> f26399q = new l20();

    /* renamed from: r */
    public static final n20<wn0> f26400r = new a20();

    /* renamed from: s */
    public static final n20<wn0> f26401s = new b20();

    /* renamed from: t */
    public static final n20<wn0> f26402t = new c20();

    /* renamed from: a */
    public static r03<String> m13375a(wn0 wn0Var, String str) {
        Uri uri;
        Uri parse = Uri.parse(str);
        try {
            C7016u mo7966A = wn0Var.mo7966A();
            uri = parse;
            if (mo7966A != null) {
                uri = parse;
                if (mo7966A.m10451a(parse)) {
                    uri = mo7966A.m10447e(parse, wn0Var.getContext(), wn0Var.mo7960D(), wn0Var.mo7908g());
                }
            }
        } catch (zzaat e) {
            ei0.m15464f(str.length() != 0 ? "Unable to append parameter to URL: ".concat(str) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        String m12914b = ng0.m12914b(uri, wn0Var.getContext());
        long longValue = C7161xx.f32335e.m12799e().longValue();
        if (longValue <= 0 || longValue > 213806100) {
            return k03.m14003a(m12914b);
        }
        a03 m16718E = a03.m16718E(wn0Var.mo7926X());
        nu2 nu2Var = t10.f29773a;
        s03 s03Var = qi0.f28500f;
        return k03.m13998f(k03.m13994j(k03.m13998f(m16718E, Throwable.class, nu2Var, s03Var), new nu2(m12914b) { // from class: com.google.android.gms.internal.ads.u10

            /* renamed from: a */
            private final String f30465a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30465a = m12914b;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                String str2;
                String str3 = this.f30465a;
                String str4 = (String) obj;
                n20<wn0> n20Var = m20.f26383a;
                if (str4 == null) {
                    str2 = str3;
                } else {
                    if (C7161xx.f32336f.m12799e().booleanValue()) {
                        String host = Uri.parse(str3).getHost();
                        int i = 0;
                        while (true) {
                            str2 = str3;
                            if (i < 3) {
                                if (host.endsWith(new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"}[i])) {
                                    break;
                                }
                                i++;
                            } else {
                                break;
                            }
                        }
                    }
                    String m12799e = C7161xx.f32331a.m12799e();
                    String m12799e2 = C7161xx.f32332b.m12799e();
                    String str5 = str3;
                    if (!TextUtils.isEmpty(m12799e)) {
                        str5 = str3.replace(m12799e, str4);
                    }
                    str2 = str5;
                    if (!TextUtils.isEmpty(m12799e2)) {
                        Uri parse2 = Uri.parse(str5);
                        str2 = str5;
                        if (TextUtils.isEmpty(parse2.getQueryParameter(m12799e2))) {
                            return parse2.buildUpon().appendQueryParameter(m12799e2, str4).toString();
                        }
                    }
                }
                return str2;
            }
        }, s03Var), Throwable.class, new nu2(m12914b) { // from class: com.google.android.gms.internal.ads.w10

            /* renamed from: a */
            private final String f31427a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31427a = m12914b;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                String str2 = this.f31427a;
                Throwable th = (Throwable) obj;
                n20<wn0> n20Var = m20.f26383a;
                if (C7161xx.f32341k.m12799e().booleanValue()) {
                    C5667s.m18156h().m12235k(th, "prepareClickUrl.attestation2");
                }
                return str2;
            }
        }, s03Var);
    }

    /* renamed from: b */
    public static n20<wn0> m13374b(qa1 qa1Var) {
        return new n20(qa1Var) { // from class: com.google.android.gms.internal.ads.x10

            /* renamed from: a */
            private final qa1 f31876a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31876a = qa1Var;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                wn0 wn0Var = (wn0) obj;
                m20.m13373c(map, this.f31876a);
                String str = (String) map.get("u");
                if (str == null) {
                    ei0.m15464f("URL missing from click GMSG.");
                } else {
                    k03.m13988p(m20.m13375a(wn0Var, str), new d20(wn0Var), qi0.f28495a);
                }
            }
        };
    }

    /* renamed from: c */
    public static void m13373c(Map<String, String> map, qa1 qa1Var) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25651a7)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals("1") || qa1Var == null) {
            return;
        }
        qa1Var.mo7917b();
    }

    /* renamed from: d */
    public static final /* synthetic */ void m13372d(xo0 xo0Var, Map map) {
        PackageManager packageManager = xo0Var.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                ei0.m15466d(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                                intent = null;
                            }
                        }
                        boolean z = true;
                        Intent intent2 = intent;
                        if (intent == null) {
                            Intent intent3 = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent3.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent3.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent3.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent3.setPackage(optString5);
                            }
                            intent2 = intent3;
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                intent2 = intent3;
                                if (split.length == 2) {
                                    intent3.setComponent(new ComponentName(split[0], split[1]));
                                    intent2 = intent3;
                                }
                            }
                        }
                        if (packageManager.resolveActivity(intent2, 65536) == null) {
                            z = false;
                        }
                        try {
                            jSONObject.put(optString, z);
                        } catch (JSONException e2) {
                            ei0.m15466d("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        ei0.m15466d("Error parsing the intent data.", e3);
                    }
                }
                ((s40) xo0Var).mo7920a("openableIntents", jSONObject);
            } catch (JSONException e4) {
                ((s40) xo0Var).mo7920a("openableIntents", new JSONObject());
            }
        } catch (JSONException e5) {
            ((s40) xo0Var).mo7920a("openableIntents", new JSONObject());
        }
    }
}
