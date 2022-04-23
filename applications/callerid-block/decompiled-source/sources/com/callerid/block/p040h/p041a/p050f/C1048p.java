package com.callerid.block.p040h.p041a.p050f;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1216t0;
/* renamed from: com.callerid.block.h.a.f.p */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/p.class */
public class C1048p {

    /* renamed from: com.callerid.block.h.a.f.p$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/p$a.class */
    private static class AsyncTaskC1049a extends AsyncTask<String, Void, Long> {

        /* renamed from: a */
        private AbstractC1047o f4488a;

        /* renamed from: b */
        private String f4489b;

        /* renamed from: c */
        private Context f4490c;

        AsyncTaskC1049a(Context context, String str, AbstractC1047o oVar) {
            this.f4488a = oVar;
            this.f4489b = str;
            this.f4490c = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Long doInBackground(String... strArr) {
            return Long.valueOf(C1216t0.m9603I(this.f4490c, this.f4489b));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Long l) {
            super.onPostExecute(l);
            this.f4488a.m10296a(l.longValue());
        }
    }

    /* renamed from: a */
    public static void m10295a(Context context, String str, AbstractC1047o oVar) {
        try {
            new AsyncTaskC1049a(context, str, oVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
