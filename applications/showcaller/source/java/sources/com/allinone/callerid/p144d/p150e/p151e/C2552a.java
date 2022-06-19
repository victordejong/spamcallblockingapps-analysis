package com.allinone.callerid.p144d.p150e.p151e;

import android.os.AsyncTask;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p147b.C2480c;
import com.allinone.callerid.p144d.p147b.C2487e;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import java.util.List;
/* renamed from: com.allinone.callerid.d.e.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/a.class */
public class C2552a {

    /* renamed from: com.allinone.callerid.d.e.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/a$a.class */
    public interface AbstractC2553a {
        /* renamed from: a */
        void mo27126a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.e.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/a$b.class */
    public static class AsyncTaskC2554b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2553a f8965a;

        /* renamed from: b */
        private HomeInfo f8966b;

        /* renamed from: c */
        private List<PersonaliseContact> f8967c;

        AsyncTaskC2554b(HomeInfo homeInfo, List<PersonaliseContact> list, AbstractC2553a abstractC2553a) {
            this.f8965a = abstractC2553a;
            this.f8966b = homeInfo;
            this.f8967c = list;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                List<PersonaliseContact> list = this.f8967c;
                if (list != null && list.size() > 0) {
                    for (PersonaliseContact personaliseContact : this.f8967c) {
                        PersonaliseContact personaliseContact2 = new PersonaliseContact();
                        personaliseContact2.setDataId(this.f8966b.getData_id());
                        personaliseContact2.setContacts_id(personaliseContact.getContacts_id());
                        personaliseContact2.setName(personaliseContact.getName());
                        personaliseContact2.setNumber(personaliseContact.getNumber());
                        personaliseContact2.setPath(this.f8966b.getPath());
                        personaliseContact2.setThemtname(this.f8966b.getName());
                        personaliseContact2.setSortLetters(personaliseContact.getSortLetters());
                        personaliseContact2.setIsdiy(this.f8966b.isIsdiy());
                        personaliseContact2.setUseVideoAudioRing(this.f8966b.isUseVideoAudioRing());
                        C2480c.m27268d().m27271a(personaliseContact2);
                    }
                    if (this.f8966b.isIsdefault()) {
                        C2487e.m27256e().m27258c(this.f8966b.getPath());
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
            AbstractC2553a abstractC2553a = this.f8965a;
            if (abstractC2553a != null) {
                abstractC2553a.mo27126a(bool.booleanValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.e.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/a$c.class */
    public static class AsyncTaskC2555c extends AsyncTask<String, String, PersonaliseContact> {

        /* renamed from: a */
        private AbstractC2556b f8968a;

        /* renamed from: b */
        private String f8969b;

        AsyncTaskC2555c(String str, AbstractC2556b abstractC2556b) {
            this.f8968a = abstractC2556b;
            this.f8969b = str;
        }

        /* renamed from: a */
        public PersonaliseContact doInBackground(String... strArr) {
            try {
                int m24262Z = C3767h1.m24262Z(EZCallApplication.m26146c(), this.f8969b);
                if (m24262Z != 0) {
                    return C2480c.m27268d().m27266f(String.valueOf(m24262Z));
                }
                return C2480c.m27268d().m27265g(this.f8969b);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(PersonaliseContact personaliseContact) {
            super.onPostExecute(personaliseContact);
            AbstractC2556b abstractC2556b = this.f8968a;
            if (abstractC2556b != null) {
                abstractC2556b.mo24813a(personaliseContact);
            }
        }
    }

    /* renamed from: a */
    public static void m27128a(String str, AbstractC2556b abstractC2556b) {
        new AsyncTaskC2555c(str, abstractC2556b).executeOnExecutor(C3735e1.m24405a(), new String[0]);
    }

    /* renamed from: b */
    public static void m27127b(HomeInfo homeInfo, List<PersonaliseContact> list, AbstractC2553a abstractC2553a) {
        new AsyncTaskC2554b(homeInfo, list, abstractC2553a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
