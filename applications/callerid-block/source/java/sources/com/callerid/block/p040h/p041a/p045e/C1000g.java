package com.callerid.block.p040h.p041a.p045e;

import android.os.AsyncTask;
import com.callerid.block.bean.CollectInfo;
import com.callerid.block.p036d.C0945b;
import java.util.List;
/* renamed from: com.callerid.block.h.a.e.g */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/g.class */
public class C1000g {

    /* renamed from: com.callerid.block.h.a.e.g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/g$a.class */
    private static class AsyncTaskC1001a extends AsyncTask<String, Void, String> {
        AsyncTaskC1001a() {
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            C0945b.m10479b().m10480a();
            return "ok";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.e.g$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/g$b.class */
    public static class AsyncTaskC1002b extends AsyncTask<String, Void, List<CollectInfo>> {

        /* renamed from: a */
        private AbstractC0999f f4437a;

        AsyncTaskC1002b(AbstractC0999f abstractC0999f) {
            this.f4437a = abstractC0999f;
        }

        /* renamed from: a */
        public List<CollectInfo> doInBackground(String... strArr) {
            return C0945b.m10479b().m10477d();
        }

        /* renamed from: b */
        public void onPostExecute(List<CollectInfo> list) {
            super.onPostExecute(list);
            this.f4437a.m10380a(list);
        }
    }

    /* renamed from: a */
    public static void m10379a() {
        try {
            new AsyncTaskC1001a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10378b(AbstractC0999f abstractC0999f) {
        try {
            new AsyncTaskC1002b(abstractC0999f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
