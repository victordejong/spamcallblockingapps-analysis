package com.callerid.block.mvc.model.sms;

import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.sms.C1141b;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.p060x0.C1230a;
/* renamed from: com.callerid.block.mvc.model.sms.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/e.class */
public class C1121e {

    /* renamed from: com.callerid.block.mvc.model.sms.e$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/e$a.class */
    private static class AsyncTaskC1122a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1123f f4748a;

        AsyncTaskC1122a(AbstractC1123f fVar) {
            this.f4748a = fVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            if (!C1230a.m9514b(EZCallApplication.m10163c(), "android.permission.READ_SMS") || (str = strArr[0]) == null || "".equals(str)) {
                return null;
            }
            long a = new C1141b(EZCallApplication.m10163c()).m9962a(str.replace(" ", ""));
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "theardID:" + a);
            }
            if (a != 0) {
                return String.valueOf(a);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            AbstractC1123f fVar = this.f4748a;
            if (fVar != null) {
                fVar.m10114a(str);
            }
        }
    }

    /* renamed from: a */
    public static void m10117a(String str, AbstractC1123f fVar) {
        try {
            new AsyncTaskC1122a(fVar).executeOnExecutor(C1208q0.m9629a(), str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
