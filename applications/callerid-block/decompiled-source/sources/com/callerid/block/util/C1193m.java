package com.callerid.block.util;

import android.os.AsyncTask;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p055j.C1075b;
import com.callerid.block.p055j.C1076c;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.m */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/m.class */
public class C1193m {

    /* renamed from: com.callerid.block.util.m$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/m$a.class */
    static class AsyncTaskC1194a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        String f5023a;

        /* renamed from: b */
        String f5024b;

        /* renamed from: c */
        String f5025c;

        /* renamed from: d */
        String f5026d;

        /* renamed from: e */
        String f5027e;

        AsyncTaskC1194a(String str, String str2, String str3) {
            this.f5023a = str;
            this.f5026d = str3;
            this.f5025c = str2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str = null;
            try {
                this.f5024b = C1216t0.m9607E(EZCallApplication.m10163c());
                this.f5027e = C1216t0.m9611A(EZCallApplication.m10163c(), this.f5024b);
                if (C1227w.f5084a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("所有参数：platform:");
                    sb.append(this.f5023a);
                    sb.append("\n");
                    sb.append("uid:");
                    sb.append(this.f5024b);
                    sb.append("\n");
                    sb.append("app_version:");
                    sb.append(this.f5025c);
                    sb.append("\n");
                    sb.append("ip:");
                    sb.append(this.f5026d);
                    sb.append("\n");
                    sb.append("stamp:");
                    sb.append(this.f5027e);
                    sb.append("\n");
                    C1227w.m9527a("ipparser", sb.toString());
                }
                EZCallApplication c = EZCallApplication.m10163c();
                HashMap hashMap = new HashMap();
                hashMap.put("platform", this.f5023a);
                hashMap.put("uid", this.f5024b);
                hashMap.put("app_version", this.f5025c);
                hashMap.put("ip", this.f5026d);
                hashMap.put("stamp", this.f5027e);
                String b = C1215t.m9615b("https://ip.ayamote.com/api/v1/ipa.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("result=");
                    sb2.append(b);
                    C1227w.m9527a("ipparser", sb2.toString());
                }
                String b2 = C1209r.m9627b(b);
                if (C1227w.f5084a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("enlode_result=");
                    sb3.append(b2);
                    C1227w.m9527a("ipparser", sb3.toString());
                }
                str = b2;
                if (b2 != null) {
                    str = b2;
                    if (!"".equals(b2.toString())) {
                        str = b2;
                        try {
                            JSONObject jSONObject = new JSONObject(b2.toString());
                            str = b2;
                            if (jSONObject.getInt("status") == 1) {
                                C1199n0.m9733U0(c, C1216t0.m9562o());
                                C1199n0.m9725Y0(c, System.currentTimeMillis());
                                JSONObject jSONObject2 = jSONObject.getJSONObject("ip_info");
                                ParserIpBean parserIpBean = new ParserIpBean();
                                parserIpBean.setTrue_ip(jSONObject2.getString("true_ip"));
                                parserIpBean.setCountry_full(jSONObject2.getString("country_full"));
                                parserIpBean.setCountry(jSONObject2.getString("country"));
                                parserIpBean.setState_full(jSONObject2.getString("state_full"));
                                parserIpBean.setState(jSONObject2.getString("state"));
                                parserIpBean.setCity(jSONObject2.getString("city"));
                                str = b2;
                                C1075b.m10216a().m10214c(parserIpBean);
                                str = b2;
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                            str = b2;
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            C1076c.m10213a(new a(this));
        }
    }

    /* renamed from: a */
    public static void m9792a() {
        try {
            EZCallApplication c = EZCallApplication.m10163c();
            if (System.currentTimeMillis() - C1199n0.m9748N(c) > 86400000 && C1216t0.m9585a(c)) {
                String J = C1199n0.m9756J(c);
                String o = C1216t0.m9562o();
                if (C1227w.f5084a) {
                    C1227w.m9527a("ipparser", "local_ip:" + J + " now_ip:" + o);
                }
                if (J != null && o != null) {
                    if ("".equals(J)) {
                        new AsyncTaskC1194a("android", C1216t0.m9605G(c), C1216t0.m9562o()).executeOnExecutor(C1208q0.m9629a(), new Object[0]);
                    } else if (!"".equals(o) && !J.equals(o)) {
                        new AsyncTaskC1194a("android", C1216t0.m9605G(c), C1216t0.m9562o()).executeOnExecutor(C1208q0.m9629a(), new Object[0]);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
