package com.allinone.callerid.p162i.p163a.p193w;

import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.w.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/b.class */
public class C2984b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.w.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/w/b$a.class */
    public static class AsyncTaskC2985a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private String f9773a;

        /* renamed from: b */
        String f9774b = "";

        /* renamed from: c */
        String f9775c = "";

        /* renamed from: d */
        String f9776d = "";

        /* renamed from: e */
        String f9777e = "";

        /* renamed from: f */
        private AbstractC2983a f9778f;

        AsyncTaskC2985a(String str, AbstractC2983a abstractC2983a) {
            this.f9773a = str;
            this.f9778f = abstractC2983a;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String type_tags;
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9773a);
                if (m26999d != null && (type_tags = m26999d.getType_tags()) != null && !"".equals(type_tags)) {
                    this.f9774b = type_tags;
                    if (type_tags != null && !"".equals(type_tags)) {
                        try {
                            JSONObject jSONObject = new JSONObject(this.f9774b);
                            this.f9775c = jSONObject.getString("Spam");
                            this.f9776d = jSONObject.getString("Scam");
                            this.f9777e = jSONObject.getString("Telemarketing");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return this.f9774b;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9778f.mo25084a(this.f9775c, this.f9776d, this.f9777e);
        }
    }

    /* renamed from: a */
    public static void m26309a(String str, AbstractC2983a abstractC2983a) {
        try {
            new AsyncTaskC2985a(str, abstractC2983a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
