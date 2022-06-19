package com.allinone.callerid.p144d.p150e.p151e;

import android.os.AsyncTask;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.p144d.p147b.C2480c;
import com.allinone.callerid.p144d.p147b.C2487e;
import com.allinone.callerid.util.C3735e1;
/* renamed from: com.allinone.callerid.d.e.e.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/d.class */
public class C2558d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/d$a.class */
    public static class AsyncTaskC2559a extends AsyncTask<String, String, HomeInfo> {

        /* renamed from: a */
        private AbstractC2557c f8970a;

        /* renamed from: b */
        private HomeInfo f8971b;

        public AsyncTaskC2559a(HomeInfo homeInfo, AbstractC2557c abstractC2557c) {
            this.f8970a = abstractC2557c;
            this.f8971b = homeInfo;
        }

        /* renamed from: a */
        public HomeInfo doInBackground(String... strArr) {
            try {
                C2487e.m27256e().m27260a(this.f8971b);
                C2480c.m27268d().m27269c(this.f8971b.getPath());
                return this.f8971b;
            } catch (Exception e) {
                e.printStackTrace();
                this.f8971b = null;
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(HomeInfo homeInfo) {
            super.onPostExecute(homeInfo);
            AbstractC2557c abstractC2557c = this.f8970a;
            if (abstractC2557c != null) {
                abstractC2557c.mo24812a(true, homeInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.e.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/e/d$b.class */
    public static class AsyncTaskC2560b extends AsyncTask<String, String, HomeInfo> {

        /* renamed from: a */
        private AbstractC2557c f8972a;

        public AsyncTaskC2560b(AbstractC2557c abstractC2557c) {
            this.f8972a = abstractC2557c;
        }

        /* renamed from: a */
        public HomeInfo doInBackground(String... strArr) {
            try {
                return C2487e.m27256e().m27255f();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(HomeInfo homeInfo) {
            super.onPostExecute(homeInfo);
            AbstractC2557c abstractC2557c = this.f8972a;
            if (abstractC2557c != null) {
                abstractC2557c.mo24812a(true, homeInfo);
            }
        }
    }

    /* renamed from: a */
    public static void m27121a(HomeInfo homeInfo, AbstractC2557c abstractC2557c) {
        new AsyncTaskC2559a(homeInfo, abstractC2557c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: b */
    public static void m27120b(AbstractC2557c abstractC2557c) {
        new AsyncTaskC2560b(abstractC2557c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
    }
}
