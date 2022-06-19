package com.allinone.callerid.p162i.p163a.p164a0;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3866v;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.i.a.a0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/a0/b.class */
public class C2768b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.a0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/a0/b$a.class */
    public static class AsyncTaskC2769a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2767a f9514a;

        /* renamed from: b */
        private String f9515b;

        /* renamed from: c */
        private String f9516c;

        /* renamed from: d */
        private Context f9517d;

        AsyncTaskC2769a(Context context, String str, String str2, AbstractC2767a abstractC2767a) {
            this.f9514a = abstractC2767a;
            this.f9517d = context;
            this.f9515b = str2;
            this.f9516c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2 = null;
            try {
                String m24274N = C3767h1.m24274N();
                String m24268T = C3767h1.m24268T(this.f9517d);
                String m24265W = C3767h1.m24265W(this.f9517d);
                String country_code = C3806p.m24083d(this.f9517d).getCountry_code();
                String m24271Q = C3767h1.m24271Q(this.f9517d, this.f9515b);
                String str3 = this.f9515b;
                str = null;
                if (str3 != null) {
                    str = null;
                    if (!"".equals(str3)) {
                        str = null;
                        if (country_code != null) {
                            str = null;
                            if (!"".equals(country_code)) {
                                str = null;
                                if (m24271Q != null) {
                                    str = null;
                                    if (!"".equals(m24271Q)) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("platform", "android");
                                        hashMap.put("device", m24274N);
                                        hashMap.put("uid", m24268T);
                                        hashMap.put("app_version", m24265W);
                                        hashMap.put("tel_number", C3866v.m23912c(this.f9515b));
                                        hashMap.put("default_cc", country_code);
                                        hashMap.put("cc", this.f9516c);
                                        hashMap.put("stamp", m24271Q);
                                        if (C3718c0.f11914a) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("searchNumber：");
                                            sb.append(this.f9515b);
                                            C3718c0.m24436a("buyu", sb.toString());
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("所有参数：");
                                            sb2.append(hashMap.toString());
                                            C3718c0.m24436a("buyu", sb2.toString());
                                        }
                                        String m26206b = C3029a.m26206b("https://app2.show-caller.com/api/v1/scl.php", hashMap);
                                        str = m26206b;
                                        if (C3718c0.f11914a) {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append("response:");
                                            sb3.append(m26206b);
                                            str2 = m26206b;
                                            C3718c0.m24436a("buyu", sb3.toString());
                                            str = m26206b;
                                        }
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
            this.f9514a.mo26621a(str);
        }
    }

    /* renamed from: a */
    public static void m26620a(Context context, String str, String str2, AbstractC2767a abstractC2767a) {
        try {
            new AsyncTaskC2769a(context, str, str2, abstractC2767a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
