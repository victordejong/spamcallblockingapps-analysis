package com.allinone.callerid.p162i.p163a.p196z;

import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3866v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.i.a.z.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/z/a.class */
public class C3010a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.z.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/z/a$a.class */
    public static class AsyncTaskC3011a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC3014c f9827a;

        /* renamed from: b */
        private ArrayList<String> f9828b;

        AsyncTaskC3011a(ArrayList<String> arrayList, AbstractC3014c abstractC3014c) {
            this.f9827a = abstractC3014c;
            this.f9828b = arrayList;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                String jSONArray = new JSONArray((Collection) this.f9828b).toString();
                if (C3718c0.f11914a) {
                    C3718c0.m24433d("comment", "search_list:" + jSONArray);
                }
                String m23912c = C3866v.m23912c(jSONArray);
                String m24268T = C3767h1.m24268T(EZCallApplication.m26146c());
                String m24265W = C3767h1.m24265W(EZCallApplication.m26146c());
                String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
                String m24271Q = C3767h1.m24271Q(EZCallApplication.m26146c(), m24268T);
                HashMap hashMap = new HashMap();
                hashMap.put("tel_number_list", m23912c);
                hashMap.put("device", "android");
                hashMap.put("uid", m24268T);
                hashMap.put("version", m24265W);
                hashMap.put("cc", country_code);
                hashMap.put("stamp", m24271Q);
                String m26206b = C3029a.m26206b("https://app.show-caller.com/api/v1/seacomcoumul.php", hashMap);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("comment", "response:" + m26206b);
                }
                if (m26206b == null || "".equals(m26206b)) {
                    return "ok";
                }
                JSONObject jSONObject = new JSONObject(m26206b);
                if (jSONObject.getInt("status") != 1) {
                    return "ok";
                }
                JSONArray jSONArray2 = new JSONArray(jSONObject.getString("list"));
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
                    String string = jSONObject2.getString("old_tel_number");
                    String string2 = jSONObject2.getString("comment_counts");
                    if (string2 != null && string != null && !"".equals(string)) {
                        EZSearchContacts m26999d = C2631f.m27001b().m26999d(string);
                        if (m26999d != null) {
                            m26999d.setComment_count(string2);
                            m26999d.setCan_search_commentcount(false);
                            C2631f.m27001b().m26998e(m26999d, "comment_count", "can_search_commentcount");
                        } else {
                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                            eZSearchContacts.setComment_count(string2);
                            eZSearchContacts.setCan_search_commentcount(false);
                            C2631f.m27001b().m27000c(eZSearchContacts);
                        }
                    }
                }
                return "ok";
            } catch (Exception e) {
                e.printStackTrace();
                return "ok";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9827a.mo26259a(str);
        }
    }

    /* renamed from: a */
    public static void m26265a(ArrayList<String> arrayList, AbstractC3014c abstractC3014c) {
        try {
            new AsyncTaskC3011a(arrayList, abstractC3014c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
