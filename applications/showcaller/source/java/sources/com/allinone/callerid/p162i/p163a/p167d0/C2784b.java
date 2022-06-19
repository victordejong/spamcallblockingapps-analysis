package com.allinone.callerid.p162i.p163a.p167d0;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.i.a.d0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/d0/b.class */
public class C2784b {

    /* renamed from: com.allinone.callerid.i.a.d0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/d0/b$a.class */
    public static class AsyncTaskC2785a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2783a f9532a;

        /* renamed from: b */
        private Context f9533b;

        /* renamed from: c */
        private String f9534c;

        /* renamed from: d */
        private String f9535d;

        /* renamed from: e */
        private String f9536e;

        AsyncTaskC2785a(Context context, String str, String str2, AbstractC2783a abstractC2783a) {
            this.f9532a = abstractC2783a;
            this.f9533b = context;
            this.f9535d = str;
            this.f9536e = str2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                String m24286G = C3767h1.m24286G();
                String m24271Q = C3767h1.m24271Q(this.f9533b, this.f9536e);
                String m24268T = C3767h1.m24268T(EZCallApplication.m26146c());
                String m24265W = C3767h1.m24265W(EZCallApplication.m26146c());
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9536e);
                hashMap.put("device", "android");
                hashMap.put("uid", m24268T);
                hashMap.put("version", m24265W);
                hashMap.put("cc", this.f9535d);
                hashMap.put("stamp", m24271Q);
                hashMap.put("lang", m24286G);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("subtype", "params:" + hashMap.toString());
                }
                this.f9534c = C3029a.m26206b("https://app.show-caller.com/api/v1/seacomcousub.php", hashMap);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("subtype", "enlode_result:" + this.f9534c);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9534c;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9532a.mo25867a(str);
        }
    }

    /* renamed from: a */
    public static void m26603a(Context context, String str, String str2, AbstractC2783a abstractC2783a) {
        try {
            AsyncTaskC2785a asyncTaskC2785a = new AsyncTaskC2785a(context, str, str2, abstractC2783a);
            if (asyncTaskC2785a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2785a.cancel(true);
            new AsyncTaskC2785a(context, str, str2, abstractC2783a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
