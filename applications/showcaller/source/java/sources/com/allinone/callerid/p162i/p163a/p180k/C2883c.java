package com.allinone.callerid.p162i.p163a.p180k;

import android.content.Context;
import android.os.AsyncTask;
/* renamed from: com.allinone.callerid.i.a.k.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/c.class */
public class C2883c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.k.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/k/c$a.class */
    public static class AsyncTaskC2884a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC2882b f9649a;

        /* renamed from: b */
        private String f9650b;

        /* renamed from: c */
        private Context f9651c;

        /* renamed from: d */
        private String f9652d;

        AsyncTaskC2884a(Context context, String str, AbstractC2882b abstractC2882b) {
            this.f9649a = abstractC2882b;
            this.f9650b = str;
            this.f9651c = context;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x00b8, code lost:
            if ("0".equals(r0) != false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00e2, code lost:
            if ("".equals(r0) != false) goto L24;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.String... r10) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p162i.p163a.p180k.C2883c.AsyncTaskC2884a.doInBackground(java.lang.String[]):java.lang.Boolean");
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f9649a.mo24809a(bool.booleanValue(), this.f9652d);
        }
    }

    /* renamed from: a */
    public static void m26469a(Context context, String str, AbstractC2882b abstractC2882b) {
        try {
            new AsyncTaskC2884a(context, str, abstractC2882b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
