package com.callerid.block.p040h.p041a.p050f;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p039g.C0960a;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1216t0;
/* renamed from: com.callerid.block.h.a.f.f */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/f.class */
public class C1029f {

    /* renamed from: com.callerid.block.h.a.f.f$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/f$a.class */
    private static class AsyncTaskC1030a extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: a */
        private AbstractC1046n f4468a;

        /* renamed from: b */
        private String f4469b;

        AsyncTaskC1030a(String str, AbstractC1046n nVar) {
            this.f4468a = nVar;
            this.f4469b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            if (C0960a.m10450b().m10451a(this.f4469b) != null) {
                return C0960a.m10450b().m10451a(this.f4469b);
            }
            try {
                Bitmap J = C1216t0.m9602J(EZCallApplication.m10163c(), this.f4469b);
                if (J == null) {
                    return null;
                }
                C0960a.m10450b().m10449c(this.f4469b, J);
                return J;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            AbstractC1046n nVar = this.f4468a;
            if (nVar != null) {
                nVar.m10297a(this.f4469b, bitmap);
            }
        }
    }

    /* renamed from: com.callerid.block.h.a.f.f$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/f/f$b.class */
    private static class AsyncTaskC1031b extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: a */
        private AbstractC1028e f4470a;

        /* renamed from: b */
        private String f4471b;

        AsyncTaskC1031b(String str, AbstractC1028e eVar) {
            this.f4470a = eVar;
            this.f4471b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            return C1216t0.m9602J(EZCallApplication.m10163c(), this.f4471b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            this.f4470a.m10337a(bitmap);
        }
    }

    /* renamed from: a */
    public static void m10336a(String str, AbstractC1046n nVar) {
        try {
            new AsyncTaskC1030a(str, nVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10335b(String str, AbstractC1028e eVar) {
        try {
            new AsyncTaskC1031b(str, eVar).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
