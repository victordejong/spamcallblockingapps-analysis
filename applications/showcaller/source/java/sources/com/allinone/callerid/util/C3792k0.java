package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.k0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k0.class */
public class C3792k0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.util.k0$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k0$b.class */
    public static class AsyncTaskC3794b extends AsyncTask<String, Void, String> {
        private AsyncTaskC3794b() {
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String optString;
            String optString2;
            String optString3;
            String optString4;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("id", C3767h1.m24275M(EZCallApplication.m26146c()));
                hashMap.put("version", C3767h1.m24265W(EZCallApplication.m26146c()));
                hashMap.put("is_android", "1");
                String m26207a = C3029a.m26207a("https://info.show-caller.com/gonglue_xilie/ping.php", hashMap);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("neitui", "content:" + m26207a);
                }
                JSONObject jSONObject = new JSONObject(m26207a);
                if ("iad".equals(jSONObject.getString("ad_banner"))) {
                    C2578f.m27061t(false);
                } else {
                    C2578f.m27061t(true);
                }
                JSONArray optJSONArray = jSONObject.optJSONArray("neitui_list");
                if (optJSONArray == null || optJSONArray.length() <= 0) {
                    C3792k0.m24115v(false);
                    return null;
                }
                C3792k0.m24115v(true);
                JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
                String optString5 = jSONObject2.optString("url_scheme");
                if (optString5 != null && !"".equals(optString5)) {
                    if (!optString5.equals(C3792k0.m24136a())) {
                        C3711a1.m24652C2(Boolean.TRUE);
                        C3711a1.m24598Q0(0);
                        C3711a1.m24568Y1(0L);
                        C3711a1.m24585T1(true);
                    }
                    C3792k0.m24129h(optString5);
                }
                if (jSONObject2.has("headline") && (optString4 = jSONObject2.optString("headline")) != null && !"".equals(optString4)) {
                    C3792k0.m24127j(optString4);
                }
                if (jSONObject2.has("description") && (optString3 = jSONObject2.optString("description")) != null && !"".equals(optString3)) {
                    C3792k0.m24128i(optString3);
                }
                if (jSONObject2.has("thumb_url") && (optString2 = jSONObject2.optString("thumb_url")) != null && !"".equals(optString2)) {
                    C3792k0.m24125l(optString2);
                }
                if (!jSONObject2.has("img_url") || (optString = jSONObject2.optString("img_url")) == null || "".equals(optString)) {
                    return null;
                }
                C3792k0.m24126k(optString);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            C3792k0.m24124m(System.currentTimeMillis());
        }
    }

    /* renamed from: a */
    public static String m24136a() {
        return C3726e0.m24410e("ntapp", "mr_ntapp", "com.colorflash.callerscreen");
    }

    /* renamed from: b */
    public static String m24135b() {
        return C3726e0.m24410e("ntapp", "nt_description", "");
    }

    /* renamed from: c */
    public static String m24134c() {
        return C3726e0.m24410e("ntapp", "head_line", "");
    }

    /* renamed from: d */
    public static String m24133d() {
        return C3726e0.m24410e("ntapp", "nt_image", "");
    }

    /* renamed from: e */
    public static String m24132e() {
        return C3726e0.m24410e("ntapp", "nt_thumb", "");
    }

    /* renamed from: f */
    private static long m24131f() {
        return C3726e0.m24412c("ntapp", "search_ntapp_time", 0L);
    }

    /* renamed from: g */
    public static void m24130g() {
        if (System.currentTimeMillis() - m24131f() <= 43200000 || !C3767h1.m24224s0(EZCallApplication.m26146c())) {
            return;
        }
        new AsyncTaskC3794b().executeOnExecutor(C3735e1.m24405a(), new String[0]);
    }

    /* renamed from: h */
    public static void m24129h(String str) {
        C3726e0.m24406i("ntapp", "mr_ntapp", str);
    }

    /* renamed from: i */
    public static void m24128i(String str) {
        C3726e0.m24406i("ntapp", "nt_description", str);
    }

    /* renamed from: j */
    public static void m24127j(String str) {
        C3726e0.m24406i("ntapp", "head_line", str);
    }

    /* renamed from: k */
    public static void m24126k(String str) {
        C3726e0.m24406i("ntapp", "nt_image", str);
    }

    /* renamed from: l */
    public static void m24125l(String str) {
        C3726e0.m24406i("ntapp", "nt_thumb", str);
    }

    /* renamed from: m */
    public static void m24124m(long j) {
        C3726e0.m24407h("ntapp", "search_ntapp_time", j);
    }

    /* renamed from: u */
    public static boolean m24116u() {
        return C3726e0.m24414a("ntapp", "isOpenAd", false);
    }

    /* renamed from: v */
    public static void m24115v(boolean z) {
        C3726e0.m24409f("ntapp", "isOpenAd", z);
    }
}
