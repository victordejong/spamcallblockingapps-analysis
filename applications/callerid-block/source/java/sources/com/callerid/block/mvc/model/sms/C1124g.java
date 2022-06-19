package com.callerid.block.mvc.model.sms;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.callerid.block.p040h.p041a.AbstractC0961a;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.mvc.model.sms.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/g.class */
public class C1124g {

    /* renamed from: com.callerid.block.mvc.model.sms.g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/g$a.class */
    private static class AsyncTaskC1125a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC0961a f4749a;

        /* renamed from: b */
        private Context f4750b;

        /* renamed from: c */
        private String f4751c;

        AsyncTaskC1125a(Context context, String str, AbstractC0961a abstractC0961a) {
            this.f4749a = abstractC0961a;
            this.f4750b = context;
            this.f4751c = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4750b.getContentResolver();
                ContentValues contentValues = new ContentValues();
                contentValues.put("read", "1");
                contentResolver.update(Uri.parse("content://sms/inbox"), contentValues, "thread_id = ?", new String[]{this.f4751c});
                contentResolver.update(Uri.parse("content://mms/inbox"), contentValues, "thread_id = ?", new String[]{this.f4751c});
                C1227w.m9527a("tony", "sms update db ok");
            } catch (Exception e) {
                C1227w.m9527a("tony", "Exception:: " + e);
            }
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4749a.m10448a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.mvc.model.sms.g$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/g$b.class */
    public static class AsyncTaskC1126b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC0961a f4752a;

        /* renamed from: b */
        private Context f4753b;

        /* renamed from: c */
        private String f4754c;

        /* renamed from: d */
        private String f4755d;

        /* renamed from: e */
        private String f4756e;

        /* renamed from: f */
        private String f4757f;

        AsyncTaskC1126b(Context context, String str, String str2, String str3, String str4, AbstractC0961a abstractC0961a) {
            this.f4752a = abstractC0961a;
            this.f4753b = context;
            this.f4754c = str;
            this.f4755d = str2;
            this.f4756e = str3;
            this.f4757f = str4;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                ContentResolver contentResolver = this.f4753b.getContentResolver();
                ContentValues contentValues = new ContentValues();
                contentValues.put("address", this.f4754c);
                contentValues.put("body", this.f4755d);
                contentValues.put("type", this.f4756e);
                contentValues.put("read", this.f4757f);
                contentResolver.insert(Uri.parse("content://sms/inbox"), contentValues);
                C1227w.m9527a("tony", "sms write db ok");
            } catch (Exception e) {
                C1227w.m9527a("tony", "Exception:: " + e);
            }
            return Boolean.TRUE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4752a.m10448a();
        }
    }

    /* renamed from: a */
    public static void m10113a(Context context, String str, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC1125a(context, str, abstractC0961a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10112b(Context context, String str, String str2, String str3, String str4, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC1126b(context, str, str2, str3, str4, abstractC0961a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
