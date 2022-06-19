package com.callerid.block.p040h.p041a.p050f;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import androidx.core.content.C0265a;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.AbstractC0961a;
/* renamed from: com.callerid.block.h.a.f.i */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/i.class */
public class C1038i {

    /* renamed from: com.callerid.block.h.a.f.i$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/i$a.class */
    private static class AsyncTaskC1039a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0961a f4480a;

        /* renamed from: b */
        private int f4481b;

        AsyncTaskC1039a(int i, AbstractC0961a abstractC0961a) {
            this.f4480a = abstractC0961a;
            this.f4481b = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0265a.m13556a(EZCallApplication.m10163c(), "android.permission.WRITE_CONTACTS") != 0) {
                    return "";
                }
                ContentResolver contentResolver = EZCallApplication.m10163c().getContentResolver();
                ContentValues contentValues = new ContentValues();
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(this.f4481b));
                contentValues.put("starred", (Integer) 1);
                contentResolver.update(withAppendedPath, contentValues, null, null);
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4480a.m10448a();
        }
    }

    /* renamed from: com.callerid.block.h.a.f.i$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/i$b.class */
    private static class AsyncTaskC1040b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0961a f4482a;

        /* renamed from: b */
        private int f4483b;

        AsyncTaskC1040b(int i, AbstractC0961a abstractC0961a) {
            this.f4482a = abstractC0961a;
            this.f4483b = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0265a.m13556a(EZCallApplication.m10163c(), "android.permission.WRITE_CONTACTS") != 0) {
                    return "";
                }
                ContentResolver contentResolver = EZCallApplication.m10163c().getContentResolver();
                ContentValues contentValues = new ContentValues();
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(this.f4483b));
                contentValues.put("starred", (Integer) 0);
                contentResolver.update(withAppendedPath, contentValues, null, null);
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4482a.m10448a();
        }
    }

    /* renamed from: a */
    public static void m10310a(int i, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC1039a(i, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10309b(int i, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC1040b(i, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
