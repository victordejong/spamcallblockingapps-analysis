package com.callerid.block.util;

import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.l */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/l.class */
public class C1188l {

    /* renamed from: com.callerid.block.util.l$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/l$a.class */
    static class AsyncTaskC1189a extends AsyncTask<Object, Void, Object> {
        AsyncTaskC1189a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str;
            try {
                EZCallApplication c = EZCallApplication.m10163c();
                String z = C1216t0.m9551z();
                String E = C1216t0.m9607E(c);
                String G = C1216t0.m9605G(c);
                String C = C1216t0.m9609C();
                String t = C1216t0.m9557t();
                String country_code = C1184j.m9826d(c).getCountry_code();
                String B = C1216t0.m9610B(c);
                C1227w.m9527a("config", "所有参数：\nplatform:android\ndevice:" + z + "\napp_version:" + G + "\nuid:" + E + "\nos_version:" + C + "\nlanguage:" + t + "\ndefault_cc:" + country_code + "\nstamp:" + B + "\n");
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("device", z);
                hashMap.put("uid", E);
                hashMap.put("app_version", G);
                hashMap.put("os_version", C);
                hashMap.put("language", t);
                hashMap.put("default_cc", country_code);
                hashMap.put("stamp", B);
                String b = C1215t.m9615b("https://app.ayamote.com/api/v1/gcon.php", hashMap, "utf-8");
                StringBuilder sb = new StringBuilder();
                sb.append("解密前result=");
                sb.append(b);
                C1227w.m9527a("config", sb.toString());
                str = C1209r.m9627b(b);
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C1227w.m9527a("config", "解密后result=" + obj);
            if (obj != null && !"".equals(obj.toString())) {
                try {
                    EZCallApplication c = EZCallApplication.m10163c();
                    JSONObject jSONObject = new JSONObject(obj.toString());
                    if (jSONObject.getInt("status") == 1) {
                        jSONObject.getInt("contact");
                        if (jSONObject.getInt("wiki_log") == 1) {
                            C1199n0.m9661u0(c, true);
                        } else {
                            C1199n0.m9661u0(c, false);
                        }
                        JSONObject jSONObject2 = jSONObject.getJSONObject("sms");
                        jSONObject2.getInt("sms_content");
                        jSONObject2.getInt("sms_number");
                        jSONObject2.getInt("sms_name");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (C1227w.f5084a) {
                        C1227w.m9527a("config", "Exception:" + e.getMessage());
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m9798a() {
        try {
            new AsyncTaskC1189a().executeOnExecutor(C1208q0.m9629a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
