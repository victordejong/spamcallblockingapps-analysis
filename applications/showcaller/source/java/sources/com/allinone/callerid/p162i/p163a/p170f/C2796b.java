package com.allinone.callerid.p162i.p163a.p170f;

import android.os.AsyncTask;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3800m;
/* renamed from: com.allinone.callerid.i.a.f.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b.class */
public class C2796b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$a.class */
    public static class AsyncTaskC2797a extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9541a;

        /* renamed from: b */
        private EZBlackList f9542b;

        AsyncTaskC2797a(EZBlackList eZBlackList, AbstractC2766a abstractC2766a) {
            this.f9541a = abstractC2766a;
            this.f9542b = eZBlackList;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24097l(this.f9542b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9541a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$b.class */
    public static class AsyncTaskC2798b extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9543a;

        AsyncTaskC2798b(AbstractC2766a abstractC2766a) {
            this.f9543a = abstractC2766a;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24107b();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9543a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$c.class */
    public static class AsyncTaskC2799c extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9544a;

        AsyncTaskC2799c(AbstractC2766a abstractC2766a) {
            this.f9544a = abstractC2766a;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24108a();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9544a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$d.class */
    public static class AsyncTaskC2800d extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9545a;

        /* renamed from: b */
        private String f9546b;

        AsyncTaskC2800d(String str, AbstractC2766a abstractC2766a) {
            this.f9545a = abstractC2766a;
            this.f9546b = str;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24104e(this.f9546b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9545a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$e.class */
    public static class AsyncTaskC2801e extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9547a;

        /* renamed from: b */
        private String f9548b;

        AsyncTaskC2801e(String str, AbstractC2766a abstractC2766a) {
            this.f9547a = abstractC2766a;
            this.f9548b = str;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24105d(this.f9548b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9547a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$f.class */
    public static class AsyncTaskC2802f extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2795a f9549a;

        /* renamed from: b */
        private String f9550b;

        AsyncTaskC2802f(String str, AbstractC2795a abstractC2795a) {
            this.f9549a = abstractC2795a;
            this.f9550b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return new C3800m(EZCallApplication.m26146c()).m24099j(this.f9550b);
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9549a.mo24705a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.f.b$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/f/b$g.class */
    public static class AsyncTaskC2803g extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC2766a f9551a;

        /* renamed from: b */
        private EZBlackList f9552b;

        AsyncTaskC2803g(EZBlackList eZBlackList, AbstractC2766a abstractC2766a) {
            this.f9551a = abstractC2766a;
            this.f9552b = eZBlackList;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C3800m(EZCallApplication.m26146c()).m24095n(this.f9552b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9551a.mo24704a();
        }
    }

    /* renamed from: a */
    public static void m26588a(EZBlackList eZBlackList, AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2797a(eZBlackList, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26587b(String str, AbstractC2795a abstractC2795a) {
        try {
            new AsyncTaskC2802f(str, abstractC2795a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26586c(AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2799c(abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26585d(AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2798b(abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m26584e(String str, AbstractC2766a abstractC2766a) {
        new AsyncTaskC2801e(str, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: f */
    public static void m26583f(String str, AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2800d(str, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m26582g(EZBlackList eZBlackList, AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2803g(eZBlackList, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
