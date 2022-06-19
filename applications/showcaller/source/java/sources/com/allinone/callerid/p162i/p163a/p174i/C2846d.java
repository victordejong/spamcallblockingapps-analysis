package com.allinone.callerid.p162i.p163a.p174i;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Handler;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3771i;
import java.util.Date;
/* renamed from: com.allinone.callerid.i.a.i.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/d.class */
public class C2846d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.i.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/d$a.class */
    public class RunnableC2847a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f9608d;

        RunnableC2847a(Context context) {
            this.f9608d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            new AsyncTaskC2848b(this.f9608d).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        }
    }

    /* renamed from: com.allinone.callerid.i.a.i.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/d$b.class */
    private static class AsyncTaskC2848b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private Context f9609a;

        AsyncTaskC2848b(Context context) {
            this.f9609a = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f9609a.getContentResolver();
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    return null;
                }
                Cursor query = contentResolver.query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToPosition(0);
                    C3711a1.m24470x1(new Date(query.getLong(query.getColumnIndex("date"))).getTime());
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
                C3718c0.m24436a("tony", "lasttime:" + C3711a1.m24587T() + " format:" + C3771i.m24206d(C3711a1.m24587T()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* renamed from: a */
    public static void m26516a(Context context, AbstractC2849e abstractC2849e) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            ?? r13 = false;
            if (C0586a.m33353a(context, "android.permission.READ_CALL_LOG") == 0) {
                Cursor query = contentResolver.query(C3714b1.m24450h(), null, null, null, "date DESC");
                ?? r15 = false;
                if (query != null) {
                    r15 = false;
                    if (query.getCount() > 0) {
                        query.moveToNext();
                        r15 = query.getLong(query.getColumnIndex("date"));
                    }
                }
                r13 = r15;
                if (query != null) {
                    query.close();
                    r13 = r15;
                }
            }
            abstractC2849e.mo25764a(r13 == true ? 1L : 0L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26515b(Context context) {
        try {
            new Handler().postDelayed(new RunnableC2847a(context), 1000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
