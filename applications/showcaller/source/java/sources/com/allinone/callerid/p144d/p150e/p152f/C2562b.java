package com.allinone.callerid.p144d.p150e.p152f;

import android.os.AsyncTask;
import com.allinone.callerid.callscreen.bean.DownloadInfo;
import com.allinone.callerid.p144d.p147b.C2476b;
/* renamed from: com.allinone.callerid.d.e.f.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/f/b.class */
public class C2562b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.f.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/f/b$a.class */
    public static class AsyncTaskC2563a extends AsyncTask<String, String, Boolean> {

        /* renamed from: a */
        private AbstractC2561a f8973a;

        /* renamed from: b */
        private DownloadInfo f8974b;

        AsyncTaskC2563a(DownloadInfo downloadInfo, AbstractC2561a abstractC2561a) {
            this.f8974b = downloadInfo;
            this.f8973a = abstractC2561a;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                return Boolean.valueOf(C2476b.m27274b().m27275a(this.f8974b));
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.FALSE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2561a abstractC2561a = this.f8973a;
            if (abstractC2561a != null) {
                abstractC2561a.mo27115a(bool.booleanValue(), this.f8974b);
            }
        }
    }

    /* renamed from: a */
    public static void m27114a(DownloadInfo downloadInfo, AbstractC2561a abstractC2561a) {
        new AsyncTaskC2563a(downloadInfo, abstractC2561a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
