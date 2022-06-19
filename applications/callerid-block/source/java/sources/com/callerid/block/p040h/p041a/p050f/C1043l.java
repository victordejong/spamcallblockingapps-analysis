package com.callerid.block.p040h.p041a.p050f;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.util.C1208q0;
/* renamed from: com.callerid.block.h.a.f.l */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/l.class */
public class C1043l {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.f.l$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/l$a.class */
    public static class AsyncTaskC1044a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC1042k f4484a;

        /* renamed from: b */
        private String f4485b;

        /* renamed from: c */
        private Context f4486c;

        /* renamed from: d */
        private String f4487d;

        AsyncTaskC1044a(Context context, String str, AbstractC1042k abstractC1042k) {
            this.f4484a = abstractC1042k;
            this.f4485b = str;
            this.f4486c = context;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x00b5, code lost:
            if ("0".equals(r0) != false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00de, code lost:
            if ("".equals(r0) != false) goto L24;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.String... r10) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p040h.p041a.p050f.C1043l.AsyncTaskC1044a.doInBackground(java.lang.String[]):java.lang.Boolean");
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4484a.m10303a(bool.booleanValue(), this.f4487d);
        }
    }

    /* renamed from: a */
    public static void m10302a(Context context, String str, AbstractC1042k abstractC1042k) {
        try {
            new AsyncTaskC1044a(context, str, abstractC1042k).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
