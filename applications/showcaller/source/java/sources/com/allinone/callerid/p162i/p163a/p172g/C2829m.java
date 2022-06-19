package com.allinone.callerid.p162i.p163a.p172g;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3771i;
import java.util.Date;
/* renamed from: com.allinone.callerid.i.a.g.m */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/m.class */
public class C2829m {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.m$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/m$a.class */
    public static class AsyncTaskC2830a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2832o f9589a;

        /* renamed from: b */
        private Context f9590b;

        /* renamed from: c */
        private String f9591c;

        /* renamed from: d */
        private String f9592d;

        /* renamed from: e */
        private String f9593e;

        AsyncTaskC2830a(Context context, String str, AbstractC2832o abstractC2832o) {
            this.f9589a = abstractC2832o;
            this.f9590b = context;
            this.f9591c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f9590b.getContentResolver();
                if (C0586a.m33353a(this.f9590b, "android.permission.READ_CALL_LOG") != 0) {
                    return "";
                }
                Cursor query = contentResolver.query(C3714b1.m24450h(), null, "number=?", new String[]{this.f9591c}, "date DESC");
                if (query != null && query.getCount() > 0) {
                    while (true) {
                        if (!query.moveToNext()) {
                            break;
                        }
                        int i = query.getInt(query.getColumnIndex("type"));
                        if (i != 2) {
                            long j = query.getLong(query.getColumnIndex("date"));
                            if (i == 1) {
                                this.f9592d = "1";
                            } else {
                                this.f9592d = "0";
                            }
                            this.f9593e = C3771i.m24208b(new Date(j));
                        }
                    }
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
            this.f9589a.mo25494a(this.f9593e, this.f9592d);
        }
    }

    /* renamed from: a */
    public static void m26530a(Context context, String str, AbstractC2832o abstractC2832o) {
        try {
            new AsyncTaskC2830a(context, str, abstractC2832o).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
