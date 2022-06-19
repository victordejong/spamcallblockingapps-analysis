package com.callerid.block.p040h.p041a.p044d;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.CallLog;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.p060x0.C1230a;
import java.util.List;
/* renamed from: com.callerid.block.h.a.d.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/g.class */
public class C0982g {

    /* renamed from: com.callerid.block.h.a.d.g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/g$a.class */
    private static class AsyncTaskC0983a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0981f f4405a;

        /* renamed from: b */
        private Context f4406b;

        /* renamed from: c */
        private List<CallLogBean> f4407c;

        AsyncTaskC0983a(Context context, List<CallLogBean> list, AbstractC0981f abstractC0981f) {
            this.f4405a = abstractC0981f;
            this.f4406b = context;
            this.f4407c = list;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C1230a.m9514b(this.f4406b, "android.permission.WRITE_CALL_LOG")) {
                    return "";
                }
                for (int i = 0; i < this.f4407c.size(); i++) {
                    this.f4406b.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "number=?", new String[]{this.f4407c.get(i).m10045o()});
                }
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4405a.m10411a();
        }
    }

    /* renamed from: com.callerid.block.h.a.d.g$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/g$b.class */
    private static class AsyncTaskC0984b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0981f f4408a;

        /* renamed from: b */
        private Context f4409b;

        /* renamed from: c */
        private String f4410c;

        AsyncTaskC0984b(Context context, String str, AbstractC0981f abstractC0981f) {
            this.f4408a = abstractC0981f;
            this.f4409b = context;
            this.f4410c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C1230a.m9514b(this.f4409b, "android.permission.WRITE_CALL_LOG")) {
                    return "";
                }
                EZCallApplication.m10163c().getContentResolver().delete(CallLog.Calls.CONTENT_URI, "_id=?", new String[]{this.f4410c});
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4408a.m10411a();
        }
    }

    /* renamed from: com.callerid.block.h.a.d.g$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/g$c.class */
    private static class AsyncTaskC0985c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0981f f4411a;

        /* renamed from: b */
        private Context f4412b;

        /* renamed from: c */
        private String f4413c;

        AsyncTaskC0985c(Context context, String str, AbstractC0981f abstractC0981f) {
            this.f4411a = abstractC0981f;
            this.f4412b = context;
            this.f4413c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C1230a.m9514b(this.f4412b, "android.permission.WRITE_CALL_LOG")) {
                    return "";
                }
                this.f4412b.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "number=?", new String[]{this.f4413c});
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4411a.m10411a();
        }
    }

    /* renamed from: com.callerid.block.h.a.d.g$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/g$d.class */
    private static class AsyncTaskC0986d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0981f f4414a;

        /* renamed from: b */
        private Context f4415b;

        /* renamed from: c */
        private String f4416c;

        /* renamed from: d */
        private int f4417d;

        AsyncTaskC0986d(Context context, String str, int i, AbstractC0981f abstractC0981f) {
            this.f4414a = abstractC0981f;
            this.f4415b = context;
            this.f4416c = str;
            this.f4417d = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C1230a.m9514b(this.f4415b, "android.permission.WRITE_CALL_LOG")) {
                    return "";
                }
                ContentResolver contentResolver = this.f4415b.getContentResolver();
                Uri uri = CallLog.Calls.CONTENT_URI;
                contentResolver.delete(uri, "number=? and (type=" + this.f4417d + ")", new String[]{this.f4416c});
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4414a.m10411a();
        }
    }

    /* renamed from: a */
    public static void m10410a(Context context, List<CallLogBean> list, AbstractC0981f abstractC0981f) {
        try {
            new AsyncTaskC0983a(context, list, abstractC0981f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10409b(Context context, String str, AbstractC0981f abstractC0981f) {
        try {
            new AsyncTaskC0984b(context, str, abstractC0981f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m10408c(Context context, String str, AbstractC0981f abstractC0981f) {
        try {
            new AsyncTaskC0985c(context, str, abstractC0981f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m10407d(Context context, String str, int i, AbstractC0981f abstractC0981f) {
        try {
            new AsyncTaskC0986d(context, str, i, abstractC0981f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
