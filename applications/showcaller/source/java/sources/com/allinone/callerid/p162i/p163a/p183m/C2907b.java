package com.allinone.callerid.p162i.p163a.p183m;

import android.os.AsyncTask;
import com.allinone.callerid.bean.NumberContent;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
/* renamed from: com.allinone.callerid.i.a.m.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b.class */
public class C2907b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$a.class */
    public static class AsyncTaskC2908a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2906a f9677a;

        /* renamed from: b */
        private String f9678b;

        AsyncTaskC2908a(String str, AbstractC2906a abstractC2906a) {
            this.f9677a = abstractC2906a;
            this.f9678b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C2629e.m27010d().m27013a(this.f9678b));
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9677a.mo23874a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$b.class */
    public static class AsyncTaskC2909b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2906a f9679a;

        /* renamed from: b */
        private String f9680b;

        AsyncTaskC2909b(String str, AbstractC2906a abstractC2906a) {
            this.f9679a = abstractC2906a;
            this.f9680b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C2629e.m27010d().m27012b(this.f9680b));
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9679a.mo23874a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$c.class */
    public static class AsyncTaskC2910c extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2906a f9681a;

        /* renamed from: b */
        private String f9682b;

        AsyncTaskC2910c(String str, AbstractC2906a abstractC2906a) {
            this.f9681a = abstractC2906a;
            this.f9682b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C2629e.m27010d().m27011c(this.f9682b));
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9681a.mo23874a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$d.class */
    public static class AsyncTaskC2911d extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2906a f9683a;

        /* renamed from: b */
        private String f9684b;

        AsyncTaskC2911d(String str, AbstractC2906a abstractC2906a) {
            this.f9683a = abstractC2906a;
            this.f9684b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                NumberContent m27009e = C2629e.m27010d().m27009e(this.f9684b);
                if (m27009e != null && C3718c0.f11914a) {
                    C3718c0.m24436a("comment", "numberContent:" + m27009e.toString());
                }
                return (m27009e == null || m27009e.getSubmit_commentst_time() == 0) ? (m27009e == null || m27009e.getShow_submit_comment_time() == 0 || System.currentTimeMillis() - m27009e.getShow_submit_comment_time() >= 86400000) ? Boolean.TRUE : Boolean.FALSE : Boolean.FALSE;
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.FALSE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9683a.mo23874a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$e.class */
    public static class AsyncTaskC2912e extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2906a f9685a;

        /* renamed from: b */
        private String f9686b;

        AsyncTaskC2912e(String str, AbstractC2906a abstractC2906a) {
            this.f9685a = abstractC2906a;
            this.f9686b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                NumberContent m27009e = C2629e.m27010d().m27009e(this.f9686b);
                if (m27009e != null && C3718c0.f11914a) {
                    C3718c0.m24436a("comment", "numberContent:" + m27009e.toString());
                }
                return (m27009e == null || m27009e.getSubmit_commentst_time() == 0 || System.currentTimeMillis() - m27009e.getSubmit_commentst_time() >= 86400000) ? Boolean.TRUE : Boolean.FALSE;
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.TRUE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9685a.mo23874a(bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.m.b$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/m/b$f.class */
    public static class AsyncTaskC2913f extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private String f9687a;

        AsyncTaskC2913f(String str) {
            this.f9687a = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            C2629e.m27010d().m27004j(this.f9687a);
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }
    }

    /* renamed from: a */
    public static void m26436a(String str, AbstractC2906a abstractC2906a) {
        try {
            new AsyncTaskC2908a(str, abstractC2906a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26435b(String str, AbstractC2906a abstractC2906a) {
        try {
            new AsyncTaskC2911d(str, abstractC2906a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26434c(String str, AbstractC2906a abstractC2906a) {
        try {
            new AsyncTaskC2912e(str, abstractC2906a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26433d(String str, AbstractC2906a abstractC2906a) {
        try {
            new AsyncTaskC2909b(str, abstractC2906a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m26432e(String str, AbstractC2906a abstractC2906a) {
        try {
            new AsyncTaskC2910c(str, abstractC2906a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public static void m26431f(String str) {
        try {
            new AsyncTaskC2913f(str).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
