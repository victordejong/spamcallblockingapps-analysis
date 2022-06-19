package com.callerid.block.p040h.p041a.p052h;

import android.os.AsyncTask;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1208q0;
import com.callerid.block.util.C1227w;
/* renamed from: com.callerid.block.h.a.h.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/e.class */
public class C1068e {

    /* renamed from: com.callerid.block.h.a.h.e$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/h/e$a.class */
    private static class AsyncTaskC1069a extends AsyncTask<String, Void, EZSearchContacts> {

        /* renamed from: a */
        private AbstractC1067d f4519a;

        /* renamed from: b */
        private EZSearchContacts f4520b;

        /* renamed from: c */
        private String f4521c;

        AsyncTaskC1069a(String str, AbstractC1067d abstractC1067d) {
            this.f4519a = abstractC1067d;
            this.f4521c = str;
        }

        /* renamed from: a */
        public EZSearchContacts doInBackground(String... strArr) {
            try {
                EZSearchContacts m10468d = C0947d.m10470b().m10468d(this.f4521c);
                this.f4520b = m10468d;
                if (m10468d != null && C1227w.f5084a) {
                    C1227w.m9527a("searchNumber", "contacts:" + this.f4520b.toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f4520b;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchContacts eZSearchContacts) {
            super.onPostExecute(eZSearchContacts);
            this.f4519a.m10267a(eZSearchContacts);
        }
    }

    /* renamed from: a */
    public static void m10266a(String str, AbstractC1067d abstractC1067d) {
        try {
            AsyncTaskC1069a asyncTaskC1069a = new AsyncTaskC1069a(str, abstractC1067d);
            if (asyncTaskC1069a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC1069a.cancel(true);
            new AsyncTaskC1069a(str, abstractC1067d).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
