package com.callerid.block.util;

import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.l */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/l.class */
public class C1188l {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.l$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/l$a.class */
    public static class AsyncTaskC1189a extends AsyncTask<Object, Void, Object> {
        AsyncTaskC1189a() {
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str;
            try {
                EZCallApplication m10163c = EZCallApplication.m10163c();
                String m9551z = C1216t0.m9551z();
                String m9607E = C1216t0.m9607E(m10163c);
                String m9605G = C1216t0.m9605G(m10163c);
                String m9609C = C1216t0.m9609C();
                String m9557t = C1216t0.m9557t();
                String country_code = C1184j.m9826d(m10163c).getCountry_code();
                String m9610B = C1216t0.m9610B(m10163c);
                C1227w.m9527a("config", "所有参数：\nplatform:android\ndevice:" + m9551z + "\napp_version:" + m9605G + "\nuid:" + m9607E + "\nos_version:" + m9609C + "\nlanguage:" + m9557t + "\ndefault_cc:" + country_code + "\nstamp:" + m9610B + "\n");
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("device", m9551z);
                hashMap.put("uid", m9607E);
                hashMap.put("app_version", m9605G);
                hashMap.put("os_version", m9609C);
                hashMap.put("language", m9557t);
                hashMap.put("default_cc", country_code);
                hashMap.put("stamp", m9610B);
                String m9615b = C1215t.m9615b("https://app.ayamote.com/api/v1/gcon.php", hashMap, "utf-8");
                StringBuilder sb = new StringBuilder();
                sb.append("解密前result=");
                sb.append(m9615b);
                C1227w.m9527a("config", sb.toString());
                str = C1209r.m9627b(m9615b);
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
            if (obj == null || "".equals(obj.toString())) {
                return;
            }
            try {
                EZCallApplication m10163c = EZCallApplication.m10163c();
                JSONObject jSONObject = new JSONObject(obj.toString());
                if (jSONObject.getInt("status") != 1) {
                    return;
                }
                jSONObject.getInt("contact");
                if (jSONObject.getInt("wiki_log") == 1) {
                    C1199n0.m9661u0(m10163c, true);
                } else {
                    C1199n0.m9661u0(m10163c, false);
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("sms");
                jSONObject2.getInt("sms_content");
                jSONObject2.getInt("sms_number");
                jSONObject2.getInt("sms_name");
            } catch (Exception e) {
                e.printStackTrace();
                if (!C1227w.f5084a) {
                    return;
                }
                C1227w.m9527a("config", "Exception:" + e.getMessage());
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
