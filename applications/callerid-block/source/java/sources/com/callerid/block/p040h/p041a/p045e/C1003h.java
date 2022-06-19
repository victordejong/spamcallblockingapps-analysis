package com.callerid.block.p040h.p041a.p045e;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.p060x0.C1230a;
import java.util.Date;
/* renamed from: com.callerid.block.h.a.e.h */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/h.class */
public class C1003h {

    /* renamed from: com.callerid.block.h.a.e.h$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/h$a.class */
    private static class AsyncTaskC1004a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f4438a;

        AsyncTaskC1004a(Context context) {
            this.f4438a = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C1230a.m9514b(this.f4438a, "android.permission.READ_CALL_LOG")) {
                    return null;
                }
                int i = 0;
                Cursor query = this.f4438a.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"date", EZBlackList.NUMBER, "type"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    while (true) {
                        if (i >= query.getCount()) {
                            break;
                        }
                        query.moveToPosition(i);
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        String string = query.getString(query.getColumnIndex(EZBlackList.NUMBER));
                        if (query.getInt(query.getColumnIndex("type")) != 2 && !C1216t0.m9604H(this.f4438a, string)) {
                            C1199n0.m9735T0(this.f4438a, date.getTime());
                            break;
                        }
                        i++;
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
                C1227w.m9527a("collectinfo", "lasttime:" + C1199n0.m9758I(this.f4438a) + " format:" + C1174e.m9861c(C1199n0.m9758I(this.f4438a)));
            }
        }
    }

    /* renamed from: a */
    public static void m10373a(Context context) {
        try {
            new AsyncTaskC1004a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
