package com.allinone.callerid.util;

import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.y0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/y0.class */
public class C3880y0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.y0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/y0$a.class */
    public static class AsyncTaskC3881a extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        JSONObject f12242a;

        /* renamed from: b */
        String f12243b;

        /* renamed from: c */
        private EZSearchContacts f12244c;

        AsyncTaskC3881a(JSONObject jSONObject, String str) {
            this.f12242a = jSONObject;
            this.f12243b = str;
        }

        /* renamed from: a */
        public String doInBackground(Object[] objArr) {
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f12243b);
                this.f12244c = m26999d;
                if (m26999d == null) {
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    eZSearchContacts.setOld_tel_number(this.f12243b);
                    eZSearchContacts.setT_p(this.f12242a.getString("t_p"));
                    eZSearchContacts.setSubtype(this.f12242a.getString("subtype"));
                    eZSearchContacts.setTel_number(this.f12242a.getString("tel_number"));
                    eZSearchContacts.setSubtype_cc(this.f12242a.getString("cc"));
                    eZSearchContacts.setKeyword(this.f12242a.getString("keyword"));
                    eZSearchContacts.setComment_count(this.f12242a.getString("comments_count"));
                    eZSearchContacts.setSubtype_isserach(true);
                    C2631f.m27001b().m27000c(eZSearchContacts);
                    return null;
                }
                String string = this.f12242a.getString("t_p");
                if (string != null && !"".equals(string)) {
                    this.f12244c.setT_p(string);
                }
                String string2 = this.f12242a.getString("subtype");
                if (string2 != null && !"".equals(string2)) {
                    this.f12244c.setSubtype(string2);
                }
                String string3 = this.f12242a.getString("keyword");
                if (string3 != null && !"".equals(string3)) {
                    this.f12244c.setKeyword(string3);
                }
                String string4 = this.f12242a.getString("tel_number");
                if (string4 != null && !"".equals(string4)) {
                    this.f12244c.setTel_number(string4);
                }
                String string5 = this.f12242a.getString("cc");
                if (string5 != null && !"".equals(string5)) {
                    this.f12244c.setSubtype_cc(string5);
                }
                String string6 = this.f12242a.getString("comments_count");
                if (string6 != null && !"".equals(string6)) {
                    this.f12244c.setComment_count(string6);
                }
                this.f12244c.setSubtype_isserach(true);
                C2631f.m27001b().m26998e(this.f12244c, "t_p", "subtype", "keyword", "tel_number", "subtype_cc", "subtype_isserach", "comment_count");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("subtype", "OK");
            }
        }
    }

    /* renamed from: a */
    public static void m23892a(JSONObject jSONObject, String str) {
        try {
            new AsyncTaskC3881a(jSONObject, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
