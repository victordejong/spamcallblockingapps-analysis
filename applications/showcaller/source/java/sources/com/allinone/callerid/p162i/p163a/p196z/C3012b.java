package com.allinone.callerid.p162i.p163a.p196z;

import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.search.CallLogBean;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.z.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/z/b.class */
public class C3012b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.z.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/z/b$a.class */
    public static class AsyncTaskC3013a extends AsyncTask<String, Void, List<CallLogBean>> {

        /* renamed from: a */
        private AbstractC3015d f9829a;

        /* renamed from: b */
        private List<CallLogBean> f9830b;

        AsyncTaskC3013a(List<CallLogBean> list, AbstractC3015d abstractC3015d) {
            this.f9829a = abstractC3015d;
            this.f9830b = list;
        }

        /* renamed from: a */
        public List<CallLogBean> doInBackground(String... strArr) {
            try {
                List<CallLogBean> list = this.f9830b;
                if (list != null && list.size() != 0) {
                    for (int i = 0; i < this.f9830b.size(); i++) {
                        CallLogBean callLogBean = this.f9830b.get(i);
                        EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                        if (m26999d != null) {
                            callLogBean.m24881n0(m26999d.getComment_count());
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9830b;
        }

        /* renamed from: b */
        public void onPostExecute(List<CallLogBean> list) {
            super.onPostExecute(list);
            this.f9829a.mo26258a(list);
        }
    }

    /* renamed from: a */
    public static void m26262a(List<CallLogBean> list, AbstractC3015d abstractC3015d) {
        try {
            new AsyncTaskC3013a(list, abstractC3015d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
