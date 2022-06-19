package com.allinone.callerid.p162i.p163a.p190t;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3811q0;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.t.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/c.class */
public class C2970c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.t.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/c$a.class */
    public static class AsyncTaskC2971a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private List<CallLogBean> f9756a;

        /* renamed from: b */
        private C3811q0 f9757b;

        AsyncTaskC2971a(Context context, C3811q0 c3811q0) {
            this.f9757b = c3811q0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00ea, code lost:
            if (android.os.Build.VERSION.SDK_INT >= 25) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
            if (android.os.Build.VERSION.SDK_INT >= 25) goto L8;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.String... r5) {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p162i.p163a.p190t.C2970c.AsyncTaskC2971a.doInBackground(java.lang.String[]):java.lang.String");
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    /* renamed from: b */
    public static void m26323b(Context context, C3811q0 c3811q0) {
        try {
            new AsyncTaskC2971a(context, c3811q0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ec, code lost:
        if ("".equals(r0) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01e4, code lost:
        if ("".equals(r0) != false) goto L40;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m26322c(java.util.List<com.allinone.callerid.search.CallLogBean> r5, android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p162i.p163a.p190t.C2970c.m26322c(java.util.List, android.content.Context):void");
    }
}
