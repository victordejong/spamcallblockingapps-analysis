package com.allinone.callerid.p162i.p163a.p173h;

import android.content.Context;
import android.os.AsyncTask;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.h.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/h/b.class */
public class C2834b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.h.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/h/b$a.class */
    public static class AsyncTaskC2835a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2833a f9594a;

        /* renamed from: b */
        private Context f9595b;

        /* renamed from: c */
        private String f9596c;

        AsyncTaskC2835a(Context context, String str, AbstractC2833a abstractC2833a) {
            this.f9594a = abstractC2833a;
            this.f9595b = context;
            this.f9596c = str;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number", this.f9596c);
                hashMap.put("device", "android");
                hashMap.put("uid", C3767h1.m24268T(this.f9595b));
                hashMap.put("version", C3767h1.m24265W(this.f9595b));
                hashMap.put("cc", C3806p.m24083d(this.f9595b).getCountry_code());
                Context context = this.f9595b;
                hashMap.put("stamp", C3767h1.m24271Q(context, C3767h1.m24268T(context)));
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("params:");
                    sb.append(hashMap.toString());
                    C3718c0.m24436a("checkactivity", sb.toString());
                }
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/cheact.php", hashMap);
                if (C3718c0.f11914a) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("response:");
                    sb2.append(m26206b);
                    C3718c0.m24436a("checkactivity", sb2.toString());
                }
                str = m26206b;
                if (m26206b != null) {
                    str = m26206b;
                    if (!"".equals(m26206b)) {
                        JSONObject jSONObject = new JSONObject(m26206b);
                        str = m26206b;
                        if (jSONObject.getInt("status") == 1) {
                            int i = jSONObject.getInt("is_activity");
                            int i2 = jSONObject.getInt("activity_count");
                            EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f9596c);
                            if (m26999d == null) {
                                EZSearchContacts eZSearchContacts = new EZSearchContacts();
                                eZSearchContacts.setIs_activity(i);
                                eZSearchContacts.setActivity_count(String.valueOf(i2));
                                eZSearchContacts.setOld_tel_number(this.f9596c);
                                C2631f.m27001b().m27000c(eZSearchContacts);
                                str = m26206b;
                            } else {
                                m26999d.setIs_activity(i);
                                m26999d.setActivity_count(String.valueOf(i2));
                                C2631f.m27001b().m26998e(m26999d, "is_activity", "activity_count");
                                str = m26206b;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9594a.mo26526a(str);
        }
    }

    /* renamed from: a */
    public static void m26525a(Context context, String str, AbstractC2833a abstractC2833a) {
        try {
            new AsyncTaskC2835a(context, str, abstractC2833a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
