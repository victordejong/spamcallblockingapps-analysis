package com.allinone.callerid.p162i.p163a.p174i;

import android.os.AsyncTask;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.p157f.C2623c;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.i.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/g.class */
public class C2851g {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/g$a.class */
    public static class AsyncTaskC2852a extends AsyncTask<String, Void, String> {
        AsyncTaskC2852a() {
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            C2623c.m27019b().m27020a();
            return "ok";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.g$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/g$b.class */
    public static class AsyncTaskC2853b extends AsyncTask<String, Void, List<CollectInfo>> {

        /* renamed from: a */
        private AbstractC2850f f9610a;

        AsyncTaskC2853b(AbstractC2850f abstractC2850f) {
            this.f9610a = abstractC2850f;
        }

        /* renamed from: a */
        public List<CollectInfo> doInBackground(String... strArr) {
            return C2623c.m27019b().m27017d();
        }

        /* renamed from: b */
        public void onPostExecute(List<CollectInfo> list) {
            super.onPostExecute(list);
            this.f9610a.mo26512a(list);
        }
    }

    /* renamed from: a */
    public static void m26511a() {
        try {
            new AsyncTaskC2852a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26510b(AbstractC2850f abstractC2850f) {
        try {
            new AsyncTaskC2853b(abstractC2850f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
