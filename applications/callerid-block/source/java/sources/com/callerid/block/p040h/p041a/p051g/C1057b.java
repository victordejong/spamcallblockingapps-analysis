package com.callerid.block.p040h.p041a.p051g;

import android.content.Intent;
import android.os.AsyncTask;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0946c;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1208q0;
import d.p.a.a;
/* renamed from: com.callerid.block.h.a.g.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/g/b.class */
public class C1057b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.g.b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/g/b$a.class */
    public static class AsyncTaskC1058a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC1056a f4501a;

        /* renamed from: b */
        private String f4502b;

        AsyncTaskC1058a(String str, AbstractC1056a abstractC1056a) {
            this.f4501a = abstractC1056a;
            this.f4502b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C0946c.m10474c().m10476a(this.f4502b));
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4501a.m10284a(bool.booleanValue());
        }
    }

    /* renamed from: com.callerid.block.h.a.g.b$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/g/b$b.class */
    private static class AsyncTaskC1059b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC1056a f4503a;

        /* renamed from: b */
        private String f4504b;

        AsyncTaskC1059b(String str, AbstractC1056a abstractC1056a) {
            this.f4503a = abstractC1056a;
            this.f4504b = str;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C0946c.m10474c().m10475b(this.f4504b));
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4503a.m10284a(bool.booleanValue());
        }
    }

    /* renamed from: com.callerid.block.h.a.g.b$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/g/b$c.class */
    private static class AsyncTaskC1060c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private String f4505a;

        /* renamed from: b */
        private String f4506b;

        AsyncTaskC1060c(String str, String str2) {
            this.f4505a = str;
            this.f4506b = str2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                C0946c.m10474c().m10472e(this.f4505a);
                EZSearchContacts m10468d = C0947d.m10470b().m10468d(this.f4505a);
                if (m10468d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    eZSearchContacts.setOld_tel_number(this.f4505a);
                    eZSearchContacts.setType_label(this.f4506b);
                    eZSearchContacts.setReport_count("1");
                    C0947d.m10470b().m10469c(eZSearchContacts);
                    return "ok";
                }
                m10468d.setType_label(this.f4506b);
                String str = "1";
                if (m10468d.getReport_count() != null) {
                    str = "1";
                    if (!"".equals(m10468d.getReport_count())) {
                        str = String.valueOf(Integer.parseInt(m10468d.getReport_count()) + 1);
                    }
                }
                m10468d.setReport_count(str);
                C0947d.m10470b().m10466f(m10468d, "type_label", "report_count");
                return "ok";
            } catch (Exception e) {
                e.printStackTrace();
                return "ok";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
            a.b(EZCallApplication.m10163c()).d(intent);
        }
    }

    /* renamed from: a */
    public static void m10283a(String str, AbstractC1056a abstractC1056a) {
        try {
            new AsyncTaskC1058a(str, abstractC1056a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10282b(String str, AbstractC1056a abstractC1056a) {
        try {
            new AsyncTaskC1059b(str, abstractC1056a).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m10281c(String str, String str2) {
        try {
            new AsyncTaskC1060c(str, str2).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
