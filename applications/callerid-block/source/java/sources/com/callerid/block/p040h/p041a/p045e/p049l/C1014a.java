package com.callerid.block.p040h.p041a.p045e.p049l;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Handler;
import android.provider.CallLog;
import androidx.core.content.C0265a;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.p045e.AbstractC0998e;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1227w;
import java.util.Date;
/* renamed from: com.callerid.block.h.a.e.l.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/a.class */
public class C1014a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.h.a.e.l.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/a$a.class */
    public static final class RunnableC1015a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f4453b;

        RunnableC1015a(Context context) {
            this.f4453b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            new AsyncTaskC1017c(this.f4453b).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.e.l.a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/a$b.class */
    public static class AsyncTaskC1016b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0998e f4454a;

        /* renamed from: b */
        private Context f4455b;

        /* renamed from: c */
        private long f4456c;

        AsyncTaskC1016b(Context context, AbstractC0998e abstractC0998e) {
            this.f4454a = abstractC0998e;
            this.f4455b = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4455b.getContentResolver();
                if (C0265a.m13556a(this.f4455b, "android.permission.READ_CALL_LOG") != 0) {
                    return "";
                }
                Cursor query = contentResolver.query(CallLog.Calls.CONTENT_URI, null, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToNext();
                    this.f4456c = query.getLong(query.getColumnIndex("date"));
                }
                if (query == null) {
                    return "";
                }
                query.close();
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4454a.m10381a(this.f4456c);
        }
    }

    /* renamed from: com.callerid.block.h.a.e.l.a$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/l/a$c.class */
    private static class AsyncTaskC1017c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f4457a;

        AsyncTaskC1017c(Context context) {
            this.f4457a = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4457a.getContentResolver();
                if (C0265a.m13556a(EZCallApplication.m10163c(), "android.permission.READ_CALL_LOG") != 0) {
                    return null;
                }
                Cursor query = contentResolver.query(CallLog.Calls.CONTENT_URI, new String[]{"date", EZBlackList.NUMBER, "type"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    if (query.getCount() > 0) {
                        query.moveToPosition(0);
                        C1199n0.m9737S0(this.f4457a, new Date(query.getLong(query.getColumnIndex("date"))).getTime());
                    }
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "lasttime:" + C1199n0.m9761H(this.f4457a) + " format:" + C1174e.m9861c(C1199n0.m9761H(this.f4457a)));
            }
        }
    }

    /* renamed from: a */
    public static void m10358a(Context context, AbstractC0998e abstractC0998e) {
        try {
            new AsyncTaskC1016b(context, abstractC0998e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10357b(Context context) {
        try {
            new Handler().postDelayed(new RunnableC1015a(context), 1000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
