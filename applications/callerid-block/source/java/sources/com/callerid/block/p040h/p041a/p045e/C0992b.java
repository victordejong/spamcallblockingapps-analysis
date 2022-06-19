package com.callerid.block.p040h.p041a.p045e;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.p055j.C1075b;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callerid.block.h.a.e.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/b.class */
public class C0992b {

    /* renamed from: com.callerid.block.h.a.e.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/b$a.class */
    private static class AsyncTaskC0993a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0991a f4428a;

        /* renamed from: b */
        private Context f4429b;

        /* renamed from: c */
        private JSONArray f4430c;

        /* renamed from: d */
        private String f4431d;

        AsyncTaskC0993a(Context context, JSONArray jSONArray, String str, AbstractC0991a abstractC0991a) {
            this.f4428a = abstractC0991a;
            this.f4429b = context;
            this.f4430c = jSONArray;
            this.f4431d = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5 = null;
            try {
                HashMap hashMap = new HashMap();
                String m9556u = C1216t0.m9556u(this.f4429b);
                String country_code = C1184j.m9826d(this.f4429b).getCountry_code();
                String m9609C = C1216t0.m9609C();
                String m9551z = C1216t0.m9551z();
                String m9557t = C1216t0.m9557t();
                String lowerCase = C1184j.m9826d(this.f4429b).getIso_code().split("/")[0].toLowerCase();
                ParserIpBean m10215b = C1075b.m10216a().m10215b();
                if (m10215b != null) {
                    String str6 = lowerCase;
                    if (m10215b.getCountry() != null) {
                        str6 = lowerCase;
                        if (!"".equals(m10215b.getCountry())) {
                            str6 = m10215b.getCountry();
                        }
                    }
                    str4 = (m10215b.getState() == null || "".equals(m10215b.getState())) ? (m10215b.getState_full() == null || "".equals(m10215b.getState_full())) ? "" : m10215b.getState_full() : m10215b.getState();
                    str2 = (m10215b.getCity() == null || "".equals(m10215b.getCity())) ? "" : m10215b.getCity();
                    if (m10215b.getTrue_ip() == null || "".equals(m10215b.getTrue_ip())) {
                        lowerCase = str6;
                        str3 = "";
                    } else {
                        lowerCase = str6;
                        str3 = m10215b.getTrue_ip();
                    }
                } else {
                    str3 = "";
                    str4 = str3;
                    str2 = str4;
                }
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(C1216t0.m9581c(m9556u));
                jSONArray.put(C1216t0.m9581c(country_code));
                jSONArray.put(C1216t0.m9581c(m9609C));
                jSONArray.put(C1216t0.m9581c(m9551z));
                jSONArray.put(C1216t0.m9581c(m9557t));
                jSONArray.put(C1216t0.m9581c(str3));
                jSONArray.put(C1216t0.m9581c(lowerCase));
                jSONArray.put(C1216t0.m9581c(str4));
                jSONArray.put(C1216t0.m9581c(str2));
                jSONObject.put("user_info", jSONArray);
                jSONObject.put("tel_number_info", this.f4430c);
                hashMap.put("platform", "android");
                hashMap.put("uid", C1216t0.m9607E(this.f4429b));
                hashMap.put("app_version", C1216t0.m9605G(this.f4429b));
                hashMap.put("origin", C1216t0.m9581c(this.f4431d));
                Context context = this.f4429b;
                hashMap.put("stamp", C1216t0.m9611A(context, C1216t0.m9607E(context)));
                if (C1227w.f5084a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("content:");
                    sb.append(jSONObject.toString().replaceAll("\\\\", ""));
                    C1227w.m9527a("collectinfo", sb.toString());
                }
                hashMap.put("content", C1209r.m9626c(jSONObject.toString().replaceAll("\\\\", "")));
                if (C1227w.f5084a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("params:");
                    sb2.append(hashMap.toString());
                    C1227w.m9527a("collectinfo", sb2.toString());
                }
                String m9615b = C1215t.m9615b("https://ct.ayamote.com/c_n/api/v1/cnwik.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("result:");
                    sb3.append(m9615b);
                    C1227w.m9527a("collectinfo", sb3.toString());
                }
                String m9627b = C1209r.m9627b(m9615b);
                str = m9627b;
                if (C1227w.f5084a) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("response:");
                    sb4.append(m9627b);
                    str5 = m9627b;
                    C1227w.m9527a("collectinfo", sb4.toString());
                    str = m9627b;
                }
            } catch (Exception e) {
                e.printStackTrace();
                str = str5;
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4428a.m10391a(str);
        }
    }

    /* renamed from: a */
    public static void m10390a(Context context, JSONArray jSONArray, String str, AbstractC0991a abstractC0991a) {
        try {
            if (!C1199n0.m9692k(context)) {
                return;
            }
            new AsyncTaskC0993a(context, jSONArray, str, abstractC0991a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
