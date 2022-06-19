package com.allinone.callerid.p162i.p163a.p179j;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3866v;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.i.a.j.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/g.class */
public class C2877g {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.j.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/g$a.class */
    public static class AsyncTaskC2878a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2876f f9637a;

        /* renamed from: b */
        private String f9638b;

        /* renamed from: c */
        private long f9639c;

        /* renamed from: d */
        private String f9640d;

        /* renamed from: e */
        private String f9641e;

        /* renamed from: f */
        private String f9642f;

        /* renamed from: g */
        private String f9643g;

        /* renamed from: h */
        private String f9644h;

        AsyncTaskC2878a(String str, long j, String str2, String str3, String str4, String str5, String str6, AbstractC2876f abstractC2876f) {
            this.f9637a = abstractC2876f;
            this.f9638b = str;
            this.f9639c = j;
            this.f9640d = str2;
            this.f9641e = str3;
            this.f9642f = str4;
            this.f9643g = str5;
            this.f9644h = str6;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2 = null;
            try {
                EZCallApplication m26146c = EZCallApplication.m26146c();
                String country_code = C3806p.m24083d(m26146c).getCountry_code();
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9638b);
                hashMap.put("device", "android");
                hashMap.put("uid", C3767h1.m24268T(m26146c));
                hashMap.put("version", C3767h1.m24265W(m26146c));
                hashMap.put("default_cc", country_code);
                hashMap.put("stamp", C3767h1.m24271Q(m26146c, C3767h1.m24268T(m26146c)));
                hashMap.put("ip", C3767h1.m24298A());
                hashMap.put("reply_time", String.valueOf(this.f9639c / 1000));
                hashMap.put("call_time", this.f9640d);
                hashMap.put("is_answered", this.f9641e);
                hashMap.put("is_normal", this.f9642f);
                hashMap.put("type_label", this.f9643g);
                hashMap.put("content", C3866v.m23912c(this.f9644h));
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("params:");
                    sb.append(hashMap.toString());
                    C3718c0.m24436a("submitcomment", sb.toString());
                }
                String m26206b = C3029a.m26206b("https://ct.show-caller.com/c_l/api/v1/scom.php", hashMap);
                str = m26206b;
                if (C3718c0.f11914a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("response:");
                    sb2.append(m26206b);
                    str2 = m26206b;
                    C3718c0.m24436a("submitcomment", sb2.toString());
                    str = m26206b;
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
            this.f9637a.mo25493a(str);
        }
    }

    /* renamed from: a */
    public static void m26478a(String str, long j, String str2, String str3, String str4, String str5, String str6, AbstractC2876f abstractC2876f) {
        try {
            new AsyncTaskC2878a(str, j, str2, str3, str4, str5, str6, abstractC2876f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
