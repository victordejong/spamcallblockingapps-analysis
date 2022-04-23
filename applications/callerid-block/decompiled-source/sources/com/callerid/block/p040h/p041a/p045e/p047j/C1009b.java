package com.callerid.block.p040h.p041a.p045e.p047j;

import android.content.Context;
import android.os.AsyncTask;
import org.json.JSONArray;
/* renamed from: com.callerid.block.h.a.e.j.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/j/b.class */
public class C1009b {

    /* renamed from: com.callerid.block.h.a.e.j.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/j/b$a.class */
    private static class AsyncTaskC1010a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC1008a f4441a;

        /* renamed from: b */
        private Context f4442b;

        /* renamed from: c */
        private String f4443c;

        /* renamed from: d */
        private String f4444d;

        /* renamed from: e */
        private String f4445e;

        AsyncTaskC1010a(Context context, String str, String str2, String str3, AbstractC1008a aVar) {
            this.f4441a = aVar;
            this.f4442b = context;
            this.f4443c = str;
            this.f4444d = str2;
            this.f4445e = str3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x012a, code lost:
            if (r0 == 5) goto L_0x012d;
         */
        /* JADX WARN: Removed duplicated region for block: B:38:0x015b A[Catch: Exception -> 0x02d9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02d9, blocks: (B:3:0x0008, B:6:0x001b, B:8:0x002c, B:11:0x0042, B:13:0x0082, B:15:0x008c, B:17:0x0097, B:19:0x00a3, B:23:0x00f5, B:28:0x0116, B:30:0x011e, B:38:0x015b, B:41:0x0185, B:43:0x0196, B:45:0x019e, B:47:0x01a6, B:52:0x01bc, B:54:0x01c4, B:56:0x01d1, B:58:0x01e1, B:62:0x01f0, B:64:0x01fd, B:66:0x020a, B:69:0x0227, B:71:0x02b5), top: B:76:0x0008 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.json.JSONArray doInBackground(java.lang.String... r10) {
            /*
                Method dump skipped, instructions count: 736
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p040h.p041a.p045e.p047j.C1009b.AsyncTaskC1010a.doInBackground(java.lang.String[]):org.json.JSONArray");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f4441a.m10366a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m10365a(Context context, String str, String str2, String str3, AbstractC1008a aVar) {
        try {
            new AsyncTaskC1010a(context, str, str2, str3, aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
