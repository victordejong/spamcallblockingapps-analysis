package com.allinone.callerid.p162i.p163a.p180k;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
/* renamed from: com.allinone.callerid.i.a.k.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/a.class */
public class C2879a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/a$a.class */
    public static class AsyncTaskC2880a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2766a f9645a;

        /* renamed from: b */
        private int f9646b;

        AsyncTaskC2880a(int i, AbstractC2766a abstractC2766a) {
            this.f9645a = abstractC2766a;
            this.f9646b = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.WRITE_CONTACTS") != 0) {
                    return "";
                }
                ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                ContentValues contentValues = new ContentValues();
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(this.f9646b));
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
            this.f9645a.mo24704a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/a$b.class */
    public static class AsyncTaskC2881b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2766a f9647a;

        /* renamed from: b */
        private int f9648b;

        AsyncTaskC2881b(int i, AbstractC2766a abstractC2766a) {
            this.f9647a = abstractC2766a;
            this.f9648b = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.WRITE_CONTACTS") != 0) {
                    return "";
                }
                ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                ContentValues contentValues = new ContentValues();
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(this.f9648b));
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
            this.f9647a.mo24704a();
        }
    }

    /* renamed from: a */
    public static void m26475a(int i, AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2880a(i, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26474b(int i, AbstractC2766a abstractC2766a) {
        try {
            new AsyncTaskC2881b(i, abstractC2766a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
