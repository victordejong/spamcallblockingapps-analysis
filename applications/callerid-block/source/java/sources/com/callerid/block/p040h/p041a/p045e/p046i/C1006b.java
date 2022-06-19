package com.callerid.block.p040h.p041a.p045e.p046i;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.util.C1208q0;
import org.json.JSONArray;
/* renamed from: com.callerid.block.h.a.e.i.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/i/b.class */
public class C1006b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.e.i.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/e/i/b$a.class */
    public static class AsyncTaskC1007a extends AsyncTask<String, Void, JSONArray> {

        /* renamed from: a */
        private AbstractC1005a f4439a;

        /* renamed from: b */
        private Context f4440b;

        AsyncTaskC1007a(Context context, AbstractC1005a abstractC1005a) {
            this.f4439a = abstractC1005a;
            this.f4440b = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x01d7 A[Catch: Exception -> 0x0335, TRY_ENTER, TryCatch #0 {Exception -> 0x0335, blocks: (B:3:0x0008, B:5:0x0014, B:7:0x004c, B:9:0x0056, B:11:0x0061, B:13:0x006d, B:16:0x00cf, B:18:0x00da, B:20:0x00ec, B:22:0x00f3, B:23:0x0121, B:26:0x012c, B:28:0x0134, B:32:0x013f, B:34:0x014a, B:39:0x017b, B:44:0x0197, B:48:0x01a9, B:51:0x01d7, B:53:0x01df, B:55:0x01e7, B:59:0x01fb, B:61:0x0203, B:63:0x0210, B:65:0x0223, B:69:0x0237, B:71:0x0244, B:73:0x0256, B:76:0x0270, B:77:0x030b, B:79:0x0311), top: B:84:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0268  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.json.JSONArray doInBackground(java.lang.String... r8) {
            /*
                Method dump skipped, instructions count: 828
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p040h.p041a.p045e.p046i.C1006b.AsyncTaskC1007a.doInBackground(java.lang.String[]):org.json.JSONArray");
        }

        /* renamed from: b */
        public void onPostExecute(JSONArray jSONArray) {
            super.onPostExecute(jSONArray);
            this.f4439a.m10370a(jSONArray);
        }
    }

    /* renamed from: a */
    public static void m10369a(Context context, AbstractC1005a abstractC1005a) {
        try {
            new AsyncTaskC1007a(context, abstractC1005a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
