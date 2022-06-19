package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.r */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/r.class */
public class C3813r {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.r$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/r$a.class */
    public static class AsyncTaskC3814a extends AsyncTask<Object, Void, Object> {
        AsyncTaskC3814a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            JSONObject jSONObject;
            JSONObject jSONObject2 = null;
            try {
                EZCallApplication m26146c = EZCallApplication.m26146c();
                String m24274N = C3767h1.m24274N();
                String m24268T = C3767h1.m24268T(m26146c);
                String m24265W = C3767h1.m24265W(m26146c);
                String m24270R = C3767h1.m24270R();
                String m24286G = C3767h1.m24286G();
                String country_code = C3806p.m24083d(m26146c).getCountry_code();
                String m24271Q = C3767h1.m24271Q(m26146c, m24268T);
                StringBuilder sb = new StringBuilder();
                sb.append("所有参数：\nplatform:");
                sb.append("android");
                sb.append("\ndevice:");
                sb.append(m24274N);
                sb.append("\napp_version:");
                sb.append(m24265W);
                sb.append("\nuid:");
                sb.append(m24268T);
                sb.append("\nos_version:");
                sb.append(m24270R);
                sb.append("\nlanguage:");
                sb.append(m24286G);
                sb.append("\ndefault_cc:");
                sb.append(country_code);
                sb.append("\nstamp:");
                sb.append(m24271Q);
                sb.append("\n");
                C3718c0.m24436a("config", sb.toString());
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("device", m24274N);
                hashMap.put("uid", m24268T);
                hashMap.put("app_version", m24265W);
                hashMap.put("os_version", m24270R);
                hashMap.put("language", m24286G);
                hashMap.put("default_cc", country_code);
                hashMap.put("stamp", m24271Q);
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/gcon.php", hashMap);
                jSONObject = m26206b;
                if (m26206b != 0) {
                    jSONObject2 = m26206b;
                    jSONObject = m26206b;
                    if (!"".equals(m26206b)) {
                        try {
                            jSONObject2 = new JSONObject(m26206b);
                            jSONObject = m26206b;
                            if (jSONObject2.getInt("status") == 1) {
                                jSONObject2.getInt("contact");
                                if (jSONObject2.getInt("wiki_log") == 1) {
                                    C3711a1.m24634H0(true);
                                    jSONObject = m26206b;
                                } else {
                                    C3711a1.m24634H0(false);
                                    jSONObject = m26206b;
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            jSONObject = m26206b;
                            if (C3718c0.f11914a) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Exception:");
                                sb2.append(e.getMessage());
                                jSONObject2 = m26206b;
                                C3718c0.m24436a("config", sb2.toString());
                                jSONObject = m26206b;
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                jSONObject = jSONObject2;
            }
            return jSONObject;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C3718c0.m24436a("config", "result=" + obj);
        }
    }

    /* renamed from: a */
    public static void m24056a() {
        new AsyncTaskC3814a().executeOnExecutor(C3735e1.m24405a(), new Object[0]);
    }
}
