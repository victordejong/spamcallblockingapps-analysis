package com.allinone.callerid.p162i.p163a.p172g;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3735e1;
/* renamed from: com.allinone.callerid.i.a.g.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/d.class */
public class C2811d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/d$a.class */
    public static class AsyncTaskC2812a extends AsyncTask<String, Void, Long> {

        /* renamed from: a */
        private AbstractC2807a f9562a;

        /* renamed from: b */
        private String f9563b;

        AsyncTaskC2812a(String str, AbstractC2807a abstractC2807a) {
            this.f9562a = abstractC2807a;
            this.f9563b = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17 */
        /* JADX WARN: Type inference failed for: r0v20 */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v7 */
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
            ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
            ?? r14 = false;
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0) {
                Cursor query = contentResolver.query(C3714b1.m24450h(), new String[]{"date"}, "number=?", new String[]{this.f9563b.replace(" ", "")}, "date DESC");
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
            this.f9562a.mo24706a(l.longValue());
        }
    }

    /* renamed from: a */
    public static void m26560a(String str, AbstractC2807a abstractC2807a) {
        try {
            new AsyncTaskC2812a(str, abstractC2807a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
