package com.callerid.block.p040h.p041a.p050f;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1216t0;
/* renamed from: com.callerid.block.h.a.f.r */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/r.class */
public class C1051r {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.f.r$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/r$a.class */
    public static class AsyncTaskC1052a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1050q f4491a;

        /* renamed from: b */
        private String f4492b;

        /* renamed from: c */
        private Context f4493c;

        AsyncTaskC1052a(Context context, String str, AbstractC1050q abstractC1050q) {
            this.f4491a = abstractC1050q;
            this.f4492b = str;
            this.f4493c = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            return C1216t0.m9567j(this.f4493c, this.f4492b);
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4491a.m10292a(str);
        }
    }

    /* renamed from: a */
    public static void m10291a(Context context, String str, AbstractC1050q abstractC1050q) {
        try {
            AsyncTaskC1052a asyncTaskC1052a = new AsyncTaskC1052a(context, str, abstractC1050q);
            if (asyncTaskC1052a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC1052a.cancel(true);
            new AsyncTaskC1052a(context, str, abstractC1050q).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
