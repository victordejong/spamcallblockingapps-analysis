package com.allinone.callerid.p162i.p163a.p165b0;

import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p162i.p163a.p164a0.AbstractC2770c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
/* renamed from: com.allinone.callerid.i.a.b0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/b0/b.class */
public class C2775b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.b0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/b0/b$a.class */
    public static class AsyncTaskC2776a extends AsyncTask<String, Void, EZSearchContacts> {

        /* renamed from: a */
        private AbstractC2774a f9523a;

        /* renamed from: b */
        private EZSearchContacts f9524b;

        /* renamed from: c */
        private String f9525c;

        AsyncTaskC2776a(String str, AbstractC2774a abstractC2774a) {
            this.f9523a = abstractC2774a;
            this.f9525c = str;
        }

        /* renamed from: a */
        public EZSearchContacts doInBackground(String... strArr) {
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9525c);
                this.f9524b = m26999d;
                if (m26999d != null && C3718c0.f11914a) {
                    C3718c0.m24436a("searchNumber", "contacts:" + this.f9524b.toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return this.f9524b;
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchContacts eZSearchContacts) {
            super.onPostExecute(eZSearchContacts);
            this.f9523a.mo26614a(eZSearchContacts);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.b0.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/b0/b$b.class */
    public static class AsyncTaskC2777b extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private EZSearchContacts f9526a;

        /* renamed from: b */
        private AbstractC2770c f9527b;

        /* renamed from: c */
        private String f9528c;

        /* renamed from: d */
        private String f9529d;

        /* renamed from: e */
        private String f9530e;

        AsyncTaskC2777b(String str, String str2, String str3, AbstractC2770c abstractC2770c) {
            this.f9528c = str;
            this.f9529d = str2;
            this.f9530e = str3;
            this.f9527b = abstractC2770c;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            String str;
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9528c);
                this.f9526a = m26999d;
                if (m26999d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    this.f9526a = eZSearchContacts;
                    eZSearchContacts.setOld_tel_number(this.f9528c);
                    this.f9526a.setType_label(this.f9530e);
                    this.f9526a.setComment_count("1");
                    C2631f.m27001b().m27000c(this.f9526a);
                    return null;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("comment", "contacts:" + this.f9526a.toString());
                }
                this.f9526a.setType_label(this.f9530e);
                String str2 = this.f9530e;
                if ((str2 != null && !"".equals(str2)) || ((str = this.f9529d) != null && !"".equals(str))) {
                    String comment_count = this.f9526a.getComment_count();
                    if (comment_count == null || "".equals(comment_count)) {
                        this.f9526a.setComment_count("1");
                    } else {
                        this.f9526a.setComment_count(String.valueOf(Integer.valueOf(comment_count).intValue() + 1));
                    }
                    String report_count = this.f9526a.getReport_count();
                    if (report_count == null || "".equals(report_count)) {
                        this.f9526a.setReport_count("1");
                    } else {
                        this.f9526a.setReport_count(String.valueOf(Integer.valueOf(report_count).intValue() + 1));
                    }
                }
                C2631f.m27001b().m26998e(this.f9526a, "type_label", "comment_count", "report_count");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f9527b.mo25491a("ok");
        }
    }

    /* renamed from: a */
    public static void m26613a(String str, AbstractC2774a abstractC2774a) {
        try {
            new AsyncTaskC2776a(str, abstractC2774a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26612b(String str, String str2, String str3, AbstractC2770c abstractC2770c) {
        try {
            new AsyncTaskC2777b(str, str2, str3, abstractC2770c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
