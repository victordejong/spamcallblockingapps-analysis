package com.callerid.block.p055j;

import android.os.AsyncTask;
import com.callerid.block.bean.ParserIpBean;
/* renamed from: com.callerid.block.j.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/j/c.class */
public class C1076c {

    /* renamed from: com.callerid.block.j.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/j/c$a.class */
    private static class AsyncTaskC1077a extends AsyncTask<String, Void, ParserIpBean> {

        /* renamed from: a */
        private AbstractC1074a f4547a;

        AsyncTaskC1077a(AbstractC1074a aVar) {
            this.f4547a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public ParserIpBean doInBackground(String... strArr) {
            return C1075b.m10216a().m10215b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(ParserIpBean parserIpBean) {
            super.onPostExecute(parserIpBean);
            this.f4547a.m10217a(parserIpBean);
        }
    }

    /* renamed from: a */
    public static void m10213a(AbstractC1074a aVar) {
        try {
            new AsyncTaskC1077a(aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
