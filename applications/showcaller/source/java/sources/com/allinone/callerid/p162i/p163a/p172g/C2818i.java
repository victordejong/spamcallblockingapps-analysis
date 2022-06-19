package com.allinone.callerid.p162i.p163a.p172g;

import android.content.Context;
import android.os.AsyncTask;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.p204j1.C3776a;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.g.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/i.class */
public class C2818i {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.i$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/i$a.class */
    public static class AsyncTaskC2819a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2817h f9566a;

        AsyncTaskC2819a(AbstractC2817h abstractC2817h) {
            this.f9566a = abstractC2817h;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.WRITE_CALL_LOG") != 0) {
                    return "";
                }
                EZCallApplication.m26146c().getContentResolver().delete(C3714b1.m24450h(), null, null);
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9566a.mo26031a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.i$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/i$b.class */
    public static class AsyncTaskC2820b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2817h f9567a;

        /* renamed from: b */
        private Context f9568b;

        /* renamed from: c */
        private String f9569c;

        AsyncTaskC2820b(Context context, String str, AbstractC2817h abstractC2817h) {
            this.f9567a = abstractC2817h;
            this.f9568b = context;
            this.f9569c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(this.f9568b, "android.permission.WRITE_CALL_LOG") != 0) {
                    return "";
                }
                EZCallApplication.m26146c().getContentResolver().delete(C3714b1.m24450h(), "_id=?", new String[]{this.f9569c});
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9567a.mo26031a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.i$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/i$c.class */
    public static class AsyncTaskC2821c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2817h f9570a;

        /* renamed from: b */
        private Context f9571b;

        /* renamed from: c */
        private String f9572c;

        AsyncTaskC2821c(Context context, String str, AbstractC2817h abstractC2817h) {
            this.f9570a = abstractC2817h;
            this.f9571b = context;
            this.f9572c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (C0586a.m33353a(this.f9571b, "android.permission.WRITE_CALL_LOG") != 0) {
                    return "";
                }
                this.f9571b.getContentResolver().delete(C3714b1.m24450h(), "number=?", new String[]{this.f9572c});
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9570a.mo26031a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.g.i$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/g/i$d.class */
    public static class AsyncTaskC2822d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2817h f9573a;

        /* renamed from: b */
        private List<CallLogBean> f9574b;

        AsyncTaskC2822d(List<CallLogBean> list, AbstractC2817h abstractC2817h) {
            this.f9573a = abstractC2817h;
            this.f9574b = list;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                if (!C3776a.m24162c(EZCallApplication.m26146c(), "android.permission.WRITE_CALL_LOG")) {
                    return "";
                }
                for (int i = 0; i < this.f9574b.size(); i++) {
                    CallLogBean callLogBean = this.f9574b.get(i);
                    EZCallApplication.m26146c().getContentResolver().delete(C3714b1.m24450h(), "number=? and (type=" + callLogBean.m24934O() + ")", new String[]{callLogBean.m24880o()});
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
            this.f9573a.mo26031a();
        }
    }

    /* renamed from: a */
    public static void m26553a(AbstractC2817h abstractC2817h) {
        try {
            new AsyncTaskC2819a(abstractC2817h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26552b(Context context, String str, AbstractC2817h abstractC2817h) {
        try {
            new AsyncTaskC2820b(context, str, abstractC2817h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26551c(Context context, String str, AbstractC2817h abstractC2817h) {
        try {
            new AsyncTaskC2821c(context, str, abstractC2817h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26550d(List<CallLogBean> list, AbstractC2817h abstractC2817h) {
        try {
            new AsyncTaskC2822d(list, abstractC2817h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
