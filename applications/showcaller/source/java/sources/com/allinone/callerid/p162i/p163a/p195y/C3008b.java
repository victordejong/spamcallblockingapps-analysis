package com.allinone.callerid.p162i.p163a.p195y;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.y.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/y/b.class */
public class C3008b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.y.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/y/b$a.class */
    public static class AsyncTaskC3009a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC3007a f9823a;

        /* renamed from: b */
        private String f9824b;

        /* renamed from: c */
        private String f9825c;

        /* renamed from: d */
        private Context f9826d;

        AsyncTaskC3009a(Context context, String str, String str2, AbstractC3007a abstractC3007a) {
            this.f9823a = abstractC3007a;
            this.f9826d = context;
            this.f9824b = str;
            this.f9825c = str2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = null;
            String str2 = null;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9825c);
                hashMap.put("device", "android");
                hashMap.put("uid", C3767h1.m24268T(this.f9826d));
                hashMap.put("version", C3767h1.m24265W(this.f9826d));
                hashMap.put("default_cc", C3806p.m24083d(this.f9826d).getCountry_code());
                hashMap.put("stamp", C3767h1.m24271Q(this.f9826d, this.f9825c));
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/gecc.php", hashMap);
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("response:");
                    sb.append(m26206b);
                    C3718c0.m24436a("searchCC", sb.toString());
                }
                JSONObject jSONObject = new JSONObject(m26206b);
                if (jSONObject.getString("status").equals("1")) {
                    String string = jSONObject.getString("cc");
                    str = string;
                    if (!string.equals(this.f9824b)) {
                        C3711a1.m24614M0(string);
                        List m26269b = C3008b.m26269b(this.f9826d);
                        str = string;
                        if (m26269b != null) {
                            str = string;
                            if (!"".equals(m26269b)) {
                                Iterator it = m26269b.iterator();
                                while (true) {
                                    str2 = string;
                                    str = string;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    EZCountryCode eZCountryCode = (EZCountryCode) it.next();
                                    if (string.equals(eZCountryCode.getCountry_code())) {
                                        C3711a1.m24606O0(eZCountryCode.getIso_code());
                                        C3711a1.m24610N0(eZCountryCode.getCountry_name());
                                    }
                                }
                            }
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
            this.f9823a.mo25866a(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static List m26269b(Context context) {
        List list;
        List arrayList = new ArrayList();
        try {
            list = C3806p.m24086a(context);
        } catch (IOException e) {
            e.printStackTrace();
            list = arrayList;
        } catch (JSONException e2) {
            e2.printStackTrace();
            list = arrayList;
        }
        return list;
    }

    /* renamed from: c */
    public static void m26268c(Context context, String str, String str2, AbstractC3007a abstractC3007a) {
        try {
            new AsyncTaskC3009a(context, str, str2, abstractC3007a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
