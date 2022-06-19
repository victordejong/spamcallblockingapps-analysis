package com.allinone.callerid.p162i.p163a.p184n;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3803n0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.i.a.n.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/n/a.class */
public class C2914a {

    /* renamed from: com.allinone.callerid.i.a.n.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/n/a$a.class */
    public static class AsyncTaskC2915a extends AsyncTask<String, Void, EZSearchContacts> {

        /* renamed from: a */
        private AbstractC2916b f9688a;

        /* renamed from: b */
        private String f9689b;

        /* renamed from: c */
        private EZSearchContacts f9690c;

        /* renamed from: d */
        private Context f9691d;

        /* renamed from: e */
        private String f9692e;

        AsyncTaskC2915a(Context context, String str, String str2, AbstractC2916b abstractC2916b) {
            this.f9688a = abstractC2916b;
            this.f9689b = str;
            this.f9691d = context.getApplicationContext();
            this.f9692e = str2;
        }

        /* renamed from: a */
        public EZSearchContacts doInBackground(String... strArr) {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "通话记录数据库没查到，去离线数据库查询: " + this.f9692e);
                }
                String country_code = C3806p.m24083d(this.f9691d).getCountry_code();
                if (country_code != null && !"".equals(country_code)) {
                    String str = this.f9692e;
                    String m24249g = (str == null || "".equals(str)) ? C3767h1.m24249g(this.f9691d, this.f9689b, country_code) : this.f9692e;
                    if (m24249g != null && !"".equals(m24249g)) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wbb", "离线数据库search_number: " + m24249g);
                        }
                        if (C3767h1.m24240k0()) {
                            C3738f0.m24395H(this.f9691d);
                            C3810q.m24071b().m24069d("search_offline_db_new");
                            C3738f0.m24394I(this.f9691d);
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("wbb", "离线数据库 isHaveOfflineDb");
                            }
                            EZSearchContacts m24088a = new C3803n0(this.f9691d).m24088a(m24249g, this.f9689b);
                            this.f9690c = m24088a;
                            if (m24088a != null) {
                                C3738f0.m24393J(this.f9691d);
                                C3810q.m24071b().m24069d("search_offline_db_success_new");
                                C3738f0.m24392K(this.f9691d);
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("wbb", "SearchOfflineData查询成功");
                                }
                                C2631f.m27001b().m27000c(this.f9690c);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9690c;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchContacts eZSearchContacts) {
            super.onPostExecute(eZSearchContacts);
            this.f9688a.mo26415a(eZSearchContacts);
        }
    }

    /* renamed from: a */
    public static void m26418a(Context context, String str, String str2, AbstractC2916b abstractC2916b) {
        try {
            new AsyncTaskC2915a(context, str, str2, abstractC2916b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
