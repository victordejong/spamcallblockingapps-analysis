package com.allinone.callerid.p162i.p163a.p169e0;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.service.MyService;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.i.a.e0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e0/b.class */
public class C2793b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.e0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/e0/b$a.class */
    public static class AsyncTaskC2794a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2792a f9539a;

        /* renamed from: b */
        private Context f9540b;

        AsyncTaskC2794a(Context context, AbstractC2792a abstractC2792a) {
            this.f9539a = abstractC2792a;
            this.f9540b = context;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            boolean z;
            try {
                z = C3767h1.m24222t0(this.f9540b, MyService.class.getName());
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9539a.mo24808a(bool.booleanValue());
        }
    }

    /* renamed from: a */
    public static void m26591a(Context context, AbstractC2792a abstractC2792a) {
        try {
            new AsyncTaskC2794a(context, abstractC2792a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
