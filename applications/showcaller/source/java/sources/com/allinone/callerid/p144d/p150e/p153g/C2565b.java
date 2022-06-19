package com.allinone.callerid.p144d.p150e.p153g;

import android.os.AsyncTask;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p154f.C2577e;
import java.util.List;
/* renamed from: com.allinone.callerid.d.e.g.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/g/b.class */
public class C2565b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.g.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/g/b$a.class */
    public static class AsyncTaskC2566a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2564a f8975a;

        /* renamed from: b */
        private String f8976b;

        /* renamed from: c */
        private String f8977c;

        /* renamed from: d */
        private List<PersonaliseContact> f8978d;

        AsyncTaskC2566a(String str, String str2, List<PersonaliseContact> list, AbstractC2564a abstractC2564a) {
            this.f8975a = abstractC2564a;
            this.f8976b = str;
            this.f8977c = str2;
            this.f8978d = list;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                List<PersonaliseContact> list = this.f8978d;
                if (list != null && list.size() > 0) {
                    for (PersonaliseContact personaliseContact : this.f8978d) {
                        C2577e.m27081b(EZCallApplication.m26146c(), this.f8976b, this.f8977c, personaliseContact.getContacts_id());
                    }
                }
                return Boolean.TRUE;
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.FALSE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2564a abstractC2564a = this.f8975a;
            if (abstractC2564a != null) {
                abstractC2564a.mo27111a(bool.booleanValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.g.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/g/b$b.class */
    public static class AsyncTaskC2567b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2564a f8979a;

        /* renamed from: b */
        private String f8980b;

        /* renamed from: c */
        private String f8981c;

        AsyncTaskC2567b(String str, String str2, AbstractC2564a abstractC2564a) {
            this.f8979a = abstractC2564a;
            this.f8980b = str;
            this.f8981c = str2;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                return Boolean.valueOf(C2577e.m27082a(EZCallApplication.m26146c(), this.f8980b, this.f8981c));
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.FALSE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2564a abstractC2564a = this.f8979a;
            if (abstractC2564a != null) {
                abstractC2564a.mo27111a(bool.booleanValue());
            }
        }
    }

    /* renamed from: a */
    public static void m27110a(String str, String str2, List<PersonaliseContact> list, AbstractC2564a abstractC2564a) {
        new AsyncTaskC2566a(str, str2, list, abstractC2564a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: b */
    public static void m27109b(String str, String str2, AbstractC2564a abstractC2564a) {
        new AsyncTaskC2567b(str, str2, abstractC2564a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
