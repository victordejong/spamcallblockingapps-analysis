package com.allinone.callerid.p162i.p163a.p174i;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import java.util.Date;
/* renamed from: com.allinone.callerid.i.a.i.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/h.class */
public class C2854h {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.h$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/h$a.class */
    public static class AsyncTaskC2855a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f9611a;

        AsyncTaskC2855a(Context context) {
            this.f9611a = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                Cursor query = this.f9611a.getContentResolver().query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    int i = 0;
                    while (true) {
                        if (i >= query.getCount()) {
                            break;
                        }
                        query.moveToPosition(i);
                        Date date = new Date(query.getLong(query.getColumnIndex("date")));
                        String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        if (query.getInt(query.getColumnIndex("type")) != 2 && !C3767h1.m24263Y(this.f9611a, string)) {
                            C3711a1.m24462z1(date.getTime());
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
            if (C3718c0.f11914a) {
                C3718c0.m24436a("collectinfo", "lasttime:" + C3711a1.m24579V() + " format:" + C3771i.m24206d(C3711a1.m24579V()));
            }
        }
    }

    /* renamed from: a */
    public static void m26505a(Context context) {
        try {
            new AsyncTaskC2855a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
