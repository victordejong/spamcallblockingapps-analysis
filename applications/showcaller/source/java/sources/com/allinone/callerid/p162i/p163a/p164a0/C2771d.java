package com.allinone.callerid.p162i.p163a.p164a0;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.i.a.a0.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/a0/d.class */
public class C2771d {

    /* renamed from: com.allinone.callerid.i.a.a0.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/a0/d$a.class */
    public static class AsyncTaskC2772a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2770c f9518a;

        /* renamed from: b */
        private String f9519b;

        /* renamed from: c */
        private Context f9520c;

        /* renamed from: d */
        private int f9521d;

        /* renamed from: e */
        private int f9522e;

        AsyncTaskC2772a(Context context, String str, int i, int i2, AbstractC2770c abstractC2770c) {
            this.f9518a = abstractC2770c;
            this.f9520c = context;
            this.f9519b = str;
            this.f9521d = i;
            this.f9522e = i2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            String str2 = null;
            try {
                String m24268T = C3767h1.m24268T(this.f9520c);
                String m24265W = C3767h1.m24265W(this.f9520c);
                String country_code = C3806p.m24083d(this.f9520c).getCountry_code();
                String m24271Q = C3767h1.m24271Q(this.f9520c, this.f9519b);
                String str3 = this.f9519b;
                str = null;
                if (str3 != null) {
                    str = null;
                    if (!"".equals(str3)) {
                        str = null;
                        if (m24268T != null) {
                            str = null;
                            if (!"".equals(m24268T)) {
                                str = null;
                                if (m24265W != null) {
                                    str = null;
                                    if (!"".equals(m24265W)) {
                                        str = null;
                                        if (country_code != null) {
                                            str = null;
                                            if (!"".equals(country_code)) {
                                                str = null;
                                                if (m24271Q != null) {
                                                    str = null;
                                                    if (!"".equals(m24271Q)) {
                                                        C3810q.m24071b().m24070c("search_param_not_null");
                                                        HashMap hashMap = new HashMap();
                                                        hashMap.put("tel_number", this.f9519b);
                                                        hashMap.put("device", "android");
                                                        hashMap.put("uid", m24268T);
                                                        hashMap.put("version", m24265W);
                                                        hashMap.put("default_cc", country_code);
                                                        hashMap.put("cc", country_code);
                                                        hashMap.put("stamp", m24271Q);
                                                        hashMap.put("cid", String.valueOf(this.f9521d));
                                                        hashMap.put("is_contacts", String.valueOf(this.f9522e));
                                                        if (C3718c0.f11914a) {
                                                            StringBuilder sb = new StringBuilder();
                                                            sb.append("所有参数：");
                                                            sb.append(hashMap.toString());
                                                            C3718c0.m24436a("searchNumber", sb.toString());
                                                        }
                                                        C3810q.m24071b().m24069d("search_number_float");
                                                        if (this.f9521d == 1) {
                                                            C3810q.m24071b().m24069d("unknown_incoming_search");
                                                            if (this.f9519b.startsWith("140") || this.f9519b.startsWith("+91140") || this.f9519b.startsWith("0091140")) {
                                                                C3738f0.m24400C(this.f9520c);
                                                            }
                                                        }
                                                        C3738f0.m24386a(this.f9520c);
                                                        String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/sea.php", hashMap);
                                                        str = m26206b;
                                                        if (C3718c0.f11914a) {
                                                            StringBuilder sb2 = new StringBuilder();
                                                            sb2.append("response:");
                                                            sb2.append(m26206b);
                                                            str2 = m26206b;
                                                            C3718c0.m24436a("searchNumber", sb2.toString());
                                                            str = m26206b;
                                                        }
                                                    }
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
                str = str2;
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9518a.mo25491a(str);
        }
    }

    /* renamed from: a */
    public static void m26617a(Context context, String str, int i, int i2, AbstractC2770c abstractC2770c) {
        try {
            if (C3711a1.m24463z0()) {
                return;
            }
            new AsyncTaskC2772a(context, str, i, i2, abstractC2770c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
