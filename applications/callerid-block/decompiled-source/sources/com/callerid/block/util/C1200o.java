package com.callerid.block.util;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.o */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/o.class */
public class C1200o {

    /* renamed from: com.callerid.block.util.o$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/o$a.class */
    static class AsyncTaskC1201a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        private String f5036a;

        /* renamed from: b */
        private String f5037b;

        /* renamed from: c */
        private String f5038c;

        /* renamed from: d */
        private String f5039d;

        /* renamed from: e */
        private String f5040e;

        /* renamed from: f */
        private String f5041f;

        /* renamed from: g */
        private String f5042g;

        /* renamed from: h */
        private String f5043h;

        /* renamed from: i */
        private Context f5044i;

        public AsyncTaskC1201a(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
            this.f5036a = str;
            this.f5037b = str2;
            this.f5038c = str3;
            this.f5039d = str4;
            this.f5041f = str5;
            this.f5043h = str6;
            this.f5044i = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String E = C1216t0.m9607E(this.f5044i);
            this.f5040e = E;
            this.f5042g = C1216t0.m9611A(this.f5044i, E);
            if (C1227w.f5084a) {
                C1227w.m9527a("spamlist", "所有参数：\ncount:" + this.f5036a + "\ncc:" + this.f5037b + "\nplatform:" + this.f5038c + "\npackagename:" + this.f5039d + "\nuid:" + this.f5040e + "\nversion:" + this.f5041f + "\nstamp:" + this.f5042g + "\ncountry:" + this.f5043h + "\n");
            }
            String str = null;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("count", this.f5036a);
                hashMap.put("cc", this.f5037b);
                hashMap.put("platform", this.f5038c);
                hashMap.put("package", this.f5039d);
                hashMap.put("version", this.f5041f);
                hashMap.put("uid", this.f5040e);
                hashMap.put("stamp", this.f5042g);
                hashMap.put("country", this.f5043h);
                String b = C1215t.m9615b("https://app.ayamote.com/proc/v1/geoffda.php", hashMap, "utf-8");
                if (C1227w.f5084a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("result=");
                    sb.append(b);
                    C1227w.m9527a("spamlist", sb.toString());
                }
                String b2 = C1209r.m9627b(b);
                if (C1227w.f5084a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("enlode_result=");
                    sb2.append(b2);
                    C1227w.m9525c("spamlist", sb2.toString());
                }
                str = b2;
                if (b2 != null) {
                    str = b2;
                    if (!"".equals(b2)) {
                        C1199n0.m9675p1(this.f5044i, System.currentTimeMillis() + 43200000);
                        JSONObject jSONObject = new JSONObject(b2);
                        if (jSONObject.getInt("status") == 1) {
                            C1182i iVar = new C1182i(this.f5044i);
                            iVar.m9839d();
                            JSONArray jSONArray = new JSONArray(jSONObject.getString("data_list"));
                            int i = 0;
                            while (true) {
                                str = b2;
                                if (i >= jSONArray.length()) {
                                    break;
                                }
                                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                String string = jSONObject2.getString("tel_number");
                                String string2 = jSONObject2.getString("type_label");
                                String string3 = jSONObject2.getString("format_number");
                                if (!iVar.m9837f(string).booleanValue() && !C1216t0.m9604H(this.f5044i, string)) {
                                    EZBlackList eZBlackList = new EZBlackList();
                                    eZBlackList.setName(string2);
                                    eZBlackList.setNumber(string);
                                    eZBlackList.setFormat_number(string3);
                                    long longValue = iVar.m9836g(eZBlackList).longValue();
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(longValue);
                                    sb3.append("");
                                    eZBlackList.setId(sb3.toString());
                                }
                                i++;
                            }
                        } else {
                            C1199n0.m9675p1(this.f5044i, 0L);
                            str = b2;
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
            super.onPostExecute(obj);
        }
    }

    /* renamed from: a */
    public static void m9644a(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            new AsyncTaskC1201a(context, str, str2, str3, str4, str5, str6).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
