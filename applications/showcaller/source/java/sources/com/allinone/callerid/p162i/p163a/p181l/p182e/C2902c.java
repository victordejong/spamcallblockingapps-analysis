package com.allinone.callerid.p162i.p163a.p181l.p182e;

import android.os.AsyncTask;
import com.allinone.callerid.bean.NoDisturbBean;
import com.allinone.callerid.p157f.p158j.C2639a;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.i.a.l.e.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/e/c.class */
public class C2902c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.e.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/e/c$a.class */
    public static class AsyncTaskC2903a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2901b f9673a;

        /* renamed from: b */
        private NoDisturbBean f9674b;

        AsyncTaskC2903a(NoDisturbBean noDisturbBean, AbstractC2901b abstractC2901b) {
            this.f9673a = abstractC2901b;
            this.f9674b = noDisturbBean;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                return Boolean.valueOf(C2639a.m26985b().m26982e(this.f9674b));
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2901b abstractC2901b = this.f9673a;
            if (abstractC2901b != null) {
                abstractC2901b.mo25262a(bool.booleanValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.e.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/e/c$b.class */
    public static class AsyncTaskC2904b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        AbstractC2901b f9675a;

        AsyncTaskC2904b(AbstractC2901b abstractC2901b) {
            this.f9675a = abstractC2901b;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                return Boolean.valueOf(C2639a.m26985b().m26986a(strArr[0]));
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2901b abstractC2901b = this.f9675a;
            if (abstractC2901b != null) {
                abstractC2901b.mo25262a(bool.booleanValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.l.e.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/l/e/c$c.class */
    public static class AsyncTaskC2905c extends AsyncTask<String, Void, ArrayList<NoDisturbBean>> {

        /* renamed from: a */
        AbstractC2900a f9676a;

        AsyncTaskC2905c(AbstractC2900a abstractC2900a) {
            this.f9676a = abstractC2900a;
        }

        /* renamed from: a */
        public ArrayList<NoDisturbBean> doInBackground(String... strArr) {
            try {
                return (ArrayList) C2639a.m26985b().m26983d();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<NoDisturbBean> arrayList) {
            super.onPostExecute(arrayList);
            AbstractC2900a abstractC2900a = this.f9676a;
            if (abstractC2900a != null) {
                abstractC2900a.mo25265a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public static void m26445a(NoDisturbBean noDisturbBean, AbstractC2901b abstractC2901b) {
        try {
            new AsyncTaskC2903a(noDisturbBean, abstractC2901b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26444b(String str, AbstractC2901b abstractC2901b) {
        try {
            new AsyncTaskC2904b(abstractC2901b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26443c(AbstractC2900a abstractC2900a) {
        try {
            new AsyncTaskC2905c(abstractC2900a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
