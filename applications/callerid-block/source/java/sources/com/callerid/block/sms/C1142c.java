package com.callerid.block.sms;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0946c;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1216t0;
import d.p.a.a;
/* renamed from: com.callerid.block.sms.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/c.class */
public class C1142c {

    /* renamed from: com.callerid.block.sms.c$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/c$a.class */
    static class AsyncTaskC1143a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        private String f4879a;

        /* renamed from: b */
        private String f4880b;

        /* renamed from: c */
        private Context f4881c;

        public AsyncTaskC1143a(Context context, String str, String str2) {
            this.f4881c = context;
            this.f4879a = str;
            this.f4880b = str2;
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            try {
                C0946c.m10474c().m10472e(this.f4879a);
                EZSearchContacts m10468d = C0947d.m10470b().m10468d(this.f4879a);
                if (m10468d != null) {
                    m10468d.setType_label(this.f4880b);
                    C0947d.m10470b().m10466f(m10468d, "type_label");
                } else {
                    EZSearchContacts m10468d2 = C0947d.m10470b().m10468d(C1216t0.m9584a0(EZCallApplication.m10163c(), this.f4879a));
                    if (m10468d2 != null) {
                        m10468d2.setType_label(this.f4880b);
                        C0947d.m10470b().m10466f(m10468d2, "type_label");
                    } else {
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        eZSearchContacts.setOld_tel_number(this.f4879a);
                        eZSearchContacts.setType_label(this.f4880b);
                        C0947d.m10470b().m10469c(eZSearchContacts);
                    }
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.SMS_INIT_DATA");
            a.b(this.f4881c).d(intent);
            Intent intent2 = new Intent();
            intent2.setAction("com.callerid.block.REPORT_OK");
            a.b(this.f4881c).d(intent2);
            Intent intent3 = new Intent();
            intent3.setAction("com.callerid.block.RELOAD_DATA_VEST");
            a.b(this.f4881c).d(intent3);
        }
    }

    /* renamed from: a */
    public static void m9959a(Context context, String str, String str2) {
        try {
            new AsyncTaskC1143a(context, str, str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
