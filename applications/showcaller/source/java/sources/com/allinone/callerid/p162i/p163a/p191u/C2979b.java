package com.allinone.callerid.p162i.p163a.p191u;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.i.a.u.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/u/b.class */
public class C2979b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.u.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/u/b$a.class */
    public static class AsyncTaskC2980a extends AsyncTask<String, Void, EZSearchContacts> {

        /* renamed from: a */
        private AbstractC2978a f9765a;

        /* renamed from: b */
        private String f9766b;

        /* renamed from: c */
        private EZSearchContacts f9767c;

        /* renamed from: d */
        private Context f9768d;

        AsyncTaskC2980a(Context context, String str, AbstractC2978a abstractC2978a) {
            this.f9765a = abstractC2978a;
            this.f9766b = str;
            this.f9768d = context;
        }

        /* renamed from: a */
        public EZSearchContacts doInBackground(String... strArr) {
            try {
                if (!C3767h1.m24263Y(this.f9768d, this.f9766b)) {
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9766b);
                    this.f9767c = m26999d;
                    if (m26999d == null) {
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        this.f9767c = eZSearchContacts;
                        eZSearchContacts.setOld_tel_number(this.f9766b);
                    }
                    if (System.currentTimeMillis() - this.f9767c.getWeekoutingtime() < 604800000) {
                        EZSearchContacts eZSearchContacts2 = this.f9767c;
                        eZSearchContacts2.setWeekoutingnum(eZSearchContacts2.getWeekoutingnum() + 1);
                    } else {
                        this.f9767c.setWeekoutingnum(1);
                        this.f9767c.setWeekoutingtime(0L);
                    }
                    if (this.f9767c.getWeekoutingtime() == 0) {
                        this.f9767c.setWeekoutingtime(System.currentTimeMillis());
                    }
                    C2631f.m27001b().m27000c(this.f9767c);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9767c;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchContacts eZSearchContacts) {
            super.onPostExecute(eZSearchContacts);
            AbstractC2978a abstractC2978a = this.f9765a;
            if (abstractC2978a != null) {
                abstractC2978a.mo24811a(eZSearchContacts);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.u.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/u/b$b.class */
    public static class AsyncTaskC2981b extends AsyncTask<String, Void, EZSearchContacts> {

        /* renamed from: a */
        private AbstractC2978a f9769a;

        /* renamed from: b */
        private String f9770b;

        /* renamed from: c */
        private EZSearchContacts f9771c;

        /* renamed from: d */
        private Context f9772d;

        AsyncTaskC2981b(Context context, String str, AbstractC2978a abstractC2978a) {
            this.f9769a = abstractC2978a;
            this.f9770b = str;
            this.f9772d = context;
        }

        /* renamed from: a */
        public EZSearchContacts doInBackground(String... strArr) {
            try {
                if (!C3767h1.m24263Y(this.f9772d, this.f9770b)) {
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9770b);
                    this.f9771c = m26999d;
                    if (m26999d == null) {
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        this.f9771c = eZSearchContacts;
                        eZSearchContacts.setOld_tel_number(this.f9770b);
                    }
                    if (System.currentTimeMillis() - this.f9771c.getLongnumberdate() < 604800000) {
                        EZSearchContacts eZSearchContacts2 = this.f9771c;
                        eZSearchContacts2.setOnedayincomingah(eZSearchContacts2.getOnedayincomingah() + 1);
                    } else {
                        this.f9771c.setOnedayincomingah(1);
                        this.f9771c.setLongnumberdate(0L);
                    }
                    if (this.f9771c.getLongnumberdate() == 0) {
                        this.f9771c.setLongnumberdate(System.currentTimeMillis());
                    }
                    C2631f.m27001b().m27000c(this.f9771c);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9771c;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchContacts eZSearchContacts) {
            super.onPostExecute(eZSearchContacts);
            this.f9769a.mo24811a(eZSearchContacts);
        }
    }

    /* renamed from: a */
    public static void m26316a(Context context, String str, AbstractC2978a abstractC2978a) {
        try {
            new AsyncTaskC2980a(context, str, abstractC2978a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26315b(Context context, String str, AbstractC2978a abstractC2978a) {
        try {
            new AsyncTaskC2981b(context, str, abstractC2978a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
