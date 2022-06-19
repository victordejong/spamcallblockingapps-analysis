package com.callerid.block.p040h.p041a.p043c;

import android.os.AsyncTask;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.AbstractC0961a;
import com.callerid.block.util.C1182i;
import com.callerid.block.util.C1208q0;
/* renamed from: com.callerid.block.h.a.c.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b.class */
public class C0969b {

    /* renamed from: com.callerid.block.h.a.c.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b$a.class */
    private static class AsyncTaskC0970a extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC0961a f4389a;

        /* renamed from: b */
        private EZBlackList f4390b;

        AsyncTaskC0970a(EZBlackList eZBlackList, AbstractC0961a abstractC0961a) {
            this.f4389a = abstractC0961a;
            this.f4390b = eZBlackList;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C1182i(EZCallApplication.m10163c()).m9836g(this.f4390b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f4389a.m10448a();
        }
    }

    /* renamed from: com.callerid.block.h.a.c.b$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b$b.class */
    private static class AsyncTaskC0971b extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC0961a f4391a;

        /* renamed from: b */
        private String f4392b;

        AsyncTaskC0971b(String str, AbstractC0961a abstractC0961a) {
            this.f4391a = abstractC0961a;
            this.f4392b = str;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C1182i(EZCallApplication.m10163c()).m9841b(this.f4392b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f4391a.m10448a();
        }
    }

    /* renamed from: com.callerid.block.h.a.c.b$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b$c.class */
    private static class AsyncTaskC0972c extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC0961a f4393a;

        /* renamed from: b */
        private String f4394b;

        AsyncTaskC0972c(String str, AbstractC0961a abstractC0961a) {
            this.f4393a = abstractC0961a;
            this.f4394b = str;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C1182i(EZCallApplication.m10163c()).m9840c(this.f4394b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f4393a.m10448a();
        }
    }

    /* renamed from: com.callerid.block.h.a.c.b$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b$d.class */
    private static class AsyncTaskC0973d extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC0968a f4395a;

        /* renamed from: b */
        private String f4396b;

        AsyncTaskC0973d(String str, AbstractC0968a abstractC0968a) {
            this.f4395a = abstractC0968a;
            this.f4396b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return new C1182i(EZCallApplication.m10163c()).m9837f(this.f4396b);
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4395a.m10437a(bool.booleanValue());
        }
    }

    /* renamed from: com.callerid.block.h.a.c.b$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/c/b$e.class */
    private static class AsyncTaskC0974e extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC0961a f4397a;

        /* renamed from: b */
        private EZBlackList f4398b;

        AsyncTaskC0974e(EZBlackList eZBlackList, AbstractC0961a abstractC0961a) {
            this.f4397a = abstractC0961a;
            this.f4398b = eZBlackList;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            new C1182i(EZCallApplication.m10163c()).m9835h(this.f4398b);
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f4397a.m10448a();
        }
    }

    /* renamed from: a */
    public static void m10436a(EZBlackList eZBlackList, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC0970a(eZBlackList, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10435b(String str, AbstractC0968a abstractC0968a) {
        try {
            new AsyncTaskC0973d(str, abstractC0968a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m10434c(String str, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC0972c(str, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m10433d(String str, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC0971b(str, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m10432e(EZBlackList eZBlackList, AbstractC0961a abstractC0961a) {
        try {
            new AsyncTaskC0974e(eZBlackList, abstractC0961a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
