package com.flurry.sdk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.flurry.sdk.C2890bt;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.bs */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bs.class */
public final class C2889bs {

    /* renamed from: a */
    public static final String f4321a = "bs";

    /* renamed from: b */
    public static HashMap<String, Integer> f4322b;

    static {
        HashMap<String, Integer> hashMap = new HashMap<>(15);
        f4322b = hashMap;
        hashMap.put("stream", 1);
        f4322b.put("pencil", 2);
        f4322b.put("expandable", 3);
        f4322b.put("pencilV2", 4);
        f4322b.put("fullpage", 5);
        f4322b.put("expandableAvatar", 10);
        f4322b.put("pencilAvatar", 11);
        f4322b.put("card", 6);
        f4322b.put("fullCard", 7);
        f4322b.put("cardExpandableAvatar", 12);
        f4322b.put("cardPencilAvatar", 13);
        f4322b.put("sponsoredMailMessageAvatar", 14);
        f4322b.put("lrec", 15);
        f4322b.put("vibevideo", 16);
        f4322b.put("sponsoredMoments", 17);
    }

    /* renamed from: a */
    public static C2887bq m33464a(C3466lp lpVar) {
        String a;
        if (lpVar == null || (a = lpVar.m32416a()) == null || a.length() <= 0) {
            return null;
        }
        try {
            return new C2887bq(new URL(a), lpVar.f5955a.f4518d, lpVar.f5955a.f4519e);
        } catch (MalformedURLException e) {
            C3356jq.m32609b(f4321a, "Parsing image failed.");
            return null;
        }
    }

    /* renamed from: a */
    public static C2890bt.C2893b m33463a(AbstractC3469lr lrVar, C3466lp lpVar) {
        C2890bt.C2893b bVar;
        String a;
        String str;
        String[] strArr;
        String str2;
        if (!(lpVar == null || (a = lpVar.m32416a()) == null || a.length() <= 0)) {
            try {
                URL url = new URL(a);
                int i = lpVar.f5955a.f4518d;
                int i2 = lpVar.f5955a.f4519e;
                Map<String, String> map = lpVar.f5955a.f4521g;
                String str3 = map.get("VIDEO_START");
                String str4 = map.get("VIDEO_VIEW");
                String str5 = map.get("VIDEO_QUARTILE_25");
                String str6 = map.get("VIDEO_QUARTILE_50");
                String str7 = map.get("VIDEO_QUARTILE_75");
                String str8 = map.get("VIDEO_QUARTILE_100");
                boolean parseBoolean = Boolean.parseBoolean(map.get("autoloop"));
                int d = ((int) lrVar.mo32404d()) / 1000;
                int e = lrVar.mo32401e();
                C3466lp a2 = lrVar.mo32411a("secPortraitImage");
                C3466lp a3 = lrVar.mo32411a("secHqImage");
                String a4 = a2 != null ? a2.m32416a() : a3 != null ? a3.m32416a() : null;
                URL url2 = (TextUtils.isEmpty(a4) || TextUtils.isEmpty(a4)) ? null : new URL(a4);
                String str9 = "";
                C3466lp a5 = lrVar.mo32411a("callToAction");
                if (a5 != null) {
                    str9 = a5.m32416a();
                }
                C3466lp a6 = lrVar.mo32411a("videoEndCard");
                if (a6 != null) {
                    str = a6.m32416a();
                    if (a6.f5955a.f4521g == null || !a6.f5955a.f4521g.containsKey("blackListRegex") || (str2 = a6.f5955a.f4521g.get("blackListRegex")) == null) {
                        strArr = null;
                    } else {
                        try {
                            JSONArray jSONArray = new JSONArray(str2);
                            String[] strArr2 = new String[jSONArray.length()];
                            int i3 = 0;
                            while (true) {
                                strArr = strArr2;
                                try {
                                    if (i3 >= strArr2.length) {
                                        break;
                                    }
                                    strArr2[i3] = jSONArray.getString(i3);
                                    i3++;
                                } catch (JSONException e2) {
                                    strArr = strArr2;
                                }
                            }
                        } catch (JSONException e3) {
                            strArr = null;
                        }
                    }
                } else {
                    str = null;
                    strArr = null;
                }
                bVar = new C2890bt.C2893b(url, i, i2, str3, str4, str5, str6, str7, str8, parseBoolean, d, e, url2, str9, str, strArr);
            } catch (MalformedURLException e4) {
                C3356jq.m32612a(f4321a, "Error parsing video section", e4);
            }
            return bVar;
        }
        bVar = null;
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static void m33466a(C2788ab abVar) {
        C2888br brVar = abVar.f3925s;
        HashMap hashMap = null;
        if (brVar != null) {
            List<? extends AbstractC3471ls> a = brVar.mo32414a();
            if (a != null) {
                HashMap hashMap2 = new HashMap();
                Iterator<? extends AbstractC3471ls> it = a.iterator();
                while (true) {
                    hashMap = hashMap2;
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractC3471ls lsVar = (AbstractC3471ls) it.next();
                    String a2 = lsVar.mo32386a();
                    List<? extends AbstractC3469lr> b = lsVar.mo32385b();
                    if (b != null) {
                        m33462a((List<AbstractC3469lr>) b);
                        String str = f4321a;
                        C3356jq.m32613a(str, "Ad units for section id -  " + a2 + " - before filtering: " + b.size());
                        List<AbstractC3469lr> a3 = C2896bw.m33457a().m33455a((List<AbstractC3469lr>) b);
                        String str2 = f4321a;
                        C3356jq.m32613a(str2, "Ad units for section id -  " + a2 + " - after filtering: " + a3.size());
                        hashMap2.put(a2, a3);
                    }
                }
            } else {
                C3356jq.m32609b(f4321a, "Ad units missing in response");
            }
        } else {
            C3356jq.m32609b(f4321a, "Invalid or unable to parse response");
        }
        HashMap hashMap3 = hashMap;
        if (hashMap == null) {
            hashMap3 = new HashMap();
        }
        abVar.f3928v = hashMap3;
    }

    /* renamed from: a */
    public static void m33465a(C2890bt btVar, JSONObject jSONObject) {
        C3462ln lnVar;
        int i;
        C2890bt.C2892a aVar;
        String str;
        String str2;
        String str3;
        int a = C3461lm.m32418a(jSONObject.optString("displayType", null));
        jSONObject.optString("layoutType", null);
        C3461lm.m32417b();
        int optInt = jSONObject.optInt("min", 1);
        int optInt2 = jSONObject.optInt("max", 10);
        int i2 = optInt;
        if (optInt <= 0) {
            i2 = 1;
        }
        int i3 = optInt2;
        if (optInt2 < i2) {
            i3 = i2;
        }
        Integer num = f4322b.get(jSONObject.optString("layoutType"));
        Integer num2 = num;
        if (num == null) {
            num2 = 0;
        }
        String optString = jSONObject.optString("id", null);
        String optString2 = jSONObject.optString("inventorySourceId", null);
        String optString3 = jSONObject.optString("clickUrl", null);
        String optString4 = jSONObject.optString("landingPageUrl", null);
        btVar.f4353y = a;
        btVar.mo32387m();
        btVar.mo32403d(i2);
        btVar.mo32400e(i3);
        btVar.mo32412a(num2.intValue());
        btVar.mo32408b(optString);
        btVar.mo32391i(optString2);
        btVar.mo32402d(optString3);
        btVar.mo32405c(optString4);
        C3466lp a2 = btVar.mo32411a("headline");
        C3466lp a3 = btVar.mo32411a(MraidParser.MRAID_JSON_CREATE_CALENDAR_EVENT_SUMMARY);
        C3466lp a4 = btVar.mo32411a("source");
        C3466lp a5 = btVar.mo32411a("secHqImage");
        C3466lp a6 = btVar.mo32411a("secImage");
        C3466lp a7 = btVar.mo32411a("secPortraitImage");
        C3466lp a8 = btVar.mo32411a("secOrigImg");
        C3466lp a9 = btVar.mo32411a("secThumbnailImage");
        C3466lp a10 = btVar.mo32411a("videoUrl");
        C3466lp a11 = btVar.mo32411a("portraitVideoUrl");
        C3466lp a12 = btVar.mo32411a("videoHlsUrl");
        C3466lp a13 = btVar.mo32411a("portraitVideoHlsUrl");
        C3466lp a14 = btVar.mo32411a("callToAction");
        C3466lp a15 = btVar.mo32411a("clickToCall");
        C3466lp a16 = btVar.mo32411a("mailSponsoredMessage");
        C3466lp a17 = btVar.mo32411a("sponsoredByLabel");
        C3466lp a18 = btVar.mo32411a("AdTag");
        btVar.f4334f = a2 != null ? a2.m32416a() : null;
        btVar.f4335g = a3 != null ? a3.m32416a() : null;
        btVar.f4333e = a4 != null ? a4.m32416a() : null;
        String str4 = btVar.f4332d;
        if (a16 != null) {
            Map<String, String> map = a16.f5955a.f4521g;
            if (map == null || map.size() <= 0) {
                str3 = null;
                str2 = null;
                str = null;
            } else {
                str3 = map.get("usageType");
                str2 = map.get("type");
                str = map.get("contentType");
            }
            lnVar = new C3462ln(a16.f5955a.f4515a, a16.m32416a(), str3, str2, str, str4, a16.m32415b());
        } else {
            lnVar = null;
        }
        btVar.f4337i = lnVar;
        btVar.f4338j = a17 != null ? a17.m32416a() : null;
        btVar.f4336h = a18 != null ? a18.m32416a() : null;
        btVar.f4331c = "http://";
        C3466lp lpVar = a13 != null ? a13 : a11 != null ? a11 : a12 != null ? a12 : a10 != null ? a10 : null;
        if (lpVar != null) {
            btVar.f4349u = 1;
            btVar.f4350v = m33463a(btVar, lpVar);
        } else {
            btVar.f4349u = 0;
        }
        C2887bq a19 = m33464a(a6);
        C2887bq a20 = m33464a(a8);
        C2887bq a21 = m33464a(a5);
        C2887bq a22 = m33464a(a7);
        btVar.f4341m = m33464a(a9);
        btVar.f4342n = a19;
        btVar.f4343o = a20;
        if (a21 == null) {
            a21 = a19;
        }
        btVar.f4344p = a21;
        btVar.f4345q = a22;
        if (a19 == null) {
            a19 = a20;
        }
        btVar.f4340l = a19;
        if (!(a14 == null && a15 == null)) {
            if (a15 != null) {
                Map<String, String> map2 = a15.f5955a.f4521g;
                if (map2 != null && !map2.get("phoneNumber").isEmpty()) {
                    aVar = new C2890bt.C2892a(NotificationCompat.CATEGORY_CALL, a15.m32416a(), map2.get("phoneNumber"));
                    btVar.f4351w = aVar;
                }
                aVar = null;
                btVar.f4351w = aVar;
            } else {
                if (a14 != null) {
                    aVar = new C2890bt.C2892a("cta", a14.m32416a());
                    btVar.f4351w = aVar;
                }
                aVar = null;
                btVar.f4351w = aVar;
            }
        }
        btVar.f4346r = btVar.f4329a.f4147b.f4460z.f4509b;
        btVar.f4347s = "http://";
        btVar.f4348t = C3446lb.m32448a("http://");
        if ("cpi".equals(btVar.m33461a().toLowerCase(Locale.getDefault()))) {
            btVar.f4330b = 2;
            try {
                JSONObject jSONObject2 = new JSONObject(btVar.f4329a.f4147b.f4460z.f4511d);
                String str5 = null;
                if (!TextUtils.isEmpty(jSONObject2.optString("installedQualifier", null))) {
                    String optString5 = jSONObject2.optString("googlePlayPackageName", null);
                    C2887bq a23 = m33464a(btVar.mo32411a("appInfoIcon"));
                    String optString6 = jSONObject2.optString("category", null);
                    String optString7 = jSONObject2.optString("name", null);
                    JSONObject optJSONObject = jSONObject2.optJSONObject(SmsUrlScanResultRealmObject.RATING);
                    double d = -1.0d;
                    if (optJSONObject != null) {
                        str5 = optJSONObject.optString("raw", null);
                        d = optJSONObject.optDouble("percent", -1.0d);
                        i = optJSONObject.optInt("count", 0);
                    } else {
                        i = 0;
                    }
                    int optInt3 = jSONObject2.optInt("min_downloads", -1);
                    btVar.f4352x = a23;
                    btVar.mo32399e(optString5);
                    btVar.mo32395g(optString6);
                    btVar.mo32413a(d);
                    btVar.mo32397f(str5);
                    btVar.mo32393h(optString7);
                    btVar.mo32406c(optInt3);
                    btVar.mo32409b(i);
                }
            } catch (JSONException e) {
                String str6 = f4321a;
                C3356jq.m32609b(str6, "[parse] error: " + e.getMessage());
            }
        } else {
            btVar.f4330b = 1;
        }
        ArrayList arrayList = new ArrayList();
        for (C2904ca caVar : btVar.f4329a.f4147b.f4440f) {
            arrayList.add(caVar.f4371f);
        }
        if (!arrayList.isEmpty()) {
            btVar.f4339k = arrayList;
        }
    }

    /* renamed from: a */
    public static void m33462a(List<AbstractC3469lr> list) {
        JSONObject jSONObject;
        for (AbstractC3469lr lrVar : list) {
            try {
                jSONObject = new JSONObject(lrVar.mo32407c());
            } catch (JSONException e) {
                jSONObject = new JSONObject();
            }
            m33465a((C2890bt) lrVar, jSONObject);
        }
    }
}
