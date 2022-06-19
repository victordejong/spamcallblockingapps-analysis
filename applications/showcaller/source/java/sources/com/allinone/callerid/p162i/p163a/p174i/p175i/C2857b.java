package com.allinone.callerid.p162i.p163a.p174i.p175i;

import android.content.Context;
import android.os.AsyncTask;
import org.json.JSONArray;
/* renamed from: com.allinone.callerid.i.a.i.i.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/i/b.class */
public class C2857b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.i.i.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/i/i/b$a.class */
    public static class AsyncTaskC2858a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC2856a f9612a;

        /* renamed from: b */
        private Context f9613b;

        AsyncTaskC2858a(Context context, AbstractC2856a abstractC2856a) {
            this.f9612a = abstractC2856a;
            this.f9613b = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x01db A[Catch: Exception -> 0x0339, TRY_ENTER, TryCatch #0 {Exception -> 0x0339, blocks: (B:3:0x0008, B:6:0x0023, B:8:0x0053, B:10:0x005d, B:12:0x0068, B:14:0x0074, B:17:0x00d6, B:19:0x00e1, B:21:0x00ef, B:23:0x00f6, B:24:0x0124, B:27:0x012f, B:29:0x0137, B:33:0x0143, B:35:0x014e, B:40:0x017f, B:45:0x019b, B:49:0x01ad, B:52:0x01db, B:54:0x01e3, B:56:0x01eb, B:60:0x01ff, B:62:0x0207, B:64:0x0214, B:66:0x0227, B:70:0x023b, B:72:0x0248, B:74:0x025a, B:77:0x0274, B:78:0x030f, B:80:0x0315), top: B:85:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x026c  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.json.JSONArray doInBackground(java.lang.String... r8) {
            /*
                Method dump skipped, instructions count: 832
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p162i.p163a.p174i.p175i.C2857b.AsyncTaskC2858a.doInBackground(java.lang.String[]):org.json.JSONArray");
        }

        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f9612a.mo23880a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m26502a(Context context, AbstractC2856a abstractC2856a) {
        try {
            new AsyncTaskC2858a(context, abstractC2856a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
