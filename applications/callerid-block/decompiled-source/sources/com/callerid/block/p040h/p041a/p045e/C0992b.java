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

        AsyncTaskC0993a(Context context, JSONArray jSONArray, String str, AbstractC0991a aVar) {
            this.f4428a = aVar;
            this.f4429b = context;
            this.f4430c = jSONArray;
            this.f4431d = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2;
            String str3;
            String str4 = null;
            try {
                HashMap hashMap = new HashMap();
                String u = C1216t0.m9556u(this.f4429b);
                String country_code = C1184j.m9826d(this.f4429b).getCountry_code();
                String C = C1216t0.m9609C();
                String z = C1216t0.m9551z();
                String t = C1216t0.m9557t();
                String lowerCase = C1184j.m9826d(this.f4429b).getIso_code().split("/")[0].toLowerCase();
                ParserIpBean b = C1075b.m10216a().m10215b();
                if (b != null) {
                    String str5 = lowerCase;
                    if (b.getCountry() != null) {
                        str5 = lowerCase;
                        if (!"".equals(b.getCountry())) {
                            str5 = b.getCountry();
                        }
                    }
                    str3 = (b.getState() == null || "".equals(b.getState())) ? (b.getState_full() == null || "".equals(b.getState_full())) ? "" : b.getState_full() : b.getState();
                    str = (b.getCity() == null || "".equals(b.getCity())) ? "" : b.getCity();
                    if (b.getTrue_ip() == null || "".equals(b.getTrue_ip())) {
                        str2 = "";
                        lowerCase = str5;
                    } else {
                        str2 = b.getTrue_ip();
                        lowerCase = str5;
                    }
                } else {
                    str2 = "";
                    str3 = str2;
                    str = str3;
                }
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(C1216t0.m9581c(u));
                jSONArray.put(C1216t0.m9581c(country_code));
                jSONArray.put(C1216t0.m9581c(C));
                jSONArray.put(C1216t0.m9581c(z));
                jSONArray.put(C1216t0.m9581c(t));
                jSONArray.put(C1216t0.m9581c(str2));
                jSONArray.put(C1216t0.m9581c(lowerCase));
                jSONArray.put(C1216t0.m9581c(str3));
                jSONArray.put(C1216t0.m9581c(str));
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
                String b2 = C1215t.m9615b("https://ct.ayamote.com/c_n/api/v1/cnwik.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("result:");
                    sb3.append(b2);
                    C1227w.m9527a("collectinfo", sb3.toString());
                }
                String b3 = C1209r.m9627b(b2);
                str4 = b3;
                if (C1227w.f5084a) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("response:");
                    sb4.append(b3);
                    str4 = b3;
                    C1227w.m9527a("collectinfo", sb4.toString());
                    str4 = b3;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return str4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4428a.m10391a(str);
        }
    }

    /* renamed from: a */
    public static void m10390a(Context context, JSONArray jSONArray, String str, AbstractC0991a aVar) {
        try {
            if (C1199n0.m9692k(context)) {
                new AsyncTaskC0993a(context, jSONArray, str, aVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
