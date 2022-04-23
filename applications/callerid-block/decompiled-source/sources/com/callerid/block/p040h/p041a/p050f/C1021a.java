package com.callerid.block.p040h.p041a.p050f;

import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.h.a.f.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/a.class */
public class C1021a {

    /* renamed from: com.callerid.block.h.a.f.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/a$a.class */
    private static class AsyncTaskC1022a extends AsyncTask<String, Void, Integer> {

        /* renamed from: a */
        String f4461a;

        /* renamed from: b */
        AbstractC1025c f4462b;

        AsyncTaskC1022a(String str, AbstractC1025c cVar) {
            this.f4461a = str;
            this.f4462b = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Integer doInBackground(String... strArr) {
            return Integer.valueOf(C1216t0.m9603I(EZCallApplication.m10163c(), this.f4461a));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Integer num) {
            super.onPostExecute(num);
            this.f4462b.m10341a(num.intValue());
        }
    }

    /* renamed from: com.callerid.block.h.a.f.a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/a$b.class */
    private static class AsyncTaskC1023b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        int f4463a;

        /* renamed from: b */
        int f4464b = -999;

        /* renamed from: c */
        String f4465c;

        /* renamed from: d */
        AbstractC1024b f4466d;

        AsyncTaskC1023b(int i, String str, AbstractC1024b bVar) {
            this.f4463a = i;
            this.f4465c = str;
            this.f4466d = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = "";
            try {
                if (this.f4463a == 0) {
                    int I = C1216t0.m9603I(EZCallApplication.m10163c(), this.f4465c);
                    this.f4464b = I;
                    this.f4463a = I;
                }
                Cursor query = EZCallApplication.m10163c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"starred"}, "contact_id=?", new String[]{String.valueOf(this.f4463a)}, null);
                String str2 = "";
                if (query != null) {
                    str2 = "";
                    if (query.moveToNext()) {
                        String string = query.getString(query.getColumnIndex("starred"));
                        str2 = string;
                        if (C1227w.f5084a) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("starred:");
                            sb.append(string);
                            C1227w.m9527a("favtest", sb.toString());
                            str2 = string;
                        }
                    }
                }
                str = str2;
                if (query != null) {
                    str = str2;
                    query.close();
                    str = str2;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4466d.m10342a(this.f4464b, str);
        }
    }

    /* renamed from: a */
    public static void m10348a(String str, AbstractC1025c cVar) {
        try {
            new AsyncTaskC1022a(str, cVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10347b(int i, String str, AbstractC1024b bVar) {
        try {
            new AsyncTaskC1023b(i, str, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
