package com.callerid.block.sms;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1209r;
import com.callerid.block.util.C1215t;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.callerid.block.sms.f */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/f.class */
public class C1148f {

    /* renamed from: com.callerid.block.sms.f$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/f$a.class */
    static class AsyncTaskC1149a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        private Context f4886a;

        /* renamed from: b */
        private List<SMSBean> f4887b;

        public AsyncTaskC1149a(List<SMSBean> list, Context context) {
            this.f4887b = list;
            this.f4886a = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str = null;
            try {
                String E = C1216t0.m9607E(this.f4886a);
                String G = C1216t0.m9605G(this.f4886a);
                String country_code = C1184j.m9826d(this.f4886a).getCountry_code();
                String B = C1216t0.m9610B(this.f4886a);
                String t = C1216t0.m9557t();
                str = null;
                if (E != null) {
                    str = null;
                    if (!"".equals(E)) {
                        str = null;
                        if (G != null) {
                            str = null;
                            if (!"".equals(G)) {
                                str = null;
                                if (country_code != null) {
                                    str = null;
                                    if (!"".equals(country_code)) {
                                        str = null;
                                        if (B != null) {
                                            str = null;
                                            if (!"".equals(B)) {
                                                JSONArray jSONArray = new JSONArray();
                                                for (int i = 0; i < this.f4887b.size(); i++) {
                                                    C1186k.m9816c().m9812g("sms_search_counts");
                                                    JSONObject jSONObject = new JSONObject();
                                                    jSONObject.put("num", this.f4887b.get(i).getAddress());
                                                    jSONArray.put(jSONObject);
                                                }
                                                String jSONArray2 = jSONArray.toString();
                                                if (C1227w.f5084a) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("content:");
                                                    sb.append(jSONArray2);
                                                    C1227w.m9527a("searchsms", sb.toString());
                                                }
                                                String c = C1209r.m9626c(jSONArray2);
                                                if (C1227w.f5084a) {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("所有参数：platform:");
                                                    sb2.append("android");
                                                    sb2.append("\n");
                                                    sb2.append("uid:");
                                                    sb2.append(E);
                                                    sb2.append("\n");
                                                    sb2.append("app_version:");
                                                    sb2.append(G);
                                                    sb2.append("\n");
                                                    sb2.append("origin:");
                                                    sb2.append("CallerEngland");
                                                    sb2.append("\n");
                                                    sb2.append("default_cc:");
                                                    sb2.append(country_code);
                                                    sb2.append("\n");
                                                    sb2.append("stamp:");
                                                    sb2.append(B);
                                                    sb2.append("\n");
                                                    sb2.append("lang:");
                                                    sb2.append(t);
                                                    sb2.append("\n");
                                                    sb2.append("ctt:");
                                                    sb2.append(c);
                                                    sb2.append("\n");
                                                    C1227w.m9527a("searchsms", sb2.toString());
                                                }
                                                HashMap hashMap = new HashMap();
                                                hashMap.put("origin", "CallerEngland");
                                                hashMap.put("platform", "android");
                                                hashMap.put("uid", E);
                                                hashMap.put("app_version", G);
                                                hashMap.put("default_cc", country_code);
                                                hashMap.put("stamp", B);
                                                hashMap.put("lang", t);
                                                hashMap.put("ctt", c);
                                                String b = C1215t.m9615b("https://uk.ayamote.com/api/v1/as_num.php", hashMap, "utf-8");
                                                if (C1227w.f5084a) {
                                                    StringBuilder sb3 = new StringBuilder();
                                                    sb3.append("resultJson:");
                                                    sb3.append(b);
                                                    C1227w.m9527a("searchsms", sb3.toString());
                                                }
                                                String b2 = C1209r.m9627b(b);
                                                str = b2;
                                                if (C1227w.f5084a) {
                                                    StringBuilder sb4 = new StringBuilder();
                                                    sb4.append("enlode_result:");
                                                    sb4.append(b2);
                                                    str = b2;
                                                    C1227w.m9527a("searchsms", sb4.toString());
                                                    str = b2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            JSONArray jSONArray;
            super.onPostExecute(obj);
            if (obj != null && !"".equals(obj.toString())) {
                try {
                    JSONObject jSONObject = new JSONObject(obj.toString());
                    int i = jSONObject.getInt("status");
                    if (C1227w.f5084a) {
                        C1227w.m9527a("searchsms", "status=" + i);
                    }
                    if (i == 1 && (jSONArray = jSONObject.getJSONArray("list")) != null && jSONArray.length() > 0) {
                        C1144d.m9957a(this.f4886a, jSONArray);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m9953a(List<SMSBean> list, Context context) {
        try {
            new AsyncTaskC1149a(list, context).executeOnExecutor(C1208q0.m9629a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
