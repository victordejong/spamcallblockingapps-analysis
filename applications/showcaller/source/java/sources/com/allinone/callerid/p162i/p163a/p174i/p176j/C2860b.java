package com.allinone.callerid.p162i.p163a.p174i.p176j;

import android.content.Context;
import android.os.AsyncTask;
import org.json.JSONArray;
/* renamed from: com.allinone.callerid.i.a.i.j.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/j/b.class */
public class C2860b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.j.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/j/b$a.class */
    public static class AsyncTaskC2861a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC2859a f9614a;

        /* renamed from: b */
        private Context f9615b;

        /* renamed from: c */
        private String f9616c;

        /* renamed from: d */
        private String f9617d = "0";

        /* renamed from: e */
        private String f9618e;

        AsyncTaskC2861a(Context context, String str, String str2, AbstractC2859a abstractC2859a) {
            this.f9614a = abstractC2859a;
            this.f9615b = context;
            this.f9616c = str;
            this.f9618e = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x01b2, code lost:
            if (r0 == 5) goto L56;
         */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01e6 A[Catch: Exception -> 0x0363, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0363, blocks: (B:3:0x0008, B:6:0x001a, B:8:0x0022, B:9:0x0037, B:11:0x0043, B:14:0x004f, B:16:0x0058, B:18:0x006c, B:20:0x0078, B:24:0x008d, B:28:0x009a, B:30:0x00a1, B:33:0x00b4, B:35:0x00f4, B:37:0x00fe, B:39:0x0109, B:41:0x0115, B:45:0x0167, B:50:0x0188, B:52:0x0190, B:60:0x01e6, B:63:0x020f, B:65:0x0220, B:67:0x0228, B:69:0x0230, B:74:0x0246, B:76:0x024e, B:78:0x025b, B:80:0x026b, B:84:0x027a, B:86:0x0287, B:88:0x0294, B:91:0x02b1, B:93:0x033f), top: B:98:0x0008 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.json.JSONArray doInBackground(java.lang.String... r10) {
            /*
                Method dump skipped, instructions count: 874
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p162i.p163a.p174i.p176j.C2860b.AsyncTaskC2861a.doInBackground(java.lang.String[]):org.json.JSONArray");
        }

        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f9614a.mo24816a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m26499a(Context context, String str, String str2, AbstractC2859a abstractC2859a) {
        try {
            new AsyncTaskC2861a(context, str, str2, abstractC2859a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
