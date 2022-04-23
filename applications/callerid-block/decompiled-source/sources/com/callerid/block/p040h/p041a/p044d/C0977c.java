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

        AsyncTaskC0978a(String str, AbstractC0976b bVar) {
            this.f4399a = bVar;
            this.f4400b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r18v4 */
        /* renamed from: a */
        public Long doInBackground(String... strArr) {
            char c = 0;
            if (C1230a.m9514b(EZCallApplication.m10163c(), "android.permission.READ_CALL_LOG")) {
                Cursor query = EZCallApplication.m10163c().getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date"}, "number=?", new String[]{this.f4400b.replace(" ", "")}, "date desc limit 1");
                char c2 = 0;
                if (query != null) {
                    c2 = 0;
                    if (query.moveToFirst()) {
                        c2 = query.getLong(0);
                    }
                }
                c = c2;
                if (query != null) {
                    query.close();
                    c = c2;
                }
            }
            return Long.valueOf(c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Long l) {
            super.onPostExecute(l);
            this.f4399a.m10420a(l.longValue());
        }
    }

    /* renamed from: a */
    public static void m10419a(AbstractC0975a aVar) {
        try {
            AsyncTaskC0979d dVar = new AsyncTaskC0979d(aVar);
            if (dVar.getStatus() != AsyncTask.Status.RUNNING) {
                dVar.cancel(true);
                new AsyncTaskC0979d(aVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10418b(String str, AbstractC0976b bVar) {
        try {
            AsyncTaskC0978a aVar = new AsyncTaskC0978a(str, bVar);
            if (aVar.getStatus() != AsyncTask.Status.RUNNING) {
                aVar.cancel(true);
                new AsyncTaskC0978a(str, bVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
