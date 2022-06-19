package com.callerid.block.p040h.p041a.p045e;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.CallLog;
import androidx.core.content.C0265a;
/* renamed from: com.callerid.block.h.a.e.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/d.class */
public class C0996d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/d$a.class */
    public static class AsyncTaskC0997a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0998e f4434a;

        /* renamed from: b */
        private Context f4435b;

        /* renamed from: c */
        private long f4436c;

        AsyncTaskC0997a(Context context, AbstractC0998e abstractC0998e) {
            this.f4434a = abstractC0998e;
            this.f4435b = context;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4435b.getContentResolver();
                if (C0265a.m13556a(this.f4435b, "android.permission.READ_CALL_LOG") != 0) {
                    return "";
                }
                Cursor query = contentResolver.query(CallLog.Calls.CONTENT_URI, null, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToNext();
                    int i = 0;
                    while (true) {
                        if (i >= query.getCount()) {
                            break;
                        }
                        query.moveToPosition(i);
                        if (query.getInt(query.getColumnIndex("type")) != 2) {
                            this.f4436c = query.getLong(query.getColumnIndex("date"));
                            break;
                        }
                        i++;
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
            this.f4434a.m10381a(this.f4436c);
        }
    }

    /* renamed from: a */
    public static void m10384a(Context context, AbstractC0998e abstractC0998e) {
        try {
            new AsyncTaskC0997a(context, abstractC0998e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
