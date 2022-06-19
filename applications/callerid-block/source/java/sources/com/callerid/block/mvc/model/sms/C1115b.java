package com.callerid.block.mvc.model.sms;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.callerid.block.util.C1208q0;
/* renamed from: com.callerid.block.mvc.model.sms.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/b.class */
public class C1115b {

    /* renamed from: com.callerid.block.mvc.model.sms.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/b$a.class */
    private static class AsyncTaskC1116a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC1114a f4736a;

        /* renamed from: b */
        private Context f4737b;

        /* renamed from: c */
        private Uri f4738c;

        /* renamed from: d */
        String f4739d = "";

        /* renamed from: e */
        String f4740e;

        /* renamed from: f */
        long f4741f;

        AsyncTaskC1116a(Context context, Uri uri, AbstractC1114a abstractC1114a) {
            this.f4736a = abstractC1114a;
            this.f4737b = context;
            this.f4738c = uri;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x01e4 A[Catch: Exception -> 0x027a, TRY_ENTER, TryCatch #0 {Exception -> 0x027a, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x0022, B:8:0x0061, B:9:0x00be, B:9:0x00be, B:10:0x00c1, B:12:0x00f1, B:15:0x00fd, B:17:0x0136, B:19:0x01a3, B:23:0x01af, B:25:0x01ba, B:26:0x01c1, B:27:0x01d5, B:31:0x01e4, B:33:0x01ec, B:35:0x0206, B:37:0x020f, B:39:0x0227, B:41:0x0268, B:44:0x0271), top: B:51:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0227 A[Catch: Exception -> 0x027a, TryCatch #0 {Exception -> 0x027a, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x0022, B:8:0x0061, B:9:0x00be, B:9:0x00be, B:10:0x00c1, B:12:0x00f1, B:15:0x00fd, B:17:0x0136, B:19:0x01a3, B:23:0x01af, B:25:0x01ba, B:26:0x01c1, B:27:0x01d5, B:31:0x01e4, B:33:0x01ec, B:35:0x0206, B:37:0x020f, B:39:0x0227, B:41:0x0268, B:44:0x0271), top: B:51:0x0000 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.String... r10) {
            /*
                Method dump skipped, instructions count: 675
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.mvc.model.sms.C1115b.AsyncTaskC1116a.doInBackground(java.lang.String[]):java.lang.Boolean");
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4736a.m10130a(this.f4740e, this.f4739d, this.f4741f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
        if (r4 != null) goto L38;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m10128b(android.content.Context r4, java.lang.String r5) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "content://mms/part/"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r1 = r7
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r9 = r0
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r9
            r1 = r4
            java.lang.String r2 = "UTF-8"
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r7 = r0
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r7
            r1 = r9
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
        L5e:
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L7c
            r0 = r4
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r8
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L92
            goto L5e
        L7c:
            r0 = r4
            if (r0 == 0) goto L9c
        L80:
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> La2
            goto L9c
        L87:
            r4 = move-exception
            r0 = r6
            if (r0 == 0) goto L90
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La6
        L90:
            r0 = r4
            throw r0
        L92:
            r4 = move-exception
            r0 = r5
            if (r0 == 0) goto L9c
            r0 = r5
            r4 = r0
            goto L80
        L9c:
            r0 = r8
            java.lang.String r0 = r0.toString()
            return r0
        La2:
            r4 = move-exception
            goto L9c
        La6:
            r5 = move-exception
            goto L90
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.mvc.model.sms.C1115b.m10128b(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public static void m10127c(Context context, Uri uri, AbstractC1114a abstractC1114a) {
        try {
            new AsyncTaskC1116a(context, uri, abstractC1114a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
