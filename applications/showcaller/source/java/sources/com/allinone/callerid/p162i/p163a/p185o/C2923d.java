package com.allinone.callerid.p162i.p163a.p185o;

import android.os.AsyncTask;
import com.allinone.callerid.bean.ParserIpBean;
/* renamed from: com.allinone.callerid.i.a.o.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/d.class */
class C2923d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.o.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/d$a.class */
    public static class AsyncTaskC2924a extends AsyncTask<String, Void, ParserIpBean> {

        /* renamed from: a */
        private AbstractC2920b f9697a;

        AsyncTaskC2924a(AbstractC2920b abstractC2920b) {
            this.f9697a = abstractC2920b;
        }

        /* renamed from: a */
        public ParserIpBean doInBackground(String... strArr) {
            return C2921c.m26411a().m26410b();
        }

        /* renamed from: b */
        public void onPostExecute(ParserIpBean parserIpBean) {
            super.onPostExecute(parserIpBean);
            this.f9697a.mo26412a(parserIpBean);
        }
    }

    /* renamed from: a */
    public static void m26408a(AbstractC2920b abstractC2920b) {
        try {
            new AsyncTaskC2924a(abstractC2920b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
