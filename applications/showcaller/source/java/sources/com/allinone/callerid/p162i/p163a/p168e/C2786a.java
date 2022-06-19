package com.allinone.callerid.p162i.p163a.p168e;

import android.os.AsyncTask;
import com.allinone.callerid.p157f.C2619a;
/* renamed from: com.allinone.callerid.i.a.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e/a.class */
public class C2786a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e/a$a.class */
    public static class AsyncTaskC2787a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2790b f9537a;

        AsyncTaskC2787a(AbstractC2790b abstractC2790b) {
            this.f9537a = abstractC2790b;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C2619a.m27025c().m27027a());
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9537a.mo24346a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.e.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e/a$b.class */
    public static class AsyncTaskC2788b extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2791c f9538a;

        AsyncTaskC2788b(AbstractC2791c abstractC2791c) {
            this.f9538a = abstractC2791c;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            C2619a.m27025c().m27026b();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9538a.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.e.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e/a$c.class */
    public static class AsyncTaskC2789c extends AsyncTask<String, Void, Void> {
        AsyncTaskC2789c() {
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            C2619a.m27025c().m27024d();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
        }
    }

    /* renamed from: a */
    public static void m26600a(AbstractC2790b abstractC2790b) {
        try {
            new AsyncTaskC2787a(abstractC2790b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26599b(AbstractC2791c abstractC2791c) {
        try {
            new AsyncTaskC2788b(abstractC2791c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26598c() {
        try {
            new AsyncTaskC2789c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
