package com.callerid.block.p040h.p041a.p044d;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.p060x0.C1230a;
/* renamed from: com.callerid.block.h.a.d.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/c.class */
public class C0977c {

    /* renamed from: com.callerid.block.h.a.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/c$a.class */
    private static class AsyncTaskC0978a extends AsyncTask<String, Void, Long> {

        /* renamed from: a */
        private AbstractC0976b f4399a;

        /* renamed from: b */
        private String f4400b;

        AsyncTaskC0978a(String str, AbstractC0976b abstractC0976b) {
            this.f4399a = abstractC0976b;
            this.f4400b = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17 */
        /* JADX WARN: Type inference failed for: r0v20 */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* renamed from: a */
        public Long doInBackground(String... strArr) {
            ?? r14 = false;
            if (C1230a.m9514b(EZCallApplication.m10163c(), "android.permission.READ_CALL_LOG")) {
                Cursor query = EZCallApplication.m10163c().getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date"}, "number=?", new String[]{this.f4400b.replace(" ", "")}, "date desc limit 1");
                ?? r18 = false;
                if (query != null) {
                    r18 = false;
                    if (query.moveToFirst()) {
                        r18 = query.getLong(0);
                    }
                }
                r14 = r18;
                if (query != null) {
                    query.close();
                    r14 = r18;
                }
            }
            return Long.valueOf(r14 == true ? 1L : 0L);
        }

        /* renamed from: b */
        public void onPostExecute(Long l) {
            super.onPostExecute(l);
            this.f4399a.m10420a(l.longValue());
        }
    }

    /* renamed from: a */
    public static void m10419a(AbstractC0975a abstractC0975a) {
        try {
            AsyncTaskC0979d asyncTaskC0979d = new AsyncTaskC0979d(abstractC0975a);
            if (asyncTaskC0979d.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC0979d.cancel(true);
            new AsyncTaskC0979d(abstractC0975a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10418b(String str, AbstractC0976b abstractC0976b) {
        try {
            AsyncTaskC0978a asyncTaskC0978a = new AsyncTaskC0978a(str, abstractC0976b);
            if (asyncTaskC0978a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC0978a.cancel(true);
            new AsyncTaskC0978a(str, abstractC0976b).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
