package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p185o.C2917a;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.s */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/s.class */
public class C3848s {

    /* renamed from: com.allinone.callerid.util.s$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/s$b.class */
    public static class AsyncTaskC3850b extends AsyncTask<Void, Void, String> {
        private AsyncTaskC3850b() {
        }

        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            String str;
            String str2 = null;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("device", "android");
                hashMap.put("uid", C3767h1.m24268T(EZCallApplication.m26146c()));
                hashMap.put("version", C3767h1.m24265W(EZCallApplication.m26146c()));
                Response execute = OkHttpUtils.post().url("https://app.show-caller.com/api/v1/sertim.php").params((Map<String, String>) hashMap).build().execute();
                str = null;
                if (execute != null) {
                    str = null;
                    if (execute.isSuccessful()) {
                        String string = execute.body().string();
                        if (C3718c0.f11914a) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("result:");
                            sb.append(string);
                            C3718c0.m24436a("servertime", sb.toString());
                        }
                        String str3 = null;
                        if (string != null) {
                            str3 = null;
                            if (!"".equals(string)) {
                                String m23913b = C3866v.m23913b(string);
                                if (C3718c0.f11914a) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("解密后result=");
                                    sb2.append(m23913b);
                                    C3718c0.m24436a("servertime", sb2.toString());
                                }
                                JSONObject jSONObject = new JSONObject(m23913b.toString());
                                str3 = m23913b;
                                if (jSONObject.getInt("status") == 1) {
                                    String string2 = jSONObject.getString("timestamp");
                                    if (C3718c0.f11914a) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("time=");
                                        sb3.append(string2);
                                        C3718c0.m24436a("servertime", sb3.toString());
                                    }
                                    long currentTimeMillis = (System.currentTimeMillis() / 1000) - Long.parseLong(string2);
                                    C3711a1.m24637G1(currentTimeMillis);
                                    str3 = m23913b;
                                    if (C3718c0.f11914a) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("midtime=");
                                        sb4.append(String.valueOf(currentTimeMillis));
                                        C3718c0.m24436a("servertime", sb4.toString());
                                        str3 = m23913b;
                                    }
                                }
                            }
                        }
                        Headers headers = execute.headers();
                        str = str3;
                        if (headers != null) {
                            str2 = str3;
                            C3767h1.m24254d0(EZCallApplication.m26146c(), headers.get("cf-server"));
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

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                if (new JSONObject(str).getInt("status") != 1) {
                    return;
                }
                C2917a.m26414a();
                C3813r.m24056a();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m23967a() {
        new AsyncTaskC3850b().executeOnExecutor(C3735e1.m24405a(), new Void[0]);
    }
}
