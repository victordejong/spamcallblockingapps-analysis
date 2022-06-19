package com.callerid.block.util;

import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Response;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.n */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/n.class */
public class C1197n {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.n$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/n$a.class */
    public static class AsyncTaskC1198a extends AsyncTask<Object, Void, Object> {
        AsyncTaskC1198a() {
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            String str;
            EZCallApplication m10163c = EZCallApplication.m10163c();
            String str2 = null;
            try {
                String m9607E = C1216t0.m9607E(m10163c);
                String m9605G = C1216t0.m9605G(m10163c);
                HashMap hashMap = new HashMap();
                hashMap.put("device", "android");
                hashMap.put("uid", m9607E);
                hashMap.put("version", m9605G);
                Response execute = OkHttpUtils.post().url("https://app.ayamote.com/api/v1/sertim.php").params((Map<String, String>) hashMap).build().execute();
                str = null;
                if (execute != null) {
                    str = null;
                    if (execute.isSuccessful()) {
                        String string = execute.body().string();
                        if (C1227w.f5084a) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("result:");
                            sb.append(string);
                            C1227w.m9527a("servertime", sb.toString());
                        }
                        String str3 = null;
                        if (string != null) {
                            str3 = null;
                            if (!"".equals(string)) {
                                String m9627b = C1209r.m9627b(string);
                                if (C1227w.f5084a) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("解密后result=");
                                    sb2.append(m9627b);
                                    C1227w.m9527a("servertime", sb2.toString());
                                }
                                JSONObject jSONObject = new JSONObject(m9627b.toString());
                                str3 = m9627b;
                                if (jSONObject.getInt("status") == 1) {
                                    String string2 = jSONObject.getString("timestamp");
                                    if (C1227w.f5084a) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("time=");
                                        sb3.append(string2);
                                        C1227w.m9527a("servertime", sb3.toString());
                                    }
                                    long currentTimeMillis = (System.currentTimeMillis() / 1000) - Long.parseLong(string2);
                                    C1199n0.m9731V0(m10163c, currentTimeMillis);
                                    str3 = m9627b;
                                    if (C1227w.f5084a) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("midtime=");
                                        sb4.append(String.valueOf(currentTimeMillis));
                                        C1227w.m9527a("servertime", sb4.toString());
                                        str3 = m9627b;
                                    }
                                }
                            }
                        }
                        Headers headers = execute.headers();
                        str = str3;
                        if (headers != null) {
                            str2 = str3;
                            C1216t0.m9599M(m10163c, headers.get("cf-server"));
                            str = str3;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                str = str2;
            }
            return str;
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (obj == null || "".equals(obj.toString())) {
                return;
            }
            C1193m.m9792a();
            C1188l.m9798a();
        }
    }

    /* renamed from: a */
    public static void m9784a() {
        try {
            new AsyncTaskC1198a().executeOnExecutor(C1208q0.m9629a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
