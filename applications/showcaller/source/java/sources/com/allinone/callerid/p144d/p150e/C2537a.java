package com.allinone.callerid.p144d.p150e;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p147b.C2473a;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3848s;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.d.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/a.class */
public class C2537a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/a$a.class */
    public static class AsyncTaskC2538a extends AsyncTask<String, String, Boolean> {

        /* renamed from: a */
        private AbstractC2539b f8936a;

        /* renamed from: b */
        private String f8937b;

        /* renamed from: c */
        private String f8938c;

        AsyncTaskC2538a(String str, String str2, AbstractC2539b abstractC2539b) {
            this.f8936a = abstractC2539b;
            this.f8937b = str;
            this.f8938c = str2;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            EZCallApplication m26146c = EZCallApplication.m26146c();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", C3767h1.m24268T(m26146c));
            hashMap.put("version", C3767h1.m24265W(m26146c));
            hashMap.put("stamp", C3767h1.m24271Q(m26146c, C3767h1.m24268T(m26146c)));
            hashMap.put("id", this.f8937b);
            hashMap.put("action", this.f8938c);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "params: " + hashMap.toString());
            }
            try {
                String m26206b = C3029a.m26206b("https://app.show-caller.com/caller_screen_v2/v1/recuseact.php", hashMap);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "request: " + m26206b);
                }
                if (m26206b != null && !"".equals(m26206b)) {
                    int i = new JSONObject(m26206b).getInt("status");
                    if (i == 1) {
                        return Boolean.TRUE;
                    }
                    if (i == -20) {
                        C3848s.m23967a();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "Exception: " + e.getMessage());
                }
            }
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2539b abstractC2539b = this.f8936a;
            if (abstractC2539b != null) {
                abstractC2539b.mo27153a();
            }
        }

        /* renamed from: c */
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate(strArr);
        }
    }

    /* renamed from: com.allinone.callerid.d.e.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/a$b.class */
    public interface AbstractC2539b {
        /* renamed from: a */
        void mo27153a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/a$c.class */
    public static class AsyncTaskC2540c extends AsyncTask<String, String, Boolean> {

        /* renamed from: a */
        private AbstractC2539b f8939a;

        /* renamed from: b */
        private String f8940b;

        /* renamed from: c */
        private boolean f8941c;

        /* renamed from: d */
        private int f8942d;

        AsyncTaskC2540c(String str, int i, boolean z, AbstractC2539b abstractC2539b) {
            this.f8939a = abstractC2539b;
            this.f8940b = str;
            this.f8941c = z;
            this.f8942d = i;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            C2473a.m27279a().m27277c(this.f8940b, this.f8941c, this.f8942d);
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2539b abstractC2539b = this.f8939a;
            if (abstractC2539b != null) {
                abstractC2539b.mo27153a();
            }
        }

        /* renamed from: c */
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/a$d.class */
    public static class AsyncTaskC2541d extends AsyncTask<String, String, Boolean> {

        /* renamed from: a */
        private AbstractC2539b f8943a;

        /* renamed from: b */
        private String f8944b;

        AsyncTaskC2541d(String str, AbstractC2539b abstractC2539b) {
            this.f8943a = abstractC2539b;
            this.f8944b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            C2473a.m27279a().m27276d(this.f8944b, true);
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2539b abstractC2539b = this.f8943a;
            if (abstractC2539b != null) {
                abstractC2539b.mo27153a();
            }
        }

        /* renamed from: c */
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate(strArr);
        }
    }

    /* renamed from: a */
    public static void m27159a(String str, String str2, AbstractC2539b abstractC2539b) {
        new AsyncTaskC2538a(str, str2, abstractC2539b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: b */
    public static void m27158b(String str, int i, boolean z, AbstractC2539b abstractC2539b) {
        new AsyncTaskC2540c(str, i, z, abstractC2539b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: c */
    public static void m27157c(String str, AbstractC2539b abstractC2539b) {
        new AsyncTaskC2541d(str, abstractC2539b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
