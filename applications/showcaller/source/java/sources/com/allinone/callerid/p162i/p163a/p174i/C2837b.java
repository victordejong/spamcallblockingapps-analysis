package com.allinone.callerid.p162i.p163a.p174i;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.bean.ParserIpBean;
import com.allinone.callerid.p162i.p163a.p185o.C2921c;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3866v;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.i.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/b.class */
public class C2837b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/b$a.class */
    public static class AsyncTaskC2838a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2836a f9597a;

        /* renamed from: b */
        private Context f9598b;

        /* renamed from: c */
        private JSONArray f9599c;

        AsyncTaskC2838a(Context context, JSONArray jSONArray, AbstractC2836a abstractC2836a) {
            this.f9597a = abstractC2836a;
            this.f9598b = context;
            this.f9599c = jSONArray;
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
                String m24284H = C3767h1.m24284H(this.f9598b);
                String country_code = C3806p.m24083d(this.f9598b).getCountry_code();
                String m24270R = C3767h1.m24270R();
                String m24274N = C3767h1.m24274N();
                String m24286G = C3767h1.m24286G();
                String lowerCase = C3806p.m24083d(this.f9598b).getIso_code().split("/")[0].toLowerCase();
                ParserIpBean m26410b = C2921c.m26411a().m26410b();
                if (m26410b != null) {
                    String str6 = lowerCase;
                    if (m26410b.getCountry() != null) {
                        str6 = lowerCase;
                        if (!"".equals(m26410b.getCountry())) {
                            str6 = m26410b.getCountry();
                        }
                    }
                    str4 = (m26410b.getState() == null || "".equals(m26410b.getState())) ? (m26410b.getState_full() == null || "".equals(m26410b.getState_full())) ? "" : m26410b.getState_full() : m26410b.getState();
                    str2 = (m26410b.getCity() == null || "".equals(m26410b.getCity())) ? "" : m26410b.getCity();
                    if (m26410b.getTrue_ip() == null || "".equals(m26410b.getTrue_ip())) {
                        lowerCase = str6;
                        str3 = "";
                    } else {
                        lowerCase = str6;
                        str3 = m26410b.getTrue_ip();
                    }
                } else {
                    str3 = "";
                    str4 = str3;
                    str2 = str4;
                }
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(C3767h1.m24251f(m24284H));
                jSONArray.put(C3767h1.m24251f(country_code));
                jSONArray.put(C3767h1.m24251f(m24270R));
                jSONArray.put(C3767h1.m24251f(m24274N));
                jSONArray.put(C3767h1.m24251f(m24286G));
                jSONArray.put(C3767h1.m24251f(str3));
                jSONArray.put(C3767h1.m24251f(lowerCase));
                jSONArray.put(C3767h1.m24251f(str4));
                jSONArray.put(C3767h1.m24251f(str2));
                jSONObject.put("user_info", jSONArray);
                jSONObject.put("tel_number_info", this.f9599c);
                hashMap.put("platform", "android");
                hashMap.put("uid", C3767h1.m24268T(this.f9598b));
                hashMap.put("app_version", C3767h1.m24265W(this.f9598b));
                hashMap.put("origin", "app");
                Context context = this.f9598b;
                hashMap.put("stamp", C3767h1.m24271Q(context, C3767h1.m24268T(context)));
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("content:");
                    sb.append(jSONObject.toString().replaceAll("\\\\", ""));
                    C3718c0.m24436a("collectinfo", sb.toString());
                }
                hashMap.put("content", C3866v.m23912c(jSONObject.toString().replaceAll("\\\\", "")));
                if (C3718c0.f11914a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("params:");
                    sb2.append(hashMap.toString());
                    C3718c0.m24436a("collectinfo", sb2.toString());
                }
                String m26206b = C3029a.m26206b("https://ct.show-caller.com/c_n/api/v1/cnwik.php", hashMap);
                str = m26206b;
                if (C3718c0.f11914a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("response:");
                    sb3.append(m26206b);
                    str5 = m26206b;
                    C3718c0.m24436a("collectinfo", sb3.toString());
                    str = m26206b;
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
            this.f9597a.mo23879a(str);
        }
    }

    /* renamed from: a */
    public static void m26522a(Context context, JSONArray jSONArray, AbstractC2836a abstractC2836a) {
        if (C3711a1.m24548e()) {
            try {
                AsyncTaskC2838a asyncTaskC2838a = new AsyncTaskC2838a(context, jSONArray, abstractC2836a);
                if (asyncTaskC2838a.getStatus() == AsyncTask.Status.RUNNING) {
                    return;
                }
                asyncTaskC2838a.cancel(true);
                new AsyncTaskC2838a(context, jSONArray, abstractC2836a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
