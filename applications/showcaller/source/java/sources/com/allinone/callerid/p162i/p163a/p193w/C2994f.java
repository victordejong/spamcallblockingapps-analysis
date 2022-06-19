package com.allinone.callerid.p162i.p163a.p193w;

import android.os.AsyncTask;
import com.allinone.callerid.bean.SubType;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.i.a.w.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/f.class */
public class C2994f {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/f$a.class */
    public static class AsyncTaskC2995a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private SubType f9798a;

        /* renamed from: b */
        private boolean f9799b;

        /* renamed from: c */
        private boolean f9800c;

        /* renamed from: d */
        private String f9801d;

        /* renamed from: e */
        private CallLogBean f9802e;

        AsyncTaskC2995a(SubType subType, boolean z, boolean z2, String str, CallLogBean callLogBean) {
            this.f9802e = null;
            this.f9798a = subType;
            this.f9799b = z;
            this.f9800c = z2;
            this.f9801d = str;
            this.f9802e = callLogBean;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            CallLogBean callLogBean;
            if (!this.f9799b) {
                try {
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9801d);
                    if (m26999d == null) {
                        return null;
                    }
                    if (this.f9800c && m26999d.getSubtype_pdt() != null) {
                        "".equals(m26999d.getSubtype_pdt());
                    }
                    m26999d.setSubtype_pdt("");
                    C2631f.m27001b().m26998e(m26999d, "subtype_pdt");
                    m26999d.setType_label("");
                    C2631f.m27001b().m26998e(m26999d, "type_label");
                    m26999d.setReport_count("");
                    C2631f.m27001b().m26998e(m26999d, "report_count");
                    return null;
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            }
            try {
                EZSearchContacts m26999d2 = C2631f.m27001b().m26999d(this.f9801d);
                if (m26999d2 != null) {
                    String subtype = this.f9798a.getSubtype();
                    if (subtype != null && !"".equals(subtype)) {
                        if (this.f9800c && !subtype.equals(m26999d2.getSubtype_pdt()) && (callLogBean = this.f9802e) != null && !"".equals(callLogBean.m24946H())) {
                            C3810q.m24071b().m24070c("subtype_editchild");
                        }
                        m26999d2.setSubtype_pdt(subtype);
                        C2631f.m27001b().m26998e(m26999d2, "subtype_pdt");
                    }
                    String type = this.f9798a.getType();
                    if (type != null && !"".equals(type)) {
                        m26999d2.setType_label(type);
                        C2631f.m27001b().m26998e(m26999d2, "type_label");
                    }
                    int i = 0;
                    if (m26999d2.getReport_count() != null) {
                        i = 0;
                        if (!"".equals(m26999d2.getReport_count())) {
                            i = Integer.parseInt(m26999d2.getReport_count());
                        }
                    }
                    m26999d2.setReport_count((i + 1) + "");
                    C2631f.m27001b().m26998e(m26999d2, "report_count");
                }
                C2629e.m27010d().m27006h(this.f9801d);
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    /* renamed from: a */
    public static void m26293a(SubType subType, boolean z, boolean z2, String str, CallLogBean callLogBean) {
        try {
            new AsyncTaskC2995a(subType, z, z2, str, callLogBean).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
