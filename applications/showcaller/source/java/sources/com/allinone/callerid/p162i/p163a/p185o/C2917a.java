package com.allinone.callerid.p162i.p163a.p185o;

import android.os.AsyncTask;
import com.allinone.callerid.bean.ParserIpBean;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.o.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/a.class */
public class C2917a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.o.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/a$a.class */
    public static class AsyncTaskC2918a extends AsyncTask<Object, Void, Object> {

        /* renamed from: com.allinone.callerid.i.a.o.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/a$a$a.class */
        class C2919a implements AbstractC2920b {
            C2919a() {
                AsyncTaskC2918a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p185o.AbstractC2920b
            /* renamed from: a */
            public void mo26412a(ParserIpBean parserIpBean) {
                if (parserIpBean != null) {
                    C3718c0.m24436a("ipparser", "bean:" + parserIpBean.toString());
                }
            }
        }

        AsyncTaskC2918a() {
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str;
            String str2 = null;
            try {
                HashMap hashMap = new HashMap();
                EZCallApplication m26146c = EZCallApplication.m26146c();
                hashMap.put("platform", "android");
                hashMap.put("uid", C3767h1.m24268T(m26146c));
                hashMap.put("app_version", C3767h1.m24265W(m26146c));
                hashMap.put("ip", C3767h1.m24298A());
                hashMap.put("stamp", C3767h1.m24271Q(m26146c, C3767h1.m24268T(m26146c)));
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("params:");
                    sb.append(hashMap.toString());
                    C3718c0.m24436a("ipparser", sb.toString());
                }
                String m26206b = C3029a.m26206b("https://ip.show-caller.com/api/v1/ipa.php", hashMap);
                if (C3718c0.f11914a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("enlode_result=");
                    sb2.append(m26206b);
                    C3718c0.m24436a("ipparser", sb2.toString());
                }
                str = m26206b;
                if (m26206b != null) {
                    str = m26206b;
                    if (!"".equals(m26206b)) {
                        str2 = m26206b;
                        try {
                            JSONObject jSONObject = new JSONObject(m26206b);
                            str = m26206b;
                            if (jSONObject.getInt("status") == 1) {
                                C3711a1.m24645E1(C3767h1.m24298A());
                                C3711a1.m24613M1(System.currentTimeMillis());
                                JSONObject jSONObject2 = jSONObject.getJSONObject("ip_info");
                                ParserIpBean parserIpBean = new ParserIpBean();
                                parserIpBean.setTrue_ip(jSONObject2.getString("true_ip"));
                                parserIpBean.setCountry_full(jSONObject2.getString("country_full"));
                                parserIpBean.setCountry(jSONObject2.getString("country"));
                                parserIpBean.setState_full(jSONObject2.getString("state_full"));
                                parserIpBean.setState(jSONObject2.getString("state"));
                                parserIpBean.setCity(jSONObject2.getString("city"));
                                str2 = m26206b;
                                C2921c.m26411a().m26409c(parserIpBean);
                                str = m26206b;
                            }
                        } catch (JSONException e) {
                            str2 = m26206b;
                            e.printStackTrace();
                            str = m26206b;
                        }
                    }
                }
            } catch (Exception e2) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("ipparser", "Exception=" + e2.getMessage());
                }
                e2.printStackTrace();
                str = str2;
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (C3718c0.f11914a) {
                C2923d.m26408a(new C2919a());
            }
        }
    }

    /* renamed from: a */
    public static void m26414a() {
        try {
            EZCallApplication m26146c = EZCallApplication.m26146c();
            if (System.currentTimeMillis() - C3711a1.m24535h0() <= 86400000 || !C3767h1.m24261a(m26146c)) {
                return;
            }
            String m24567Z = C3711a1.m24567Z();
            String m24298A = C3767h1.m24298A();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("ipparser", "local_ip:" + m24567Z + " now_ip:" + m24298A);
            }
            if (m24567Z == null || m24298A == null) {
                return;
            }
            if ("".equals(m24567Z)) {
                new AsyncTaskC2918a().executeOnExecutor(C3735e1.m24405a(), new Object[0]);
            } else if ("".equals(m24298A) || m24567Z.equals(m24298A)) {
            } else {
                new AsyncTaskC2918a().executeOnExecutor(C3735e1.m24405a(), new Object[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
